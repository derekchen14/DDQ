python run.py --agt 9 --usr 1 --max_turn 40 \
  --movie_kb_path ./deep_dialog/data/movie_kb.1k.json --dqn_hidden_size 80 \
  --experience_replay_pool_size 5000 --episodes 200 --simulation_epoch_size 100 \
  --run_mode 3 --act_level 0 --slot_err_prob 0.0 --intent_err_prob 0.00 \
  --warm_start 1 --warm_start_epochs 100 --batch_size 16 --planning_steps 0 \
  --torch_seed 100 --write_model_dir ./deep_dialog/checkpoints/DDQ_k0_run1 \
   --grounded 0 --boosted 1 --train_world_model 1