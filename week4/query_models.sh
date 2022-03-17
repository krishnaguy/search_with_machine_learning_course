head -n 50000 /workspace/datasets/sh_labeled_query_data.txt > /workspace/datasets/sh_labeled_query_data.train
tail -n 50000 /workspace/datasets/sh_labeled_query_data.txt > /workspace/datasets/sh_labeled_query_data.test

head -n 50000 /workspace/datasets/sh_labeled_query_data_50.txt > /workspace/datasets/sh_labeled_query_data_50.train
tail -n 50000 /workspace/datasets/sh_labeled_query_data_50.txt > /workspace/datasets/sh_labeled_query_data_50.test

head -n 50000 /workspace/datasets/sh_labeled_query_data_100.txt > /workspace/datasets/sh_labeled_query_data_100.train
tail -n 50000 /workspace/datasets/sh_labeled_query_data_100.txt > /workspace/datasets/sh_labeled_query_data_100.test

head -n 50000 /workspace/datasets/sh_labeled_query_data_1000.txt > /workspace/datasets/sh_labeled_query_data_1000.train
tail -n 50000 /workspace/datasets/sh_labeled_query_data_1000.txt > /workspace/datasets/sh_labeled_query_data_1000.test
