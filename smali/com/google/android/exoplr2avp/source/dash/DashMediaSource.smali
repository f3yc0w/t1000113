.class public final Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;
.super Lcom/google/android/exoplr2avp/source/BaseMediaSource;
.source "DashMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;,
        Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Iso8601Parser;,
        Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$XsDateTimeParser;,
        Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$UtcTimestampCallback;,
        Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestCallback;,
        Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;,
        Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;,
        Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;
    }
.end annotation


# static fields
.field public static final DEFAULT_FALLBACK_TARGET_LIVE_OFFSET_MS:J = 0x7530L

.field public static final DEFAULT_LIVE_PRESENTATION_DELAY_MS:J = 0x7530L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_MEDIA_ID:Ljava/lang/String; = "DashMediaSource"

.field private static final DEFAULT_NOTIFY_MANIFEST_INTERVAL_MS:J = 0x1388L

.field private static final MIN_LIVE_DEFAULT_START_POSITION_US:J = 0x4c4b40L

.field private static final TAG:Ljava/lang/String; = "DashMediaSource"


# instance fields
.field private final baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

.field private final chunkSourceFactory:Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;

.field private final compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

.field private dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private final drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

.field private elapsedRealtimeOffsetMs:J

.field private expiredManifestPublishTimeUs:J

.field private final fallbackTargetLiveOffsetMs:J

.field private firstPeriodId:I

.field private handler:Landroid/os/Handler;

.field private initialManifestUri:Landroid/net/Uri;

.field private liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

.field private final loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private loader:Lcom/google/android/exoplr2avp/upstream/Loader;

.field private manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

.field private final manifestCallback:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestCallback;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private final manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

.field private manifestFatalError:Ljava/io/IOException;

.field private manifestLoadEndTimestampMs:J

.field private final manifestLoadErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

.field private manifestLoadPending:Z

.field private manifestLoadStartTimestampMs:J

.field private final manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field

.field private manifestUri:Landroid/net/Uri;

.field private final manifestUriLock:Ljava/lang/Object;

.field private final mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

.field private mediaTransferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

.field private final periodsById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplr2avp/source/dash/DashMediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private final playerEmsgCallback:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

.field private final refreshManifestRunnable:Ljava/lang/Runnable;

.field private final sideloadedManifest:Z

.field private final simulateManifestRefreshRunnable:Ljava/lang/Runnable;

.field private staleManifestReloadAttempt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.dash"

    .line 96
    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            "Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;",
            "Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;",
            "Lcom/google/android/exoplr2avp/drm/DrmSessionManager;",
            "Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;",
            "J)V"
        }
    .end annotation

    .line 387
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/BaseMediaSource;-><init>()V

    .line 388
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 389
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    .line 390
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 391
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    .line 392
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 393
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 394
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    .line 395
    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;

    .line 396
    iput-object p7, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 397
    iput-object p8, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 398
    iput-wide p9, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    .line 399
    iput-object p6, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    .line 400
    new-instance p1, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 401
    :goto_0
    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->sideloadedManifest:Z

    const/4 p4, 0x0

    .line 402
    invoke-virtual {p0, p4}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->createEventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object p5

    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    .line 403
    new-instance p5, Ljava/lang/Object;

    invoke-direct {p5}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    .line 404
    new-instance p5, Landroid/util/SparseArray;

    invoke-direct {p5}, Landroid/util/SparseArray;-><init>()V

    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    .line 405
    new-instance p5, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;

    invoke-direct {p5, p0, p4}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DefaultPlayerEmsgCallback;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;)V

    iput-object p5, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->playerEmsgCallback:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 406
    iput-wide p5, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 407
    iput-wide p5, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    if-eqz p3, :cond_1

    .line 409
    iget-boolean p2, p2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    xor-int/2addr p1, p2

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 410
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestCallback;

    .line 411
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 412
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    .line 413
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower$Dummy;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower$Dummy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    goto :goto_1

    .line 415
    :cond_1
    new-instance p1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestCallback;

    invoke-direct {p1, p0, p4}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestCallback;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestCallback;

    .line 416
    new-instance p1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;

    invoke-direct {p1, p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestLoadErrorThrower;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    .line 417
    new-instance p1, Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$DashMediaSource$UNOyQND_vkz7HLC7TJOGbN0taaI;

    invoke-direct {p1, p0}, Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$DashMediaSource$UNOyQND_vkz7HLC7TJOGbN0taaI;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    .line 418
    new-instance p1, Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$DashMediaSource$7GQVg3A92an4999bAGc99TUdUR8;

    invoke-direct {p1, p0}, Lcom/google/android/exoplr2avp/source/dash/-$$Lambda$DashMediaSource$7GQVg3A92an4999bAGc99TUdUR8;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    :goto_1
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;)V
    .locals 0

    .line 93
    invoke-direct/range {p0 .. p10}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;J)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;J)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;Ljava/io/IOException;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)Lcom/google/android/exoplr2avp/upstream/Loader;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplr2avp/upstream/Loader;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)Ljava/io/IOException;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    return-object p0
.end method

.method private static getAvailableEndTimeInManifestUs(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;JJ)J
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1079
    iget-wide v5, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    invoke-static {v5, v6}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 1081
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->hasVideoOrAudioAdaptationSets(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;)Z

    move-result v7

    const/4 v8, 0x0

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x0

    .line 1082
    :goto_0
    iget-object v12, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 1083
    iget-object v12, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    .line 1084
    iget-object v13, v12, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 1087
    iget v12, v12, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->type:I

    const/4 v14, 0x3

    if-eq v12, v14, :cond_4

    .line 1088
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    .line 1091
    :cond_1
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    invoke-virtual {v12}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    move-result-object v12

    if-nez v12, :cond_2

    add-long/2addr v5, v1

    return-wide v5

    .line 1095
    :cond_2
    invoke-interface {v12, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-nez v17, :cond_3

    return-wide v5

    .line 1100
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v15

    add-long/2addr v15, v13

    const-wide/16 v13, 0x1

    sub-long v13, v15, v13

    .line 1104
    invoke-interface {v12, v13, v14}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v15

    add-long/2addr v15, v5

    .line 1105
    invoke-interface {v12, v13, v14, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getDurationUs(JJ)J

    move-result-wide v12

    add-long/2addr v12, v15

    .line 1107
    invoke-static {v9, v10, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    :cond_4
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_5
    return-wide v9
.end method

.method private static getAvailableStartTimeInManifestUs(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;JJ)J
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    .line 1047
    iget-wide v5, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    invoke-static {v5, v6}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v5

    .line 1049
    invoke-static/range {p0 .. p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->hasVideoOrAudioAdaptationSets(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;)Z

    move-result v7

    const/4 v8, 0x0

    move-wide v10, v5

    const/4 v9, 0x0

    .line 1050
    :goto_0
    iget-object v12, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v9, v12, :cond_5

    .line 1051
    iget-object v12, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    .line 1052
    iget-object v13, v12, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    if-eqz v7, :cond_0

    .line 1055
    iget v12, v12, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->type:I

    const/4 v14, 0x3

    if-eq v12, v14, :cond_4

    .line 1056
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    goto :goto_1

    .line 1059
    :cond_1
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    invoke-virtual {v12}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    move-result-object v12

    if-nez v12, :cond_2

    return-wide v5

    .line 1063
    :cond_2
    invoke-interface {v12, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getAvailableSegmentCount(JJ)J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v17, v13, v15

    if-nez v17, :cond_3

    return-wide v5

    .line 1068
    :cond_3
    invoke-interface {v12, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getFirstAvailableSegmentNum(JJ)J

    move-result-wide v13

    .line 1070
    invoke-interface {v12, v13, v14}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v12

    add-long/2addr v12, v5

    .line 1072
    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_4
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_5
    return-wide v10
.end method

.method private static getIntervalUntilNextManifestRefreshMs(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;J)J
    .locals 20

    move-object/from16 v0, p0

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 1016
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v2

    .line 1017
    iget-wide v3, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    invoke-static {v3, v4}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v3

    .line 1018
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v5

    .line 1019
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v7

    .line 1020
    iget-wide v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v0

    const-wide/16 v9, 0x1388

    .line 1021
    invoke-static {v9, v10}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 1022
    :goto_0
    iget-object v13, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 1023
    iget-object v13, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    iget-object v13, v13, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 1024
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_1

    .line 1027
    :cond_0
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    invoke-virtual {v13}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    move-result-object v13

    if-eqz v13, :cond_2

    add-long v14, v0, v3

    .line 1032
    invoke-interface {v13, v5, v6, v7, v8}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getNextSegmentAvailableTimeUs(JJ)J

    move-result-wide v16

    add-long v14, v14, v16

    sub-long/2addr v14, v7

    const-wide/32 v16, 0x186a0

    sub-long v18, v9, v16

    cmp-long v13, v14, v18

    if-ltz v13, :cond_1

    cmp-long v13, v14, v9

    if-lez v13, :cond_2

    add-long v16, v9, v16

    cmp-long v13, v14, v16

    if-gez v13, :cond_2

    :cond_1
    move-wide v9, v14

    :cond_2
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x3e8

    .line 1042
    sget-object v2, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v9, v10, v0, v1, v2}, Lcom/google/common/math/LongMath;->divide(JJLjava/math/RoundingMode;)J

    move-result-wide v0

    return-wide v0
.end method

.method private getManifestLoadRetryDelayMillis()J
    .locals 2

    .line 1000
    iget v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit16 v0, v0, 0x3e8

    const/16 v1, 0x1388

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static hasVideoOrAudioAdaptationSets(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1124
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1125
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    iget v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->type:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v3

    :cond_2
    return v0
.end method

.method private static isIndexExplicit(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1113
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1115
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1116
    invoke-interface {v2}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static synthetic lambda$UNOyQND_vkz7HLC7TJOGbN0taaI(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method private loadNtpTimeOffset()V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplr2avp/upstream/Loader;

    new-instance v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;

    invoke-direct {v1, p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;)V

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/SntpClient;->initialize(Lcom/google/android/exoplr2avp/upstream/Loader;Lcom/google/android/exoplr2avp/util/SntpClient$InitializationCallback;)V

    return-void
.end method

.method private onUtcTimestampResolutionError(Ljava/io/IOException;)V
    .locals 2

    const-string v0, "DashMediaSource"

    const-string v1, "Failed to resolve time offset."

    .line 778
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x1

    .line 780
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private onUtcTimestampResolved(J)V
    .locals 0

    .line 773
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    const/4 p1, 0x1

    .line 774
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method private processManifest(Z)V
    .locals 31

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 785
    :goto_0
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 786
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 787
    iget v4, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->firstPeriodId:I

    if-lt v3, v4, :cond_0

    .line 788
    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/source/dash/DashMediaPeriod;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget v6, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/google/android/exoplr2avp/source/dash/DashMediaPeriod;->updateManifest(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;I)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 794
    :cond_1
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v2

    .line 795
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 796
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {v5, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v5

    .line 797
    iget-object v6, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {v6, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v6

    .line 798
    iget-wide v8, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    invoke-static {v8, v9}, Lcom/google/android/exoplr2avp/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v8

    .line 799
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 801
    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v10

    .line 800
    invoke-static {v2, v10, v11, v8, v9}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->getAvailableStartTimeInManifestUs(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;JJ)J

    move-result-wide v10

    .line 803
    invoke-static {v5, v6, v7, v8, v9}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->getAvailableEndTimeInManifestUs(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;JJ)J

    move-result-wide v6

    .line 804
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-boolean v3, v3, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v3, :cond_2

    invoke-static {v5}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->isIndexExplicit(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_3

    .line 805
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v14, v5, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    cmp-long v5, v14, v12

    if-eqz v5, :cond_3

    .line 807
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v14, v5, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    .line 808
    invoke-static {v14, v15}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v14

    sub-long v14, v6, v14

    .line 810
    invoke-static {v10, v11, v14, v15}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    :cond_3
    sub-long v5, v6, v10

    .line 815
    iget-object v7, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-boolean v7, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v7, :cond_6

    .line 816
    iget-object v7, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v14, v7, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    cmp-long v7, v14, v12

    if-eqz v7, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 817
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v14, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 819
    invoke-static {v14, v15}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v14

    sub-long/2addr v8, v14

    sub-long/2addr v8, v10

    .line 821
    invoke-direct {v0, v8, v9, v5, v6}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->updateLiveConfiguration(JJ)V

    .line 822
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v14, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    .line 823
    invoke-static {v10, v11}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v18

    add-long v14, v14, v18

    .line 824
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v12, v1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->targetOffsetMs:J

    invoke-static {v12, v13}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v12

    sub-long/2addr v8, v12

    const-wide/32 v12, 0x4c4b40

    const-wide/16 v18, 0x2

    move-wide/from16 v20, v14

    .line 825
    div-long v14, v5, v18

    .line 826
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    cmp-long v1, v8, v12

    if-gez v1, :cond_5

    move-wide/from16 v26, v12

    goto :goto_2

    :cond_5
    move-wide/from16 v26, v8

    goto :goto_2

    :cond_6
    const-wide v20, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v26, 0x0

    .line 834
    :goto_2
    iget-wide v1, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v1

    sub-long v22, v10, v1

    .line 835
    new-instance v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v7, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->availabilityStartTimeMs:J

    iget-wide v9, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->firstPeriodId:I

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 846
    iget-boolean v12, v4, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v12, :cond_7

    iget-object v12, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v30, v12

    const-wide/16 v12, 0x0

    move-object v14, v1

    move-wide v15, v7

    move-wide/from16 v17, v20

    move-wide/from16 v19, v9

    move/from16 v21, v2

    move-wide/from16 v24, v5

    move-object/from16 v28, v4

    move-object/from16 v29, v11

    invoke-direct/range {v14 .. v30}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$DashTimeline;-><init>(JJJIJJJLcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;)V

    .line 847
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->refreshSourceInfo(Lcom/google/android/exoplr2avp/Timeline;)V

    .line 849
    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-nez v1, :cond_b

    .line 851
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz v3, :cond_8

    .line 854
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 857
    invoke-static {v4, v5}, Lcom/google/android/exoplr2avp/util/Util;->getNowUnixTimeMs(J)J

    move-result-wide v4

    .line 856
    invoke-static {v3, v4, v5}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->getIntervalUntilNextManifestRefreshMs(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;J)J

    move-result-wide v3

    .line 854
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 859
    :cond_8
    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadPending:Z

    if-eqz v1, :cond_9

    .line 860
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->startLoadingManifest()V

    goto :goto_4

    :cond_9
    if-eqz p1, :cond_b

    .line 861
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_b

    .line 865
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    cmp-long v3, v1, v12

    if-nez v3, :cond_a

    const-wide/16 v1, 0x1388

    .line 873
    :cond_a
    iget-wide v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    add-long/2addr v3, v1

    .line 874
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long/2addr v3, v1

    invoke-static {v12, v13, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 875
    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    :cond_b
    :goto_4
    return-void
.end method

.method private resolveUtcTimingElement(Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;)V
    .locals 2

    .line 719
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;->schemeIdUri:Ljava/lang/String;

    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2014"

    .line 720
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "urn:mpeg:dash:utc:direct:2012"

    .line 721
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2014"

    .line 723
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "urn:mpeg:dash:utc:http-iso:2012"

    .line 724
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2014"

    .line 726
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "urn:mpeg:dash:utc:http-xsdate:2012"

    .line 727
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo p1, "urn:mpeg:dash:utc:ntp:2014"

    .line 729
    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string/jumbo p1, "urn:mpeg:dash:utc:ntp:2012"

    .line 730
    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    .line 734
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Unsupported UTC timing scheme"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    goto :goto_4

    .line 731
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadNtpTimeOffset()V

    goto :goto_4

    .line 728
    :cond_5
    :goto_1
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$XsDateTimeParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$XsDateTimeParser;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V

    goto :goto_4

    .line 725
    :cond_6
    :goto_2
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Iso8601Parser;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Iso8601Parser;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->resolveUtcTimingElementHttp(Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V

    goto :goto_4

    .line 722
    :cond_7
    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->resolveUtcTimingElementDirect(Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;)V

    :goto_4
    return-void
.end method

.method private resolveUtcTimingElementDirect(Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;)V
    .locals 4

    .line 740
    :try_start_0
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->parseXsDateTime(Ljava/lang/String;)J

    move-result-wide v0

    .line 741
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 743
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method

.method private resolveUtcTimingElementHttp(Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 749
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;->value:Ljava/lang/String;

    .line 751
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x5

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V

    new-instance p1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$UtcTimestampCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$UtcTimestampCallback;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;)V

    const/4 p2, 0x1

    .line 749
    invoke-direct {p0, v0, p1, p2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;Lcom/google/android/exoplr2avp/upstream/Loader$Callback;I)V

    return-void
.end method

.method private scheduleManifestRefresh(J)V
    .locals 2

    .line 976
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startLoading(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;Lcom/google/android/exoplr2avp/upstream/Loader$Callback;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "TT;>;",
            "Lcom/google/android/exoplr2avp/upstream/Loader$Callback<",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplr2avp/upstream/Loader;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/upstream/Loader;->startLoading(Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;Lcom/google/android/exoplr2avp/upstream/Loader$Callback;I)J

    move-result-wide v5

    .line 1008
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    new-instance p3, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v4, p1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;J)V

    iget p1, p1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-virtual {p2, p3, p1}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V

    return-void
.end method

.method private startLoadingManifest()V
    .locals 5

    .line 980
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->refreshManifestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 981
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplr2avp/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/Loader;->hasFatalError()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 984
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplr2avp/upstream/Loader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 985
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadPending:Z

    return-void

    .line 989
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v0

    .line 990
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 991
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 992
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadPending:Z

    .line 993
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    const/4 v4, 0x4

    invoke-direct {v0, v2, v1, v4, v3}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestCallback:Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$ManifestCallback;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 996
    invoke-interface {v2, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v2

    .line 993
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->startLoading(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;Lcom/google/android/exoplr2avp/upstream/Loader$Callback;I)V

    return-void

    :catchall_0
    move-exception v1

    .line 991
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private updateLiveConfiguration(JJ)V
    .locals 17

    move-object/from16 v0, p0

    .line 882
    invoke-static/range {p1 .. p2}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v5

    .line 885
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->maxOffsetMs:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v7

    if-eqz v3, :cond_0

    .line 886
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->maxOffsetMs:J

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :goto_0
    move-wide v9, v1

    goto :goto_1

    .line 887
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    cmp-long v3, v1, v7

    if-eqz v3, :cond_1

    .line 889
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;->maxOffsetMs:J

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    move-wide v9, v5

    :goto_1
    sub-long v1, p1, p3

    .line 892
    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v11, v1, v3

    if-gez v11, :cond_2

    cmp-long v11, v9, v3

    if-lez v11, :cond_2

    move-wide v1, v3

    .line 898
    :cond_2
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    cmp-long v11, v3, v7

    if-eqz v11, :cond_3

    .line 900
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v3, v3, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    add-long/2addr v1, v3

    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    :cond_3
    move-wide v3, v1

    .line 904
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v11, v1, v7

    if-eqz v11, :cond_4

    .line 905
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->minOffsetMs:J

    .line 906
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(JJJ)J

    move-result-wide v3

    goto :goto_2

    .line 908
    :cond_4
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    cmp-long v11, v1, v7

    if-eqz v11, :cond_5

    .line 910
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;->minOffsetMs:J

    .line 911
    invoke-static/range {v1 .. v6}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(JJJ)J

    move-result-wide v3

    :cond_5
    :goto_2
    cmp-long v1, v3, v9

    if-lez v1, :cond_6

    move-wide v9, v3

    .line 920
    :cond_6
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->targetOffsetMs:J

    cmp-long v5, v1, v7

    if-eqz v5, :cond_7

    .line 922
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->targetOffsetMs:J

    goto :goto_3

    .line 923
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    cmp-long v5, v1, v7

    if-eqz v5, :cond_8

    .line 925
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    goto :goto_3

    .line 926
    :cond_8
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    cmp-long v5, v1, v7

    if-eqz v5, :cond_9

    .line 927
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    goto :goto_3

    .line 929
    :cond_9
    iget-wide v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->fallbackTargetLiveOffsetMs:J

    :goto_3
    cmp-long v5, v1, v3

    if-gez v5, :cond_a

    move-wide v1, v3

    :cond_a
    cmp-long v5, v1, v9

    if-lez v5, :cond_b

    const-wide/32 v1, 0x4c4b40

    const-wide/16 v5, 0x2

    .line 935
    div-long v5, p3, v5

    .line 936
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    sub-long v1, p1, v1

    .line 938
    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v11

    move-wide v13, v3

    move-wide v15, v9

    .line 940
    invoke-static/range {v11 .. v16}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(JJJ)J

    move-result-wide v1

    .line 944
    :cond_b
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget v5, v5, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v6, -0x800001

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_c

    .line 945
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget v5, v5, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    goto :goto_4

    .line 946
    :cond_c
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v5, :cond_d

    .line 947
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    iget v5, v5, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;->minPlaybackSpeed:F

    goto :goto_4

    :cond_d
    const v5, -0x800001

    .line 950
    :goto_4
    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v11, v11, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget v11, v11, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v11, v11, v6

    if-eqz v11, :cond_e

    .line 951
    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    iget-object v11, v11, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget v11, v11, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    goto :goto_5

    .line 952
    :cond_e
    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v11, v11, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v11, :cond_f

    .line 953
    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v11, v11, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    iget v11, v11, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;->maxPlaybackSpeed:F

    goto :goto_5

    :cond_f
    const v11, -0x800001

    :goto_5
    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v13, v5, v6

    if-nez v13, :cond_11

    cmpl-float v6, v11, v6

    if-nez v6, :cond_11

    .line 955
    iget-object v6, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v6, v6, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    if-eqz v6, :cond_10

    iget-object v6, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v6, v6, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->serviceDescription:Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;

    iget-wide v13, v6, Lcom/google/android/exoplr2avp/source/dash/manifest/ServiceDescriptionElement;->targetOffsetMs:J

    cmp-long v6, v13, v7

    if-nez v6, :cond_11

    :cond_10
    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    .line 965
    :cond_11
    new-instance v6, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;-><init>()V

    .line 967
    invoke-virtual {v6, v1, v2}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 968
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 969
    invoke-virtual {v1, v9, v10}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 970
    invoke-virtual {v1, v5}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 971
    invoke-virtual {v1, v11}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    move-result-object v1

    .line 972
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    return-void
.end method


# virtual methods
.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, p2

    .line 463
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->firstPeriodId:I

    sub-int v3, v2, v3

    move v6, v3

    .line 464
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 465
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v2

    iget-wide v4, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    invoke-virtual {v0, v1, v4, v5}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->createEventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v12

    .line 466
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->createDrmEventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    move-result-object v10

    .line 467
    new-instance v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaPeriod;

    move-object v2, v1

    iget v4, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->firstPeriodId:I

    add-int/2addr v3, v4

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    iget-object v7, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;

    iget-object v8, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    iget-object v9, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v13, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    iget-object v15, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->playerEmsgCallback:Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;

    move-object/from16 v18, v1

    .line 484
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->getPlayerId()Lcom/google/android/exoplr2avp/analytics/PlayerId;

    move-result-object v19

    invoke-direct/range {v2 .. v19}, Lcom/google/android/exoplr2avp/source/dash/DashMediaPeriod;-><init>(ILcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;ILcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;JLcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;Lcom/google/android/exoplr2avp/upstream/Allocator;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/source/dash/PlayerEmsgHandler$PlayerEmsgCallback;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    .line 485
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    move-object/from16 v2, p1

    iget v3, v2, Lcom/google/android/exoplr2avp/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v2
.end method

.method public getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 438
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-object v0
.end method

.method public synthetic lambda$new$0$DashMediaSource()V
    .locals 1

    const/4 v0, 0x0

    .line 418
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->processManifest(Z)V

    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadErrorThrower:Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/LoaderErrorThrower;->maybeThrowError()V

    return-void
.end method

.method onDashManifestPublishTimeExpired(J)V
    .locals 5

    .line 530
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    .line 532
    :cond_0
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    :cond_1
    return-void
.end method

.method onDashManifestRefreshRequested()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->simulateManifestRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->startLoadingManifest()V

    return-void
.end method

.method onLoadCanceled(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "*>;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 703
    new-instance v14, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 707
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 708
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 711
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 712
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 713
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget v1, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v14, v1}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V

    return-void
.end method

.method onManifestLoadCompleted(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJ)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            ">;JJ)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-wide/from16 v14, p2

    .line 540
    new-instance v12, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 544
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 545
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 548
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v16

    move-object v2, v12

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    move-object v14, v12

    move-wide/from16 v12, v16

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 549
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 550
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget v3, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v14, v3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V

    .line 551
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 553
    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v3

    .line 555
    :goto_0
    invoke-virtual {v2, v4}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v5

    iget-wide v5, v5, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v3, :cond_1

    .line 556
    iget-object v8, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 557
    invoke-virtual {v8, v7}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v8

    iget-wide v8, v8, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    cmp-long v10, v8, v5

    if-gez v10, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 561
    :cond_1
    iget-boolean v5, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_6

    sub-int v5, v3, v7

    .line 563
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v8

    if-le v5, v8, :cond_2

    const-string v5, "DashMediaSource"

    const-string v8, "Loaded out of sync manifest"

    .line 569
    invoke-static {v5, v8}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v5, 0x1

    goto :goto_3

    .line 571
    :cond_2
    iget-wide v8, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v8, v10

    if-eqz v5, :cond_3

    iget-wide v8, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->publishTimeMs:J

    const-wide/16 v10, 0x3e8

    mul-long v8, v8, v10

    iget-wide v10, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    cmp-long v5, v8, v10

    if-gtz v5, :cond_3

    const-string v5, "DashMediaSource"

    .line 576
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded stale dynamic manifest: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->publishTimeMs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v9, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    .line 586
    iget v2, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    iget-object v3, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget v0, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    .line 587
    invoke-interface {v3, v0}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->getMinimumLoadableRetryCount(I)I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 588
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->getManifestLoadRetryDelayMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->scheduleManifestRefresh(J)V

    goto :goto_4

    .line 590
    :cond_4
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/DashManifestStaleException;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/dash/DashManifestStaleException;-><init>()V

    iput-object v0, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    :goto_4
    return-void

    .line 594
    :cond_5
    iput v4, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 597
    :cond_6
    iput-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 598
    iget-boolean v5, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadPending:Z

    iget-boolean v2, v2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    and-int/2addr v2, v5

    iput-boolean v2, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadPending:Z

    move-wide/from16 v8, p2

    sub-long v10, v8, p4

    .line 599
    iput-wide v10, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 600
    iput-wide v8, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 602
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v2

    .line 607
    :try_start_0
    iget-object v5, v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-object v5, v5, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iget-object v8, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    if-ne v5, v8, :cond_7

    const/4 v4, 0x1

    :cond_7
    if-eqz v4, :cond_9

    .line 612
    iget-object v4, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    if-eqz v4, :cond_8

    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->location:Landroid/net/Uri;

    goto :goto_5

    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_5
    iput-object v0, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 614
    :cond_9
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_c

    .line 617
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    if-eqz v0, :cond_b

    .line 618
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;

    if-eqz v0, :cond_a

    .line 619
    iget-object v0, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->utcTiming:Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;

    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->resolveUtcTimingElement(Lcom/google/android/exoplr2avp/source/dash/manifest/UtcTimingElement;)V

    goto :goto_6

    .line 621
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadNtpTimeOffset()V

    goto :goto_6

    .line 624
    :cond_b
    invoke-direct {v1, v6}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_6

    .line 627
    :cond_c
    iget v0, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->firstPeriodId:I

    add-int/2addr v0, v7

    iput v0, v1, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->firstPeriodId:I

    .line 628
    invoke-direct {v1, v6}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->processManifest(Z)V

    :goto_6
    return-void

    :catchall_0
    move-exception v0

    .line 614
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method onManifestLoadError(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJLjava/io/IOException;I)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            ">;JJ",
            "Ljava/io/IOException;",
            "I)",
            "Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 638
    new-instance v15, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v6, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 642
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v7

    .line 643
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    .line 646
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v13

    move-object v3, v15

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 647
    new-instance v3, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    iget v4, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-direct {v3, v4}, Lcom/google/android/exoplr2avp/source/MediaLoadData;-><init>(I)V

    .line 648
    new-instance v4, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;

    move/from16 v5, p7

    invoke-direct {v4, v15, v3, v2, v5}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;-><init>(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;I)V

    .line 650
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    invoke-interface {v3, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->getRetryDelayMsFor(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;)J

    move-result-wide v3

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 653
    sget-object v3, Lcom/google/android/exoplr2avp/upstream/Loader;->DONT_RETRY_FATAL:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 654
    invoke-static {v5, v3, v4}, Lcom/google/android/exoplr2avp/upstream/Loader;->createRetryAction(ZJ)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    move-result-object v3

    .line 655
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;->isRetry()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 656
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget v6, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-virtual {v5, v15, v6, v2, v4}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;ILjava/io/IOException;Z)V

    if-eqz v4, :cond_1

    .line 658
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v4, v5}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    :cond_1
    return-object v3
.end method

.method onUtcTimestampLoadCompleted(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p1

    .line 665
    new-instance v14, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v5, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v6

    .line 670
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v7

    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v12

    move-object v2, v14

    move-wide/from16 v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v2 .. v13}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    .line 674
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v2, v3, v4}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 675
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget v3, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    invoke-virtual {v2, v14, v3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;I)V

    .line 676
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, v1, p2

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->onUtcTimestampResolved(J)V

    return-void
.end method

.method onUtcTimestampLoadError(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;JJLjava/io/IOException;)Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable<",
            "Ljava/lang/Long;",
            ">;JJ",
            "Ljava/io/IOException;",
            ")",
            "Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    .line 684
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    new-instance v14, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-wide v5, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    iget-object v7, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 688
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getUri()Landroid/net/Uri;

    move-result-object v8

    .line 689
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    .line 692
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->bytesLoaded()J

    move-result-wide v15

    move-object v4, v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    move-object v0, v14

    move-wide v14, v15

    invoke-direct/range {v4 .. v15}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget v4, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    const/4 v5, 0x1

    .line 684
    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;ILjava/io/IOException;Z)V

    move-object/from16 v0, p0

    .line 696
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    invoke-interface {v3, v4, v5}, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;->onLoadTaskConcluded(J)V

    .line 697
    invoke-direct {v0, v2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->onUtcTimestampResolutionError(Ljava/io/IOException;)V

    .line 698
    sget-object v1, Lcom/google/android/exoplr2avp/upstream/Loader;->DONT_RETRY:Lcom/google/android/exoplr2avp/upstream/Loader$LoadErrorAction;

    return-object v1
.end method

.method protected prepareSourceInternal(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 2

    .line 443
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->mediaTransferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    .line 444
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->prepare()V

    .line 445
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->getPlayerId()Lcom/google/android/exoplr2avp/analytics/PlayerId;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->setPlayer(Landroid/os/Looper;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    .line 446
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 447
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->processManifest(Z)V

    goto :goto_0

    .line 449
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 450
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/Loader;

    const-string v0, "DashMediaSource"

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplr2avp/upstream/Loader;

    .line 451
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    .line 452
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->startLoadingManifest()V

    :goto_0
    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 1

    .line 491
    check-cast p1, Lcom/google/android/exoplr2avp/source/dash/DashMediaPeriod;

    .line 492
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaPeriod;->release()V

    .line 493
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    iget p1, p1, Lcom/google/android/exoplr2avp/source/dash/DashMediaPeriod;->id:I

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method protected releaseSourceInternal()V
    .locals 4

    const/4 v0, 0x0

    .line 498
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadPending:Z

    const/4 v1, 0x0

    .line 499
    iput-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 500
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplr2avp/upstream/Loader;

    if-eqz v2, :cond_0

    .line 501
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/upstream/Loader;->release()V

    .line 502
    iput-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->loader:Lcom/google/android/exoplr2avp/upstream/Loader;

    :cond_0
    const-wide/16 v2, 0x0

    .line 504
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadStartTimestampMs:J

    .line 505
    iput-wide v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestLoadEndTimestampMs:J

    .line 506
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->sideloadedManifest:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifest:Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    .line 507
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    iput-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 508
    iput-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestFatalError:Ljava/io/IOException;

    .line 509
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 510
    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 511
    iput-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->handler:Landroid/os/Handler;

    :cond_2
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 513
    iput-wide v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->elapsedRealtimeOffsetMs:J

    .line 514
    iput v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->staleManifestReloadAttempt:I

    .line 515
    iput-wide v1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->expiredManifestPublishTimeUs:J

    .line 516
    iput v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->firstPeriodId:I

    .line 517
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->periodsById:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 518
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;->reset()V

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->drmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/drm/DrmSessionManager;->release()V

    return-void
.end method

.method public replaceManifestUri(Landroid/net/Uri;)V
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUriLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->manifestUri:Landroid/net/Uri;

    .line 430
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;->initialManifestUri:Landroid/net/Uri;

    .line 431
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
