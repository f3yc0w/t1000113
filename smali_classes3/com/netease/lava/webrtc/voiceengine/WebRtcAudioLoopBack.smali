.class public Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;
.super Ljava/lang/Object;
.source "WebRtcAudioLoopBack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackSamplesReadyCallback;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackStartErrorCode;
    }
.end annotation


# static fields
.field private static final AUDIO_RECORD_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final BUFFER_SIZE_FACTOR:I = 0x2

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioLoopBack"

.field private static audioSamplesReadyCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackSamplesReadyCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static intentCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static mCallback:Landroid/media/projection/MediaProjection$Callback;

.field private static volatile microphoneMute:Z

.field private static stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private emptyBytes:[B

.field private handler:Landroid/os/Handler;

.field private isSCOon:Z

.field private mediaProjectionManager:Landroid/media/projection/MediaProjectionManager;

.field private mediaProjectionPermissionResultData:Landroid/media/projection/MediaProjection;

.field private final nativeAudioLoopBack:J

.field private reTryCnt:I

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method constructor <init>(J)V
    .locals 3

    .line 269
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 63
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->reTryCnt:I

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WebRtcAudioLoopBack"

    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iput-wide p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->nativeAudioLoopBack:J

    .line 275
    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->reTryCnt:I

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->reportWebRtcAudioLoopBackOpened()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Landroid/media/AudioRecord;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->reportWebRtcAudioLoopBackClosed()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 43
    sget-boolean v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->microphoneMute:Z

    return v0
.end method

.method static synthetic access$400(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)[B
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->emptyBytes:[B

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->nativeAudioLoopBack:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;IJI)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->nativeDataIsRecorded(IJI)V

    return-void
.end method

.method static synthetic access$700()Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackSamplesReadyCallback;
    .locals 1

    .line 43
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioSamplesReadyCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackSamplesReadyCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->reportWebRtcAudioLoopBackError(Ljava/lang/String;)V

    return-void
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 456
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected condition to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private channelCountToConfiguration(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, 0x10

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    return p1
.end method

.method private enableBuiltInAEC(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private enableBuiltInNS(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private static getDefaultAudioSource()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method private initRecording(II)I
    .locals 10

    const/4 v0, -0x1

    .line 292
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    const/4 v3, 0x0

    if-le v1, v2, :cond_8

    .line 293
    sget-object v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->intentCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;

    invoke-interface {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;->onWebRtcAudioLoopBackNeedIntent()Landroid/media/projection/MediaProjection;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->mediaProjectionPermissionResultData:Landroid/media/projection/MediaProjection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "WebRtcAudioLoopBack"

    if-nez v1, :cond_0

    :try_start_1
    const-string p1, "error mediaProjectionPermissionResultData"

    .line 295
    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 298
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(sampleRate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", channels="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v1, Landroid/os/HandlerThread;

    const-string v4, "audio_loop_handler"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->thread:Landroid/os/HandlerThread;

    .line 301
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 302
    new-instance v1, Landroid/os/Handler;

    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->thread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->handler:Landroid/os/Handler;

    .line 304
    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->mediaProjectionPermissionResultData:Landroid/media/projection/MediaProjection;

    sget-object v5, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v4, v5, v1}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 305
    sget-object v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->intentCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;

    if-nez v1, :cond_1

    return v0

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_2

    const-string p1, "InitRecording called twice without StopRecording."

    .line 309
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->reportWebRtcAudioLoopBackInitError(Ljava/lang/String;)V

    return v0

    :cond_2
    mul-int/lit8 v1, p2, 0x2

    .line 313
    div-int/lit8 v4, p1, 0x64

    mul-int v1, v1, v4

    .line 314
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "byteBuffer.capacity: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->emptyBytes:[B

    .line 320
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->nativeAudioLoopBack:J

    invoke-direct {p0, v1, v5, v6}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    .line 325
    invoke-direct {p0, p2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->channelCountToConfiguration(I)I

    move-result p2

    const/4 v1, 0x2

    .line 327
    invoke-static {p1, p2, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    if-eq v5, v0, :cond_7

    const/4 v6, -0x2

    if-ne v5, v6, :cond_3

    goto/16 :goto_1

    .line 332
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AudioRecord.getMinBufferSize:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v5, v5, 0x2

    .line 337
    iget-object v6, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 338
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bufferSizeInBytes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v2, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    iget-object v6, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->mediaProjectionPermissionResultData:Landroid/media/projection/MediaProjection;

    invoke-direct {v2, v6}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;-><init>(Landroid/media/projection/MediaProjection;)V

    .line 341
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "audio"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/AudioManager;

    const/4 v7, 0x1

    .line 342
    invoke-virtual {v2, v7}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    const/4 v8, 0x4

    .line 344
    invoke-virtual {v2, v8}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    const/16 v8, 0xe

    .line 346
    invoke-virtual {v2, v8}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    .line 347
    invoke-virtual {v2, v3}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    const/16 v8, 0x10

    .line 348
    invoke-virtual {v2, v8}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    .line 349
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x1f

    if-ge v8, v9, :cond_4

    .line 350
    invoke-virtual {v2, v1}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    :cond_4
    const/16 v8, 0xb

    .line 352
    invoke-virtual {v2, v8}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    const/16 v8, 0xc

    .line 353
    invoke-virtual {v2, v8}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    const/4 v8, 0x6

    .line 354
    invoke-virtual {v2, v8}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->addMatchingUsage(I)Landroid/media/AudioPlaybackCaptureConfiguration$Builder;

    .line 355
    invoke-virtual {v2}, Landroid/media/AudioPlaybackCaptureConfiguration$Builder;->build()Landroid/media/AudioPlaybackCaptureConfiguration;

    move-result-object v2

    .line 356
    new-instance v8, Landroid/media/AudioRecord$Builder;

    invoke-direct {v8}, Landroid/media/AudioRecord$Builder;-><init>()V

    new-instance v9, Landroid/media/AudioFormat$Builder;

    invoke-direct {v9}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 358
    invoke-virtual {v9, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 359
    invoke-virtual {v1, p1}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 360
    invoke-virtual {p1, p2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object p1

    .line 357
    invoke-virtual {v8, p1}, Landroid/media/AudioRecord$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioRecord$Builder;

    move-result-object p1

    .line 362
    invoke-virtual {p1, v2}, Landroid/media/AudioRecord$Builder;->setAudioPlaybackCaptureConfig(Landroid/media/AudioPlaybackCaptureConfiguration;)Landroid/media/AudioRecord$Builder;

    move-result-object p1

    .line 363
    invoke-virtual {p1, v5}, Landroid/media/AudioRecord$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioRecord$Builder;

    move-result-object p1

    .line 364
    invoke-virtual {v6}, Landroid/media/AudioManager;->getMode()I

    move-result p2

    .line 365
    invoke-virtual {v6}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->isSCOon:Z

    .line 366
    invoke-virtual {v6, v3}, Landroid/media/AudioManager;->setMode(I)V

    .line 367
    invoke-virtual {p1}, Landroid/media/AudioRecord$Builder;->build()Landroid/media/AudioRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    .line 368
    invoke-virtual {v6, p2}, Landroid/media/AudioManager;->setMode(I)V

    .line 370
    iget-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-eq p1, v7, :cond_5

    goto :goto_0

    .line 375
    :cond_5
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->logMainParameters()V

    .line 376
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->logMainParametersExtended()V

    return v4

    :cond_6
    :goto_0
    const-string p1, "Failed to create a new AudioRecord instance"

    .line 371
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->reportWebRtcAudioLoopBackInitError(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->releaseAudioResources()V

    return v0

    .line 329
    :cond_7
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioRecord.getMinBufferSize failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->reportWebRtcAudioLoopBackInitError(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_8
    return v3

    :catch_0
    move-exception p1

    .line 380
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecord ctor error: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->reportWebRtcAudioLoopBackInitError(Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->releaseAudioResources()V

    .line 382
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_9

    .line 383
    sget-object p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {p1}, Landroid/media/projection/MediaProjection$Callback;->onStop()V

    :cond_9
    return v0
.end method

.method private logMainParameters()V
    .locals 2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioLoopBack: session ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    .line 440
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    .line 441
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sample rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    .line 442
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioLoopBack"

    .line 439
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMainParametersExtended()V
    .locals 2

    .line 446
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecord: buffer size in frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    .line 449
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioLoopBack"

    .line 447
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeDataIsRecorded(IJI)V
.end method

.method private releaseAudioResources()V
    .locals 2

    const-string v0, "WebRtcAudioLoopBack"

    const-string v1, "releaseAudioResources"

    .line 491
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 494
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 495
    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 501
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-le v0, v1, :cond_1

    .line 502
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->mediaProjectionPermissionResultData:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_1

    .line 503
    sget-object v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    invoke-virtual {v0, v1}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->thread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 510
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_3
    return-void
.end method

.method private reportWebRtcAudioLoopBackClosed()V
    .locals 2

    const-string v0, "WebRtcAudioLoopBack"

    const-string v1, "closed"

    .line 538
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;

    if-eqz v0, :cond_0

    .line 540
    invoke-interface {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;->onWebRtcAudioLoopBackClosed()V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioLoopBackError(Ljava/lang/String;)V
    .locals 2

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run-time recording error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioLoopBack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    .line 525
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;

    if-eqz v0, :cond_0

    .line 526
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;->onWebRtcAudioLoopBackError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioLoopBackInitError(Ljava/lang/String;)V
    .locals 2

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init recording error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioLoopBack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    .line 517
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;

    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;->onWebRtcAudioLoopBackInitError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioLoopBackOpened()V
    .locals 2

    const-string v0, "WebRtcAudioLoopBack"

    const-string v1, "opened"

    .line 531
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;

    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;->onWebRtcAudioLoopBackOpened()V

    :cond_0
    return-void
.end method

.method public static declared-synchronized setAudioSource(I)V
    .locals 0

    const-class p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;

    monitor-enter p0

    .line 470
    monitor-exit p0

    return-void
.end method

.method private setCompatAudioSource(I)V
    .locals 0

    return-void
.end method

.method public static setIntentCallback(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;)V
    .locals 2

    const-string v0, "WebRtcAudioLoopBack"

    const-string v1, "Set Intent callback"

    .line 113
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sput-object p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->intentCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackIntentCallback;

    return-void
.end method

.method public static setMediaProjectionCallback(Landroid/media/projection/MediaProjection$Callback;)V
    .locals 0

    .line 118
    sput-object p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->mCallback:Landroid/media/projection/MediaProjection$Callback;

    return-void
.end method

.method public static setMicrophoneMute(Z)V
    .locals 2

    .line 480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMicrophoneMute("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioLoopBack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    sput-boolean p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->microphoneMute:Z

    return-void
.end method

.method private setMicrophoneMuteInternal(Z)V
    .locals 2

    .line 485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMicrophoneMuteInternal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioLoopBack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sput-boolean p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->microphoneMute:Z

    return-void
.end method

.method public static setOnAudioSamplesReady(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackSamplesReadyCallback;)V
    .locals 0

    .line 163
    sput-object p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioSamplesReadyCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackSamplesReadyCallback;

    return-void
.end method

.method public static setStateCallback(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;)V
    .locals 2

    const-string v0, "WebRtcAudioLoopBack"

    const-string v1, "Set state callback"

    .line 108
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sput-object p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;

    return-void
.end method

.method private startRecording()Z
    .locals 6

    const-string v0, "WebRtcAudioLoopBack"

    const-string v1, "startRecording"

    .line 391
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 393
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    if-nez v1, :cond_0

    return v0

    .line 396
    :cond_0
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 397
    invoke-virtual {v1}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    .line 398
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setMode(I)V

    .line 399
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->startRecording()V

    .line 400
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->setMode(I)V

    .line 401
    iget-boolean v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->isSCOon:Z

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-eqz v3, :cond_1

    if-ne v2, v5, :cond_1

    .line 402
    invoke-virtual {v1}, Landroid/media/AudioManager;->stopBluetoothSco()V

    .line 403
    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 405
    invoke-virtual {v1}, Landroid/media/AudioManager;->startBluetoothSco()V

    .line 406
    invoke-virtual {v1, v4}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 408
    :cond_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v1

    if-eq v1, v5, :cond_2

    return v0

    .line 411
    :cond_2
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;

    if-eqz v1, :cond_3

    return v0

    .line 414
    :cond_3
    new-instance v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;

    const-string v2, "AudioLoopBackJavaThread"

    invoke-direct {v1, p0, v2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;-><init>(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;

    .line 415
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v1

    .line 417
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method private stopRecording()Z
    .locals 4

    const-string v0, "WebRtcAudioLoopBack"

    const-string v1, "stopRecording"

    .line 424
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 428
    :cond_0
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;->stopThread()V

    .line 429
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;

    const-wide/16 v2, 0x7d0

    invoke-static {v1, v2, v3}, Lcom/netease/lava/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Join of AudioLoopBackJavaThread timed out"

    .line 430
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioLoopBackThread;

    .line 434
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;->releaseAudioResources()V

    const/4 v0, 0x1

    return v0
.end method
