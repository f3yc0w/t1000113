.class public Lcom/netease/yunxin/lite/LiteEngine;
.super Ljava/lang/Object;
.source "LiteEngine.java"


# instance fields
.field private mAudioFrameObserverNativeHandle:J

.field private mMediaStatsObserverNativeHandle:J

.field private mNativeHandle:J

.field private mPreDecodeObserverNativeHandle:J

.field private final mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mSinkNativeHandle:J

.field private mVideoEncoderQosObserverNativeHandle:J


# direct methods
.method private constructor <init>(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "sinkNativeHandle"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/LiteEngine;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 60
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteEngine;->mNativeHandle:J

    .line 61
    iput-wide p3, p0, Lcom/netease/yunxin/lite/LiteEngine;->mSinkNativeHandle:J

    return-void
.end method

.method private getAudioFrameObserverNativeHandle()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteEngine;->mAudioFrameObserverNativeHandle:J

    return-wide v0
.end method

.method private getMediaStatsObserverNativeHandle()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteEngine;->mMediaStatsObserverNativeHandle:J

    return-wide v0
.end method

.method private getNativeHandle()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteEngine;->mNativeHandle:J

    return-wide v0
.end method

.method private getPreDecodeObserverNativeHandle()J
    .locals 2

    .line 96
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteEngine;->mPreDecodeObserverNativeHandle:J

    return-wide v0
.end method

.method private getReadLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/netease/yunxin/lite/LiteEngine;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method private getSinkNativeHandle()J
    .locals 2

    .line 76
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteEngine;->mSinkNativeHandle:J

    return-wide v0
.end method

.method private getVideoEncoderQosObserverNativeHandle()J
    .locals 2

    .line 106
    iget-wide v0, p0, Lcom/netease/yunxin/lite/LiteEngine;->mVideoEncoderQosObserverNativeHandle:J

    return-wide v0
.end method

.method private getWriteLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/netease/yunxin/lite/LiteEngine;->mReadWriteLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method private setAudioFrameObserverNativeHandle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioFrameObserverNativeHandle"
        }
    .end annotation

    .line 91
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteEngine;->mAudioFrameObserverNativeHandle:J

    return-void
.end method

.method private setMediaStatsObserverNativeHandle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaStatsObserverNativeHandle"
        }
    .end annotation

    .line 121
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteEngine;->mMediaStatsObserverNativeHandle:J

    return-void
.end method

.method private setNativeHandle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 71
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteEngine;->mNativeHandle:J

    return-void
.end method

.method private setPreDecodeObserverNativeHandle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preDecodeObserverNativeHandle"
        }
    .end annotation

    .line 101
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteEngine;->mPreDecodeObserverNativeHandle:J

    return-void
.end method

.method private setSinkNativeHandle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sinkNativeHandle"
        }
    .end annotation

    .line 81
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteEngine;->mSinkNativeHandle:J

    return-void
.end method

.method private setVideoEncoderQosObserverNativeHandle(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoEncoderQosObserverNativeHandle"
        }
    .end annotation

    .line 111
    iput-wide p1, p0, Lcom/netease/yunxin/lite/LiteEngine;->mVideoEncoderQosObserverNativeHandle:J

    return-void
.end method


# virtual methods
.method public native EnableSpatializer(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public native EnableSpatializerRoomEffects(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public native SetSpatializerRenderMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation
.end method

.method public native SetSpatializerRoomProperty(Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "room_property"
        }
    .end annotation
.end method

.method public native UpdateSpatializerAudioRecvRange(III)I
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

.method public native UpdateSpatializerSelfPosition([F[F[F[F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "speaker_position",
            "speaker_quaternion",
            "head_position",
            "head_quaternion"
        }
    .end annotation
.end method

.method public native addExtraTemplate(ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "path"
        }
    .end annotation
.end method

.method public native addLiveStreamTask(Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "callback"
        }
    .end annotation
.end method

.method public native adjustChannelPlaybackSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public native adjustLoopbackRecordingSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public native adjustPlaybackSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public native adjustRecordingSignalVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public native adjustUserPlaybackSignalVolume(JI)I
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

.method public native destroyBeauty()I
.end method

.method public native enableAudioVolumeIndication(ZJZ)I
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

.method public native enableBeauty(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public native enableDualStreamMode(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public native enableEarback(ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "volume"
        }
    .end annotation
.end method

.method public native enableLocalAudio(ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "type"
        }
    .end annotation
.end method

.method public native enableLocalData(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation
.end method

.method public native enableLocalVideo(ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "streamType"
        }
    .end annotation
.end method

.method public native enableLocalVideoCorrection(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public native enableLoopbackRecording(ZLandroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "intent",
            "callback"
        }
    .end annotation
.end method

.method public native enableMediaCrypto(Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public native enableMediaPub(ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "mediaType"
        }
    .end annotation
.end method

.method public native enableSuperResolution(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public native enableVirtualBackground(ZLcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "source"
        }
    .end annotation
.end method

.method public native executePrivateApi(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation
.end method

.method public native getAudioMixingCurrentPosition()I
.end method

.method public native getAudioMixingDuration()I
.end method

.method public native getAudioMixingPitch()I
.end method

.method public native getAudioMixingPlaybackVolume()I
.end method

.method public native getAudioMixingSendVolume()I
.end method

.method public native getBeautyEffectValue(ILjava/lang/Float;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation
.end method

.method public native getCameraCurrentZoom()F
.end method

.method public native getCameraMaxZoom()F
.end method

.method public native getChannelName()Ljava/lang/String;
.end method

.method public native getConnectionState()I
.end method

.method public native getCurrentCamera()I
.end method

.method public native getEffectCurrentPosition(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public native getEffectDuration(I)J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public native getEffectPitch(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public native getEffectPlaybackVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public native getEffectSendVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public native getLoudspeakerMode()Z
.end method

.method public native getMainChannelUid()J
.end method

.method public native getNtpTimeOffset()J
.end method

.method public native getParameters(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "extraInfo"
        }
    .end annotation
.end method

.method public native getRoomSessionInfo()Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;
.end method

.method public native initBeauty(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation
.end method

.method public native initialize(Lcom/netease/yunxin/lite/model/LiteSDKEngineParameter;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation
.end method

.method public native isCameraExposurePositionSupported()Z
.end method

.method public native isCameraFocusSupported()Z
.end method

.method public native isCameraTorchOn()Z
.end method

.method public native isCameraTorchSupported()Z
.end method

.method public native isCameraZoomSupported()Z
.end method

.method public native isChannelJoinedWithUserId(Ljava/lang/String;J)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "userId"
        }
    .end annotation
.end method

.method public native isPlayoutDeviceMute()Z
.end method

.method public native isRecordDeviceMute()Z
.end method

.method public native join(Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation
.end method

.method public native leave()I
.end method

.method public native muteLocalAudio(ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mute",
            "type"
        }
    .end annotation
.end method

.method public native muteLocalVideo(ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mute",
            "streamType"
        }
    .end annotation
.end method

.method public native pauseAllEffects()I
.end method

.method public native pauseAudioMixing()I
.end method

.method public native pauseEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public native playEffect(ILcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;)I
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

.method public native pullExternalAudioFrame(Ljava/nio/ByteBuffer;I)I
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

.method public native pushExternalAudioEncodedFrame(ILcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "audioEncodedFrame"
        }
    .end annotation
.end method

.method public native pushExternalAudioFrame([BIIIJI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "samplesPerChannel",
            "sampleRate",
            "channels",
            "syncTimestamp",
            "type"
        }
    .end annotation
.end method

.method public native pushExternalVideoEncodedFrame(ILcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "videoEncodedFrame"
        }
    .end annotation
.end method

.method public native pushExternalVideoFrame(ILcom/netease/yunxin/lite/model/LiteSDKVideoFrame;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "videoFrame"
        }
    .end annotation
.end method

.method public native removeExtraTemplate(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public native removeLiveStreamTask(Ljava/lang/String;Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "taskId",
            "callback"
        }
    .end annotation
.end method

.method public native reportApiEvent(Ljava/lang/String;ILjava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "jsonParam"
        }
    .end annotation
.end method

.method public native reportCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
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
.end method

.method public native reportNotifyConsEvent(Ljava/lang/String;J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventName",
            "consumeTime"
        }
    .end annotation
.end method

.method public native resumeAllEffects()I
.end method

.method public native resumeAudioMixing()I
.end method

.method public native resumeEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public native sendData([BJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "dataSize"
        }
    .end annotation
.end method

.method public native sendSEIMessage(Ljava/lang/String;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "streamType"
        }
    .end annotation
.end method

.method public native setAudioEffectPreset(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation
.end method

.method public native setAudioFocusMode(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "focusMode"
        }
    .end annotation
.end method

.method public native setAudioFrameObserver(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public native setAudioMixingPitch(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation
.end method

.method public native setAudioMixingPlaybackVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public native setAudioMixingPosition(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation
.end method

.method public native setAudioMixingSendVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public native setAudioProfile(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "profile",
            "scenario"
        }
    .end annotation
.end method

.method public native setAudioSubscribeOnlyBy([J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uidArray"
        }
    .end annotation
.end method

.method public native setBeautyEffect(IF)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "value"
        }
    .end annotation
.end method

.method public native setCameraCaptureConfig(Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "streamType"
        }
    .end annotation
.end method

.method public native setCameraExposurePosition(FF)I
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

.method public native setCameraFocusPosition(FF)I
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

.method public native setCameraTorchOn(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation
.end method

.method public native setCameraZoomFactor(F)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factor"
        }
    .end annotation
.end method

.method public native setChannelProfile(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelProfile"
        }
    .end annotation
.end method

.method public native setCloudProxy(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public native setEarbackVolume(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation
.end method

.method public native setEffectPitch(II)I
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

.method public native setEffectPlaybackVolume(II)I
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

.method public native setEffectPosition(IJ)I
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

.method public native setEffectSendVolume(II)I
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

.method public native setExternalAudioRender(ZII)I
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

.method public native setExternalAudioSource(ZIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "sampleRate",
            "channels",
            "type"
        }
    .end annotation
.end method

.method public native setExternalVideoSource(ZI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "streamType"
        }
    .end annotation
.end method

.method public native setHighPriorityRemoteAudioStream(ZJI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "enable",
            "user_id",
            "type"
        }
    .end annotation
.end method

.method public native setInitializeDone(J)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elapsedTime"
        }
    .end annotation
.end method

.method public native setLocalMediaPriority(IZ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "priority",
            "preemptive"
        }
    .end annotation
.end method

.method public native setLocalVideoCorrectionConfig(ZLcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "reset",
            "config"
        }
    .end annotation
.end method

.method public native setLocalVideoMirrorMode(II)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "mirrorMode"
        }
    .end annotation
.end method

.method public native setLocalVideoWatermarkConfigs(ILcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "streamType",
            "config"
        }
    .end annotation
.end method

.method public native setLocalVoiceEqualization(II)I
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

.method public native setLocalVoicePitch(D)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pitch"
        }
    .end annotation
.end method

.method public native setLocalVoiceReverbParam(Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reverbParam"
        }
    .end annotation
.end method

.method public native setLoudspeakerMode(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public native setMediaStatsObserver(Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public native setMixedAudioFrameParameters(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public native setPlaybackAudioFrameParameters(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public native setPlayoutDeviceMute(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public native setPreDecodeObserver(Lcom/netease/yunxin/lite/model/LiteSDKPreDecodeObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public native setPublishFallbackOption(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public native setRecordDeviceMute(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mute"
        }
    .end annotation
.end method

.method public native setRecordingAudioFrameParameters(Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation
.end method

.method public native setStreamAlignmentProperty(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public native setSubscribeFallbackOption(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public native setUserRole(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "role"
        }
    .end annotation
.end method

.method public native setVideoEncoderConfig(Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "streamType"
        }
    .end annotation
.end method

.method public native setVideoEncoderQosObserver(Lcom/netease/yunxin/lite/model/LiteSDKVideoEncoderQosObserver;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation
.end method

.method public native setVoiceBeautifierPreset(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preset"
        }
    .end annotation
.end method

.method public native setupLocalCanvas(ILcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "canvas"
        }
    .end annotation
.end method

.method public native setupRemoteCanvas(JILcom/netease/yunxin/lite/model/LiteSDKVideoCanvas;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "userId",
            "type",
            "canvas"
        }
    .end annotation
.end method

.method public native startAudioDump()I
.end method

.method public native startAudioDumpWithType(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation
.end method

.method public native startAudioMixing(Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation
.end method

.method public native startAudioRecording(Ljava/lang/String;II)I
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

.method public native startAudioRecordingWithConfig(Ljava/lang/String;IIII)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "sampleRate",
            "quality",
            "pos",
            "cycleTime"
        }
    .end annotation
.end method

.method public native startMediaRelayInfos([Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relayItems"
        }
    .end annotation
.end method

.method public native startPreview(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation
.end method

.method public native startScreenCapture(Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public native stopAllEffects()I
.end method

.method public native stopAudioDump()I
.end method

.method public native stopAudioMixing()I
.end method

.method public native stopAudioRecording()I
.end method

.method public native stopEffect(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectId"
        }
    .end annotation
.end method

.method public native stopMediaRelayInfos()I
.end method

.method public native stopPreview(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation
.end method

.method public native stopScreenCapture()I
.end method

.method public native subscribeAllRemoteAudio(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscribe"
        }
    .end annotation
.end method

.method public native subscribeRemoteAudio(ZJI)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "subscribe",
            "userId",
            "type"
        }
    .end annotation
.end method

.method public native subscribeRemoteData(ZJ)I
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

.method public native subscribeRemoteVideo(ZIIJ)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "subscribed",
            "subscribeType",
            "streamType",
            "userId"
        }
    .end annotation
.end method

.method public native switchCamera()I
.end method

.method public native switchCameraWithPosition(I)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraPos"
        }
    .end annotation
.end method

.method public native switchChannel(Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation
.end method

.method public native takeLocalSnapshot(ILcom/netease/yunxin/lite/model/LiteSDKTakeSnapshotCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "callback"
        }
    .end annotation
.end method

.method public native takeRemoteSnapshot(JILcom/netease/yunxin/lite/model/LiteSDKTakeSnapshotCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "uid",
            "type",
            "callback"
        }
    .end annotation
.end method

.method public native unInitialize()I
.end method

.method public native updateLiveStreamTask(Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskInfo;Lcom/netease/yunxin/lite/model/live/LiteSDKLiveStreamTaskCallback;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "info",
            "callback"
        }
    .end annotation
.end method

.method public native updateMediaRelayInfos([Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "relayItems"
        }
    .end annotation
.end method

.method public native updatePermissionKey(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation
.end method

.method public native updateScreenCaptureParameters(Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public native uploadSdkInfo()I
.end method
