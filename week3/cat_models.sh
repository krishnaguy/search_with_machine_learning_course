head -n 10000 /workspace/datasets/categories/sh_output_stem.fasttext > /workspace/datasets/categories/sh_output_stem.train
tail -n 10000 /workspace/datasets/categories/sh_output_stem.fasttext > /workspace/datasets/categories/sh_output_stem.test

head -n 10000 /workspace/datasets/categories/sh_output_stem_filter_50.fasttext > /workspace/datasets/categories/sh_output_stem_filter_50.train
tail -n 10000 /workspace/datasets/categories/sh_output_stem_filter_50.fasttext > /workspace/datasets/categories/sh_output_stem_filter_50.test

head -n 10000 /workspace/datasets/categories/sh_output_stem_filter_50_depth_2.fasttext > /workspace/datasets/categories/sh_output_stem_filter_50_depth_2.train
tail -n 10000 /workspace/datasets/categories/sh_output_stem_filter_50_depth_2.fasttext > /workspace/datasets/categories/sh_output_stem_filter_50_depth_2.test

head -n 10000 /workspace/datasets/categories/sh_output_stem_filter_50_depth_3.fasttext > /workspace/datasets/categories/sh_output_stem_filter_50_depth_3.train
tail -n 10000 /workspace/datasets/categories/sh_output_stem_filter_50_depth_3.fasttext > /workspace/datasets/categories/sh_output_stem_filter_50_depth_3.test

head -n 10000 /workspace/datasets/categories/sh_output_stem_filter_100.fasttext > /workspace/datasets/categories/sh_output_stem_filter_100.train
tail -n 10000 /workspace/datasets/categories/sh_output_stem_filter_100.fasttext > /workspace/datasets/categories/sh_output_stem_filter_100.test

head -n 10000 /workspace/datasets/categories/sh_output_stem_filter_100_depth_2.fasttext > /workspace/datasets/categories/sh_output_stem_filter_100_depth_2.train
tail -n 10000 /workspace/datasets/categories/sh_output_stem_filter_100_depth_2.fasttext > /workspace/datasets/categories/sh_output_stem_filter_100_depth_2.test

head -n 10000 /workspace/datasets/categories/sh_output_stem_filter_100_depth_3.fasttext > /workspace/datasets/categories/sh_output_stem_filter_100_depth_3.train
tail -n 10000 /workspace/datasets/categories/sh_output_stem_filter_100_depth_3.fasttext > /workspace/datasets/categories/sh_output_stem_filter_100_depth_3.test


# Train and test again
~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem.train -output /workspace/datasets/categories/stem_model
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_model.bin /workspace/datasets/categories/sh_output_stem.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_50.train -output /workspace/datasets/categories/stem_filter_50_model
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_50_model.bin /workspace/datasets/categories/sh_output_stem_filter_50.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_50_depth_2.train -output /workspace/datasets/categories/stem_filter_50_depth_2_model
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_50_depth_2_model.bin /workspace/datasets/categories/sh_output_stem_filter_50_depth_2.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_50_depth_3.train -output /workspace/datasets/categories/stem_filter_50_depth_3_model
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_50_depth_3_model.bin /workspace/datasets/categories/sh_output_stem_filter_50_depth_3.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_100.train -output /workspace/datasets/categories/stem_filter_100_model
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_100_model.bin /workspace/datasets/categories/sh_output_stem_filter_100.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_100_depth_2.train -output /workspace/datasets/categories/stem_filter_100_depth_2_model
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_100_depth_2_model.bin /workspace/datasets/categories/sh_output_stem_filter_100_depth_2.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_100_depth_3.train -output /workspace/datasets/categories/stem_filter_100_depth_3_model
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_100_depth_3_model.bin /workspace/datasets/categories/sh_output_stem_filter_100_depth_3.test

# Increase number of epochs to 25
~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem.train -output /workspace/datasets/categories/stem_model -epoch 25
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_model.bin /workspace/datasets/categories/sh_output_stem.test



# Increase the learning rate to 1.0 and go back to 25 epochs
~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem.train -output /workspace/datasets/categories/stem_model -epoch 25 -lr 1.0
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_model.bin /workspace/datasets/categories/sh_output_stem.test



# Set word ngrams to 2 to learn from bigrams
~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem.train -output /workspace/datasets/categories/stem_model -epoch 25 -lr 1.0 -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_model.bin /workspace/datasets/categories/sh_output_stem.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_50.train -output /workspace/datasets/categories/stem_filter_50_model  -epoch 25 -lr 1.0 -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_50_model.bin /workspace/datasets/categories/sh_output_stem_filter_50.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_50_depth_2.train -output /workspace/datasets/categories/stem_filter_50_depth_2_model  -epoch 25 -lr 1.0 -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_50_depth_2_model.bin /workspace/datasets/categories/sh_output_stem_filter_50_depth_2.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_50_depth_3.train -output /workspace/datasets/categories/stem_filter_50_depth_3_model  -epoch 25 -lr 1.0 -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_50_depth_3_model.bin /workspace/datasets/categories/sh_output_stem_filter_50_depth_3.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_100.train -output /workspace/datasets/categories/stem_filter_100_model  -epoch 25 -lr 1.0 -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_100_model.bin /workspace/datasets/categories/sh_output_stem_filter_100.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_100_depth_2.train -output /workspace/datasets/categories/stem_filter_100_depth_2_model  -epoch 25 -lr 1.0 -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_100_depth_2_model.bin /workspace/datasets/categories/sh_output_stem_filter_100_depth_2.test

~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/categories/sh_output_stem_filter_100_depth_3.train -output /workspace/datasets/categories/stem_filter_100_depth_3_model  -epoch 25 -lr 1.0 -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/categories/stem_filter_100_depth_3_model.bin /workspace/datasets/categories/sh_output_stem_filter_100_depth_3.test