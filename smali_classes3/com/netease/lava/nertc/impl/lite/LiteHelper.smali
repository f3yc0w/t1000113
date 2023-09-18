.class public Lcom/netease/lava/nertc/impl/lite/LiteHelper;
.super Ljava/lang/Object;
.source "LiteHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableLogToDebugOutput(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    .line 408
    sget-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_NONE:Lcom/netease/lava/webrtc/Logging$Severity;

    goto :goto_0

    .line 405
    :pswitch_0
    sget-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_SENSITIVE:Lcom/netease/lava/webrtc/Logging$Severity;

    goto :goto_0

    .line 402
    :pswitch_1
    sget-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_VERBOSE:Lcom/netease/lava/webrtc/Logging$Severity;

    goto :goto_0

    .line 399
    :pswitch_2
    sget-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_DETAIL_INFO:Lcom/netease/lava/webrtc/Logging$Severity;

    goto :goto_0

    .line 396
    :pswitch_3
    sget-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_INFO:Lcom/netease/lava/webrtc/Logging$Severity;

    goto :goto_0

    .line 393
    :pswitch_4
    sget-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_WARNING:Lcom/netease/lava/webrtc/Logging$Severity;

    goto :goto_0

    .line 390
    :pswitch_5
    sget-object v0, Lcom/netease/lava/webrtc/Logging$Severity;->LS_ERROR:Lcom/netease/lava/webrtc/Logging$Severity;

    .line 411
    :goto_0
    invoke-static {v0}, Lcom/netease/lava/webrtc/Logging;->enableLogToDebugOutput(Lcom/netease/lava/webrtc/Logging$Severity;)V

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableLogToDebugOutput:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", level:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LiteHelper"

    invoke-static {v0, p0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getBufferType(Lcom/netease/lava/api/IVideoRender;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 593
    :cond_0
    sget-object v1, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$api$IVideoRender$VideoBufferType:[I

    invoke-interface {p0}, Lcom/netease/lava/api/IVideoRender;->getVideoBufferType()Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static getBufferType(I)Lcom/netease/lava/api/IVideoRender$VideoBufferType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferType"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 613
    sget-object p0, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->VIDEO_BUFFER_TYPE_RAW_DATA:Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    goto :goto_0

    .line 609
    :cond_0
    sget-object p0, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->VIDEO_BUFFER_TYPE_TEXTURE:Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    :goto_0
    return-object p0
.end method

.method public static getLiteAudioEffectOption(Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;)Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 242
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;-><init>()V

    .line 244
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/util/FileUtil;->getContentFileFDForNative(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->path:Ljava/lang/String;

    .line 245
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->loopCount:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->loopCount:I

    .line 246
    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->sendEnabled:Z

    iput-boolean v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->enableSend:Z

    .line 247
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->sendVolume:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->sendVolume:I

    .line 248
    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->playbackEnabled:Z

    iput-boolean v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->enablePlayback:Z

    .line 249
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->playbackVolume:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->playbackVolume:I

    .line 250
    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->startTimestamp:J

    iput-wide v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->startTimestamp:J

    .line 251
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->sendWithAudioType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    sget-object v2, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;->kNERtcAudioStreamTypeSub:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->sendWithType:I

    .line 252
    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->progressInterval:J

    iput-wide v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->progressInterval:J

    return-object v0
.end method

.method public static getLiteAudioEncodedFrame(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;)Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoEncodedFrame"
        }
    .end annotation

    .line 520
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;-><init>()V

    .line 521
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->payloadType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    if-nez v1, :cond_0

    const/16 v1, 0x6f

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->payloadType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    iget v1, v1, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;->intValue:I

    :goto_0
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->payloadType:I

    .line 522
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->data:[B

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->data:[B

    .line 523
    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->timeStampUs:J

    iput-wide v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->timeStampUs:J

    .line 524
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->sampleRate:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->sampleRate:I

    .line 525
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->channels:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->channels:I

    .line 526
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->samplesPerChannel:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->samplesPerChannel:I

    .line 527
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->encodedLen:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->encodedLen:I

    .line 528
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->encodedTimestamp:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->encodedTimestamp:I

    .line 529
    iget p0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->rmsLevel:I

    iput p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->rmsLevel:I

    return-object v0
.end method

.method public static getLiteAudioFrameRequestFormat(Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;)Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    .line 201
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;-><init>()V

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->getChannels()I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->channels:I

    .line 204
    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->getSampleRate()I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->sampleRate:I

    .line 205
    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->getOpMode()I

    move-result p0

    iput p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->mode:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 207
    iput-boolean p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->reset:Z

    :goto_0
    return-object v0
.end method

.method public static getLiteAudioMixingOption(Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;)Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "option"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;-><init>()V

    .line 229
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/util/FileUtil;->getContentFileFDForNative(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;->path:Ljava/lang/String;

    .line 230
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->loopCount:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;->loopCount:I

    .line 231
    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->sendEnabled:Z

    iput-boolean v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;->enableSend:Z

    .line 232
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->sendVolume:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;->sendVolume:I

    .line 233
    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->playbackEnabled:Z

    iput-boolean v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;->enablePlayback:Z

    .line 234
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->playbackVolume:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;->playbackVolume:I

    .line 235
    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->startTimeStamp:J

    iput-wide v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;->startTimestamp:J

    .line 236
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->sendWithAudioType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    sget-object v2, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;->kNERtcAudioStreamTypeSub:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;->sendWithAudioType:I

    .line 237
    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->progressInterval:J

    iput-wide v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioMixingOption;->progressInterval:J

    return-object v0
.end method

.method public static getLiteCameraConfig(Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;)Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureConfig"
        }
    .end annotation

    .line 139
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;-><init>()V

    .line 140
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->captureWidth:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->captureWidth:I

    .line 141
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->captureHeight:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->captureHeight:I

    .line 143
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->extraRotation:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    if-nez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig;->extraRotation:Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/video/NERtcCameraCaptureConfig$NERtcCaptureExtraRotation;->ordinal()I

    move-result p0

    mul-int/lit8 p0, p0, 0x5a

    :goto_0
    iput p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKCameraCaptureConfiguration;->extraRotation:I

    return-object v0
.end method

.method public static getLiteCanvasWatermarkConfig(Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;)Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 303
    :cond_0
    new-instance v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;-><init>()V

    .line 304
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;

    if-eqz v1, :cond_1

    .line 305
    new-instance v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    invoke-direct {v1}, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;-><init>()V

    iput-object v1, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    .line 306
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;

    iget v2, v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->fontColor:I

    iput v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontColor:I

    .line 307
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;

    iget v2, v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->fontSize:I

    iput v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontSize:I

    .line 308
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;

    iget v2, v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->offsetX:I

    iput v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetX:I

    .line 309
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;

    iget v2, v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->offsetY:I

    iput v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetY:I

    .line 310
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;

    iget v2, v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->wmColor:I

    iput v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmColor:I

    .line 311
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;

    iget v2, v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->wmWidth:I

    iput v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmWidth:I

    .line 312
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;

    iget v2, v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->wmHeight:I

    iput v2, v1, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmHeight:I

    .line 314
    :cond_1
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 315
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    array-length v1, v1

    .line 316
    new-array v3, v1, [Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    iput-object v3, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    .line 318
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    new-instance v5, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    invoke-direct {v5}, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;-><init>()V

    aput-object v5, v4, v3

    .line 319
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->content:Ljava/lang/String;

    iput-object v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->content:Ljava/lang/String;

    .line 320
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->fontColor:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontColor:I

    .line 321
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->fontSize:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontSize:I

    .line 322
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->offsetX:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetX:I

    .line 323
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->offsetY:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetY:I

    .line 324
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->wmColor:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmColor:I

    .line 325
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->wmWidth:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmWidth:I

    .line 326
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->wmHeight:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmHeight:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 329
    :cond_2
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    if-eqz v1, :cond_4

    .line 330
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    array-length v1, v1

    .line 331
    new-array v3, v1, [Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    iput-object v3, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    .line 333
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    new-instance v5, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    invoke-direct {v5}, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;-><init>()V

    aput-object v5, v4, v3

    .line 334
    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    .line 335
    iget-object v4, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v4, v4, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    array-length v4, v4

    .line 336
    iget-object v5, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    aget-object v5, v5, v3

    new-array v6, v4, [Landroid/graphics/Bitmap;

    iput-object v6, v5, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    .line 337
    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    iget-object v6, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    aget-object v6, v6, v3

    iget-object v6, v6, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    invoke-static {v5, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    :cond_3
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->imageWidth:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageWidth:I

    .line 340
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->imageHeight:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageHeight:I

    .line 341
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->offsetX:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetX:I

    .line 342
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->offsetY:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetY:I

    .line 343
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->fps:I

    iput v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->fps:I

    .line 344
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    aget-object v5, v5, v3

    iget-boolean v5, v5, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->loop:Z

    iput-boolean v5, v4, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->loop:Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static getLiteDistanceRolloffModel(Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "distanceRolloffModel"
        }
    .end annotation

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 371
    :cond_0
    sget-object v1, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcDistanceRolloffModel:[I

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/audio/NERtcDistanceRolloffModel;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static getLiteJoinParameter(Ljava/lang/String;Ljava/lang/String;JLcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "token",
            "channelName",
            "uid",
            "channelOptions"
        }
    .end annotation

    .line 115
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;-><init>()V

    .line 116
    iput-object p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->channelName:Ljava/lang/String;

    .line 117
    iput-wide p2, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->userId:J

    .line 118
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->userName:Ljava/lang/String;

    .line 119
    iput-object p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->token:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 121
    iget-object p0, p4, Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;->customInfo:Ljava/lang/String;

    iput-object p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->customInfo:Ljava/lang/String;

    .line 122
    iget-object p0, p4, Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;->permissionKey:Ljava/lang/String;

    iput-object p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->permissionKey:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getLiteMediaCryptoConfig(ZLcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;)Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;
    .locals 1
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

    .line 257
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;-><init>()V

    .line 258
    iput-boolean p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;->enable:Z

    if-eqz p1, :cond_1

    .line 260
    iget-object p0, p1, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;->mode:Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p1, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;->mode:Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig$EncryptionMode;->ordinal()I

    move-result p0

    :goto_0
    iput p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;->mode:I

    .line 261
    iget-object p0, p1, Lcom/netease/lava/nertc/sdk/encryption/NERtcEncryptionConfig;->key:Ljava/lang/String;

    iput-object p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKMediaCryptoConfig;->key:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public static getLiteMediaRelay(Ljava/util/Map;)[Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dstConfig"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;",
            ">;)[",
            "Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;"
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 438
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 441
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    .line 442
    new-array v0, v0, [Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;

    const/4 v1, 0x0

    .line 444
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;

    .line 445
    new-instance v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;

    invoke-direct {v3}, Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;-><init>()V

    .line 446
    invoke-virtual {v2}, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->getChannelName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;->channelName:Ljava/lang/String;

    .line 447
    invoke-virtual {v2}, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->getChannelToken()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;->channelToken:Ljava/lang/String;

    .line 448
    invoke-virtual {v2}, Lcom/netease/lava/nertc/sdk/NERtcMediaRelayParam$ChannelMediaRelayInfo;->getChannelUid()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;->userId:J

    .line 449
    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLiteMediaStreamType(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    .line 355
    :cond_0
    sget-object v1, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoStreamType:[I

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public static getLitePrivateParamKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sdkKey"
        }
    .end annotation

    const-string v0, "sdk.disable.getChannelInfo"

    .line 488
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "sdk.private.api.disable.get.channel.info"

    return-object p0

    :cond_0
    const-string v0, "sdk.getChannelInfo.custom.data"

    .line 491
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "sdk.private.api.get.channel.info.custom.data"

    return-object p0

    :cond_1
    const-string v0, "sdk.getChannelInfo.request"

    .line 494
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "sdk.private.api.get.channel.info.request"

    return-object p0

    :cond_2
    const-string v0, "sdk.getChannelInfo.response"

    .line 497
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "sdk.private.api.get.channel.info.response"

    return-object p0

    :cond_3
    const-string v0, "sdk.new.channel.scenario.type"

    .line 500
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "sdk.private.api.new.channel.scenario.type"

    :cond_4
    return-object p0
.end method

.method public static getLiteServerAddress(Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;)Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "neRtcServerAddresses"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 419
    :cond_0
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;-><init>()V

    .line 420
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->channelServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->channelServer:Ljava/lang/String;

    .line 421
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->compatServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->compatServer:Ljava/lang/String;

    .line 422
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->roomServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->roomServer:Ljava/lang/String;

    .line 423
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->statisticsServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->statisticsServer:Ljava/lang/String;

    .line 424
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->statisticsDispatchServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->statisticsDispatchServer:Ljava/lang/String;

    .line 425
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->statisticsDispatchServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->statisticsBackupServer:Ljava/lang/String;

    .line 426
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->nosLbsServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->nosLbsServer:Ljava/lang/String;

    .line 427
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->nosUploadSever:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->nosUploadSever:Ljava/lang/String;

    .line 428
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->nosTokenServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->nosTokenServer:Ljava/lang/String;

    .line 429
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->cloudProxyServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->cloudProxyServer:Ljava/lang/String;

    .line 430
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->webSocketProxyServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->webSocketProxyServer:Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->quicProxyServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->quicProxyServer:Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->mediaProxyServer:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->mediaProxyServer:Ljava/lang/String;

    .line 433
    iget-boolean p0, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->useIPv6:Z

    iput-boolean p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->useIPv6:Z

    return-object v0
.end method

.method public static getLiteSpatializerRenderMode(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 539
    :cond_0
    sget-object v1, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$audio$NERtcSpatializerRenderMode:[I

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRenderMode;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public static getLiteSpatializerRoomProperty(Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;)Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomProperty"
        }
    .end annotation

    .line 213
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;-><init>()V

    if-eqz p0, :cond_0

    .line 215
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;->roomCapacity:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomCapacity;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomCapacity;->getType()I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->roomCapacity:I

    .line 216
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;->material:Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerMaterialName;->getType()I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->material:I

    .line 217
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;->reverbBrightness:F

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reverbBrightness:F

    .line 218
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;->reflectionScalar:F

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reflectionScalar:F

    .line 219
    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;->reverbGain:F

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reverbGain:F

    .line 220
    iget p0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcSpatializerRoomProperty;->reverbTime:F

    iput p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKSpatializerRoomProperty;->reverbTime:F

    :cond_0
    return-object v0
.end method

.method public static getLiteSubStreamConfig(Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "screenConfig",
            "intent",
            "callback"
        }
    .end annotation

    .line 176
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;-><init>()V

    .line 178
    iput-object p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->intent:Ljava/lang/Object;

    .line 179
    iput-object p2, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->callback:Ljava/lang/Object;

    if-eqz p0, :cond_4

    .line 181
    iget-object p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->contentPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->contentPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig$NERtcSubStreamContentPrefer;->ordinal()I

    move-result p1

    :goto_0
    iput p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->preference:I

    .line 182
    iget p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->width:I

    if-eqz p1, :cond_1

    iget p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->height:I

    if-nez p1, :cond_2

    .line 183
    :cond_1
    new-instance p1, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;

    invoke-direct {p1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;-><init>()V

    .line 184
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->videoProfile:I

    iput v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->profile:I

    .line 185
    invoke-static {p1}, Lcom/netease/yunxin/lite/LiteEngineCenter;->getResolutionWithProfileType(Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;)V

    .line 186
    invoke-virtual {p1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->getHeight()I

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    invoke-virtual {p1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->width:I

    .line 188
    invoke-virtual {p1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->getHeight()I

    move-result p1

    iput p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->height:I

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->frameRate:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    invoke-virtual {p1}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->getValue()I

    move-result p1

    iput p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->frameRate:I

    .line 192
    iget p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->minFramerate:I

    iput p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->minFrameRate:I

    .line 193
    iget p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->bitrate:I

    iput p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->bitrate:I

    .line 194
    iget p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->minBitrate:I

    iput p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->minBitrate:I

    .line 195
    iget-object p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcScreenConfig;->degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->ordinal()I

    move-result p2

    :goto_1
    iput p2, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->degradationPreference:I

    :cond_4
    return-object v0
.end method

.method public static getLiteSwitchParameter(Ljava/lang/String;Ljava/lang/String;Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;)Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;
    .locals 1
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

    .line 128
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;-><init>()V

    .line 129
    iput-object p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->token:Ljava/lang/String;

    .line 130
    iput-object p1, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->channelName:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 132
    iget-object p0, p2, Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;->customInfo:Ljava/lang/String;

    iput-object p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->customInfo:Ljava/lang/String;

    .line 133
    iget-object p0, p2, Lcom/netease/lava/nertc/sdk/NERtcJoinChannelOptions;->permissionKey:Ljava/lang/String;

    iput-object p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->permissionKey:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getLiteVideoConfig(Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;)Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoConfig"
        }
    .end annotation

    .line 148
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;-><init>()V

    .line 149
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->width:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->width:I

    .line 150
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->height:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->height:I

    .line 151
    iget v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->width:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->height:I

    if-nez v1, :cond_1

    .line 152
    :cond_0
    new-instance v1, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;

    invoke-direct {v1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;-><init>()V

    .line 153
    iget v3, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->videoProfile:I

    iput v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->profile:I

    .line 154
    iput v2, v1, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->cropMode:I

    .line 155
    invoke-static {v1}, Lcom/netease/yunxin/lite/LiteEngineCenter;->getResolutionWithProfileType(Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;)V

    .line 156
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->getWidth()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->getHeight()I

    move-result v3

    if-eqz v3, :cond_1

    .line 157
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->getWidth()I

    move-result v3

    iput v3, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->width:I

    .line 158
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/model/LiteSDKVideoProfileUtil;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->height:I

    .line 161
    :cond_1
    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->frontCamera:Z

    iput-boolean v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->frontCamera:Z

    .line 162
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->colorFormat:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->colorFormat:I

    .line 163
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->degradationPrefer:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcDegradationPreference;->ordinal()I

    move-result v1

    :goto_0
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->degradationPreference:I

    .line 164
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->videoCropMode:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->cropMode:I

    .line 165
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->mirrorMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->mirrorMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoMirrorMode;->ordinal()I

    move-result v1

    :goto_1
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->mirrorMode:I

    .line 166
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->orientationMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->orientationMode:Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig$NERtcVideoOutputOrientationMode;->ordinal()I

    move-result v2

    :goto_2
    iput v2, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->orientationMode:I

    .line 167
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->frameRate:Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/video/NERtcEncodeConfig$NERtcVideoFrameRate;->getValue()I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->frameRate:I

    .line 168
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->minFramerate:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->minFrameRate:I

    .line 169
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->bitrate:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->bitrate:I

    .line 170
    iget p0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoConfig;->minBitrate:I

    iput p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->minBitrate:I

    return-object v0
.end method

.method public static getLiteVideoCorrection(Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;)Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "neRtcConfig"
        }
    .end annotation

    .line 456
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->topLeft:Landroid/graphics/PointF;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->topLeft:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    :goto_0
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topLeftX:F

    .line 461
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->topLeft:Landroid/graphics/PointF;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->topLeft:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    :goto_1
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topLeftY:F

    .line 462
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->topRight:Landroid/graphics/PointF;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->topRight:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    :goto_2
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topRightX:F

    .line 463
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->topRight:Landroid/graphics/PointF;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->topRight:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    :goto_3
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->topRightY:F

    .line 464
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->bottomLeft:Landroid/graphics/PointF;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->bottomLeft:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    :goto_4
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomLeftX:F

    .line 465
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->bottomLeft:Landroid/graphics/PointF;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->bottomLeft:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    :goto_5
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomLeftY:F

    .line 466
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->bottomRight:Landroid/graphics/PointF;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_6

    :cond_7
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->bottomRight:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    :goto_6
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomRightX:F

    .line 467
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->bottomRight:Landroid/graphics/PointF;

    if-nez v1, :cond_8

    goto :goto_7

    :cond_8
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->bottomRight:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->y:F

    :goto_7
    iput v2, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->bottomRightY:F

    .line 468
    iget v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->canvasWidth:F

    float-to-int v1, v1

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->canvasWidth:I

    .line 469
    iget v1, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->canvasHeight:F

    float-to-int v1, v1

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->canvasHeight:I

    .line 470
    iget-boolean p0, p0, Lcom/netease/lava/nertc/sdk/NERtcVideoCorrectionConfiguration;->enableMirror:Z

    iput-boolean p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoCorrectionConfiguration;->enableMirror:Z

    return-object v0
.end method

.method public static getLiteVideoEncodedFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;)Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoEncodedFrame"
        }
    .end annotation

    .line 507
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;-><init>()V

    .line 508
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->codecType:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    if-nez v1, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->codecType:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    iget v1, v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;->intValue:I

    :goto_0
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->codecType:I

    .line 509
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->frameType:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->frameType:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    iget v1, v1, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->intValue:I

    :goto_1
    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->frameType:I

    .line 510
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->nalData:[B

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->nalData:[B

    .line 511
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->nalLengths:[I

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->nalLengths:[I

    .line 512
    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->timestampUs:J

    iput-wide v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->timestampUs:J

    .line 513
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->height:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->height:I

    .line 514
    iget p0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->width:I

    iput p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->width:I

    return-object v0
.end method

.method public static getLiteVideoWatermarkConfig(Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;)Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    if-eqz p0, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 270
    :cond_0
    new-instance v0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;-><init>()V

    .line 271
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;->watermarkType:I

    .line 272
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    sget-object v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeImage:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    if-ne v1, v2, :cond_1

    .line 273
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->imageWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;

    .line 274
    new-instance v11, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;

    iget v3, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->wmAlpha:F

    iget v4, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->wmWidth:I

    iget v5, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->wmHeight:I

    iget v6, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->offsetX:I

    iget v7, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->offsetY:I

    iget-object v8, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->imagePaths:Ljava/util/ArrayList;

    iget v9, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->fps:I

    iget-boolean v10, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->loop:Z

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;-><init>(FIIIILjava/util/ArrayList;IZ)V

    iput-object v11, v0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;->imageWatermark:Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    sget-object v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeText:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    if-ne v1, v2, :cond_2

    .line 282
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->textWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;

    .line 283
    new-instance v13, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;

    iget-object v3, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->content:Ljava/lang/String;

    iget-object v4, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->fontNameOrPath:Ljava/lang/String;

    iget v5, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->fontColor:I

    iget v6, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->fontSize:I

    iget v7, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmAlpha:F

    iget v8, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmWidth:I

    iget v9, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmColor:I

    iget v10, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmHeight:I

    iget v11, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->offsetX:I

    iget v12, v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->offsetY:I

    move-object v2, v13

    invoke-direct/range {v2 .. v12}, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IIFIIIII)V

    iput-object v13, v0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;->textWatermark:Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;

    .line 289
    :cond_2
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    sget-object v2, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeTimestamp:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    if-ne v1, v2, :cond_3

    .line 290
    iget-object p0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;

    .line 291
    new-instance v11, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->fontNameOrPath:Ljava/lang/String;

    iget v3, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->fontColor:I

    iget v4, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->fontSize:I

    iget v5, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmColor:I

    iget v6, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmAlpha:F

    iget v7, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmWidth:I

    iget v8, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmHeight:I

    iget v9, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->offsetX:I

    iget v10, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->offsetY:I

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;-><init>(Ljava/lang/String;IIIFIIII)V

    iput-object v11, v0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getLiteVirtualBackgroundSource(Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;)Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "neSource"
        }
    .end annotation

    .line 475
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 480
    :cond_0
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->backgroundSourceType:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->backgroundSourceType:I

    .line 481
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->color:I

    iput v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->color:I

    .line 482
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->source:Ljava/lang/String;

    iput-object v1, v0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->source:Ljava/lang/String;

    .line 483
    iget p0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVirtualBackgroundSource;->blur_degree:I

    iput p0, v0, Lcom/netease/yunxin/lite/model/LiteSDKVirtualBackgroundSource;->blur_degree:I

    return-object v0
.end method

.method public static getVideoStreamTypeString(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "streamType"
        }
    .end annotation

    if-nez p0, :cond_0

    const-string p0, "null"

    return-object p0

    .line 565
    :cond_0
    sget-object v0, Lcom/netease/lava/nertc/impl/lite/LiteHelper$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoStreamType:[I

    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const-string p0, "VideoStreamTypeMain"

    goto :goto_0

    :cond_1
    const-string p0, "VideoStreamTypeSub"

    :goto_0
    return-object p0
.end method

.method public static isExternalRender(Lcom/netease/lava/api/IVideoRender;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "render"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 583
    :cond_0
    invoke-interface {p0}, Lcom/netease/lava/api/IVideoRender;->isExternalRender()Z

    move-result p0

    return p0
.end method

.method public static liteChannelStateToSDK(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "liteState"
        }
    .end annotation

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x2

    :goto_0
    :pswitch_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
