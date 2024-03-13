: '
# ------------------------------------------- CoOP Trainer ------------------------------------------
###### Model backbone ---- rn50
## Experiment 1 -- research the robustness of CoOP under different noise rates
# Conditions: 16 n_context, 16 shots, False class-specific, False GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 False False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 False False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 False False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 False False 8

## Experiment 2 -- research the robustness of class-specific CoOP under different noise rates
# Conditions: 16 n_context, 16 shots, True class-specific, False GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 True False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 True False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 True False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 True False 8

## Experiment 3 -- research the robustness of CoOP with GCE under different noise rates
# Conditions: 16 n_context, 16 shots, False class-specific, True GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 False True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 False True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 False True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 False True 8

## Experiment 4 -- research the robustness of class-specific CoOP with GCE under different noise rates
# Conditions: 16 n_context, 16 shots, True class-specific, True GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 True True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 True True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 True True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 rn50_ep50 end 16 16 True True 8

## Experiments Analysis
# Experiment 1
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 False False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 False False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 False False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 False False 8

# Experiment 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 True False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 True False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 True False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 True False 8

# Experiment 3
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 False True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 False True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 False True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 False True 8

# Experiment 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 True True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 True True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 True True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 rn50_ep50 end 16 16 True True 8
'

: '
###### Model backbone ---- vit_b16
## Experiment 1 -- research the robustness of CoOP under different noise rates
# Conditions: 16 n_context, 16 shots, False class-specific, False GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 False False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 False False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 False False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 False False 8

## Experiment 2 -- research the robustness of class-specific CoOP under different noise rates
# Conditions: 16 n_context, 16 shots, True class-specific, False GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 True False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 True False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 True False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 True False 8

## Experiment 3 -- research the robustness of CoOP with GCE under different noise rates
# Conditions: 16 n_context, 16 shots, False class-specific, True GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 False True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 False True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 False True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 False True 8

## Experiment 4 -- research the robustness of class-specific CoOP with GCE under different noise rates
# Conditions: 16 n_context, 16 shots, True class-specific, True GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 True True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 True True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 True True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/main.sh CoOp caltech101 vit_b16_ep50 end 16 16 True True 8

## Experiments Analysis
# Experiment 1
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 False False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 False False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 False False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 False False 8

# Experiment 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 True False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 True False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 True False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 True False 8

# Experiment 3
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 False True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 False True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 False True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 False True 8

# Experiment 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 True True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 True True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 True True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rcoop/parse_results.sh CoOp caltech101 vit_b16_ep50 end 16 16 True True 8
'

# ------------------------------------------- MaPLe Trainer ------------------------------------------
###### Model backbone ---- vit_b16
## Experiment 1 -- research the robustness of MaPLe under different noise rates
# Conditions: 2 n_context, 9 learning depth, 16 shots, False GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/main.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/main.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/main.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/main.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 False 8

## Experiment 2 -- research the robustness of MaPLe with GCE under different noise rates
# Conditions: 2 n_context, 9 learning depth, 16 shots, True GCE
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/main.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/main.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/main.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/main.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 True 8

## Experiments Analysis
# Experiment 1
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/parse_results.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 False 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/parse_results.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 False 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/parse_results.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 False 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/parse_results.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 False 8

# Experiment 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/parse_results.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 True 0
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/parse_results.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 True 2
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/parse_results.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 True 4
CUDA_VISIBLE_DEVICES=0 bash scripts/rmaple/parse_results.sh MaPLe dtd vit_b16_c2_ep50_batch4 2 9 16 True 8
