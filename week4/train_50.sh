# Train and test again
#~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/sh_labeled_query_data_50.train -output /workspace/datasets/query_default_50_model
~/fastText-0.9.2/fasttext test /workspace/datasets/query_default_50_model.bin /workspace/datasets/sh_labeled_query_data_50.test
~/fastText-0.9.2/fasttext test /workspace/datasets/query_default_50_model.bin /workspace/datasets/sh_labeled_query_data_50.test 3
~/fastText-0.9.2/fasttext test /workspace/datasets/query_default_50_model.bin /workspace/datasets/sh_labeled_query_data_50.test 5


# Train and test again
#~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/sh_labeled_query_data_50.train -output /workspace/datasets/query_ng_2_50_model -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/query_ng_2_50_model.bin /workspace/datasets/sh_labeled_query_data_50.test
~/fastText-0.9.2/fasttext test /workspace/datasets/query_ng_2_50_model.bin /workspace/datasets/sh_labeled_query_data_50.test 3
~/fastText-0.9.2/fasttext test /workspace/datasets/query_ng_2_50_model.bin /workspace/datasets/sh_labeled_query_data_50.test 5


#~/fastText-0.9.2/fasttext supervised -input /workspace/datasets/sh_labeled_query_data_50.train -output /workspace/datasets/query_e_5_lr_05_ng_2_50_model -epoch 5 -lr 0.5 -wordNgrams 2
~/fastText-0.9.2/fasttext test /workspace/datasets/query_e_5_lr_05_ng_2_50_model.bin /workspace/datasets/sh_labeled_query_data_50.test
~/fastText-0.9.2/fasttext test /workspace/datasets/query_e_5_lr_05_ng_2_50_model.bin /workspace/datasets/sh_labeled_query_data_50.test 3
~/fastText-0.9.2/fasttext test /workspace/datasets/query_e_5_lr_05_ng_2_50_model.bin /workspace/datasets/sh_labeled_query_data_50.test 5
