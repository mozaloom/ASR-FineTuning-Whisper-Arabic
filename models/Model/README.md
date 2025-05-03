---
library_name: transformers
license: apache-2.0
base_model: openai/whisper-small
tags:
- generated_from_trainer
datasets:
- common_voice_11_0
metrics:
- wer
model-index:
- name: whisper-small-hi
  results:
  - task:
      name: Automatic Speech Recognition
      type: automatic-speech-recognition
    dataset:
      name: common_voice_11_0
      type: common_voice_11_0
      config: ar
      split: None
      args: ar
    metrics:
    - name: Wer
      type: wer
      value: 65.24216524216524
---

<!-- This model card has been generated automatically according to the information the Trainer had access to. You
should probably proofread and complete it, then remove this comment. -->

# whisper-small-hi

This model is a fine-tuned version of [openai/whisper-small](https://huggingface.co/openai/whisper-small) on the common_voice_11_0 dataset.
It achieves the following results on the evaluation set:
- Loss: 0.9688
- Wer: 65.2422

## Model description

More information needed

## Intended uses & limitations

More information needed

## Training and evaluation data

More information needed

## Training procedure

### Training hyperparameters

The following hyperparameters were used during training:
- learning_rate: 1e-05
- train_batch_size: 16
- eval_batch_size: 8
- seed: 42
- optimizer: Use adamw_torch with betas=(0.9,0.999) and epsilon=1e-08 and optimizer_args=No additional optimizer arguments
- lr_scheduler_type: linear
- lr_scheduler_warmup_steps: 500
- training_steps: 500
- mixed_precision_training: Native AMP

### Training results

| Training Loss | Epoch   | Step | Validation Loss | Wer     |
|:-------------:|:-------:|:----:|:---------------:|:-------:|
| 0.013         | 13.8889 | 500  | 0.9688          | 65.2422 |


### Framework versions

- Transformers 4.47.1
- Pytorch 2.5.1+cu121
- Datasets 3.2.0
- Tokenizers 0.21.0
