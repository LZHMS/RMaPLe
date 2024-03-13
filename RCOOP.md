## How to Run
### Training Script
The training script for model is provided in `scripts/rcoop` which allow you to reproduce the experiments.

To run it, you need to config the path in `DATA` to your data root.

### Parsing Results Script
In order to analyze each experiment's results, you can ultilize the `scripts/rcoop/parse_results.sh` to automaically get the accracy by passing each experiment's parameters.

### Experimental Scripts
We split the whole experiments into two tasks running on two GPUs. The `exp_cuda0.sh` conducts experiments on the `caltech-101` dataset and `exp_cuda1.sh` conducts experiments on the `dtd` dataset.

And after that we can only use two commmands to run the RCoOp.

```bash
# cuda0
bash scripts/exp_cuda0.sh
#cuda1
bash scripts/exp_cuda1.sh
```

After the experiments are finished, you can get the structure of `output/` is

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

In the `parse_results.txt`, you will get all results about the experinments:
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