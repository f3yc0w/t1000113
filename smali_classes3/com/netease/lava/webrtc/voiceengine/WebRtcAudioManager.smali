.class public Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;
.super Ljava/lang/Object;
.source "WebRtcAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager$VolumeLogger;
    }
.end annotation


# static fields
.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final DEBUG:Z = false

.field private static final DEFAULT_FRAME_PER_BUFFER:I = 0x100

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioManager"

.field private static final blacklistDeviceForAAudioUsage:Z = true

.field private static blacklistDeviceForOpenSLESUsage:Z

.field private static blacklistDeviceForOpenSLESUsageIsOverridden:Z

.field private static useStereoInput:Z

.field private static useStereoOutput:Z


# instance fields
.field private aAudio:Z

.field private final audioManager:Landroid/media/AudioManager;

.field private hardwareAEC:Z

.field private hardwareAGC:Z

.field private hardwareNS:Z

.field private initialized:Z

.field private inputBufferSize:I

.field private inputChannels:I

.field private lowLatencyInput:Z

.field private lowLatencyOutput:Z

.field private final nativeAudioManager:J

.field private nativeChannels:I

.field private nativeSampleRate:I

.field private outputBufferSize:I

.field private outputChannels:I

.field private proAudio:Z

.field private sampleRate:I


# direct methods
.method constructor <init>(J)V
    .locals 17

    move-object/from16 v15, p0

    .line 183
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "WebRtcAudioManager"

    invoke-static {v13, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v11, p1

    .line 185
    iput-wide v11, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->nativeAudioManager:J

    .line 187
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    .line 192
    invoke-direct/range {p0 .. p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->storeAudioParameters()V

    .line 193
    iget v1, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v2, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->outputChannels:I

    iget v3, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->inputChannels:I

    iget-boolean v4, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->hardwareAEC:Z

    iget-boolean v5, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->hardwareAGC:Z

    iget-boolean v6, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->hardwareNS:Z

    iget-boolean v7, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    iget-boolean v8, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyInput:Z

    iget-boolean v9, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->proAudio:Z

    iget-boolean v10, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->aAudio:Z

    iget v14, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->outputBufferSize:I

    iget v0, v15, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->inputBufferSize:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move v11, v14

    move/from16 v12, v16

    move-object/from16 v16, v13

    move-wide/from16 v13, p1

    invoke-direct/range {v0 .. v14}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->nativeCacheAudioParameters(IIIZZZZZZZIIJ)V

    .line 196
    invoke-static/range {v16 .. v16}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 408
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private dispose()V
    .locals 2

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispose"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private getApiLevel()I
    .locals 1

    .line 273
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private getInputBufferSize()I
    .locals 1

    .line 269
    iget v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->inputBufferSize:I

    return v0
.end method

.method private getLowLatencyInputFramesPerBuffer()I
    .locals 1

    .line 389
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyInputSupported()Z

    move-result v0

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 390
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->getLowLatencyOutputFramesPerBuffer()I

    move-result v0

    return v0
.end method

.method private getLowLatencyOutputFramesPerBuffer()I
    .locals 3

    .line 353
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->assertTrue(Z)V

    .line 354
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x100

    const/16 v2, 0x11

    if-ge v0, v2, :cond_0

    return v1

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string v2, "android.media.property.OUTPUT_FRAMES_PER_BUFFER"

    .line 358
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 359
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :goto_0
    return v1
.end method

.method private static getMinInputFrameSize(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    const/4 v1, 0x2

    .line 400
    invoke-static {p0, p1, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result p0

    div-int/2addr p0, v0

    return p0
.end method

.method private static getMinOutputFrameSize(II)I
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    const/4 v1, 0x2

    .line 382
    invoke-static {p0, p1, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p0

    div-int/2addr p0, v0

    return p0
.end method

.method private getNativeOutputSampleRate()I
    .locals 5

    .line 324
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->runningOnEmulator()Z

    move-result v0

    const-string v1, "WebRtcAudioManager"

    if-eqz v0, :cond_0

    const-string v0, "Running emulator, overriding sample rate to 8 kHz."

    .line 325
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1f40

    return v0

    .line 330
    :cond_0
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->isDefaultSampleRateOverridden()Z

    move-result v0

    const-string v2, " Hz"

    if-eqz v0, :cond_1

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default sample rate is overriden to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    return v0

    .line 337
    :cond_1
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->getSampleRateForApiLevel()I

    move-result v0

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sample rate is set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private getOutputBufferSize()I
    .locals 1

    .line 277
    iget v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->outputBufferSize:I

    return v0
.end method

.method private getSampleRateForApiLevel()I
    .locals 2

    .line 343
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    .line 344
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    return v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    const-string v1, "android.media.property.OUTPUT_SAMPLE_RATE"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 347
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getDefaultSampleRateHz()I

    move-result v0

    goto :goto_0

    .line 348
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0
.end method

.method public static declared-synchronized getStereoInput()Z
    .locals 2

    const-class v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-boolean v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->useStereoInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getStereoOutput()Z
    .locals 2

    const-class v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-boolean v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->useStereoOutput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private hasEarpiece()Z
    .locals 2

    .line 282
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private init()Z
    .locals 4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioManager"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    .line 204
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "audio mode is: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    .line 205
    invoke-virtual {v3}, Landroid/media/AudioManager;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->modeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iput-boolean v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->initialized:Z

    return v2
.end method

.method private isAAudioSupported()Z
    .locals 2

    const-string v0, "WebRtcAudioManager"

    const-string v1, "AAudio support is currently disabled on all devices!"

    .line 315
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private static isAcousticEchoCancelerSupported()Z
    .locals 1

    .line 369
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;->canUseAcousticEchoCanceler()Z

    move-result v0

    return v0
.end method

.method private isCommunicationModeEnabled()Z
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDeviceBlacklistedForOpenSLESUsage()Z
    .locals 3

    .line 224
    sget-boolean v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z

    goto :goto_0

    .line 226
    :cond_0
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->deviceIsBlacklistedForOpenSLESUsage()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is blacklisted for OpenSL ES usage!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebRtcAudioManager"

    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 231
    :cond_1
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "qcom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "qct"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 233
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "qualcomm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 234
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "msm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 235
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sm"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 236
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "samsung"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 237
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "exynos"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 238
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mtk"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 239
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mediatek"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mt"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    nop

    :cond_2
    return v1
.end method

.method private isLowLatencyOutputSupported()Z
    .locals 2

    .line 288
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.low_latency"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isNoiseSuppressorSupported()Z
    .locals 1

    .line 372
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;->canUseNoiseSuppressor()Z

    move-result v0

    return v0
.end method

.method private isProAudioSupported()Z
    .locals 2

    .line 306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 307
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.audio.pro"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native nativeCacheAudioParameters(IIIZZZZZZZIIJ)V
.end method

.method public static declared-synchronized setBlacklistDeviceForOpenSLESUsage(Z)V
    .locals 2

    const-class v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v0

    const/4 v1, 0x1

    .line 62
    :try_start_0
    sput-boolean v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsageIsOverridden:Z

    .line 63
    sput-boolean p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->blacklistDeviceForOpenSLESUsage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setStereoInput(Z)V
    .locals 4

    const-class v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "WebRtcAudioManager"

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding default input behavior: setStereoInput("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sput-boolean p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->useStereoInput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized setStereoOutput(Z)V
    .locals 4

    const-class v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "WebRtcAudioManager"

    .line 71
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Overriding default output behavior: setStereoOutput("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sput-boolean p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->useStereoOutput:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private storeAudioParameters()V
    .locals 3

    .line 250
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->getStereoOutput()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->outputChannels:I

    .line 251
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->getStereoInput()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iput v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->inputChannels:I

    .line 252
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->getNativeOutputSampleRate()I

    move-result v0

    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    .line 253
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->isAcousticEchoCancelerSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->hardwareAEC:Z

    const/4 v0, 0x0

    .line 256
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->hardwareAGC:Z

    .line 257
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->isNoiseSuppressorSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->hardwareNS:Z

    .line 258
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    .line 259
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyInputSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyInput:Z

    .line 260
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->isProAudioSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->proAudio:Z

    .line 261
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->isAAudioSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->aAudio:Z

    .line 262
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyOutput:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->getLowLatencyOutputFramesPerBuffer()I

    move-result v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->outputChannels:I

    .line 263
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->getMinOutputFrameSize(II)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->outputBufferSize:I

    .line 264
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->lowLatencyInput:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->getLowLatencyInputFramesPerBuffer()I

    move-result v0

    goto :goto_3

    :cond_3
    iget v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->sampleRate:I

    iget v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->inputChannels:I

    .line 265
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->getMinInputFrameSize(II)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->inputBufferSize:I

    return-void
.end method


# virtual methods
.method public isLowLatencyInputSupported()Z
    .locals 2

    .line 300
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioManager;->isLowLatencyOutputSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
