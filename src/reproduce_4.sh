#Below is the script used for figure 4
for ((i=1; i<= 5; i++));do
  let "seed=$i*100"
  python run.py --agt 9 --usr 1 --max_turn 40 --episodes 500 \
  --movie_kb_path ./deep_dialog/data/movie_kb.1k.json --dqn_hidden_size 80 \
  --run_mode 3 --act_level 0 --slot_err_prob 0.0 --intent_err_prob 0.00 \
  --warm_start 1 --batch_size 16 --torch_seed $seed --planning_steps 0 \
  --write_model_dir ./deep_dialog/checkpoints/DDQ_k0_run$i
done

for ((i=1; i<= 5; i++)); do
  let "seed=$i*100"
  python run.py --agt 9 --usr 1 --max_turn 40 --episodes 500 \
  --movie_kb_path ./deep_dialog/data/movie_kb.1k.json --dqn_hidden_size 80 \
  --run_mode 3 --act_level 0 --slot_err_prob 0.0 --intent_err_prob 0.00 \
  --warm_start 1 --batch_size 16 --torch_seed $seed --planning_steps 1 \
  --write_model_dir ./deep_dialog/checkpoints/DDQ_k2_run$i
done

for ((i=1; i<= 5; i++));do
  let "seed=$i*100"
  python run.py --agt 9 --usr 1 --max_turn 40 --episodes 500 \
  --movie_kb_path ./deep_dialog/data/movie_kb.1k.json --dqn_hidden_size 80 \
  --run_mode 3 --act_level 0 --slot_err_prob 0.0 --intent_err_prob 0.00 \
  --warm_start 1 --batch_size 16 --torch_seed $seed --planning_steps 4 \
  --write_model_dir ./deep_dialog/checkpoints/DDQ_k5_run$i
done

for ((i=1; i<= 5; i++));do
  let "seed=$i*100"
  python run.py --agt 9 --usr 1 --max_turn 40 --episodes 500 \
  --movie_kb_path ./deep_dialog/data/movie_kb.1k.json --dqn_hidden_size 80 \
  --run_mode 3 --act_level 0 --slot_err_prob 0.0 --intent_err_prob 0.00 \
  --warm_start 1 --batch_size 16 --torch_seed $seed --planning_steps 9 \
  --write_model_dir ./deep_dialog/checkpoints/DDQ_k10_run$i
done

for ((i=1; i<= 5; i++));do
  let "seed=$i*100"
  python run.py --agt 9 --usr 1 --max_turn 40 --episodes 500 \
  --movie_kb_path ./deep_dialog/data/movie_kb.1k.json --dqn_hidden_size 80 \
  --run_mode 3 --act_level 0 --slot_err_prob 0.0 --intent_err_prob 0.00 \
  --warm_start 1 --batch_size 16  --torch_seed $seed --planning_steps 19 \
  --write_model_dir ./deep_dialog/checkpoints/DDQ_k20_run$i
done