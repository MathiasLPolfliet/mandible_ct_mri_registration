# CT-MRI registration of the mandible

![Stages](/figures/fig1.png)

## Prerequisite installs
[elastix](https://elastix.lumc.nl/)

## Optional installs
[ITK-SNAP](http://www.itksnap.org/pmwiki/pmwiki.php)

## Preparation

Obtain a rough binary mask to limit the field of view to the manidble in the second stage of the registration. This mask should be dilated roughly 16 pixels compared to a segmentation mask of the manible (see below).

![Stages](/figures/mask.png)

ITK-SNAP can be used to manually draw the rough registration mask. The image above has been abtained as such.

## Running the registration

### Make the folders for the output
``` bash
mkdir ./initial_rigid/
mkdir ./rigid_with_mask/
```

### Execute
``` bash
elastix -f ./CT.nii -m ./MRI.nii -out ./initial_rigid/ -p ./parameter_files/initial_trans.txt -p ./parameter_files/initial_euler.txt
elastix -f ./CT.nii -fMask ./mask.nii -m ./MRI.nii -out ./rigid_with_mask/ -p ./parameter_files/masked_euler.txt -t0 ./initial_rigid/TransformParameters.1.txt
```



