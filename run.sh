python main.py --base /raid/hyunwook/Dreambooth-Stable-Diffusion/configs/stable-diffusion/v1-finetune_unfrozen.yaml \
                -t \
                --actual_resume /raid/hyunwook/Dreambooth-Stable-Diffusion/sd/sd-v1-4-full-ema.ckpt \
                -n wta_dream \
                --gpus 0,1,2,3 \
                --data_root /raid/hyunwook/Dreambooth-Stable-Diffusion/dataset/data_total_defect/ILSVRC2012_train/data/n01484850 \
                --reg_data_root /raid/hyunwook/Dreambooth-Stable-Diffusion/dataset/data_total_defect/ILSVRC2012_validation/data/n01484850 \
                --class_word "WTA, Coaxial, CO, defect" \
