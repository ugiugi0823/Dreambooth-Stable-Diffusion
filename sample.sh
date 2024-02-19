# 이미지 생성 스크립트
for i in {1..5}
do
    seed=$RANDOM  # 랜덤 seed 값 생성

    python scripts/stable_txt2img.py --ddim_eta 0.0 \
                                     --n_samples 10 \
                                     --n_iter 1 \
                                     --scale 10.0 \
                                     --ddim_steps 100 \
                                     --ckpt "/raid/hyunwook/Dreambooth-Stable-Diffusion/logs/n014848502024-02-18T16-55-10_wta_dream/checkpoints/last.ckpt" \
                                     --prompt "photo of a sks WTA, Coaxial, CO, defect" \
                                     --outdir "/raid/hyunwook/Dreambooth-Stable-Diffusion/outputs/txt2img-samples_numclass-2_last_2_1/${i}_seed_${seed}" \
                                     --seed $seed
done

# # samples 폴더들을 하나의 폴더로 병합
# mkdir -p /raid/hyunwook/Dreambooth-Stable-Diffusion/outputs/merged_samples
# for i in {1..12}
# do
#     cp -r "/raid/hyunwook/Dreambooth-Stable-Diffusion/outputs/txt2img-samples_3_15_last_2_1/$i/samples/"* /raid/hyunwook/Dreambooth-Stable-Diffusion/outputs/merged_samples/
# done

# # 직접 $i 폴더들을 하나의 폴더로 병합
# mkdir -p /raid/hyunwook/Dreambooth-Stable-Diffusion/outputs/merged_direct
# for i in {1..12}
# do
#     cp -r "/raid/hyunwook/Dreambooth-Stable-Diffusion/outputs/txt2img-samples_3_15_last_2_1/$i/"* /raid/hyunwook/Dreambooth-Stable-Diffusion/outputs/merged_direct/
#     rm -rf /raid/hyunwook/Dreambooth-Stable-Diffusion/outputs/merged_direct/samples
# done
