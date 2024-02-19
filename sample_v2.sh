#!/bin/bash

# 현재 대한민국 시간을 YYYYMMDD_HHMMSS 형식으로 가져오기
current_time=$(date +'%Y%m%d_%H%M%S')

# 사용자로부터 ddim_eta와 scale 값을 입력받기
read -p "ddim_eta 값을 입력하세요: " ddim_eta
read -p "scale 값을 입력하세요: " scale

# 입력받은 값으로 스크립트 실행
python scripts/stable_txt2img.py --ddim_eta $ddim_eta \
                                 --n_samples 5 \
                                 --n_iter 1 \
                                 --scale $scale \
                                 --ddim_steps 100 \
                                 --ckpt "/workspace/hyunwook/Dreambooth-Stable-Diffusion/logs/n014848502024-02-18T16-55-10_wta_dream/checkpoints/last.ckpt" \
                                 --prompt "photo of a sks WTA, Coaxial, CO, defect" \
                                 --outdir "outputs/$current_time-n_c-3_step-8000_ckpt-last"
