# Train and test again
#~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/sh_labeled_query_data.train -output /workspace/datasets/query_default_model
~/fastText-0.9.2/fasttext test /workspace/datasets/query_default_model.bin /workspace/datasets/sh_labeled_query_data.test 
~/fastText-0.9.2/fasttext test /workspace/datasets/query_default_model.bin /workspace/datasets/sh_labeled_query_data.test 3
~/fastText-0.9.2/fasttext test /workspace/datasets/query_default_model.bin /workspace/datasets/sh_labeled_query_data.test 5


# Train and test again
#~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/sh_labeled_query_data.train -output /workspace/datasets/query_ng_2_model -wordNgrams 2 
~/fastText-0.9.2/fasttext test /workspace/datasets/query_ng_2_model.bin /workspace/datasets/sh_labeled_query_data.test
~/fastText-0.9.2/fasttext test /workspace/datasets/query_ng_2_model.bin /workspace/datasets/sh_labeled_query_data.test 3
~/fastText-0.9.2/fasttext test /workspace/datasets/query_ng_2_model.bin /workspace/datasets/sh_labeled_query_data.test 5


#~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/sh_labeled_query_data.train -output /workspace/datasets/query_e_5_lr_05_ng_2_model -epoch 5 -lr 0.5 -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/query_e_5_lr_05_ng_2_model.bin /workspace/datasets/sh_labeled_query_data.test
~/fastText-0.9.2/fasttext test /workspace/datasets/query_e_5_lr_05_ng_2_model.bin /workspace/datasets/sh_labeled_query_data.test 3
~/fastText-0.9.2/fasttext test /workspace/datasets/query_e_5_lr_05_ng_2_model.bin /workspace/datasets/sh_labeled_query_data.test 5