

~/fastText-0.9.2/fasttext skipgram -input /workspace/datasets/fasttext/clean_titles.txt -output /workspace/datasets/fasttext/min5_e_25_lr_01_model -maxn 0  -epoch 25 -lr 0.1
~/fastText-0.9.2/fasttext skipgram -input /workspace/datasets/fasttext/clean_titles.txt -output /workspace/datasets/fasttext/min5_e_25_lr_03_model -maxn 0  -epoch 25 -lr 0.3
#~/fastText-0.9.2/fasttext skipgram -input /workspace/datasets/fasttext/clean_titles.txt -output /workspace/datasets/fasttext/min5_e_25_lr_10_model -maxn 0  -epoch 25 -lr 1.0

~/fastText-0.9.2/fasttext skipgram -input /workspace/datasets/fasttext/clean_titles.txt -output /workspace/datasets/fasttext/min10_e_25_lr_01_model -maxn 0 -minCount 10  -epoch 25 -lr 0.1
~/fastText-0.9.2/fasttext skipgram -input /workspace/datasets/fasttext/clean_titles.txt -output /workspace/datasets/fasttext/min10_e_25_lr_03_model -maxn 0 -minCount 10 -epoch 25 -lr 0.3
##~/fastText-0.9.2/fasttext skipgram -input /workspace/datasets/fasttext/clean_titles.txt -output /workspace/datasets/fasttext/min10_e_25_lr_10_model -maxn 0 -minCount 10 -epoch 25 -lr 1.0

~/fastText-0.9.2/fasttext skipgram -input /workspace/datasets/fasttext/clean_titles.txt -output /workspace/datasets/fasttext/min15_e_25_lr_01_model -maxn 0 -minCount 15  -epoch 25 -lr 0.1
~/fastText-0.9.2/fasttext skipgram -input /workspace/datasets/fasttext/clean_titles.txt -output /workspace/datasets/fasttext/min15_e_25_lr_03_model -maxn 0 -minCount 15 -epoch 25 -lr 0.3
#~/fastText-0.9.2/fasttext skipgram -input /workspace/datasets/fasttext/clean_titles.txt -output /workspace/datasets/fasttext/min15_e_25_lr_10_model -maxn 0 -minCount 15 -epoch 25 -lr 1.0

# The fastText library comes with a nearest-neighbor method that
# we can use to obtain synonyms. Try words like "politics" or "linux".

