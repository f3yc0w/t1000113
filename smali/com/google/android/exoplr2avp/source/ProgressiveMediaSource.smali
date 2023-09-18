.class public final Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;
.super Lcom/google/android/exoplr2avp/source/BaseMediaSource;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_LOADING_CHECK_INTERVAL_BYTES:I = 0x100000


# instance fields
.field private final continueLoadingCheckIntervalBytes:I

.field private final dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private final drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

.field private final loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private final localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

.field private final mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

.field private final progressiveMediaExtractorFactory:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;

.field private timelineDurationUs:J

.field private timelineIsLive:Z

.field private timelineIsPlaceholder:Z

.field private timelineIsSeekable:Z

.field private transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;I)V
    .locals 1

    .line 255
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/BaseMediaSource;-><init>()V

    .line 256
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    .line 257
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 258
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 259
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;

    .line 260
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 261
    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 262
    iput p6, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    const/4 p1, 0x1

    .line 263
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 264
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineDurationUs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;ILcom/google/android/exoplr2avp/source/ProgressiveMediaSource$1;)V
    .locals 0

    .line 49
    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;I)V

    return-void
.end method

.method private notifySourceInfoRefreshed()V
    .locals 9

    .line 341
    new-instance v8, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineDurationUs:J

    iget-boolean v3, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    iget-boolean v5, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsLive:Z

    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/source/SinglePeriodTimeline;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplr2avp/MediaItem;)V

    .line 349
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-eqz v0, :cond_0

    .line 352
    new-instance v0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$1;

    invoke-direct {v0, p0, v8}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$1;-><init>(Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;Lcom/google/android/exoplr2avp/Timeline;)V

    move-object v8, v0

    .line 370
    :cond_0
    invoke-virtual {p0, v8}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->refreshSourceInfo(Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 14

    move-object v12, p0

    .line 288
    iget-object v0, v12, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v2

    .line 289
    iget-object v0, v12, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 290
    invoke-interface {v2, v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 292
    :cond_0
    new-instance v13, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    iget-object v0, v12, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v0, v12, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->progressiveMediaExtractorFactory:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;

    .line 295
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->getPlayerId()Lcom/google/android/exoplr2avp/analytics/PlayerId;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;->createProgressiveMediaExtractor(Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;

    move-result-object v3

    iget-object v4, v12, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 297
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v5

    iget-object v6, v12, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->loadableLoadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 299
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->createEventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v7

    iget-object v0, v12, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v10, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    iget v11, v12, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->continueLoadingCheckIntervalBytes:I

    move-object v0, v13

    move-object v8, p0

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;-><init>(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod$Listener;Lcom/google/android/exoplr2avp/upstream/Allocator;Ljava/lang/String;I)V

    return-object v13
.end method

.method public getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-object v0
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    return-void
.end method

.method public onSourceInfoRefreshed(JZZ)V
    .locals 3

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 321
    iget-wide p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 322
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineDurationUs:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    if-ne v0, p3, :cond_1

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsLive:Z

    if-ne v0, p4, :cond_1

    return-void

    .line 329
    :cond_1
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineDurationUs:J

    .line 330
    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsSeekable:Z

    .line 331
    iput-boolean p4, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsLive:Z

    const/4 p1, 0x0

    .line 332
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->timelineIsPlaceholder:Z

    .line 333
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 2

    .line 274
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->transferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    .line 275
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->prepare()V

    .line 276
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 277
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Looper;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->getPlayerId()Lcom/google/android/exoplr2avp/analytics/PlayerId;

    move-result-object v1

    .line 276
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    .line 278
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->notifySourceInfoRefreshed()V

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 0

    .line 308
    check-cast p1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaPeriod;->release()V

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 1

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->release()V

    return-void
.end method
