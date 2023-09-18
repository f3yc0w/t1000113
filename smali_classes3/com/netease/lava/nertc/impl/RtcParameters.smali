.class public Lcom/netease/lava/nertc/impl/RtcParameters;
.super Ljava/lang/Object;
.source "RtcParameters.java"


# static fields
.field public static final KEY_AUDIOMIX_ENABLE_WITHOUT_MIC:Ljava/lang/String; = "key_audiomix_enable_without_mic"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_AUDIO_AEC_ENABLE:Ljava/lang/String; = "key_audio_aec_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = true
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_AUDIO_AGC_ENABLE:Ljava/lang/String; = "key_audio_agc_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = true
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_AUDIO_AI_NS_ENABLE:Ljava/lang/String; = "key_audio_ai_ns_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = true
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_AUDIO_BLUETOOTH_SCO:Ljava/lang/String; = "key_audio_bluetooth_sco"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_AUDIO_CALL_PROXIMITY:Ljava/lang/String; = "key_audio_call_proximity"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_AUDIO_CODEC_BITRATE:Ljava/lang/String; = "sdk.audio.codec.bitrate"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = true
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_AUDIO_EXTERNAL_AUDIO_MIX:Ljava/lang/String; = "key_audio_external_audio_mix"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = true
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_AUDIO_NS_ENABLE:Ljava/lang/String; = "key_audio_ns_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = true
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_AUTO_SUBSCRIBE_AUDIO:Ljava/lang/String; = "key_auto_subscribe_audio"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_AUTO_SUBSCRIBE_DATA:Ljava/lang/String; = "key_auto_subscribe_data"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_AUTO_SUBSCRIBE_VIDEO:Ljava/lang/String; = "key_auto_subscribe_video"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_CAPTURED_YUV_DUMP_ENABLE:Ljava/lang/String; = "key_captured_yuv_dump_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_CAPTURED_YUV_DUMP_INTERVAL:Ljava/lang/String; = "key_captured_yuv_dump_interval"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_CAPTURED_YUV_DUMP_SPACE:Ljava/lang/String; = "key_captured_yuv_dump_space"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_CHANNEL_P2P_ONLY:Ljava/lang/String; = "key_channel_p2p_only"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_CUSTOM_EXTRA_INFO:Ljava/lang/String; = "key_custom_extra_info"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = true
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_DATA_ENCRYPT_MODE:Ljava/lang/String; = "key_data_encrypt_mode"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_DECODED_YUV_DUMP_ENABLE:Ljava/lang/String; = "key_decoded_yuv_dump_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_DECODED_YUV_DUMP_INTERVAL:Ljava/lang/String; = "key_decoded_yuv_dump_interval"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_DECODED_YUV_DUMP_SPACE:Ljava/lang/String; = "key_decoded_yuv_dump_space"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_DECODE_VIDEO_DUMP_ENABLE:Ljava/lang/String; = "key_decode_video_dump_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_DECODE_VIDEO_DUMP_SPACE:Ljava/lang/String; = "key_decode_video_dump_space"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_DISABLE_GET_CHANNEL_INFO:Ljava/lang/String; = "sdk.disable.getChannelInfo"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PRIVATE:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_DISABLE_VIDEO_DECODER:Ljava/lang/String; = "key_disable_video_decoder"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_DISPATCHER_FORWARDED_IP:Ljava/lang/String; = "key_dispatcher_forwarded_ip"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_ENABLE_1V1_MODEL:Ljava/lang/String; = "key_enable_1v1_mode"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_ENABLE_ENCRYPTING_AND_COMPRESSING_LOG:Ljava/lang/String; = "sdk.enable.encrypt.log"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_ENABLE_NEGATIVE_UID:Ljava/lang/String; = "key_enable_negative_uid"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_ENABLE_REPORT_VOLUME_WHEN_MUTE:Ljava/lang/String; = "key_enable_report_volume_when_mute"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_ENCODED_VIDEO_DUMP_ENABLE:Ljava/lang/String; = "key_encoded_video_dump_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_ENCODED_VIDEO_DUMP_SPACE:Ljava/lang/String; = "key_encoded_video_dump_space"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_ENCODE_YUV_DUMP_ENABLE:Ljava/lang/String; = "key_encode_yuv_dump_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_ENCODE_YUV_DUMP_INTERVAL:Ljava/lang/String; = "key_encode_yuv_dump_interval"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_ENCODE_YUV_DUMP_SPACE:Ljava/lang/String; = "key_encode_yuv_dump_space"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_GET_CHANNEL_INFO_CUSTOM_DATA:Ljava/lang/String; = "sdk.getChannelInfo.custom.data"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_GET_CHANNEL_INFO_REQUEST:Ljava/lang/String; = "sdk.getChannelInfo.request"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->READ:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PRIVATE:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_GET_CHANNEL_INFO_RESPONSE:Ljava/lang/String; = "sdk.getChannelInfo.response"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PRIVATE:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_H265_SWITCH:Ljava/lang/String; = "key_h265_switch"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_MEDIA_SERVER_URI:Ljava/lang/String; = "key_media_server_uri"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_NEVC_SWITCH:Ljava/lang/String; = "key_nevc_switch"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_NEW_CHANNEL_TYPE:Ljava/lang/String; = "sdk.new.channel.scenario.type"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_POSTPROCESSED_YUV_DUMP_ENABLE:Ljava/lang/String; = "key_postprocessed_yuv_dump_enable"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_POSTPROCESSED_YUV_DUMP_INTERVAL:Ljava/lang/String; = "key_postprocessed_yuv_dump_interval"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_POSTPROCESSED_YUV_DUMP_SPACE:Ljava/lang/String; = "key_postprocessed_yuv_dump_space"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_PUBLISH_SELF_STREAM:Ljava/lang/String; = "key_publish_self_stream"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_QUIC_SERVER_URI:Ljava/lang/String; = "key_quic_server_uri"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_SERVER_RECORD_AUDIO:Ljava/lang/String; = "key_server_record_audio"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_SERVER_RECORD_MODE:Ljava/lang/String; = "key_server_record_mode"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_SERVER_RECORD_SPEAKER:Ljava/lang/String; = "key_server_record_speaker"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_SERVER_RECORD_VIDEO:Ljava/lang/String; = "key_server_record_video"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_TEST_SERVER_URI:Ljava/lang/String; = "key_test_server_uri"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_VIDEO_CAMERA_TYPE:Ljava/lang/String; = "key_video_camera_type"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        intDef = {
            0x0,
            0x1,
            0x1
        }
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_VIDEO_DECODE_MODE:Ljava/lang/String; = "key_video_decode_mode"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        stringDef = {
            "media_codec_default",
            "media_codec_hardware",
            "media_codec_software"
        }
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_VIDEO_DENOISE_MODE:Ljava/lang/String; = "engine.video.enable_video_denoise"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = true
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_VIDEO_ENCODE_MODE:Ljava/lang/String; = "key_video_encode_mode"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        stringDef = {
            "media_codec_default",
            "media_codec_hardware",
            "media_codec_software"
        }
        type = Ljava/lang/String;
    .end annotation
.end field

.field public static final KEY_VIDEO_LOCAL_PREVIEW_MIRROR:Ljava/lang/String; = "key_video_local_preview_mirror"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = true
        type = Ljava/lang/Boolean;
    .end annotation
.end field

.field public static final KEY_VIDEO_SEND_MODE:Ljava/lang/String; = "key_video_send_mode"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final KEY_VP8_MODE:Ljava/lang/String; = "key_vp8_mode"
    .annotation runtime Lcom/netease/yunxin/lite/annotation/RtcParameter;
        access = .enum Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;
        intDef = {
            0x0,
            0x1,
            0x2
        }
        privilege = .enum Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;
        runtime = false
        type = Ljava/lang/Integer;
    .end annotation
.end field

.field public static final MEDIA_CODEC_DEFAULT:Ljava/lang/String; = "media_codec_default"

.field public static final MEDIA_CODEC_HARDWARE:Ljava/lang/String; = "media_codec_hardware"

.field public static final MEDIA_CODEC_SOFTWARE:Ljava/lang/String; = "media_codec_software"

.field private static mKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/netease/yunxin/lite/annotation/RtcParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 655
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    .line 657
    invoke-static {}, Lcom/netease/lava/nertc/impl/RtcParameters;->initKeysStatic()V

    return-void
.end method

.method public static checkPrivilege(Ljava/lang/String;Lcom/netease/yunxin/lite/annotation/Privilege;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "privilege"
        }
    .end annotation

    .line 674
    invoke-static {}, Lcom/netease/lava/nertc/impl/RtcParameters;->initKeysStatic()V

    .line 675
    sget-object v0, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/annotation/RtcParameter;

    .line 676
    sget-object v0, Lcom/netease/lava/nertc/impl/RtcParameters$1;->$SwitchMap$com$netease$yunxin$lite$annotation$Privilege:[I

    invoke-interface {p0}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->privilege()Lcom/netease/yunxin/lite/annotation/Privilege;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/yunxin/lite/annotation/Privilege;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v2

    .line 682
    :cond_0
    sget-object p0, Lcom/netease/yunxin/lite/annotation/Privilege;->PRIVATE:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne p1, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 680
    :cond_2
    sget-object p0, Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-eq p1, p0, :cond_4

    sget-object p0, Lcom/netease/yunxin/lite/annotation/Privilege;->PRIVATE:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    return v0
.end method

.method public static getKeyType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 721
    invoke-static {}, Lcom/netease/lava/nertc/impl/RtcParameters;->initKeysStatic()V

    .line 722
    sget-object v0, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 723
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 724
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 725
    sget-object p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/annotation/RtcParameter;

    invoke-interface {p0}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->type()Ljava/lang/Class;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getReadableKeys(Lcom/netease/yunxin/lite/annotation/Privilege;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privilege"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/yunxin/lite/annotation/Privilege;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 689
    invoke-static {}, Lcom/netease/lava/nertc/impl/RtcParameters;->initKeysStatic()V

    .line 690
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 691
    sget-object v1, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 692
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 693
    sget-object v3, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/yunxin/lite/annotation/RtcParameter;

    invoke-interface {v3}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->privilege()Lcom/netease/yunxin/lite/annotation/Privilege;

    move-result-object v3

    sget-object v4, Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne v3, v4, :cond_1

    .line 694
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 695
    :cond_1
    sget-object v3, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/netease/yunxin/lite/annotation/RtcParameter;

    invoke-interface {v3}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->privilege()Lcom/netease/yunxin/lite/annotation/Privilege;

    move-result-object v3

    sget-object v4, Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne v3, v4, :cond_0

    .line 696
    sget-object v3, Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne p0, v3, :cond_0

    .line 697
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getReadableKeys(Ljava/util/Set;Lcom/netease/yunxin/lite/annotation/Privilege;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keys",
            "privilege"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/yunxin/lite/annotation/Privilege;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 705
    invoke-static {}, Lcom/netease/lava/nertc/impl/RtcParameters;->initKeysStatic()V

    .line 706
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 707
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 708
    sget-object v2, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/yunxin/lite/annotation/RtcParameter;

    .line 709
    invoke-interface {v2}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->privilege()Lcom/netease/yunxin/lite/annotation/Privilege;

    move-result-object v3

    sget-object v4, Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne v3, v4, :cond_1

    .line 710
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 711
    :cond_1
    invoke-interface {v2}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->privilege()Lcom/netease/yunxin/lite/annotation/Privilege;

    move-result-object v2

    sget-object v3, Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne v2, v3, :cond_0

    .line 712
    sget-object v2, Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne p1, v2, :cond_0

    .line 713
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static getWritableKeys(Ljava/util/Set;Lcom/netease/yunxin/lite/annotation/Privilege;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keys",
            "privilege"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/yunxin/lite/annotation/Privilege;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 733
    invoke-static {}, Lcom/netease/lava/nertc/impl/RtcParameters;->initKeysStatic()V

    .line 734
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 735
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 736
    sget-object v2, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/yunxin/lite/annotation/RtcParameter;

    .line 738
    invoke-interface {v2}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->access()Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    move-result-object v3

    sget-object v4, Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    if-ne v3, v4, :cond_0

    .line 739
    invoke-interface {v2}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->privilege()Lcom/netease/yunxin/lite/annotation/Privilege;

    move-result-object v3

    sget-object v4, Lcom/netease/yunxin/lite/annotation/Privilege;->PUBLIC:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne v3, v4, :cond_1

    .line 740
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 741
    :cond_1
    invoke-interface {v2}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->privilege()Lcom/netease/yunxin/lite/annotation/Privilege;

    move-result-object v2

    sget-object v3, Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne v2, v3, :cond_0

    .line 742
    sget-object v2, Lcom/netease/yunxin/lite/annotation/Privilege;->PROTECTED:Lcom/netease/yunxin/lite/annotation/Privilege;

    if-ne p1, v2, :cond_0

    .line 743
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private static initKeysStatic()V
    .locals 6

    .line 634
    const-class v0, Lcom/netease/lava/nertc/impl/RtcParameters;

    sget-object v1, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    if-nez v1, :cond_2

    .line 635
    monitor-enter v0

    .line 636
    :try_start_0
    sget-object v1, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    if-nez v1, :cond_1

    .line 637
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    .line 638
    invoke-static {v0}, Lcom/netease/lava/nertc/base/reflect/ReflectUtil;->getClassStaticField(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 639
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 640
    const-class v3, Lcom/netease/yunxin/lite/annotation/RtcParameter;

    invoke-static {v2, v3}, Lcom/netease/lava/nertc/base/reflect/ReflectUtil;->getFieldAnnotationsByType(Ljava/lang/reflect/Field;Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v3

    check-cast v3, Lcom/netease/yunxin/lite/annotation/RtcParameter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    .line 643
    :try_start_1
    sget-object v4, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 645
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 650
    :cond_1
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_1
    return-void
.end method

.method public static runtimeSupported(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 662
    invoke-static {}, Lcom/netease/lava/nertc/impl/RtcParameters;->initKeysStatic()V

    .line 663
    sget-object v0, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/annotation/RtcParameter;

    if-eqz p0, :cond_0

    .line 664
    invoke-interface {p0}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->runtime()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static writeSupported(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 668
    invoke-static {}, Lcom/netease/lava/nertc/impl/RtcParameters;->initKeysStatic()V

    .line 669
    sget-object v0, Lcom/netease/lava/nertc/impl/RtcParameters;->mKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/annotation/RtcParameter;

    if-eqz p0, :cond_0

    .line 670
    invoke-interface {p0}, Lcom/netease/yunxin/lite/annotation/RtcParameter;->access()Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    move-result-object p0

    sget-object v0, Lcom/netease/yunxin/lite/annotation/AccessPolicy;->WRITE:Lcom/netease/yunxin/lite/annotation/AccessPolicy;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 847
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final containsKey(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 839
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getBoolean(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 762
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final getFloat(Ljava/lang/String;)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 778
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public final getInteger(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 766
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 831
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public keys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 843
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public removeParameters(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 786
    invoke-virtual {p0, p1, p2}, Lcom/netease/lava/nertc/impl/RtcParameters;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setFloat(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 774
    invoke-virtual {p0, p1, p2}, Lcom/netease/lava/nertc/impl/RtcParameters;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setInteger(Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 770
    invoke-virtual {p0, p1, p2}, Lcom/netease/lava/nertc/impl/RtcParameters;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    const-string v0, "name is null"

    .line 792
    invoke-static {p1, v0}, Lcom/netease/yunxin/lite/util/Checker;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setRequestKey(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const/4 v0, 0x0

    .line 758
    invoke-virtual {p0, p1, v0}, Lcom/netease/lava/nertc/impl/RtcParameters;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setRequestKeys(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 752
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 753
    invoke-virtual {p0, v0, v1}, Lcom/netease/lava/nertc/impl/RtcParameters;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "value"
        }
    .end annotation

    .line 782
    invoke-virtual {p0, p1, p2}, Lcom/netease/lava/nertc/impl/RtcParameters;->setObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 856
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 857
    iget-object v1, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 858
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 859
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    iget-object v3, p0, Lcom/netease/lava/nertc/impl/RtcParameters;->mParameters:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    .line 861
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 864
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
