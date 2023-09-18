.class public final Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;
.super Lcom/google/android/exoplr2avp/source/BaseMediaSource;
.source "RtspMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$RtspPlaybackException;,
        Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_TIMEOUT_MS:J = 0x1f40L


# instance fields
.field private final debugLoggingEnabled:Z

.field private final mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

.field private final rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

.field private final socketFactory:Ljavax/net/SocketFactory;

.field private timelineDurationUs:J

.field private timelineIsLive:Z

.field private timelineIsPlaceholder:Z

.field private timelineIsSeekable:Z

.field private final uri:Landroid/net/Uri;

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.rtsp"

    .line 48
    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V
    .locals 0

    .line 219
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/BaseMediaSource;-><init>()V

    .line 220
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 221
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

    .line 222
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->userAgent:Ljava/lang/String;

    .line 223
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->uri:Landroid/net/Uri;

    .line 224
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->socketFactory:Ljavax/net/SocketFactory;

    .line 225
    iput-boolean p5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->debugLoggingEnabled:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 226
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineDurationUs:J

    const/4 p1, 0x1

    .line 227
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineIsPlaceholder:Z

    return-void
.end method

.method static synthetic access$002(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;J)J
    .locals 0

    .line 45
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineDurationUs:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineIsSeekable:Z

    return p1
.end method

.method static synthetic access$202(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineIsLive:Z

    return p1
.end method

.method static synthetic access$302(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineIsPlaceholder:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method private notifySourceInfoRefreshed()V
    .locals 9

    .line 285
    new-instance v8, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineIsSeekable:Z

    iget-boolean v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineIsLive:Z

    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;)V

    .line 293
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->timelineIsPlaceholder:Z

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$2;

    invoke-direct {v0, p0, v8}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$2;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;Lcom/google/android/exoplr2avp/Timeline;)V

    move-object v8, v0

    .line 312
    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->refreshSourceInfo(Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 8

    .line 252
    new-instance p1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->rtpDataChannelFactory:Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->uri:Landroid/net/Uri;

    new-instance v4, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$1;

    invoke-direct {v4, p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$1;-><init>(Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;)V

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->userAgent:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->socketFactory:Ljavax/net/SocketFactory;

    iget-boolean v7, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->debugLoggingEnabled:Z

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;-><init>(Lcom/google/android/exoplr2avp/upstream/Allocator;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;Landroid/net/Uri;Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod$Listener;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V

    return-object p1
.end method

.method public getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 0

    .line 279
    check-cast p1, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaPeriod;->release()V

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 0

    return-void
.end method
