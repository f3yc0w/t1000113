.class public abstract Lcom/netease/lava/nertc/sdk/NERtcEx;
.super Lcom/netease/lava/nertc/sdk/NERtc;
.source "NERtcEx.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/NERtc;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/netease/lava/nertc/sdk/NERtcEx;
    .locals 1

    .line 62
    invoke-static {}, Lcom/netease/lava/nertc/impl/NERtcCore;->getInstance()Lcom/netease/lava/nertc/impl/NERtcCore;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract EnableSpatializer(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract EnableSpatializerRoomEffects(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract SetSpatializerRenderMode(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public abstract SetSpatializerRoomProperty(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "room_property"
        }
    .end annotation
.end method

.method public abstract UpdateSpatializerAudioRecvRange(IILcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "audible_distance",
            "conversational_distance",
            "roll_off"
        }
    .end annotation
.end method

.method public abstract UpdateSpatializerSelfPosition(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerPositionInfo;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation
.end method

.method public abstract addBeautyFilter(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public abstract addBeautyMakeup(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public abstract addBeautySticker(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public abstract addLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/AddLiveTaskCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskInfo",
            "addLiveTaskCallback"
        }
    .end annotation
.end method

.method public abstract adjustChannelPlaybackSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract adjustLoopBackRecordingSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract adjustPlaybackSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract adjustRecordingSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract adjustUserPlaybackSignalVolume(JI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "volume"
        }
    .end annotation
.end method

.method public abstract createChannel(Ljava/lang/String;)Lcom/netease/lava/nertc/sdk/channel/NERtcChannel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelName"
        }
    .end annotation
.end method

.method public abstract enableAudioVolumeIndication(ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "interval"
        }
    .end annotation
.end method

.method public abstract enableAudioVolumeIndication(ZIZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "interval",
            "enableVad"
        }
    .end annotation
.end method

.method public abstract enableBeauty(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableDualStreamMode(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableEarback(ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "volume"
        }
    .end annotation
.end method

.method public abstract enableEncryption(ZLcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "config"
        }
    .end annotation
.end method

.method public abstract enableLocalData(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public abstract enableLocalSubStreamAudio(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableLoopbackRecording(ZLandroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "mediaProjectionResultIntent",
            "callback"
        }
    .end annotation
.end method

.method public abstract enableMediaPub(IZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaType",
            "enable"
        }
    .end annotation
.end method

.method public abstract enableSuperResolution(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableVideoCorrection(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract enableVirtualBackground(ZLcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "backgroundSource"
        }
    .end annotation
.end method

.method public abstract getAudioMixingCurrentPosition()J
.end method

.method public abstract getAudioMixingDuration()J
.end method

.method public abstract getAudioMixingPitch()I
.end method

.method public abstract getAudioMixingPlaybackVolume()I
.end method

.method public abstract getAudioMixingSendVolume()I
.end method

.method public abstract getCameraCurrentZoom()I
.end method

.method public abstract getCameraMaxZoom()I
.end method

.method public abstract getConnectionState()I
.end method

.method public abstract getCurrentCamera()I
.end method

.method public abstract getEffectCurrentPosition(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public abstract getEffectDuration(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public abstract getEffectPitch(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public abstract getEffectPlaybackVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public abstract getEffectSendVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public abstract getNtpTimeOffset()J
.end method

.method public abstract isCameraExposurePositionSupported()Z
.end method

.method public abstract isCameraFocusSupported()Z
.end method

.method public abstract isCameraTorchSupported()Z
.end method

.method public abstract isCameraZoomSupported()Z
.end method

.method public abstract isPlayoutDeviceMute()Z
.end method

.method public abstract isRecordDeviceMute()Z
.end method

.method public abstract isSpeakerphoneOn()Z
.end method

.method public abstract muteLocalAudioStream(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public abstract muteLocalSubStreamAudio(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public abstract muteLocalVideoStream(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "mute"
        }
    .end annotation
.end method

.method public abstract muteLocalVideoStream(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public abstract pauseAllEffects()I
.end method

.method public abstract pauseAudioMixing()I
.end method

.method public abstract pauseEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public abstract playEffect(ILcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "option"
        }
    .end annotation
.end method

.method public abstract postOnGLThread(Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation
.end method

.method public abstract pullExternalAudioFrame(Ljava/nio/ByteBuffer;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "len"
        }
    .end annotation
.end method

.method public abstract pushExternalAudioEncodedFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedAudioFrame"
        }
    .end annotation
.end method

.method public abstract pushExternalAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method

.method public abstract pushExternalSubStreamAudioEncodedFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedAudioFrame"
        }
    .end annotation
.end method

.method public abstract pushExternalSubStreamAudioFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioExternalFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method

.method public abstract pushExternalVideoEncodedFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "encodedFrame"
        }
    .end annotation
.end method

.method public abstract pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method

.method public abstract pushExternalVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "frame"
        }
    .end annotation
.end method

.method public abstract removeBeautyFilter()V
.end method

.method public abstract removeBeautyMakeup()V
.end method

.method public abstract removeBeautySticker()V
.end method

.method public abstract removeLiveStreamTask(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/live/DeleteLiveTaskCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "deleteLiveTaskCallback"
        }
    .end annotation
.end method

.method public abstract reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventName",
            "customIdentify",
            "param"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract resumeAllEffects()I
.end method

.method public abstract resumeAudioMixing()I
.end method

.method public abstract resumeEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public abstract sendData(Lcom/netease/lava/nertc/sdk/NERtcDataExternalFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method

.method public abstract sendSEIMsg(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "seiMsg"
        }
    .end annotation
.end method

.method public abstract sendSEIMsg(Ljava/lang/String;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "seiMsg",
            "streamType"
        }
    .end annotation
.end method

.method public abstract setAudioEffectPreset(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation
.end method

.method public abstract setAudioFocusMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusMode"
        }
    .end annotation
.end method

.method public abstract setAudioFrameObserver(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract setAudioMixingPitch(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation
.end method

.method public abstract setAudioMixingPlaybackVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract setAudioMixingPosition(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public abstract setAudioMixingSendVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract setAudioProcessObserver(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioProcessObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioProcessObserver"
        }
    .end annotation
.end method

.method public abstract setAudioSubscribeOnlyBy([J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uidArray"
        }
    .end annotation
.end method

.method public abstract setBeautyEffect(Lcom/netease/lava/nertc/sdk/video/NERtcBeautyEffectType;F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "beautyType",
            "level"
        }
    .end annotation
.end method

.method public abstract setBeautyFilterLevel(F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setCameraExposurePosition(FF)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation
.end method

.method public abstract setCameraFocusPosition(FF)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation
.end method

.method public abstract setCameraTorchOn(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public abstract setCameraZoomFactor(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation
.end method

.method public abstract setChannelProfile(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelProfile"
        }
    .end annotation
.end method

.method public abstract setClientRole(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "role"
        }
    .end annotation
.end method

.method public abstract setCloudProxy(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "proxyType"
        }
    .end annotation
.end method

.method public abstract setEarbackVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public abstract setEffectPitch(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "pitch"
        }
    .end annotation
.end method

.method public abstract setEffectPlaybackVolume(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "volume"
        }
    .end annotation
.end method

.method public abstract setEffectPosition(IJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "position"
        }
    .end annotation
.end method

.method public abstract setEffectSendVolume(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectId",
            "volume"
        }
    .end annotation
.end method

.method public abstract setExternalAudioRender(ZII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sampleRate",
            "channels"
        }
    .end annotation
.end method

.method public abstract setExternalAudioSource(ZII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "sample_rate",
            "channels"
        }
    .end annotation
.end method

.method public abstract setExternalSubStreamAudioSource(ZII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enabled",
            "sampleRate",
            "channels"
        }
    .end annotation
.end method

.method public abstract setExternalVideoSource(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "enable"
        }
    .end annotation
.end method

.method public abstract setExternalVideoSource(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLocalExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "renderer"
        }
    .end annotation
.end method

.method public abstract setLocalMediaPriority(IZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "priority",
            "isPreemptive"
        }
    .end annotation
.end method

.method public abstract setLocalPublishFallbackOption(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public abstract setLocalVideoWatermarkConfigs(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "config"
        }
    .end annotation
.end method

.method public abstract setLocalVoiceEqualization(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bandFrequency",
            "bandGain"
        }
    .end annotation
.end method

.method public abstract setLocalVoicePitch(D)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation
.end method

.method public abstract setLocalVoiceReverbParam(Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation
.end method

.method public abstract setMixedAudioFrameParameters(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public abstract setNERtcCallback(Lcom/netease/lava/nertc/sdk/NERtcCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setPlaybackAudioFrameParameters(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public abstract setPlayoutDeviceMute(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPreDecodeObserver(Lcom/netease/lava/nertc/sdk/predecoder/NERtcPreDecodeObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public abstract setRecordDeviceMute(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRecordingAudioFrameParameters(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public abstract setRemoteExternalVideoRenderer(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;JLcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "streamType",
            "uid",
            "renderer"
        }
    .end annotation
.end method

.method public abstract setRemoteHighPriorityAudioStream(ZJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enabled",
            "uid"
        }
    .end annotation
.end method

.method public abstract setRemoteSubscribeFallbackOption(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public abstract setSpeakerphoneOn(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setStatsObserver(Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsObserver"
        }
    .end annotation
.end method

.method public abstract setStreamAlignmentProperty(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setVideoCallback(Lcom/netease/lava/nertc/sdk/video/NERtcVideoCallback;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoCallback",
            "textureWithI420"
        }
    .end annotation
.end method

.method public abstract setVideoCorrectionConfig(Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract setVideoEncoderQosObserver(Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoderQosObserver"
        }
    .end annotation
.end method

.method public abstract setVoiceBeautifierPreset(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation
.end method

.method public abstract setupLocalSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
        }
    .end annotation
.end method

.method public abstract setupRemoteSubStreamVideoCanvas(Lcom/netease/lava/api/IVideoRender;J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "render",
            "uid"
        }
    .end annotation
.end method

.method public abstract startAudioDump()I
.end method

.method public abstract startAudioDumpWithType(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dumpType"
        }
    .end annotation
.end method

.method public abstract startAudioMixing(Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public abstract startAudioRecording(Ljava/lang/String;II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "sampleRate",
            "quality"
        }
    .end annotation
.end method

.method public abstract startAudioRecordingWithConfig(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioRecordingConfiguration;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioRecordConfig"
        }
    .end annotation
.end method

.method public abstract startBeauty()I
.end method

.method public abstract startChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract startLastmileProbeTest(Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract startScreenCapture(Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenConfig",
            "mediaProjectionPermissionResultData",
            "mediaProjectionCallback"
        }
    .end annotation
.end method

.method public abstract stopAllEffects()I
.end method

.method public abstract stopAudioDump()I
.end method

.method public abstract stopAudioMixing()I
.end method

.method public abstract stopAudioRecording()I
.end method

.method public abstract stopBeauty()V
.end method

.method public abstract stopChannelMediaRelay()I
.end method

.method public abstract stopEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public abstract stopLastmileProbeTest()I
.end method

.method public abstract stopScreenCapture()V
.end method

.method public abstract subscribeRemoteData(ZJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "subscribe",
            "userID"
        }
    .end annotation
.end method

.method public abstract subscribeRemoteSubStreamAudio(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "subscribe"
        }
    .end annotation
.end method

.method public abstract subscribeRemoteSubStreamVideo(JZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uid",
            "subscribe"
        }
    .end annotation
.end method

.method public abstract switchCamera()I
.end method

.method public abstract switchCameraWithPosition(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraPos"
        }
    .end annotation
.end method

.method public abstract switchChannel(Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "channelName"
        }
    .end annotation
.end method

.method public abstract switchChannel(Ljava/lang/String;Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "channelName",
            "channelOptions"
        }
    .end annotation
.end method

.method public abstract takeLocalSnapshot(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "callback"
        }
    .end annotation
.end method

.method public abstract takeRemoteSnapshot(JLcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "streamType",
            "callback"
        }
    .end annotation
.end method

.method public abstract updateChannelMediaRelay(Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayConfiguration;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract updateLiveStreamTask(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;Lcom/netease/lava/nertc/sdk/live/UpdateLiveTaskCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskInfo",
            "updateLiveTaskCallback"
        }
    .end annotation
.end method

.method public abstract uploadSdkInfo()V
.end method
