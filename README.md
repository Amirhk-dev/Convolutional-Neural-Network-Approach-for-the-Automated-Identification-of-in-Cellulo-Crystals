# Convolutional-Neural-Network-Approach-for-the-Automated-Identification-of-in-Cellulo-Crystals

This is an implementation of [Mask R-CNN](https://arxiv.org/abs/1703.06870) on Python 3, Keras, and TensorFlow. The model generates bounding boxes and segmentation masks for each instance of an object in the image, in our approach the objects include different types of crystals, referred as "G" (left image) and "H" (right image).

<p align="center">
  <img src="assets/target-G.png" alt="Instance Segmentation Sample for Target G" width="400"/>
  <img src="assets/target-H.png" alt="Instance Segmentation Sample for Target H" width="400"/>
</p>

This repository includes:
* Source code for training the Mask R-CNN model for crystal segmentation
* Mask R-CNN code is from [this repository](https://github.com/matterport/Mask_RCNN)
* SLURM script "masks_rcnn_script.sh" for submitting jobs to the computation cluster, for the paper the [Maxwell Cluster](https://confluence.desy.de/display/MXW/) is used.
* The file "requirements.txt" includes all the libraries relevant to run the project.
* The "utils" folder contains Jupyter Notebooks for pre-processing the images and creating annotation masks from JSON files.
* The trained models for detection and segmentation of crystal targets can be downloaded in: [target-G](https://drive.google.com/drive/folders/1YaWfc8pzmdZGn5YLe7SflQqLSlH7eikf?usp=drive_link) and [target-H](https://drive.google.com/drive/folders/1YjzH6hbFixCWIYrIxYe52os9mcQwOHcd?usp=drive_link) 

---
**NOTE**
Train/Test images, annotations/masks (in JSON format) and prediction results are publicly available for download at [Zenodo](https://doi.org/10.5281/zenodo.10475962).

--- 

## Reference to the Mask R-CNN paper
````
@INPROCEEDINGS{8237584,
  author={He, Kaiming and Gkioxari, Georgia and Dollár, Piotr and Girshick, Ross},
  booktitle={2017 IEEE International Conference on Computer Vision (ICCV)}, 
  title={Mask R-CNN}, 
  year={2017},
  pages={2980-2988},
  doi={10.1109/ICCV.2017.322}}
````

## Reference to the published paper
````
@INPROCEEDINGS{biorxiv_2023,
author={Amirhossein Kardoost, Robert Schönherr, Carsten Deiter, Lars Redecke, Kristina Lorenzen, Joachim Schulz, Iñaki de Diego},
journal = {bioRxiv},
title = {Convolutional Neural Network Approach for the Automated Identification of in Cellulo Crystals},
year = {2023},
doi={https://doi.org/10.1101/2023.03.28.533948}}
````