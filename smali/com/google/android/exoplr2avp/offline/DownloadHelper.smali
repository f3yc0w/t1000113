.class public final Lcom/google/android/exoplr2avp/offline/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/offline/DownloadHelper$FakeBandwidthMeter;,
        Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection;,
        Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;,
        Lcom/google/android/exoplr2avp/offline/DownloadHelper$LiveContentUnsupportedException;,
        Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;
    }
.end annotation


# static fields
.field public static final DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;


# instance fields
.field private callback:Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;

.field private final callbackHandler:Landroid/os/Handler;

.field private immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private isPreparedWithMedia:Z

.field private final localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

.field private mappedTrackInfos:[Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

.field private mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

.field private final mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

.field private final rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

.field private final scratchSet:Landroid/util/SparseIntArray;

.field private trackGroupArrays:[Lcom/google/android/exoplr2avp/source/TrackGroupArray;

.field private trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation
.end field

.field private final trackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

.field private final window:Lcom/google/android/exoplr2avp/Timeline$Window;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 106
    sget-object v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->DEFAULT_WITHOUT_CONTEXT:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    .line 108
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setConstrainAudioChannelCountToDeviceCapabilities(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplr2avp/RendererCapabilities;)V
    .locals 1

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    .line 487
    iput-object p2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    .line 488
    new-instance p1, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    new-instance p2, Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection$Factory;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection$Factory;-><init>(Lcom/google/android/exoplr2avp/offline/DownloadHelper$1;)V

    invoke-direct {p1, p3, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;-><init>(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    .line 490
    iput-object p4, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    .line 491
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    .line 492
    sget-object p2, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$P2Z0rYMyLbrc2I_NsbbNSz4FxQc;->INSTANCE:Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$P2Z0rYMyLbrc2I_NsbbNSz4FxQc;

    new-instance p3, Lcom/google/android/exoplr2avp/offline/DownloadHelper$FakeBandwidthMeter;

    invoke-direct {p3, v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$FakeBandwidthMeter;-><init>(Lcom/google/android/exoplr2avp/offline/DownloadHelper$1;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->init(Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)V

    .line 493
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    .line 494
    new-instance p1, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/offline/DownloadHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 95
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->onMediaPrepared()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->onMediaPreparationFailed(Ljava/io/IOException;)V

    return-void
.end method

.method private addTrackSelectionInternal(ILcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    .line 824
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->runTrackSelection(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    .line 829
    iget-object v0, p2, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->overrides:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap;->values()Lcom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableCollection;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 830
    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    .line 831
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v1

    .line 830
    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->setParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    .line 832
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->runTrackSelection(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private assertPreparedWithMedia()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    .line 894
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->isPreparedWithMedia:Z

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    return-void
.end method

.method public static createMediaSource(Lcom/google/android/exoplr2avp/offline/DownloadRequest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 1

    const/4 v0, 0x0

    .line 432
    invoke-static {p0, p1, v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->createMediaSource(Lcom/google/android/exoplr2avp/offline/DownloadRequest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static createMediaSource(Lcom/google/android/exoplr2avp/offline/DownloadRequest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 0

    .line 450
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/offline/DownloadRequest;->toMediaItem()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p0

    .line 449
    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->createMediaSourceInternal(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method private static createMediaSourceInternal(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 2

    .line 954
    new-instance v0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    sget-object v1, Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;->EMPTY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    if-eqz p2, :cond_0

    .line 957
    new-instance p1, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$hSCGmI6XxTtO_SwMZZ3J_ZJASYs;

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$hSCGmI6XxTtO_SwMZZ3J_ZJASYs;-><init>(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    .line 959
    :cond_0
    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object p0

    return-object p0
.end method

.method public static forDash(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 194
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forDash(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forDash(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    .line 214
    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p0

    const-string v0, "application/dash+xml"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p0

    .line 213
    invoke-static {p0, p4, p2, p1, p3}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forHls(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    invoke-static {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 232
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forHls(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forHls(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 251
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    .line 252
    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p0

    const-string v0, "application/x-mpegURL"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p0

    .line 251
    invoke-static {p0, p4, p2, p1, p3}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forMediaItem(Landroid/content/Context;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1

    .line 322
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->isProgressive(Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 325
    invoke-static {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 323
    invoke-static {p1, p0, v0, v0, v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forMediaItem(Landroid/content/Context;Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1

    .line 353
    invoke-static {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 351
    invoke-static {p1, p0, p2, p3, v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1

    const/4 v0, 0x0

    .line 380
    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 3

    .line 412
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->isProgressive(Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 413
    :goto_1
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 414
    new-instance v2, Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    if-eqz v0, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    .line 419
    :cond_2
    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 418
    invoke-static {p0, p3, p4}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->createMediaSourceInternal(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object p3

    :goto_2
    if-eqz p2, :cond_3

    .line 422
    invoke-static {p2}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getRendererCapabilities(Lcom/google/android/exoplr2avp/RenderersFactory;)[Lcom/google/android/exoplr2avp/RendererCapabilities;

    move-result-object p2

    goto :goto_3

    :cond_3
    new-array p2, v1, [Lcom/google/android/exoplr2avp/RendererCapabilities;

    .line 423
    :goto_3
    invoke-direct {v2, p0, p3, p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;[Lcom/google/android/exoplr2avp/RendererCapabilities;)V

    return-object v2
.end method

.method public static forProgressive(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 171
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forMediaItem(Landroid/content/Context;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forProgressive(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    .line 180
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p1

    .line 179
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forMediaItem(Landroid/content/Context;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forSmoothStreaming(Landroid/content/Context;Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 291
    invoke-static {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    const/4 v0, 0x0

    .line 286
    invoke-static {p1, p2, p3, v0, p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forSmoothStreaming(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forSmoothStreaming(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 267
    sget-object v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1, v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forSmoothStreaming(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static forSmoothStreaming(Landroid/net/Uri;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    .line 306
    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p0

    const-string v0, "application/vnd.ms-sstr+xml"

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p0

    .line 305
    invoke-static {p0, p4, p2, p1, p3}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;
    .locals 1

    .line 115
    invoke-static {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 117
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 118
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setConstrainAudioChannelCountToDeviceCapabilities(Z)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p0

    return-object p0
.end method

.method public static getRendererCapabilities(Lcom/google/android/exoplr2avp/RenderersFactory;)[Lcom/google/android/exoplr2avp/RendererCapabilities;
    .locals 6

    .line 154
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentOrMainLooper()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/exoplr2avp/offline/DownloadHelper$1;

    invoke-direct {v2}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$1;-><init>()V

    new-instance v3, Lcom/google/android/exoplr2avp/offline/DownloadHelper$2;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$2;-><init>()V

    sget-object v4, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$lTPYGyLv6cNBhU6RCQdcBDbayj0;->INSTANCE:Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$lTPYGyLv6cNBhU6RCQdcBDbayj0;

    sget-object v5, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$IXWwwrVXJhZwkLooQq0tSsL04So;->INSTANCE:Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$IXWwwrVXJhZwkLooQq0tSsL04So;

    move-object v0, p0

    .line 153
    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplr2avp/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/text/TextOutput;Lcom/google/android/exoplr2avp/metadata/MetadataOutput;)[Lcom/google/android/exoplr2avp/Renderer;

    move-result-object p0

    .line 159
    array-length v0, p0

    new-array v0, v0, [Lcom/google/android/exoplr2avp/RendererCapabilities;

    const/4 v1, 0x0

    .line 160
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 161
    aget-object v2, p0, v1

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/Renderer;->getCapabilities()Lcom/google/android/exoplr2avp/RendererCapabilities;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static isProgressive(Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;)Z
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/google/android/exoplr2avp/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$createMediaSourceInternal$6(Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$getRendererCapabilities$0(Lcom/google/android/exoplr2avp/text/CueGroup;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$getRendererCapabilities$1(Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 0

    return-void
.end method

.method static synthetic lambda$new$2()V
    .locals 0

    return-void
.end method

.method private onMediaPreparationFailed(Ljava/io/IOException;)V
    .locals 2

    .line 867
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$YFdDFj4Eb2HJ3LQ4Pn5-v8HBcCw;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$YFdDFj4Eb2HJ3LQ4Pn5-v8HBcCw;-><init>(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onMediaPrepared()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 838
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

    array-length v0, v0

    .line 842
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    array-length v1, v1

    const/4 v2, 0x2

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v5, 0x0

    aput v0, v3, v5

    .line 843
    const-class v6, Ljava/util/List;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/util/List;

    iput-object v3, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    new-array v2, v2, [I

    aput v1, v2, v4

    aput v0, v2, v5

    .line 845
    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/util/List;

    iput-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_0

    .line 849
    iget-object v4, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v4, v4, v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v4, v3

    .line 850
    iget-object v4, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v4, v4, v2

    iget-object v6, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v6, v6, v2

    aget-object v6, v6, v3

    .line 851
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    aput-object v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 854
    :cond_1
    new-array v1, v0, [Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iput-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    .line 855
    new-array v1, v0, [Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    iput-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    :goto_2
    if-ge v5, v0, :cond_2

    .line 857
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

    aget-object v2, v2, v5

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v2

    aput-object v2, v1, v5

    .line 858
    invoke-direct {p0, v5}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->runTrackSelection(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 859
    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 860
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    aput-object v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 862
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->setPreparedWithMedia()V

    .line 863
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$EOL2DXWi1d3wfsipN6ebtOo71BA;

    invoke-direct {v1, p0}, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$EOL2DXWi1d3wfsipN6ebtOo71BA;-><init>(Lcom/google/android/exoplr2avp/offline/DownloadHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private runTrackSelection(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "trackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline"
        }
    .end annotation

    .line 908
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    aget-object v2, v2, p1

    new-instance v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 912
    invoke-virtual {v4, p1}, Lcom/google/android/exoplr2avp/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 909
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->selectTracks([Lcom/google/android/exoplr2avp/RendererCapabilities;Lcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 914
    :goto_0
    iget v3, v0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->length:I

    if-ge v2, v3, :cond_7

    .line 915
    iget-object v3, v0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    aget-object v3, v3, v2

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 919
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v4, v4, p1

    aget-object v4, v4, v2

    const/4 v5, 0x0

    .line 922
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 923
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 924
    invoke-interface {v6}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v7

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/exoplr2avp/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 926
    iget-object v7, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->clear()V

    const/4 v7, 0x0

    .line 927
    :goto_2
    invoke-interface {v6}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 928
    iget-object v8, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-interface {v6, v7}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 930
    :goto_3
    invoke-interface {v3}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 931
    iget-object v8, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-interface {v3, v7}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result v9

    invoke-virtual {v8, v9, v1}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 933
    :cond_2
    iget-object v7, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v7}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    const/4 v8, 0x0

    .line 934
    :goto_4
    iget-object v9, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 935
    iget-object v9, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->scratchSet:Landroid/util/SparseIntArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 937
    :cond_3
    new-instance v8, Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection;

    .line 938
    invoke-interface {v6}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v6

    invoke-direct {v8, v6, v7}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$DownloadTrackSelection;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[I)V

    .line 937
    invoke-interface {v4, v5, v8}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_5
    if-nez v5, :cond_6

    .line 944
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method private setPreparedWithMedia()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackGroupArrays",
            "mappedTrackInfos",
            "trackSelectionsByPeriodAndRenderer",
            "immutableTrackSelectionsByPeriodAndRenderer",
            "mediaPreparer",
            "mediaPreparer.timeline",
            "mediaPreparer.mediaPeriods"
        }
    .end annotation

    const/4 v0, 0x1

    .line 880
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->isPreparedWithMedia:Z

    return-void
.end method


# virtual methods
.method public varargs addAudioLanguagesToSelection([Ljava/lang/String;)V
    .locals 8

    .line 662
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 664
    sget-object v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    .line 665
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 667
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    .line 669
    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 670
    invoke-interface {v6}, Lcom/google/android/exoplr2avp/RendererCapabilities;->getTrackType()I

    move-result v6

    if-eq v6, v1, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    .line 671
    :goto_1
    invoke-virtual {v0, v6, v7}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getPeriodCount()I

    move-result v1

    .line 677
    array-length v2, p1

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_3

    aget-object v5, p1, v3

    .line 679
    invoke-virtual {v0, v5}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setPreferredAudioLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v1, :cond_2

    .line 681
    invoke-direct {p0, v6, v5}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 685
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public varargs addTextLanguagesToSelection(Z[Ljava/lang/String;)V
    .locals 7

    .line 702
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 704
    sget-object v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->DEFAULT_TRACK_SELECTOR_PARAMETERS_WITHOUT_CONTEXT:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    .line 705
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object v0

    .line 706
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setSelectUndeterminedTextLanguage(Z)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    const/4 p1, 0x1

    .line 708
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setForceHighestSupportedBitrate(Z)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    .line 710
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 711
    invoke-interface {v5}, Lcom/google/android/exoplr2avp/RendererCapabilities;->getTrackType()I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 712
    :goto_1
    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setTrackTypeDisabled(IZ)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 717
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getPeriodCount()I

    move-result p1

    .line 718
    array-length v1, p2

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v4, p2, v2

    .line 720
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setPreferredTextLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, p1, :cond_2

    .line 722
    invoke-direct {p0, v5, v4}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 726
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addTrackSelection(ILcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 0

    .line 645
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 646
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 648
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public addTrackSelectionForSingleRenderer(IILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;",
            ">;)V"
        }
    .end annotation

    .line 747
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 748
    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 749
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-eq v1, p2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 750
    :goto_1
    invoke-virtual {p3, v1, v2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setRendererDisabled(IZ)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 752
    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 753
    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    goto :goto_3

    .line 755
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v1, v1, p1

    .line 756
    invoke-virtual {v1, p2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v1

    .line 757
    :goto_2
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 758
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;

    invoke-virtual {p3, p2, v1, v2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->setSelectionOverride(ILcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$SelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;

    .line 759
    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void

    :catch_0
    move-exception p1

    .line 763
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public clearTrackSelections(I)V
    .locals 2

    .line 609
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    const/4 v0, 0x0

    .line 610
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 611
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    invoke-interface {v1}, Ljava/util/List;->clear()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDownloadRequest(Ljava/lang/String;[B)Lcom/google/android/exoplr2avp/offline/DownloadRequest;
    .locals 7

    .line 787
    new-instance v0, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 789
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;

    move-result-object p1

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    if-eqz v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->drmConfiguration:Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$DrmConfiguration;->getKeySetId()[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 790
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;->setKeySetId([B)Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    .line 794
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;

    move-result-object p1

    .line 795
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;->setData([B)Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;

    move-result-object p1

    .line 796
    iget-object p2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    if-nez p2, :cond_1

    .line 797
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;->build()Lcom/google/android/exoplr2avp/offline/DownloadRequest;

    move-result-object p1

    return-object p1

    .line 799
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 800
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 801
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 802
    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_3

    .line 804
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 805
    iget-object v4, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v4, v4, v3

    array-length v4, v4

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    .line 807
    iget-object v6, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object v6, v6, v3

    aget-object v6, v6, v5

    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 809
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Lcom/google/android/exoplr2avp/source/MediaPeriod;

    aget-object v4, v4, v3

    invoke-interface {v4, v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 811
    :cond_3
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;->build()Lcom/google/android/exoplr2avp/offline/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public getDownloadRequest([B)Lcom/google/android/exoplr2avp/offline/DownloadRequest;
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getDownloadRequest(Ljava/lang/String;[B)Lcom/google/android/exoplr2avp/offline/DownloadRequest;

    move-result-object p1

    return-object p1
.end method

.method public getManifest()Ljava/lang/Object;
    .locals 3

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 530
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 531
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->manifest:Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public getMappedTrackInfo(I)Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;
    .locals 1

    .line 585
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getPeriodCount()I
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 544
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    array-length v0, v0

    return v0
.end method

.method public getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .locals 1

    .line 573
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackGroupArrays:[Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getTrackSelections(II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ">;"
        }
    .end annotation

    .line 598
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public getTracks(I)Lcom/google/android/exoplr2avp/Tracks;
    .locals 2

    .line 557
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 558
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mappedTrackInfos:[Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->immutableTrackSelectionsByPeriodAndRenderer:[[Ljava/util/List;

    aget-object p1, v1, p1

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionUtil;->buildTracks(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;[Ljava/util/List;)Lcom/google/android/exoplr2avp/Tracks;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$onMediaPreparationFailed$5$DownloadHelper(Ljava/io/IOException;)V
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->callback:Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;->onPrepareError(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/io/IOException;)V

    return-void
.end method

.method public synthetic lambda$onMediaPrepared$4$DownloadHelper()V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->callback:Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;->onPrepared(Lcom/google/android/exoplr2avp/offline/DownloadHelper;)V

    return-void
.end method

.method public synthetic lambda$prepare$3$DownloadHelper(Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;)V
    .locals 0

    .line 509
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;->onPrepared(Lcom/google/android/exoplr2avp/offline/DownloadHelper;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->callback:Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 505
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->callback:Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;

    .line 506
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    if-eqz v0, :cond_1

    .line 507
    new-instance p1, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    invoke-direct {p1, v0, p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/offline/DownloadHelper;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    goto :goto_1

    .line 509
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$0LGpRDSe7wMj5lb44Owjwt_VUeg;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$0LGpRDSe7wMj5lb44Owjwt_VUeg;-><init>(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->mediaPreparer:Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper$MediaPreparer;->release()V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->release()V

    return-void
.end method

.method public replaceTrackSelections(ILcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 0

    .line 626
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->assertPreparedWithMedia()V

    .line 627
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->clearTrackSelections(I)V

    .line 628
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->addTrackSelectionInternal(ILcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 630
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
