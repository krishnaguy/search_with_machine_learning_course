import argparse
import os
import random
import xml.etree.ElementTree as ET
from pathlib import Path
from nltk.stem.snowball import SnowballStemmer
from nltk.tokenize import word_tokenize
import string
import pandas as pd

def transform_name(product_name):
    # IMPLEMENT
    product_name = product_name.translate(str.maketrans('', '', string.punctuation))
    stemmer = SnowballStemmer("english")
    return  " ".join(stemmer.stem(tok.lower()) for tok in word_tokenize(product_name))

# Directory for product data
directory = r'/workspace/search_with_machine_learning_course/data/pruned_products/'

parser = argparse.ArgumentParser(description='Process some integers.')
general = parser.add_argument_group("general")
general.add_argument("--input", default=directory,  help="The directory containing product data")
general.add_argument("--output", default="/workspace/datasets/fasttext/output.fasttext", help="the file to output to")

# Consuming all of the product data will take over an hour! But we still want to be able to obtain a representative sample.
general.add_argument("--sample_rate", default=1.0, type=float, help="The rate at which to sample input (default is 1.0)")

# IMPLEMENT: Setting min_products removes infrequent categories and makes the classifier's task easier.
general.add_argument("--min_products", default=0, type=int, help="The minimum number of products per category (default is 0).")

general.add_argument("--cat_depth", default=100, type=int, help="The maximum depth to traverse in the category tree (default is 100, no limit).")

args = parser.parse_args()
output_file = args.output
path = Path(output_file)
output_dir = path.parent
if os.path.isdir(output_dir) == False:
        os.mkdir(output_dir)

if args.input:
    directory = args.input
# IMPLEMENT:  Track the number of items in each category and only output if above the min
min_products = int(args.min_products)
print("min products: {}".format(min_products))
sample_rate = args.sample_rate

# cat_depth is the depth of the category tree:
cat_depth = int(args.cat_depth)


    
categories= []
desc = []
print("Writing results to %s" % output_file)
with open(output_file, 'w') as output:
    for filename in os.listdir(directory):
        if filename.endswith(".xml"):
            print("Processing %s" % filename)
            f = os.path.join(directory, filename)
            tree = ET.parse(f)
            root = tree.getroot()
            for child in root:
                if random.random() > sample_rate:
                    continue
                # Check to make sure category name is valid
                if (child.find('name') is not None and child.find('name').text is not None and
                    child.find('categoryPath') is not None and len(child.find('categoryPath')) > 0 and
                    child.find('categoryPath')[len(child.find('categoryPath')) - 1][0].text is not None):
                      # Choose last element in categoryPath as the leaf categoryId
                      # choose the minimum of the maximum depth we want and the actual depth of the cat tree
                      depth = min(cat_depth, len(child.find('categoryPath')))
                      #cat = child.find('categoryPath')[len(child.find('categoryPath')) - 1][0].text
                      cat = child.find('categoryPath')[depth - 1][0].text
                      # Replace newline chars with spaces so fastText doesn't complain
                      name = child.find('name').text.replace('\n', ' ')
                      categories.append("__label__"+cat)
                      desc.append(transform_name(name))
                      output.write("__label__%s %s\n" % (cat, transform_name(name)))

df = pd.DataFrame(data= {"cat": categories, "desc": desc})
print("unfiltered number of records: {}".format(df.shape[0]))
num_prods = df.groupby("cat")["cat"].transform(len)
print("Num products: {}".format(num_prods[:15]))
print(df.head(20))
df = df[num_prods >= min_products]
print("filtered number of records: {}".format(df.shape[0]))
print(df.head())
#print(categories[:100])

with open(output_file, 'w') as output:
    df.to_csv(output, sep=" ", header=False, index=False )
    