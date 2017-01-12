# Audio
PRODUCT_PACKAGES += \
    audiod \
    audio.a2dp.default \
    audio.primary.msm8916 \
    audio.r_submix.default \
    audio.usb.default \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing \
    tinymix


# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_effects.conf:system/vendor/etc/audio_effects.conf \
    $(LOCAL_PATH)/audio/mixer_paths_mtp.xml:system/etc/mixer_paths_mtp.xml \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

# ACDB Loader calibration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Bluetooth_cal.acdb:system/etc/acdbdata/MTP/MTP_Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/MTP/MTP_General_cal.acdb:system/etc/acdbdata/MTP/MTP_General_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Global_cal.acdb:system/etc/acdbdata/MTP/MTP_Global_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Handset_cal.acdb:system/etc/acdbdata/MTP/MTP_Handset_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Hdmi_cal.acdb:system/etc/acdbdata/MTP/MTP_Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Headset_cal.acdb:system/etc/acdbdata/MTP/MTP_Headset_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/MTP/MTP_Speaker_cal.acdb:system/etc/acdbdata/MTP/MTP_Speaker_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/msm8939-snd-card-skul:system/etc/acdbdata/QRD/msm8939-snd-card-skul \
	$(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Bluetooth_cal.acdb:system/etc/acdbdata/QRD/QRD_Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/QRD_General_cal.acdb:system/etc/acdbdata/QRD/QRD_General_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Global_cal.acdb:system/etc/acdbdata/QRD/QRD_Global_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Handset_cal.acdb:system/etc/acdbdata/QRD/QRD_Handset_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Hdmi_cal.acdb:system/etc/acdbdata/QRD/QRD_Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Headset_cal.acdb:system/etc/acdbdata/QRD/QRD_Headset_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/QRD_Speaker_cal.acdb:system/etc/acdbdata/QRD/QRD_Speaker_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Bluetooth_cal.acdb:system/etc/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Bluetooth_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_General_cal.acdb:system/etc/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_General_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Global_cal.acdb:system/etc/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Global_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Handset_cal.acdb:system/etc/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Handset_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Hdmi_cal.acdb:system/etc/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Hdmi_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Headset_cal.acdb:system/etc/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Headset_cal.acdb \
	$(LOCAL_PATH)/audio/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Speaker_cal.acdb:system/etc/acdbdata/QRD/msm8939-snd-card-skul/QRD_SKUL_Speaker_cal.acdb\
	$(LOCAL_PATH)/audio/tfa98xx/P1_SPK_0801.speaker:system/etc/tfa98xx/P1_SPK_0801.speaker \
	$(LOCAL_PATH)/audio/tfa98xx/TFA9890_N1B12_N1C3_v3.config:system/etc/tfa98xx/TFA9890_N1B12_N1C3_v3.config \
	$(LOCAL_PATH)/audio/tfa98xx/music.eq:system/etc/tfa98xx/music.eq \
	$(LOCAL_PATH)/audio/tfa98xx/speech.eq:system/etc/tfa98xx/speech.eq \
	$(LOCAL_PATH)/audio/tfa98xx/TFA9890_N1C3_2_1_1.patch:system/etc/tfa98xx/TFA9890_N1C3_2_1_1.patch \
	$(LOCAL_PATH)/audio/tfa98xx/music.preset:system/etc/tfa98xx/music.preset \
	$(LOCAL_PATH)/audio/tfa98xx/speech.preset:system/etc/tfa98xx/speech.preset \
	$(LOCAL_PATH)/audio/tfa98xx/coldboot.patch:system/etc/tfa98xx/coldboot.patch

