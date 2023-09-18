.class public Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;
.super Ljava/lang/Object;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;,
        Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;
    }
.end annotation


# static fields
.field private static final AUDIO_TRACK_THREAD_JOIN_TIMEOUT_MS:J = 0x7d0L

.field private static final BITS_PER_SAMPLE:I = 0x10

.field private static final BUFFERS_PER_SECOND:I = 0x64

.field private static final CALLBACK_BUFFER_SIZE_MS:I = 0xa

.field private static final DEBUG:Z = false

.field private static final DEFAULT_USAGE:I

.field private static final TAG:Ljava/lang/String; = "WebRtcAudioTrack"

.field private static audioLatencyMs:I

.field private static stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static stream_type:I

.field private static usageAttribute:I


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private audioTrack:Landroid/media/AudioTrack;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private emptyBytes:[B

.field private final nativeAudioTrack:J

.field private speakerMute:Z

.field private final threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->getDefaultUsageAttribute()I

    move-result v0

    sput v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->DEFAULT_USAGE:I

    .line 54
    sput v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    const/4 v0, 0x0

    .line 55
    sput v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    return-void
.end method

.method constructor <init>(J)V
    .locals 2

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    new-instance v0, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    .line 271
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ctor"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->getThreadInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    iput-wide p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->nativeAudioTrack:J

    .line 275
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Landroid/media/AudioTrack;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    return-object p0
.end method

.method static synthetic access$100(Z)V
    .locals 0

    .line 32
    invoke-static {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackClosed()V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackOpened()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->nativeAudioTrack:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;IJI)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->nativeGetPlayoutData(IJI)V

    return-void
.end method

.method static synthetic access$600(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->speakerMute:Z

    return p0
.end method

.method static synthetic access$700(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;)[B
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->emptyBytes:[B

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900()I
    .locals 1

    .line 32
    sget v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioLatencyMs:I

    return v0
.end method

.method static synthetic access$902(I)I
    .locals 0

    .line 32
    sput p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioLatencyMs:I

    return p0
.end method

.method private static assertTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 587
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

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/16 p1, 0xc

    :goto_0
    return p1
.end method

.method private static createAudioTrackOnLollipopOrHigher(III)Landroid/media/AudioTrack;
    .locals 9

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "createAudioTrackOnLollipopOrHigher"

    .line 483
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createAudioTrack compat stream_type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    sget v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    .line 488
    invoke-static {v1}, Landroid/media/AudioTrack;->getNativeOutputSampleRate(I)I

    move-result v1

    .line 489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeOutputSampleRate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eq p0, v1, :cond_0

    const-string v1, "Unable to use fast mode since requested sample rate is not native"

    .line 491
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_0
    sget v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    sget v2, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->DEFAULT_USAGE:I

    if-eq v1, v2, :cond_1

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "A non default usage attribute is used: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    :cond_1
    sget v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_3

    const/4 v4, 0x5

    if-eq v0, v4, :cond_2

    goto :goto_1

    .line 520
    :cond_2
    sput v4, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    goto :goto_0

    .line 516
    :cond_3
    sput v3, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    goto :goto_0

    .line 512
    :cond_4
    sput v2, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    const/4 v0, 0x6

    .line 508
    sput v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    goto :goto_0

    :cond_6
    const/16 v0, 0xd

    .line 504
    sput v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    :goto_0
    const/4 v2, 0x4

    goto :goto_1

    .line 500
    :cond_7
    sput v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    .line 526
    :goto_1
    new-instance v0, Landroid/media/AudioTrack;

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    sget v4, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I

    .line 528
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 529
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 530
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 532
    invoke-virtual {v2, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    .line 533
    invoke-virtual {v1, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 534
    invoke-virtual {p0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object p0

    .line 535
    invoke-virtual {p0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, v0

    move v6, p2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    return-object v0
.end method

.method private static createAudioTrackOnLowerThanLollipop(III)Landroid/media/AudioTrack;
    .locals 9

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createAudioTrack stream_type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    new-instance v0, Landroid/media/AudioTrack;

    sget v3, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    const/4 v6, 0x2

    const/4 v8, 0x1

    move-object v2, v0

    move v4, p0

    move v5, p1

    move v7, p2

    invoke-direct/range {v2 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    return-object v0
.end method

.method private static getDefaultUsageAttribute()I
    .locals 2

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getStreamMaxVolume()I
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "getStreamMaxVolume"

    .line 436
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 438
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    sget v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    return v0
.end method

.method private getStreamVolume()I
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "getStreamVolume"

    .line 463
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 465
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    sget v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method private initPlayout(II)I
    .locals 4

    const-string v0, "WebRtcAudioTrack"

    .line 287
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 289
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initPlayout(sampleRate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", channels="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    mul-int/lit8 v1, p2, 0x2

    .line 291
    div-int/lit8 v2, p1, 0x64

    mul-int v1, v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteBuffer.capacity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->emptyBytes:[B

    .line 297
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->nativeAudioTrack:J

    invoke-direct {p0, v1, v2, v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V

    .line 303
    invoke-direct {p0, p2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->channelCountToConfiguration(I)I

    move-result p2

    const/4 v1, 0x2

    .line 305
    invoke-static {p1, p2, v1}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    .line 306
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.getMinBufferSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "AudioTrack.getMinBufferSize returns an invalid value. min : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", capacity: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->byteBuffer:Ljava/nio/ByteBuffer;

    .line 314
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 315
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_PLAY_ILLG_ARG:I

    return p1

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    .line 321
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stopPlayout()I

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v2, ", play state:  "

    if-eqz v0, :cond_2

    .line 324
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Conflict with existing AudioTrack. state : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 325
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 326
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_START_PLAY_ILLG_OBJ:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    .line 332
    :cond_2
    :try_start_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_3

    .line 338
    invoke-static {p1, p2, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->createAudioTrackOnLollipopOrHigher(III)Landroid/media/AudioTrack;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_0

    .line 343
    :cond_3
    invoke-static {p1, p2, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->createAudioTrackOnLowerThanLollipop(III)Landroid/media/AudioTrack;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 354
    :goto_0
    :try_start_3
    iget-object p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    goto :goto_1

    .line 364
    :cond_4
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->logMainParameters()V

    .line 365
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->logMainParametersExtended()V

    const/4 p1, 0x0

    return p1

    .line 355
    :cond_5
    :goto_1
    :try_start_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Initialization of audio track failed. state"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 356
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->releaseAudioResources()V

    .line 358
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_PLAY_ILLG_STATE:I

    return p1

    :catch_0
    move-exception p1

    .line 346
    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackInitError(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->releaseAudioResources()V

    .line 348
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_PLAY_ILLG_ARG:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return p1

    :catch_1
    move-exception p1

    .line 361
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 362
    sget p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_INIT_PLAY_UNKNOWN_EXP:I

    return p1
.end method

.method private isSpeakerMuteInternal()Z
    .locals 1

    .line 607
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->speakerMute:Z

    return v0
.end method

.method private isVolumeFixed()Z
    .locals 2

    .line 455
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isVolumeFixed()Z

    move-result v0

    return v0
.end method

.method private logBufferCapacityInFrames()V
    .locals 2

    .line 559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack: buffer capacity in frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 563
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getBufferCapacityInFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    .line 560
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logBufferSizeInFrames()V
    .locals 2

    .line 551
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack: buffer size in frames: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 554
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    .line 552
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private logMainParameters()V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack: session ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 470
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 471
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getChannelCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sample rate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 472
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max gain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    .line 469
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logMainParametersExtended()V
    .locals 0

    .line 568
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->logBufferSizeInFrames()V

    .line 569
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->logBufferCapacityInFrames()V

    return-void
.end method

.method private logUnderrunCount()V
    .locals 2

    .line 579
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "underrun count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getUnderrunCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native nativeCacheDirectBufferAddress(Ljava/nio/ByteBuffer;J)V
.end method

.method private native nativeGetPlayoutData(IJI)V
.end method

.method private releaseAudioResources()V
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "releaseAudioResources"

    .line 612
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackClosed()V
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "closed"

    .line 652
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;

    if-eqz v0, :cond_0

    .line 654
    invoke-interface {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;->onWebRtcAudioTrackClosed()V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackError(Ljava/lang/String;)V
    .locals 2

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run-time playback error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    .line 639
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;

    if-eqz v0, :cond_0

    .line 640
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;->onWebRtcAudioTrackError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackInitError(Ljava/lang/String;)V
    .locals 2

    .line 620
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Init playout error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    .line 622
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;

    if-eqz v0, :cond_0

    .line 623
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;->onWebRtcAudioTrackInitError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackOpened()V
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "opened"

    .line 645
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;

    if-eqz v0, :cond_0

    .line 647
    invoke-interface {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;->onWebRtcAudioTrackOpened()V

    :cond_0
    return-void
.end method

.method private reportWebRtcAudioTrackStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start playout error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ". "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    .line 631
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;

    if-eqz v0, :cond_0

    .line 632
    invoke-interface {v0, p1, p2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;->onWebRtcAudioTrackStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized setAudioTrackUsageAttribute(I)V
    .locals 4

    const-class v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;

    monitor-enter v0

    :try_start_0
    const-string v1, "WebRtcAudioTrack"

    .line 64
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default usage attribute is changed from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->DEFAULT_USAGE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sput p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->usageAttribute:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private setCompatStreamType(I)V
    .locals 2

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCompatStreamType type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    sput p1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    return-void
.end method

.method private setSpeakerMuteInternal(Z)V
    .locals 2

    .line 602
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeakerMuteInternal("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->speakerMute:Z

    return-void
.end method

.method public static setStateCallback(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;)V
    .locals 2

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "Set extended state callback"

    .line 111
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    sput-object p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stateCallback:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;

    return-void
.end method

.method private setStreamVolume(I)Z
    .locals 4

    .line 443
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setStreamVolume("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebRtcAudioTrack"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 446
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->isVolumeFixed()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "The device implements a fixed volume policy."

    .line 447
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 450
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    sget v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    invoke-virtual {v0, v1, p1, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return v2
.end method

.method private startPlayout()I
    .locals 12

    .line 370
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "startPlayout"

    .line 371
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 373
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 374
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 377
    sget v3, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->stream_type:I

    const/4 v4, 0x3

    if-nez v3, :cond_2

    .line 378
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_2

    .line 380
    :cond_2
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->setMode(I)V

    .line 382
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 384
    :try_start_0
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->play()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 392
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v3

    if-eq v3, v4, :cond_3

    .line 393
    sget-object v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;->AUDIO_TRACK_START_STATE_MISMATCH:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioTrack.play failed - incorrect state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 395
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , play state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    invoke-direct {p0, v0, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V

    .line 396
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->releaseAudioResources()V

    .line 397
    sget v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_START_PLAY_ILLG_STATE:I

    return v0

    .line 404
    :cond_3
    new-instance v3, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    const-string v4, "AudioTrackJavaThread"

    invoke-direct {v3, p0, v4}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;-><init>(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    .line 405
    invoke-virtual {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->reset()V

    .line 406
    iget-object v3, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->start()V

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 408
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "startPlayOut end  : set mode cost: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v6, v1

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , start play cost: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v1, v8, v6

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " , thread start cost: "

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v3, v8

    invoke-virtual {v10, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :catch_0
    move-exception v0

    .line 386
    sget-object v1, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;->AUDIO_TRACK_START_EXCEPTION:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack.play failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 386
    invoke-direct {p0, v1, v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->reportWebRtcAudioTrackStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V

    .line 388
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->releaseAudioResources()V

    .line 389
    sget v0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->ERR_ADM_ANDROID_START_PLAY_ILLG_ARG:I

    return v0
.end method

.method private stopPlayout()I
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "WebRtcAudioTrack"

    const-string v1, "stopPlayout"

    .line 416
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->assertTrue(Z)V

    .line 418
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->logUnderrunCount()V

    .line 419
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->stopThread()V

    const-string v1, "Stopping the AudioTrackThread..."

    .line 421
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;->interrupt()V

    .line 423
    iget-object v1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    const-wide/16 v3, 0x7d0

    invoke-static {v1, v3, v4}, Lcom/netease/lava/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Join of AudioTrackThread timed out."

    .line 424
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    invoke-static {v0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioUtils;->logAudioState(Ljava/lang/String;)V

    :cond_1
    const-string v1, "AudioTrackThread has now been stopped."

    .line 427
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->audioThread:Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackThread;

    .line 429
    invoke-direct {p0}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;->releaseAudioResources()V

    return v2
.end method
