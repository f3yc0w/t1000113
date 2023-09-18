.class public final Lcom/google/android/exoplr2avp/source/SilenceMediaSource;
.super Lcom/google/android/exoplr2avp/source/BaseMediaSource;
.source "SilenceMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/SilenceMediaSource$SilenceSampleStream;,
        Lcom/google/android/exoplr2avp/source/SilenceMediaSource$SilenceMediaPeriod;,
        Lcom/google/android/exoplr2avp/source/SilenceMediaSource$Factory;
    }
.end annotation


# static fields
.field private static final CHANNEL_COUNT:I = 0x2

.field private static final FORMAT:Lcom/google/android/exoplr2avp/Format;

.field public static final MEDIA_ID:Ljava/lang/String; = "SilenceMediaSource"

.field private static final MEDIA_ITEM:Lcom/google/android/exoplr2avp/MediaItem;

.field private static final PCM_ENCODING:I = 0x2

.field private static final SAMPLE_RATE_HZ:I = 0xac44

.field private static final SILENCE_SAMPLE:[B


# instance fields
.field private final durationUs:J

.field private final mediaItem:Lcom/google/android/exoplr2avp/MediaItem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 88
    new-instance v0, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    const-string v1, "audio/raw"

    .line 90
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 91
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    const v2, 0xac44

    .line 92
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplr2avp/Format;

    .line 95
    new-instance v2, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    const-string v3, "SilenceMediaSource"

    .line 97
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 98
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 99
    invoke-virtual {v2, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v0

    .line 100
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplr2avp/MediaItem;

    .line 102
    invoke-static {v1, v1}, Lcom/google/android/exoplr2avp/util/Util;->getPcmFrameSize(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 113
    sget-object v0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplr2avp/MediaItem;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;-><init>(JLcom/google/android/exoplr2avp/MediaItem;)V

    return-void
.end method

.method private constructor <init>(JLcom/google/android/exoplr2avp/MediaItem;)V
    .locals 3

    .line 122
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/BaseMediaSource;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 123
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 124
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->durationUs:J

    .line 125
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-void
.end method

.method synthetic constructor <init>(JLcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/SilenceMediaSource$1;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;-><init>(JLcom/google/android/exoplr2avp/MediaItem;)V

    return-void
.end method

.method static synthetic access$000()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->MEDIA_ITEM:Lcom/google/android/exoplr2avp/MediaItem;

    return-object v0
.end method

.method static synthetic access$200()Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->FORMAT:Lcom/google/android/exoplr2avp/Format;

    return-object v0
.end method

.method static synthetic access$300(J)J
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->getAudioByteCount(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$400(J)J
    .locals 0

    .line 40
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->getAudioPositionUs(J)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500()[B
    .locals 1

    .line 40
    sget-object v0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->SILENCE_SAMPLE:[B

    return-object v0
.end method

.method private static getAudioByteCount(J)J
    .locals 2

    const-wide/32 v0, 0xac44

    mul-long p0, p0, v0

    const-wide/32 v0, 0xf4240

    .line 319
    div-long/2addr p0, v0

    const/4 v0, 0x2

    .line 320
    invoke-static {v0, v0}, Lcom/google/android/exoplr2avp/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    mul-long v0, v0, p0

    return-wide v0
.end method

.method private static getAudioPositionUs(J)J
    .locals 2

    const/4 v0, 0x2

    .line 324
    invoke-static {v0, v0}, Lcom/google/android/exoplr2avp/util/Util;->getPcmFrameSize(II)I

    move-result v0

    int-to-long v0, v0

    div-long/2addr p0, v0

    const-wide/32 v0, 0xf4240

    mul-long p0, p0, v0

    const-wide/32 v0, 0xac44

    .line 325
    div-long/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 0

    .line 145
    new-instance p1, Lcom/google/android/exoplr2avp/source/SilenceMediaSource$SilenceMediaPeriod;

    iget-wide p2, p0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->durationUs:J

    invoke-direct {p1, p2, p3}, Lcom/google/android/exoplr2avp/source/SilenceMediaSource$SilenceMediaPeriod;-><init>(J)V

    return-object p1
.end method

.method public getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 8

    .line 130
    new-instance p1, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->durationUs:J

    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;)V

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/SilenceMediaSource;->refreshSourceInfo(Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 0

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    return-void
.end method
