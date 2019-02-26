python run.py --agt 9 --usr 1 --max_turn 40 --episodes 500 \
    --movie_kb_path ./deep_dialog/data/movie_kb.1k.json --dqn_hidden_size 80 \
    --run_mode 3 --act_level 0 --slot_err_prob 0.0 --intent_err_prob 0.00 \
    --warm_start 1 --batch_size 16 --torch_seed 14 --planning_steps 4 \
    --write_model_dir ./deep_dialog/checkpoints/remove_me \
    --warm_start_epochs 10
