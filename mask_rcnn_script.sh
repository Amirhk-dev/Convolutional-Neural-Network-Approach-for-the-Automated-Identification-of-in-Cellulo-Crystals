#!/bin/bash
#SBATCH --time 0-10:00:00
#SBATCH --nodes 10
#SBATCH --partition allgpu
#SBATCH --job-name slurm-mask-rcnn
export LD_PRELOAD=""

#module load anaconda3/5.2
source activate /gpfs/exfel/data/user/kardoost/conda_tf_1_14_gpu

echo "*** Each time check: nucleus.py file for epochs and validation set and mrcnn/config.py ***"
echo "*** Please uncomment any experiment you would like to submit ***"
# ============================================================================================================================
# TRAIN
# stage-1
# python nucleus.py train --dataset="datasets/dataset_tifs_H-G/" --subset=train --weights=imagenet
# stage-1-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-1/mask_rcnn_crystal_0040.h5
# stage-1-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-1/mask_rcnn_crystal_0040.h5
# stage-2
# python nucleus.py train --dataset="datasets/dataset_tifs_H-He-61h/" --subset=train --weights=imagenet
# stage-2-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-2/mask_rcnn_crystal_0040.h5
# stage-2-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-2/mask_rcnn_crystal_0040.h5
# stage-3
# python nucleus.py train --dataset="datasets/dataset_tifs_H-He-61h_10_images_selected/" --subset=train --weights=logs/stage-1/mask_rcnn_crystal_0040.h5
# stage-3-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-3/mask_rcnn_crystal_0010.h5
# stage-3-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-3/mask_rcnn_crystal_0010.h5
# stage-4
# python nucleus.py train --dataset="datasets/dataset_tifs_H-He-61h_10_images_selected/" --subset=train --weights=logs/stage-1/mask_rcnn_crystal_0040.h5
# stage-4-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-4/mask_rcnn_crystal_0010.h5
# stage-4-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-4/mask_rcnn_crystal_0010.h5
# stage-5
# python nucleus.py train --dataset="datasets/dataset_tifs_H-He-61h_30_images_selected/" --subset=train --weights=logs/stage-1/mask_rcnn_crystal_0040.h5
# stage-5-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-5/mask_rcnn_crystal_0010.h5
# stage-5-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-5/mask_rcnn_crystal_0010.h5
# stage-6
# python nucleus.py train --dataset="datasets/dataset_tifs_H-He-61h_30_images_selected/" --subset=train --weights=logs/stage-1/mask_rcnn_crystal_0040.h5
# stage-6-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-6/mask_rcnn_crystal_0010.h5
# stage-6-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-6/mask_rcnn_crystal_0010.h5
# stage-7
# python nucleus.py train --dataset="datasets/dataset_tifs_H-He-61h/" --subset=train --weights=logs/stage-1/mask_rcnn_crystal_0040.h5
# stage-7-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-7/mask_rcnn_crystal_0010.h5
# stage-7-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-7/mask_rcnn_crystal_0010.h5
# stage-8
# python nucleus.py train --dataset="datasets/dataset_tifs_H-He-61h/" --subset=train --weights=logs/stage-1/mask_rcnn_crystal_0040.h5
# stage-8-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-8-a/mask_rcnn_crystal_0010.h5
# stage-8-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-8-a/mask_rcnn_crystal_0010.h5
# stage-9
# python nucleus.py train --dataset="datasets/dataset_tifs_H-G_10_images_selected/" --subset=train --weights=logs/stage-2/mask_rcnn_crystal_0040.h5
# stage-9-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-9/mask_rcnn_crystal_0010.h5
# stage-9-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-9/mask_rcnn_crystal_0010.h5
# stage-10
# python nucleus.py train --dataset="datasets/dataset_tifs_H-G_10_images_selected/" --subset=train --weights=logs/stage-2/mask_rcnn_crystal_0040.h5
# stage-10-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-10/mask_rcnn_crystal_0010.h5
# stage-10-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-10/mask_rcnn_crystal_0010.h5
# stage-11
# python nucleus.py train --dataset="datasets/dataset_tifs_H-G_30_images_selected/" --subset=train --weights=logs/stage-2/mask_rcnn_crystal_0040.h5
# stage-11-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-11/mask_rcnn_crystal_0010.h5
# stage-11-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-11/mask_rcnn_crystal_0010.h5
# stage-12
# python nucleus.py train --dataset="datasets/dataset_tifs_H-G_30_images_selected/" --subset=train --weights=logs/stage-2/mask_rcnn_crystal_0040.h5
# stage-12-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-12/mask_rcnn_crystal_0010.h5
# stage-12-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-12/mask_rcnn_crystal_0010.h5
# stage-13
# python nucleus.py train --dataset="datasets/dataset_tifs_H-G/" --subset=train --weights=logs/stage-2/mask_rcnn_crystal_0040.h5
# stage-13-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-13/mask_rcnn_crystal_0010.h5
# stage-13-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-13/mask_rcnn_crystal_0010.h5
# stage-14
# python nucleus.py train --dataset="datasets/dataset_tifs_H-G/" --subset=train --weights=logs/stage-2/mask_rcnn_crystal_0040.h5
# stage-14-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-14/mask_rcnn_crystal_0010.h5
# stage-14-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-14/mask_rcnn_crystal_0010.h5
# stage-15
# python nucleus.py train --dataset="datasets/dataset_tifs_H-G_10_images_selected/" --subset=train --weights=imagenet
# stage-15-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-15/mask_rcnn_crystal_0040.h5
# stage-15-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-15/mask_rcnn_crystal_0040.h5
# stage-16
# python nucleus.py train --dataset="datasets/dataset_tifs_H-G_30_images_selected/" --subset=train --weights=imagenet
# stage-16-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-16/mask_rcnn_crystal_0040.h5
# stage-16-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-16/mask_rcnn_crystal_0040.h5
# stage-17
# python nucleus.py train --dataset="datasets/dataset_tifs_H-He-61h_10_images_selected/" --subset=train --weights=imagenet
# stage-17-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-17/mask_rcnn_crystal_0040.h5
# stage-17-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-17/mask_rcnn_crystal_0040.h5
# stage-18
# python nucleus.py train --dataset="datasets/dataset_tifs_H-He-61h_30_images_selected/" --subset=train --weights=imagenet
# stage-18-1
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-G/" --subset=stage1_test --weights=logs/stage-18/mask_rcnn_crystal_0040.h5
# stage-18-2
# python nucleus.py detect --dataset="datasets/dataset_tifs_H-He-61h/" --subset=stage1_test --weights=logs/stage-18/mask_rcnn_crystal_0040.h5
