#!/bin/bash -xe
sed -i 's|vendor/qcom/opensource/audio-hal/primary-hal|hardware/qcom-caf/sdm660/audio|g' sdm660.mk
sed -i 's|^PRODUCT_PACKAGES|NO_PRODUCT_PACKAGES|g' sdm660.mk
sed -i '/AUDIO_FEATURE_ENABLED_DYNAMIC_LOG/d' sdm660.mk
sed -i 's|device/qcom/common/media/audio_policy.conf|$(LOCAL_PATH)/audio/audio_policy.conf|g' sdm660.mk
sed -i 's|hardware/qcom-caf/sdm660/audio/configs/sdm660/audio_policy_configuration.xml|$(LOCAL_PATH)/audio/audio_policy_configuration.xml|g' sdm660.mk
