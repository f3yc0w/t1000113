.class public Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;
.super Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaCodecAudioRenderer"

.field private static final VIVO_BITS_PER_SAMPLE_KEY:Ljava/lang/String; = "v-bits-per-sample"


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

.field private audioSinkNeedsReset:Z

.field private codecMaxInputSize:I

.field private codecNeedsDiscardChannelsWorkaround:Z

.field private final context:Landroid/content/Context;

.field private currentPositionUs:J

.field private decryptOnlyCodecFormat:Lcom/google/android/exoplr2avp/Format;

.field private final eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

.field private experimentalKeepAudioTrackOnSeek:Z

.field private wakeupListener:Lcom/google/android/exoplr2avp/Renderer$WakeupListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V
    .locals 6

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 246
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;ZF)V

    .line 252
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 253
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    .line 254
    iput-object p7, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    .line 255
    new-instance p1, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {p1, p5, p6}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    .line 256
    new-instance p1, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$1;)V

    invoke-interface {p7, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setListener(Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;)V
    .locals 1

    const/4 v0, 0x0

    .line 117
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;)V
    .locals 7

    .line 132
    sget-object v5, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    const/4 v0, 0x0

    new-array v6, v0, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioCapabilities;[Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioCapabilities;[Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V
    .locals 6

    .line 159
    new-instance v0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;-><init>()V

    sget-object v1, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;->DEFAULT_AUDIO_CAPABILITIES:Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 166
    invoke-static {p5, v1}, Lcom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/google/android/exoplr2avp/audio/AudioCapabilities;

    .line 165
    invoke-virtual {v0, p5}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioCapabilities(Lcom/google/android/exoplr2avp/audio/AudioCapabilities;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p5

    .line 167
    invoke-virtual {p5, p6}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->setAudioProcessors([Lcom/google/android/exoplr2avp/audio/AudioProcessor;)Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;

    move-result-object p5

    .line 168
    invoke-virtual {p5}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$Builder;->build()Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 159
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V
    .locals 8

    .line 185
    sget-object v2, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V
    .locals 8

    .line 213
    sget-object v2, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;->DEFAULT:Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Factory;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;ZLandroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/Renderer$WakeupListener;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->wakeupListener:Lcom/google/android/exoplr2avp/Renderer$WakeupListener;

    return-object p0
.end method

.method private static codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z
    .locals 2

    .line 891
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    .line 892
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplr2avp/util/Util;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "samsung"

    .line 893
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplr2avp/util/Util;->DEVICE:Ljava/lang/String;

    const-string/jumbo v0, "zeroflte"

    .line 894
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplr2avp/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "herolte"

    .line 895
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/exoplr2avp/util/Util;->DEVICE:Ljava/lang/String;

    const-string v0, "heroqlte"

    .line 896
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static deviceDoesntSupportOperatingRate()Z
    .locals 2

    .line 879
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    .line 880
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/exoplr2avp/util/Util;->MODEL:Ljava/lang/String;

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I
    .locals 1

    .line 802
    iget-object p1, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 807
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->isTv(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 811
    :cond_1
    iget p1, p2, Lcom/google/android/exoplr2avp/Format;->maxInputSize:I

    return p1
.end method

.method private static getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;ZLcom/google/android/exoplr2avp/audio/AudioSink;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplr2avp/Format;",
            "Z",
            "Lcom/google/android/exoplr2avp/audio/AudioSink;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 381
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 383
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 385
    :cond_0
    invoke-interface {p3, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 387
    invoke-static {}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getDecryptOnlyDecoderInfo()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 389
    invoke-static {p3}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p3, 0x0

    .line 393
    invoke-interface {p0, v0, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v0

    .line 395
    invoke-static {p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getAlternativeCodecMimeType(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    .line 397
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0

    .line 400
    :cond_2
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;->getDecoderInfos(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p0

    .line 402
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->builder()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 403
    invoke-virtual {p1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p1

    .line 404
    invoke-virtual {p1, p0}, Lcom/google/common/collect/ImmutableList$Builder;->addAll(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object p0

    .line 405
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p0

    return-object p0
.end method

.method private updateCurrentPosition()V
    .locals 5

    .line 862
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 865
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 867
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 v0, 0x0

    .line 868
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected canReuseCodec(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;
    .locals 8

    .line 435
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 437
    iget v1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->discardReasons:I

    .line 438
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    .line 442
    new-instance v1, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 446
    :cond_1
    iget p1, v0, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    move v6, p1

    :goto_0
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;II)V

    return-object v1
.end method

.method public experimentalSetEnableKeepAudioTrackOnSeek(Z)V
    .locals 0

    .line 274
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    return-void
.end method

.method protected getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;[Lcom/google/android/exoplr2avp/Format;)I
    .locals 5

    .line 779
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I

    move-result v0

    .line 780
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 785
    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 786
    invoke-virtual {p1, p2, v3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->canReuseCodec(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;->result:I

    if-eqz v4, :cond_1

    .line 787
    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected getCodecOperatingRateV23(FLcom/google/android/exoplr2avp/Format;[Lcom/google/android/exoplr2avp/Format;)F
    .locals 4

    .line 462
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 463
    iget v3, v3, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    if-eq v3, v0, :cond_0

    .line 465
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float p1, p1, p2

    :goto_1
    return p1
.end method

.method protected getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;",
            "Lcom/google/android/exoplr2avp/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    .line 356
    invoke-static {p1, p2, p3, v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;ZLcom/google/android/exoplr2avp/audio/AudioSink;)Ljava/util/List;

    move-result-object p1

    .line 355
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getDecoderInfosSortedByFormatSupport(Ljava/util/List;Lcom/google/android/exoplr2avp/Format;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getMediaClock()Lcom/google/android/exoplr2avp/util/MediaClock;
    .locals 0

    return-object p0
.end method

.method protected getMediaCodecConfiguration(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;
    .locals 2

    .line 419
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getStreamFormats()[Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getCodecMaxInputSize(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Lcom/google/android/exoplr2avp/Format;[Lcom/google/android/exoplr2avp/Format;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 420
    iget-object v0, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    .line 421
    iget-object v0, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->codecMimeType:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->codecMaxInputSize:I

    .line 422
    invoke-virtual {p0, p2, v0, v1, p4}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getMediaFormat(Lcom/google/android/exoplr2avp/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object p4

    .line 424
    iget-object v0, p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->mimeType:Ljava/lang/String;

    const-string v1, "audio/raw"

    .line 425
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 426
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 427
    :goto_1
    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplr2avp/Format;

    .line 428
    invoke-static {p1, p4, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;->createForAudioDecoding(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;Landroid/media/MediaFormat;Lcom/google/android/exoplr2avp/Format;Landroid/media/MediaCrypto;)Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;

    move-result-object p1

    return-object p1
.end method

.method protected getMediaFormat(Lcom/google/android/exoplr2avp/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2

    .line 828
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 830
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 832
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 833
    iget-object p2, p1, Lcom/google/android/exoplr2avp/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplr2avp/util/MediaFormatUtil;->setCsdBuffers(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    .line 835
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplr2avp/util/MediaFormatUtil;->maybeSetInteger(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 837
    sget p2, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    const/4 p2, 0x0

    const-string p3, "priority"

    .line 838
    invoke-virtual {v0, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, p4, p2

    if-eqz p2, :cond_0

    .line 839
    invoke-static {}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->deviceDoesntSupportOperatingRate()Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "operating-rate"

    .line 840
    invoke-virtual {v0, p2, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    .line 843
    :cond_0
    sget p2, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    iget-object p2, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string p3, "audio/ac4"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    const-string p3, "ac4-is-sync"

    .line 846
    invoke-virtual {v0, p3, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 848
    :cond_1
    sget p2, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p3, 0x18

    if-lt p2, p3, :cond_2

    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    iget p3, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    const/4 p4, 0x4

    .line 850
    invoke-static {p4, p3, p1}, Lcom/google/android/exoplr2avp/util/Util;->getPcmFormat(III)Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    .line 849
    invoke-interface {p2, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getFormatSupport(Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "pcm-encoding"

    .line 852
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 854
    :cond_2
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 p2, 0x20

    if-lt p1, p2, :cond_3

    const/16 p1, 0x63

    const-string p2, "max-output-channel-count"

    .line 855
    invoke-virtual {v0, p2, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 634
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 635
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 637
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 763
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 755
    :pswitch_0
    check-cast p2, Lcom/google/android/exoplr2avp/Renderer$WakeupListener;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->wakeupListener:Lcom/google/android/exoplr2avp/Renderer$WakeupListener;

    goto :goto_0

    .line 752
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setAudioSessionId(I)V

    goto :goto_0

    .line 749
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    goto :goto_0

    .line 745
    :cond_0
    check-cast p2, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    .line 746
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V

    goto :goto_0

    .line 741
    :cond_1
    check-cast p2, Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    .line 742
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    goto :goto_0

    .line 738
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setVolume(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .line 624
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected onCodecError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    .line 487
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 488
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method protected onCodecInitialized(Ljava/lang/String;Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter$Configuration;JJ)V
    .locals 6

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected onCodecReleased(Ljava/lang/String;)V
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method protected onDisabled()V
    .locals 3

    const/4 v0, 0x1

    .line 598
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    .line 600
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 603
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 606
    throw v0

    :catchall_1
    move-exception v0

    .line 603
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onDisabled()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 605
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 607
    throw v0

    :catchall_2
    move-exception v0

    .line 605
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 606
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 559
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onEnabled(ZZ)V

    .line 560
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 561
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getConfiguration()Lcom/google/android/exoplr2avp/RendererConfiguration;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/RendererConfiguration;->tunneling:Z

    if-eqz p1, :cond_0

    .line 562
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->enableTunnelingV21()V

    goto :goto_0

    .line 564
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->disableTunneling()V

    .line 566
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getPlayerId()Lcom/google/android/exoplr2avp/analytics/PlayerId;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setPlayerId(Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    return-void
.end method

.method protected onInputFormatChanged(Lcom/google/android/exoplr2avp/FormatHolder;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 495
    invoke-super {p0, p1}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onInputFormatChanged(Lcom/google/android/exoplr2avp/FormatHolder;)Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    move-result-object v0

    .line 496
    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->eventDispatcher:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/FormatHolder;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-object v0
.end method

.method protected onOutputFormatChanged(Lcom/google/android/exoplr2avp/Format;Landroid/media/MediaFormat;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 505
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplr2avp/Format;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getCodec()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 511
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 513
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    goto :goto_0

    .line 514
    :cond_2
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 515
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "v-bits-per-sample"

    .line 516
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 517
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->getPcmEncoding(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    .line 523
    :goto_0
    new-instance v4, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v4}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    .line 525
    invoke-virtual {v4, v3}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v3

    .line 526
    invoke-virtual {v3, v0}, Lcom/google/android/exoplr2avp/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplr2avp/Format;->encoderDelay:I

    .line 527
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/Format$Builder;->setEncoderDelay(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplr2avp/Format;->encoderPadding:I

    .line 528
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/Format$Builder;->setEncoderPadding(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    const-string v3, "channel-count"

    .line 529
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    const-string v3, "sample-rate"

    .line 530
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    .line 531
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p2

    .line 532
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->codecNeedsDiscardChannelsWorkaround:Z

    if-eqz v0, :cond_5

    iget v0, p2, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    if-ge v0, v3, :cond_5

    .line 535
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 536
    :goto_1
    iget v3, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    if-ge v0, v3, :cond_5

    .line 537
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object p1, p2

    .line 542
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->configure(Lcom/google/android/exoplr2avp/Format;I[I)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 544
    iget-object p2, p1, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplr2avp/Format;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected onPositionDiscontinuity()V
    .locals 1

    const/4 v0, 0x1

    .line 553
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 571
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onPositionReset(JZ)V

    .line 572
    iget-boolean p3, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    if-eqz p3, :cond_0

    .line 573
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplr2avp/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    goto :goto_0

    .line 575
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplr2avp/audio/AudioSink;->flush()V

    .line 578
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    const/4 p1, 0x1

    .line 579
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 580
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->allowPositionDiscontinuity:Z

    return-void
.end method

.method protected onProcessedStreamChange()V
    .locals 1

    .line 665
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onProcessedStreamChange()V

    .line 666
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->handleDiscontinuity()V

    return-void
.end method

.method protected onQueueInputBuffer(Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 652
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 656
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 657
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->currentPositionUs:J

    :cond_0
    const/4 p1, 0x0

    .line 659
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    :cond_1
    return-void
.end method

.method protected onReset()V
    .locals 3

    const/4 v0, 0x0

    .line 613
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 615
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    if-eqz v1, :cond_0

    .line 616
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->reset()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 615
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    if-eqz v2, :cond_1

    .line 616
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSinkNeedsReset:Z

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->reset()V

    .line 619
    :cond_1
    throw v1
.end method

.method protected onStarted()V
    .locals 1

    .line 585
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onStarted()V

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->play()V

    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 591
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->updateCurrentPosition()V

    .line 592
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->pause()V

    .line 593
    invoke-super {p0}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecRenderer;->onStopped()V

    return-void
.end method

.method protected processOutputBuffer(JJLcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplr2avp/Format;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 683
    invoke-static {p6}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decryptOnlyCodecFormat:Lcom/google/android/exoplr2avp/Format;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 688
    invoke-static {p5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;

    invoke-interface {p1, p7, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 694
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 696
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget p3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 697
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->handleDiscontinuity()V

    return p2

    .line 703
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/exoplr2avp/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 714
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecAdapter;->releaseOutputBuffer(IZ)V

    .line 716
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->decoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    iget p3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->renderedOutputBufferCount:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    .line 708
    iget-boolean p2, p1, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;ZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 705
    iget-object p2, p1, Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplr2avp/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;->isRecoverable:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;ZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected renderToEndOfStream()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 726
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 728
    iget-object v1, v0, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplr2avp/Format;

    iget-boolean v2, v0, Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lcom/google/android/exoplr2avp/Format;ZI)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method protected shouldUseBypass(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result p1

    return p1
.end method

.method protected supportsFormat(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 280
    iget-object v0, p2, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 281
    invoke-static {v1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 284
    :cond_0
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 285
    :goto_0
    iget v2, p2, Lcom/google/android/exoplr2avp/Format;->cryptoType:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 286
    :goto_1
    invoke-static {p2}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->supportsFormatDrm(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    .line 289
    iget-object v7, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    .line 290
    invoke-interface {v7, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_3

    .line 291
    invoke-static {}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecUtil;->getDecryptOnlyDecoderInfo()Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 292
    :cond_3
    invoke-static {v6, v5, v0}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(III)I

    move-result p1

    return p1

    .line 296
    :cond_4
    iget-object v2, p2, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string v7, "audio/raw"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v2, p2}, Lcom/google/android/exoplr2avp/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 297
    invoke-static {v3}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 300
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    iget v7, p2, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    iget v8, p2, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    const/4 v9, 0x2

    .line 301
    invoke-static {v9, v7, v8}, Lcom/google/android/exoplr2avp/util/Util;->getPcmFormat(III)Lcom/google/android/exoplr2avp/Format;

    move-result-object v7

    .line 300
    invoke-interface {v2, v7}, Lcom/google/android/exoplr2avp/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 302
    invoke-static {v3}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 304
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->audioSink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    .line 305
    invoke-static {p1, p2, v1, v2}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->getDecoderInfos(Lcom/google/android/exoplr2avp/mediacodec/MediaCodecSelector;Lcom/google/android/exoplr2avp/Format;ZLcom/google/android/exoplr2avp/audio/AudioSink;)Ljava/util/List;

    move-result-object p1

    .line 306
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 307
    invoke-static {v3}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    :cond_7
    if-nez v4, :cond_8

    .line 310
    invoke-static {v9}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1

    .line 314
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    .line 315
    invoke-virtual {v2, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v4

    if-nez v4, :cond_a

    const/4 v7, 0x1

    .line 319
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 320
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;

    .line 321
    invoke-virtual {v8, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isFormatSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v9

    if-eqz v9, :cond_9

    move-object v2, v8

    const/4 p1, 0x0

    goto :goto_3

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    move v3, v4

    const/4 p1, 0x1

    :goto_3
    if-eqz v3, :cond_b

    goto :goto_4

    :cond_b
    const/4 v6, 0x3

    :goto_4
    if-eqz v3, :cond_c

    .line 333
    invoke-virtual {v2, p2}, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->isSeamlessAdaptationSupported(Lcom/google/android/exoplr2avp/Format;)Z

    move-result p2

    if-eqz p2, :cond_c

    const/16 v5, 0x10

    .line 338
    :cond_c
    iget-boolean p2, v2, Lcom/google/android/exoplr2avp/mediacodec/MediaCodecInfo;->hardwareAccelerated:Z

    if-eqz p2, :cond_d

    const/16 p2, 0x40

    goto :goto_5

    :cond_d
    const/4 p2, 0x0

    :goto_5
    if-eqz p1, :cond_e

    const/16 v1, 0x80

    .line 343
    :cond_e
    invoke-static {v6, v5, v0, p2, v1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(IIIII)I

    move-result p1

    return p1
.end method
