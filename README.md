# Robust Multi-modal Prompt Learning for Vision-Language Models

## Introduction
This repo contains some experiments on CoOP, MaPLe to research the robustness of GCE about adapting vision-language models like [CLIP](https://arxiv.org/abs/2103.00020) to downstream datasets via *prompt learning*.

## How to Install
+ Setup conda environment:
```bash
############ Conda Environment Installation ############

# Fetch the miniconda script
export HOME=$PWD
wget -q https://repo.anaconda.com/miniconda/Miniconda3-py37_4.12.0-Linux-x86_64.sh -O miniconda.sh
sh miniconda.sh -b -p $HOME/miniconda3
rm miniconda.sh
export PATH=$HOME/miniconda3/bin:$PATH

# Initialize conda
source $HOME/miniconda3/etc/profile.d/conda.sh
hash -r
conda config --set always_yes yes --set changeps1 yes
conda create -n dassl python=3.7
conda activate dassl
```
+ Install the the awesome toolbox [Dassl.pytorch](https://github.com/KaiyangZhou/Dassl.pytorch)
```bash
############ Dassl Installation ############

# Clone the Dassl repository
git clone https://github.com/KaiyangZhou/Dassl.pytorch.git
cd Dassl.pytorch/

# Activate the existed environment
conda activate dassl

# Install the required dependencies
pip install -r requirements.txt

# Install PyTorch (version 1.11.0 or above) and torchvision
conda install pytorch==1.11.0 torchvision==0.12.0 cudatoolkit=11.3 -c pytorch

# Set up the Dassl library (No need to rebuild even if the source code changes)
python setup.py develop
```
+ Install the RMaPLe
```bash
############ RMaPLe Installation ############

# Navigate back to the parent directory
cd ..

# Clone the RMaPLe repository
git clone https://github.com/LZHMS/RMaPLe.git
cd RMaPLe/

# Install necessary packages for CLIP
pip install -r requirements.txt

######## Note ########
# Two symbolic links, `data` and `dassl`, exist in the repository. It is recommended that these be pointed to locations with sufficient storage capacity.

rm data dassl # remove the existing links
ln -s ${your_data_path} ./data
ln -s ${your_dassl_path} ./dassl

# Installation complete
```
## Datasets

Please follow [CoOp Datasets Instructions](https://github.com/KaiyangZhou/CoOp/blob/main/DATASETS.md) to install the datasets.

## Model Structure
<img src="https://cdn.jsdelivr.net/gh/LZHMS/picx-images-hosting@master/EBlog/Paper/WorkFlow.231mf5t682.webp" alt="WorkFlow" />

## How to Run

Please follow [RMaPLe Instructions](RMAPLE.md) to see the detailed instructions on how to run the code to reproduce the results.

## Results
### Combination Between CoOP and GCE					
| Dataset|Backbone| Method|Noise Rate|Noise Rate|Noise Rate|Noise Rate|			
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
||||0| 12.5|25	|50|
|Dtd|RN50|CoOP|63.13|59.40|54.83|44.80| 
|Dtd|RN50|CoOP(CLS)|63.87|57.17 |	49.77 |	33.63|
|Dtd |RN50| CoOP(+GCE)	|62.87 |	60.80 |	**61.13** |	**56.27**| 
|Dtd|RN50	|RCoOP(CLS+GCE)	|**63.67** |	**61.90** |	58.37 	|46.30|
|Dtd|VT16|CoOP|69.27|63.73|60.53|48.77| 
|Dtd|VT16|CoOP(CLS)|69.20|61.47 |	54.47 |	36.97|
|Dtd |VT16| CoOP(+GCE)	|**70.07** |	**67.93**|	**67.50** |	**61.50**| 
|Dtd|VT16|RCoOP(CLS+GCE)	|68.30|	66.87 |	64.00 	|52.50|
|Caltech-101|RN50|CoOP|92.00|85.83|85.87|85.83|
|Caltech-101|RN50|CoOP(CLS)|91.37|76.80|76.93|76.93|
|Caltech-101|RN50|CoOP(+GCE)|**92.20**|**91.57**|**91.67**|**91.57**|
|Caltech-101|RN50|RCoOP(CLS+GCE)|91.53|89.90|89.87|89.87|
|Caltech-101|VT16|CoOP|95.70|92.43|92.43|92.43|
|Caltech-101|VT16|CoOP(CLS)|94.80|81.50|81.50|81.50|
|Caltech-101|VT16|CoOP(+GCE)|**95.80**|**95.47**|**95.47**|**95.47**|
|Caltech-101|VT16|RCoOP(CLS+GCE)|95.23|92.43|92.43|92.43|

### Comparation Between MaPLe and RMaPLe
|Dataset| Method|Noise Rate|Noise Rate|Noise Rate|Noise Rate|
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
|Dtd|MaPLe|70.70|62.93|55.43|39.73|
|Dtd|MaPLe+GCE|**71.53**|**69.63**|**67.77**|59.33|
|Dtd|RMaPLe|69.20|66.93|64.87|55.90|
|Dtd|RMaPLe+GCE|68.47|68.83|66.90|**61.10**|

### Raw Materials
Model traning logs can be found in the `log.txt` under each experiment directory.

Parsing results can be found in the following files:
+ [CoOP RN50_EP50_16SHOTS ON Caltech-101](./output/caltech101/CoOp/rn50_ep50_16shots/parse_results.txt)
+ [CoOP VT16_EP50_16SHOTS ON Caltech-101](./output/caltech101/CoOp/vit_b16_ep50_16shots/parse_results.txt)
+ [CoOP RN50_EP50_16SHOTS ON Dtd](./output/dtd/CoOp/rn50_ep50_16shots/parse_results.txt)
+ [CoOP VT16_EP50_16SHOTS ON Dtd](./output/dtd/CoOp/vit_b16_ep50_16shots/parse_results.txt)

## Conclusions
### CoOP and RCoOP
The factors influencing robustness in prompt learning within Visual-Language Models(VLMs), as well as directions for improvement, can be inferred from the experiments above:

+ Loss Function
By analyzing the experiments above, comparing the Generalized Cross Entropy (GCE) loss function with the Cross Entropy (CE) loss function in terms of robustness to noise, it can be concluded that GCE significantly enhances model robustness. This suggests that optimizing loss function design under prompt learning may lead to stronger robustness and transferability in downstream tasks. So further exploration is required in loss function design.

+ Class Specific Context
From the experiments, it is evident that the transfer performance of the `dtd` dataset varies across different backbone structures, indicating that the design of specific category prompts relies on both the dataset and model architecture. Therefore, there is no unified criterion for whether to select specific category prompts or not.

+ Backbone
From the results, it can be analyzed that the ViT-B/16 architecture consistently achieves higher accuracy compared to ResNet50 when used as the backbone visual encoder. This suggests that the ViT-B/16 structure helps to resist label noise and enhance the robustness of the model.

### MaPLe and RMaPLe


## References
+ [CoOp](https://github.com/KaiyangZhou/CoOp)
+ [multimodal-prompt-learning](https://github.com/muzairkhattak/multimodal-prompt-learning)
