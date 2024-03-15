## How to Run
### Training Script
The training script for model is provided in `scripts/setup/` which allow you to reproduce the experiments.

To run it, you need to config the path in `DATA` to your data root.

### Parsing Results Script
In order to analyze each experiment's results, you can ultilize the `parse_results.sh` to automaically get the accracy by passing each experiment's parameters.

### Setup Script
We combine model training and results parsing into a unified setup script. There scripts can be found in the folder of `scrpts/setup`:
+ `exp_coop.sh`: the script to run `exp_coop_dataset.sh` achieving device and dataset control;
+ `exp_maple.sh`: the script to run the MaPLe model on a specific device and dataset
+ `exp_rmaple.sh`: the script to run the RMaPLe model on a specific device and dataset

And after that we can only use two commmands to run the models.

```bash
# coop
bash scripts/setup/exp_coop.sh

# maple
bash scripts/setup/exp_maples.sh

# rmaple
bash scripts/setup/exp_rmaples.sh
```

After the experiments are finished, you can get the structure of `output/` is (just take CoOP as an example)

```
output
|–– caltech101/
|   |–– CoOp/
|   |   |–– rn50_ep50_16shots/
|   |   |   |–– nctx16_cscFalse_ctpend/
|   |   |   |   |-- GCE_False
|   |   |   |   |   |-- 16shots_0noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_2noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_4noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_8noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |-- GCE_True
|   |   |   |   |   |-- 16shots_0noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_2noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_4noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_8noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |–– nctx16_cscTrue_ctpend/
|   |   |   |   |-- GCE_False
|   |   |   |   |   |-- 16shots_0noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_2noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_4noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_8noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |-- GCE_True
|   |   |   |   |   |-- 16shots_0noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_2noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_4noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |   |   |-- 16shots_8noise
|   |   |   |   |   |   |–– seed1/
|   |   |   |   |   |   |–– seed2/
|   |   |   |   |   |   |–– seed3/
|   |   |   |-- parse_results.txt
|   |   |–– vit_b16_ep50_16shots/
|   |   |   |–– nctx16_cscFalse_ctpend/
...
```

In the `parse_results.txt`, you will get all results about the experinments like:
```bash
Parsing files in output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_0noise/
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_0noise/seed1/log.txt. accuracy: 92.00%. 
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_0noise/seed2/log.txt. accuracy: 92.00%. 
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_0noise/seed3/log.txt. accuracy: 92.00%. 
===
Summary of directory: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_0noise/
* accuracy: 92.00% +- 0.00%
===
Parsing files in output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_2noise/
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_2noise/seed1/log.txt. accuracy: 84.50%. 
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_2noise/seed2/log.txt. accuracy: 85.70%. 
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_2noise/seed3/log.txt. accuracy: 87.30%. 
===
Summary of directory: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_2noise/
* accuracy: 85.83% +- 1.15%
===
Parsing files in output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_4noise/
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_4noise/seed1/log.txt. accuracy: 84.50%. 
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_4noise/seed2/log.txt. accuracy: 85.80%. 
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_4noise/seed3/log.txt. accuracy: 87.30%. 
===
Summary of directory: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_4noise/
* accuracy: 85.87% +- 1.14%
===
Parsing files in output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_8noise/
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_8noise/seed1/log.txt. accuracy: 84.50%. 
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_8noise/seed2/log.txt. accuracy: 85.70%. 
file: output/caltech101/CoOp/rn50_ep50_16shots/nctx16_cscFalse_ctpend/GCE_False/16shots_8noise/seed3/log.txt. accuracy: 87.30%. 
===
```