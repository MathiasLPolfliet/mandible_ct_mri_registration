mkdir ./initial_rigid/
mkdir ./rigid_with_mask/

elastix -f ./CT.nii -m ./MRI.nii -out ./initial_rigid/ -p ./initial_trans.txt -p ./initial_euler.txt
elastix -f ./CT.nii -fMask ./mask.nii -m ./MRI.nii -out ./rigid_with_mask/ -p ./masked_euler.txt -t0 ./initial_rigid/TransformParameters.1.txt
