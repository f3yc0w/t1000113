.class public Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;
.super Ljava/lang/Object;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioSamples;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;
    }
.end annotation


# static fields
.field private static final AUDIO_RECORD_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final BUFFER_SIZE_FACTOR:I = 0x2

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final DEFAULT_AUDIO_SOURCE:I

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioRecord"

.field private static audioSamplesReadyCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static audioSource:I

.field private static stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private effects:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private emptyBytes:[B

.field private microphoneMute:Z

.field private final nativeAudioRecord:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->getDefaultAudioSource()I

    move-result v0

    sput v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->DEFAULT_AUDIO_SOURCE:I

    .line 54
    sput v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioSource:I

    return-void
.end method

.method constructor <init>(J)V
    .locals 2

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iput-wide p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    .line 295
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;->create()Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Landroid/media/AudioRecord;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 29
    invoke-static {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordClosed()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordOpened()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->microphoneMute:Z

    return p0
.end method

.method static synthetic access$500(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)[B
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->emptyBytes:[B

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;)J
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;IJI)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->nativeDataIsRecorded(IJI)V

    return-void
.end method

.method static synthetic access$800()Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;
    .locals 1

    .line 29
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioSamplesReadyCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    return-object v0
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 460
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
    .locals 2

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBuiltInAEC("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;

    if-nez v0, :cond_0

    const-string p1, "Built-in AEC is not supported on this platform"

    .line 301
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 304
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;->setAEC(Z)Z

    move-result p1

    return p1
.end method

.method private enableBuiltInNS(Z)Z
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBuiltInNS("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;

    if-nez v0, :cond_0

    const-string p1, "Built-in NS is not supported on this platform"

    .line 310
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 313
    :cond_0
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;->setNS(Z)Z

    move-result p1

    return p1
.end method

.method private static getDefaultAudioSource()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method private initRecording(II)I
    .locals 12

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initRecording(sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, " , record state :"

    if-eqz v0, :cond_0

    .line 326
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InitRecording called twice without StopRecording. sate : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v3}, Landroid/media/AudioRecord;->getState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 327
    invoke-virtual {v3}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 329
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->stopRecording()I

    .line 330
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 331
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_RECORD_FAILED:I

    return p1

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    .line 335
    div-int/lit8 v3, p1, 0x64

    mul-int v0, v0, v3

    .line 336
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "byteBuffer.capacity: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->emptyBytes:[B

    .line 342
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v4, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->nativeAudioRecord:J

    invoke-direct {p0, v0, v4, v5}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    .line 347
    invoke-direct {p0, p2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->channelCountToConfiguration(I)I

    move-result v9

    const/4 p2, 0x2

    .line 349
    invoke-static {p1, v9, p2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_5

    const/4 v4, -0x2

    if-ne v0, v4, :cond_1

    goto/16 :goto_1

    .line 354
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AudioRecord.getMinBufferSize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", compat audio_source_: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioSource:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v0, v0, 0x2

    .line 359
    iget-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 360
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bufferSizeInBytes: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 362
    :try_start_2
    new-instance p2, Landroid/media/AudioRecord;

    sget v7, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioSource:I

    const/4 v10, 0x2

    move-object v6, p2

    move v8, p1

    invoke-direct/range {v6 .. v11}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p2, :cond_4

    .line 369
    :try_start_3
    invoke-virtual {p2}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 375
    :cond_2
    iget-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;

    if-eqz p1, :cond_3

    .line 376
    iget-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;->enable(I)V

    .line 378
    :cond_3
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->logMainParameters()V

    .line 379
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->logMainParametersExtended()V

    return v3

    .line 370
    :cond_4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to create a new AudioRecord instance , state : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {p2}, Landroid/media/AudioRecord;->getState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 371
    invoke-virtual {p2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 370
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->releaseAudioResources()V

    .line 373
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_RECORD_ILLG_STATE:I

    return p1

    :catch_0
    move-exception p1

    .line 365
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AudioRecord ctor error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->releaseAudioResources()V

    .line 367
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_RECORD_ILLG_ARG:I

    return p1

    .line 351
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioRecord.getMinBufferSize failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordInitError(Ljava/lang/String;)V

    .line 352
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_RECORD_ILLG_ARG:I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return p1

    :catch_1
    move-exception p1

    .line 385
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 386
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_RECORD_UNKNOWN_EXP:I

    return p1

    :catch_2
    move-exception p1

    .line 382
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 383
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_RECORD_NULLPTR:I

    return p1
.end method

.method private isMicrophoneMuteInternal()Z
    .locals 1

    .line 491
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->microphoneMute:Z

    return v0
.end method

.method private logMainParameters()V
    .locals 2

    .line 443
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecord: session ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 444
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 445
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sample rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 446
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    .line 443
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMainParametersExtended()V
    .locals 2

    .line 450
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioRecord: buffer size in frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 453
    invoke-virtual {v1}, Landroid/media/AudioRecord;->getBufferSizeInFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    .line 451
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

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "releaseAudioResources"

    .line 496
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 499
    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordClosed()V
    .locals 2

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "closed"

    .line 536
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;

    if-eqz v0, :cond_0

    .line 538
    invoke-interface {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;->onWebRtcAudioRecordClosed()V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordError(Ljava/lang/String;)V
    .locals 2

    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run-time recording error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    .line 523
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;->onWebRtcAudioRecordError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordInitError(Ljava/lang/String;)V
    .locals 2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init recording error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    .line 506
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;

    if-eqz v0, :cond_0

    .line 507
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;->onWebRtcAudioRecordInitError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordOpened()V
    .locals 2

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "opened"

    .line 529
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;

    if-eqz v0, :cond_0

    .line 531
    invoke-interface {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;->onWebRtcAudioRecordOpened()V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioRecordStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 513
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start recording error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    .line 515
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;

    if-eqz v0, :cond_0

    .line 516
    invoke-interface {v0, p1, p2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;->onWebRtcAudioRecordStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized setAudioSource(I)V
    .locals 4

    const-class v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;

    monitor-enter v0

    :try_start_0
    const-string v1, "WebRtcAudioRecord"

    .line 474
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio source is changed from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioSource:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    sput p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioSource:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setCompatAudioSource(I)V
    .locals 2

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Audio source is compat from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sput p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioSource:I

    return-void
.end method

.method private setMicrophoneMuteInternal(Z)V
    .locals 2

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMicrophoneMuteInternal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioRecord"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->microphoneMute:Z

    return-void
.end method

.method public static setOnAudioSamplesReady(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;)V
    .locals 0

    .line 135
    sput-object p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioSamplesReadyCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordSamplesReadyCallback;

    return-void
.end method

.method public static setStateCallback(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;)V
    .locals 2

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "Set state callback"

    .line 85
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    sput-object p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;

    return-void
.end method

.method private startRecording()I
    .locals 4

    const-string v0, "WebRtcAudioRecord"

    const-string v1, "startRecording"

    .line 391
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    .line 394
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 396
    :try_start_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    :try_start_2
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 403
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_STATE_MISMATCH:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioRecord.startRecording failed - incorrect state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioRecord:Landroid/media/AudioRecord;

    .line 406
    invoke-virtual {v2}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 403
    invoke-direct {p0, v0, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V

    .line 407
    sget v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_NO_PERMISSION:I

    return v0

    .line 409
    :cond_2
    new-instance v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    const-string v1, "AudioRecordJavaThread"

    invoke-direct {v0, p0, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;-><init>(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    .line 410
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->start()V

    return v2

    :catch_0
    move-exception v0

    .line 398
    sget-object v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->AUDIO_RECORD_START_EXCEPTION:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioRecord.startRecording failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    invoke-direct {p0, v1, v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->reportWebRtcAudioRecordStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V

    .line 400
    sget v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_START_RECORD_ILLG_STATE:I
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return v0

    :catch_1
    move-exception v0

    .line 416
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 417
    sget v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_START_RECORD_UNKNOWN_EXP:I

    return v0

    :catch_2
    move-exception v0

    .line 413
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 414
    sget v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_START_RECORD_NULLPTR:I

    return v0
.end method

.method private stopRecording()I
    .locals 5

    const-string v0, "WebRtcAudioRecord"

    :try_start_0
    const-string v1, "stopRecording"

    .line 423
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->assertTrue(Z)V

    .line 425
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;->stopThread()V

    .line 426
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v3, v4}, Lcom/netease/lava/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Join of AudioRecordJavaThread timed out"

    .line 427
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    .line 430
    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordThread;

    .line 431
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->effects:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;

    if-eqz v0, :cond_2

    .line 432
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioEffects;->release()V

    .line 434
    :cond_2
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;->releaseAudioResources()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    .line 437
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 438
    sget v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_RELEASE_RECORD_RES:I

    return v0
.end method
