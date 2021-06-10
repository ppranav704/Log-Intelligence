@echo off

SET FOLDER=bgl\
SET DATASET_NAME=bgl
SET LOG_FILE=BGL.log
SET MODEL_NAME=logbert
SET min_len=10
SET PARSER_TYPE=drain
SET LOG_FORMAT=Label,Id,Date,Code1,Time,Code2,Component1,Component2,Level,Content
SET WINDOW_TYPE=sliding
SET WINDOW_SIZE=5
SET STEP_SIZE=1
SET TRAIN_SIZE=0.4
SET TRAIN_RATIO=1
SET VALID_RATIO=0.1
SET TEST_RATIO=1
SET MAX_EPOCH=200
SET N_EPOCHS_STOP=10
SET N_WARM_UP_EPOCH=0
SET BATCH_SIZE=32
SET MASK_RATIO=0.5
SET NUM_CANDIDATES=15
SET EXP_NAME=%DATASET_NAME%_%MASK_RATIO%_%NUM_CANDIDATES%

python ../main_run.py \
--folder=$FOLDER \
--log_file=$LOG_FILE \
--dataset_name=$DATASET_NAME \
--model_name=$MODEL_NAME \
--parser_type=$PARSER_TYPE \
--log_format=$LOG_FORMAT \
--is_process \
--window_type=$WINDOW_TYPE \
--window_size=$WINDOW_SIZE \
--step_size=$STEP_SIZE \
--is_logkey \
--min_len=$min_len \
--train_size=$TRAIN_SIZE \
--train_ratio=$TRAIN_RATIO \
--valid_ratio=$VALID_RATIO \
--test_ratio=$TEST_RATIO \
--max_epoch=$MAX_EPOCH \
--n_warm_up_epoch=$N_WARM_UP_EPOCH \
--n_epochs_stop=$N_EPOCHS_STOP \
--batch_size=$BATCH_SIZE \
--mask_ratio=$MASK_RATIO \
--adaptive_window \
--deepsvdd_loss \
--num_candidates=$NUM_CANDIDATES \