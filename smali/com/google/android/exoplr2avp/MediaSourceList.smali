.class final Lcom/google/android/exoplr2avp/MediaSourceList;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;,
        Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;,
        Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;,
        Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceListInfoRefreshListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaSourceList"


# instance fields
.field private final childSources:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;",
            ">;"
        }
    .end annotation
.end field

.field private final drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

.field private final enabledMediaSourceHolders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private isPrepared:Z

.field private final mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap<",
            "Lcom/google/android/exoplr2avp/source/MediaPeriod;",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceByUid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

.field private final mediaSourceHolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceListInfoListener:Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceListInfoRefreshListener;

.field private mediaTransferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

.field private final playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

.field private shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceListInfoRefreshListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;Landroid/os/Handler;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p4, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    .line 106
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceListInfoListener:Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceListInfoRefreshListener;

    .line 107
    new-instance p1, Lcom/google/android/exoplr2avp/source/ShuffleOrder$DefaultShuffleOrder;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Lcom/google/android/exoplr2avp/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    .line 108
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 109
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    .line 110
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    .line 111
    new-instance p1, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    .line 112
    new-instance p4, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    invoke-direct {p4}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;-><init>()V

    iput-object p4, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->childSources:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    .line 115
    invoke-virtual {p1, p3, p2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;)V

    .line 116
    invoke-virtual {p4, p3, p2}, Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/MediaSourceList;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/MediaSourceList;)Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/MediaSourceList;->getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;I)I
    .locals 0

    .line 58
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/MediaSourceList;->getWindowIndexForChildWindowIndex(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;I)I

    move-result p0

    return p0
.end method

.method private correctOffsets(II)V
    .locals 2

    .line 410
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 412
    iget v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr v1, p2

    iput v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableChildSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;

    if-eqz p1, :cond_0

    .line 391
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/source/MediaSource;->disable(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;)V

    :cond_0
    return-void
.end method

.method private disableUnusedMediaSources()V
    .locals 3

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 379
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 380
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 381
    iget-object v2, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 382
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/MediaSourceList;->disableChildSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V

    .line 383
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableMediaSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;

    if-eqz p1, :cond_0

    .line 373
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/source/MediaSource;->enable(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;)V

    :cond_0
    return-void
.end method

.method private static getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 468
    invoke-static {p0}, Lcom/google/android/exoplr2avp/PlaylistTimeline;->getChildPeriodUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getMediaPeriodIdForChildMediaPeriodId(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;
    .locals 6

    const/4 v0, 0x0

    .line 421
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 424
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-wide v3, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 426
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->getPeriodUid(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 427
    invoke-virtual {p1, p0}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 463
    invoke-static {p0}, Lcom/google/android/exoplr2avp/PlaylistTimeline;->getChildTimelineUidFromConcatenatedUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getPeriodUid(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 472
    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/PlaylistTimeline;->getConcatenatedUid(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static getWindowIndexForChildWindowIndex(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;I)I
    .locals 0

    .line 435
    iget p0, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    add-int/2addr p1, p0

    return p1
.end method

.method private maybeReleaseChildSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V
    .locals 3

    .line 451
    iget-boolean v0, p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->childSources:Ljava/util/HashMap;

    .line 453
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;

    .line 454
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSource;->releaseSource(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;)V

    .line 455
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/source/MediaSource;->removeEventListener(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;)V

    .line 456
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private prepareChildSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V
    .locals 5

    .line 439
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    .line 440
    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$MediaSourceList$SWw0paWS_sejqRzCKbL3f73uuHw;

    invoke-direct {v1, p0}, Lcom/google/android/exoplr2avp/-$$Lambda$MediaSourceList$SWw0paWS_sejqRzCKbL3f73uuHw;-><init>(Lcom/google/android/exoplr2avp/MediaSourceList;)V

    .line 442
    new-instance v2, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;

    invoke-direct {v2, p0, p1}, Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;-><init>(Lcom/google/android/exoplr2avp/MediaSourceList;Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V

    .line 443
    iget-object v3, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->childSources:Ljava/util/HashMap;

    new-instance v4, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplr2avp/source/MediaSource;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;)V

    .line 445
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    invoke-interface {v0, p1, v2}, Lcom/google/android/exoplr2avp/source/MediaSource;->addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    .line 446
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaTransferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->playerId:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplr2avp/source/MediaSource;->prepareSource(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    return-void
.end method

.method private removeMediaSourcesInternal(II)V
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    :goto_0
    if-lt p2, p1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 398
    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    iget-object v3, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v2, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v2

    .line 401
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v2

    neg-int v2, v2

    .line 400
    invoke-direct {p0, p2, v2}, Lcom/google/android/exoplr2avp/MediaSourceList;->correctOffsets(II)V

    .line 402
    iput-boolean v0, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->isRemoved:Z

    .line 403
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->isPrepared:Z

    if-eqz v2, :cond_0

    .line 404
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/MediaSourceList;->maybeReleaseChildSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addMediaSources(ILjava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/ShuffleOrder;",
            ")",
            "Lcom/google/android/exoplr2avp/Timeline;"
        }
    .end annotation

    .line 142
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 143
    iput-object p3, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move p3, p1

    .line 144
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, p1

    if-ge p3, v0, :cond_3

    sub-int v0, p3, p1

    .line 145
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    if-lez p3, :cond_0

    .line 147
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 148
    iget-object v2, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v2

    .line 149
    iget v1, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 151
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v2

    add-int/2addr v1, v2

    .line 149
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->reset(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->reset(I)V

    .line 155
    :goto_1
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v1

    .line 156
    invoke-direct {p0, p3, v1}, Lcom/google/android/exoplr2avp/MediaSourceList;->correctOffsets(II)V

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 160
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->isPrepared:Z

    if-eqz v1, :cond_2

    .line 162
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->prepareChildSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V

    .line 163
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {v1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 166
    :cond_1
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->disableChildSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V

    :cond_2
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->createTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public clear(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    const/4 p1, 0x0

    .line 254
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->getSize()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 255
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->createTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
    .locals 2

    .line 307
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->getMediaSourceHolderUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 308
    iget-object v1, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 309
    invoke-static {v1}, Lcom/google/android/exoplr2avp/MediaSourceList;->getChildPeriodUid(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->copyWithPeriodUid(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object p1

    .line 310
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceByUid:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 311
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->enableMediaSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V

    .line 312
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    .line 314
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    move-result-object p1

    .line 315
    iget-object p2, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->disableUnusedMediaSources()V

    return-object p1
.end method

.method public createTimeline()Lcom/google/android/exoplr2avp/Timeline;
    .locals 3

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/google/android/exoplr2avp/Timeline;->EMPTY:Lcom/google/android/exoplr2avp/Timeline;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 359
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 360
    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 361
    iput v1, v2, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 362
    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 364
    :cond_1
    new-instance v0, Lcom/google/android/exoplr2avp/PlaylistTimeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public isPrepared()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->isPrepared:Z

    return v0
.end method

.method public synthetic lambda$prepareChildSource$0$MediaSourceList(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 0

    .line 441
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceListInfoListener:Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceListInfoRefreshListener;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceListInfoRefreshListener;->onPlaylistUpdateRequested()V

    return-void
.end method

.method public moveMediaSource(IILcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 210
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/exoplr2avp/MediaSourceList;->moveMediaSourceRange(IIILcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public moveMediaSourceRange(IIILcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 233
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->getSize()I

    move-result v1

    if-gt p2, v1, :cond_0

    if-ltz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 232
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 234
    iput-object p4, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    if-eq p1, p2, :cond_3

    if-ne p1, p3, :cond_1

    goto :goto_2

    .line 238
    :cond_1
    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p4

    sub-int v1, p2, p1

    add-int/2addr v1, p3

    sub-int/2addr v1, v0

    add-int/lit8 v0, p2, -0x1

    .line 240
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    iget v1, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 242
    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-static {v2, p1, p2, p3}, Lcom/google/android/exoplr2avp/util/Util;->moveItems(Ljava/util/List;III)V

    :goto_1
    if-gt p4, v0, :cond_2

    .line 244
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 245
    iput v1, p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->firstWindowIndexInChild:I

    .line 246
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result p1

    add-int/2addr v1, p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    .line 248
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->createTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    return-object p1

    .line 236
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->createTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public prepare(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 3

    .line 287
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->isPrepared:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 288
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaTransferListener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    const/4 p1, 0x0

    .line 289
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 291
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->prepareChildSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V

    .line 292
    iget-object v2, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->isPrepared:Z

    return-void
.end method

.method public release()V
    .locals 5

    .line 338
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;

    .line 340
    :try_start_0
    iget-object v2, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;

    invoke-interface {v2, v3}, Lcom/google/android/exoplr2avp/source/MediaSource;->releaseSource(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "MediaSourceList"

    const-string v4, "Failed to release child source."

    .line 343
    invoke-static {v3, v4, v2}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    :goto_1
    iget-object v2, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object v3, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;

    invoke-interface {v2, v3}, Lcom/google/android/exoplr2avp/source/MediaSource;->removeEventListener(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;)V

    .line 346
    iget-object v2, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;

    invoke-interface {v2, v1}, Lcom/google/android/exoplr2avp/source/MediaSource;->removeDrmEventListener(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->childSources:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->enabledMediaSourceHolders:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 350
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->isPrepared:Z

    return-void
.end method

.method public releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    .line 327
    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 328
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    .line 329
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->activeMediaPeriodIds:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 330
    iget-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceByMediaPeriod:Ljava/util/IdentityHashMap;

    invoke-virtual {p1}, Ljava/util/IdentityHashMap;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 331
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->disableUnusedMediaSources()V

    .line 333
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->maybeReleaseChildSource(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;)V

    return-void
.end method

.method public removeMediaSourceRange(IILcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 191
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->getSize()I

    move-result v0

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 192
    iput-object p3, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 194
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->createTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public setMediaSources(Ljava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/ShuffleOrder;",
            ")",
            "Lcom/google/android/exoplr2avp/Timeline;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->removeMediaSourcesInternal(II)V

    .line 128
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->mediaSourceHolders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    return-object p1
.end method

.method public setShuffleOrder(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->getSize()I

    move-result v0

    .line 275
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/ShuffleOrder;->getLength()I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 278
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/ShuffleOrder;->cloneAndClear()Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move-result-object p1

    const/4 v1, 0x0

    .line 279
    invoke-interface {p1, v1, v0}, Lcom/google/android/exoplr2avp/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move-result-object p1

    .line 281
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    .line 282
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaSourceList;->createTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    return-object p1
.end method
