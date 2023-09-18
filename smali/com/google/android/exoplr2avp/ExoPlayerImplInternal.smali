.class final Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;
.super Ljava/lang/Object;
.source "ExoPlayerImplInternal.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;
.implements Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;
.implements Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceListInfoRefreshListener;
.implements Lcom/google/android/exoplr2avp/DefaultMediaClock$PlaybackParametersListener;
.implements Lcom/google/android/exoplr2avp/PlayerMessage$Sender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;,
        Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;,
        Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;,
        Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;,
        Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;,
        Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;,
        Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;
    }
.end annotation


# static fields
.field private static final ACTIVE_INTERVAL_MS:I = 0xa

.field private static final IDLE_INTERVAL_MS:I = 0x3e8

.field private static final MSG_ADD_MEDIA_SOURCES:I = 0x12

.field private static final MSG_ATTEMPT_RENDERER_ERROR_RECOVERY:I = 0x19

.field private static final MSG_DO_SOME_WORK:I = 0x2

.field private static final MSG_MOVE_MEDIA_SOURCES:I = 0x13

.field private static final MSG_PERIOD_PREPARED:I = 0x8

.field private static final MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL:I = 0x10

.field private static final MSG_PLAYLIST_UPDATE_REQUESTED:I = 0x16

.field private static final MSG_PREPARE:I = 0x0

.field private static final MSG_RELEASE:I = 0x7

.field private static final MSG_REMOVE_MEDIA_SOURCES:I = 0x14

.field private static final MSG_SEEK_TO:I = 0x3

.field private static final MSG_SEND_MESSAGE:I = 0xe

.field private static final MSG_SEND_MESSAGE_TO_TARGET_THREAD:I = 0xf

.field private static final MSG_SET_FOREGROUND_MODE:I = 0xd

.field private static final MSG_SET_MEDIA_SOURCES:I = 0x11

.field private static final MSG_SET_OFFLOAD_SCHEDULING_ENABLED:I = 0x18

.field private static final MSG_SET_PAUSE_AT_END_OF_WINDOW:I = 0x17

.field private static final MSG_SET_PLAYBACK_PARAMETERS:I = 0x4

.field private static final MSG_SET_PLAY_WHEN_READY:I = 0x1

.field private static final MSG_SET_REPEAT_MODE:I = 0xb

.field private static final MSG_SET_SEEK_PARAMETERS:I = 0x5

.field private static final MSG_SET_SHUFFLE_ENABLED:I = 0xc

.field private static final MSG_SET_SHUFFLE_ORDER:I = 0x15

.field private static final MSG_SOURCE_CONTINUE_LOADING_REQUESTED:I = 0x9

.field private static final MSG_STOP:I = 0x6

.field private static final MSG_TRACK_SELECTION_INVALIDATED:I = 0xa

.field private static final PLAYBACK_STUCK_AFTER_MS:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "ExoPlayerImplInternal"


# instance fields
.field private final backBufferDurationUs:J

.field private final bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

.field private final clock:Lcom/google/android/exoplr2avp/util/Clock;

.field private deliverPendingMessageAtStartPositionRequired:Z

.field private final emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

.field private enabledRendererCount:I

.field private foregroundMode:Z

.field private final handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

.field private final internalPlaybackThread:Landroid/os/HandlerThread;

.field private isRebuffering:Z

.field private final livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

.field private final loadControl:Lcom/google/android/exoplr2avp/LoadControl;

.field private final mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

.field private final mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

.field private nextPendingMessageIndexHint:I

.field private offloadSchedulingEnabled:Z

.field private pauseAtEndOfWindow:Z

.field private pendingInitialSeekPosition:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

.field private final pendingMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pendingPauseAtEndOfPeriod:Z

.field private pendingRecoverableRendererError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

.field private final period:Lcom/google/android/exoplr2avp/Timeline$Period;

.field private playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

.field private playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

.field private final playbackInfoUpdateListener:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private final playbackLooper:Landroid/os/Looper;

.field private playbackMaybeBecameStuckAtMs:J

.field private final queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

.field private final releaseTimeoutMs:J

.field private released:Z

.field private final rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

.field private rendererPositionUs:J

.field private final renderers:[Lcom/google/android/exoplr2avp/Renderer;

.field private final renderersToReset:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/exoplr2avp/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private repeatMode:I

.field private requestForRendererSleep:Z

.field private final retainBackBufferFromKeyframe:Z

.field private seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

.field private setForegroundModeTimeoutMs:J

.field private shouldContinueLoading:Z

.field private shuffleModeEnabled:Z

.field private final trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

.field private final window:Lcom/google/android/exoplr2avp/Timeline$Window;


# direct methods
.method public constructor <init>([Lcom/google/android/exoplr2avp/Renderer;Lcom/google/android/exoplr2avp/trackselection/TrackSelector;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Lcom/google/android/exoplr2avp/LoadControl;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;IZLcom/google/android/exoplr2avp/analytics/AnalyticsCollector;Lcom/google/android/exoplr2avp/SeekParameters;Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    move-wide/from16 v5, p11

    move-object/from16 v7, p15

    move-object/from16 v8, p17

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v9, p16

    .line 235
    iput-object v9, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 236
    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    .line 237
    iput-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    move-object v9, p3

    .line 238
    iput-object v9, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-object/from16 v10, p4

    .line 239
    iput-object v10, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplr2avp/LoadControl;

    .line 240
    iput-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    move/from16 v11, p6

    .line 241
    iput v11, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->repeatMode:I

    move/from16 v11, p7

    .line 242
    iput-boolean v11, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    move-object/from16 v11, p9

    .line 243
    iput-object v11, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    move-object/from16 v11, p10

    .line 244
    iput-object v11, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    .line 245
    iput-wide v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->releaseTimeoutMs:J

    .line 246
    iput-wide v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    move/from16 v5, p13

    .line 247
    iput-boolean v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 248
    iput-object v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 250
    iput-wide v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 251
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplr2avp/LoadControl;->getBackBufferDurationUs()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->backBufferDurationUs:J

    .line 252
    invoke-interface/range {p4 .. p4}, Lcom/google/android/exoplr2avp/LoadControl;->retainBackBufferFromKeyframe()Z

    move-result v5

    iput-boolean v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    .line 254
    invoke-static {p3}, Lcom/google/android/exoplr2avp/PlaybackInfo;->createDummy(Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 255
    new-instance v6, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-direct {v6, v5}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    iput-object v6, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    .line 256
    array-length v5, v1

    new-array v5, v5, [Lcom/google/android/exoplr2avp/RendererCapabilities;

    iput-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    const/4 v5, 0x0

    .line 257
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    .line 258
    aget-object v6, v1, v5

    invoke-interface {v6, v5, v8}, Lcom/google/android/exoplr2avp/Renderer;->init(ILcom/google/android/exoplr2avp/analytics/PlayerId;)V

    .line 259
    iget-object v6, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    aget-object v9, v1, v5

    invoke-interface {v9}, Lcom/google/android/exoplr2avp/Renderer;->getCapabilities()Lcom/google/android/exoplr2avp/RendererCapabilities;

    move-result-object v9

    aput-object v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 261
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-direct {v1, p0, v7}, Lcom/google/android/exoplr2avp/DefaultMediaClock;-><init>(Lcom/google/android/exoplr2avp/DefaultMediaClock$PlaybackParametersListener;Lcom/google/android/exoplr2avp/util/Clock;)V

    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    .line 262
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 263
    invoke-static {}, Lcom/google/common/collect/Sets;->newIdentityHashSet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    .line 264
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 265
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 266
    invoke-virtual {p2, p0, v3}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->init(Lcom/google/android/exoplr2avp/trackselection/TrackSelector$InvalidationListener;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)V

    const/4 v1, 0x1

    .line 268
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 270
    new-instance v1, Landroid/os/Handler;

    move-object/from16 v2, p14

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 271
    new-instance v2, Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-direct {v2, v4, v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;Landroid/os/Handler;)V

    iput-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    .line 272
    new-instance v2, Lcom/google/android/exoplr2avp/MediaSourceList;

    invoke-direct {v2, p0, v4, v1, v8}, Lcom/google/android/exoplr2avp/MediaSourceList;-><init>(Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceListInfoRefreshListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;Landroid/os/Handler;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    iput-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    .line 277
    new-instance v1, Landroid/os/HandlerThread;

    const/16 v2, -0x10

    const-string v3, "ExoPlayer:Playback"

    invoke-direct {v1, v3, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    .line 278
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 279
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    .line 280
    invoke-interface {v7, v1, p0}, Lcom/google/android/exoplr2avp/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    return-void
.end method

.method static synthetic access$602(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;Z)Z
    .locals 0

    .line 73
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->requestForRendererSleep:Z

    return p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;)Lcom/google/android/exoplr2avp/util/HandlerWrapper;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    return-object p0
.end method

.method private addMediaItemsInternal(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 720
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 721
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 723
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->getSize()I

    move-result p2

    .line 724
    :cond_0
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 725
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move-result-object p1

    .line 722
    invoke-virtual {v0, p2, v1, p1}, Lcom/google/android/exoplr2avp/MediaSourceList;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    .line 726
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplr2avp/Timeline;Z)V

    return-void
.end method

.method private attemptRendererErrorRecovery()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 880
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    return-void
.end method

.method private deliverMessage(Lcom/google/android/exoplr2avp/PlayerMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1553
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1557
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->getTarget()Lcom/google/android/exoplr2avp/PlayerMessage$Target;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->getType()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->getPayload()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplr2avp/PlayerMessage$Target;->handleMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1559
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->markAsProcessed(Z)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->markAsProcessed(Z)V

    .line 1560
    throw v1
.end method

.method private disableRenderer(Lcom/google/android/exoplr2avp/Renderer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1657
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1660
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->onRendererDisabled(Lcom/google/android/exoplr2avp/Renderer;)V

    .line 1661
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplr2avp/Renderer;)V

    .line 1662
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Renderer;->disable()V

    .line 1663
    iget p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enabledRendererCount:I

    return-void
.end method

.method private doSomeWork()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 954
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/util/Clock;->uptimeMillis()J

    move-result-wide v1

    .line 955
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updatePeriods()V

    .line 957
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v5, 0x1

    if-eq v3, v5, :cond_21

    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v6, 0x4

    if-ne v3, v6, :cond_0

    goto/16 :goto_f

    .line 964
    :cond_0
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v3

    const-wide/16 v7, 0xa

    if-nez v3, :cond_1

    .line 967
    invoke-direct {v0, v1, v2, v7, v8}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    return-void

    :cond_1
    const-string v9, "doSomeWork"

    .line 971
    invoke-static {v9}, Lcom/google/android/exoplr2avp/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 973
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 977
    iget-boolean v9, v3, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    const-wide/16 v10, 0x3e8

    const/4 v12, 0x0

    if-eqz v9, :cond_a

    .line 978
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    mul-long v13, v13, v10

    .line 979
    iget-object v9, v3, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-object v15, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v10, v15, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    iget-wide v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long/2addr v10, v7

    iget-boolean v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {v9, v10, v11, v7}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->discardBuffer(JZ)V

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 981
    :goto_0
    iget-object v10, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v11, v10

    if-ge v7, v11, :cond_b

    .line 982
    aget-object v10, v10, v7

    .line 983
    invoke-static {v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v11

    if-nez v11, :cond_2

    goto :goto_7

    .line 989
    :cond_2
    iget-wide v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v10, v4, v5, v13, v14}, Lcom/google/android/exoplr2avp/Renderer;->render(JJ)V

    if-eqz v8, :cond_3

    .line 990
    invoke-interface {v10}, Lcom/google/android/exoplr2avp/Renderer;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v8, 0x1

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    .line 996
    :goto_1
    iget-object v4, v3, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v4, v4, v7

    invoke-interface {v10}, Lcom/google/android/exoplr2avp/Renderer;->getStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v5

    if-eq v4, v5, :cond_4

    const/4 v4, 0x1

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_5

    .line 997
    invoke-interface {v10}, Lcom/google/android/exoplr2avp/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x1

    goto :goto_3

    :cond_5
    const/4 v5, 0x0

    :goto_3
    if-nez v4, :cond_7

    if-nez v5, :cond_7

    .line 999
    invoke-interface {v10}, Lcom/google/android/exoplr2avp/Renderer;->isReady()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-interface {v10}, Lcom/google/android/exoplr2avp/Renderer;->isEnded()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    if-eqz v9, :cond_8

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    goto :goto_6

    :cond_8
    const/4 v9, 0x0

    :goto_6
    if-nez v4, :cond_9

    .line 1002
    invoke-interface {v10}, Lcom/google/android/exoplr2avp/Renderer;->maybeThrowStreamError()V

    :cond_9
    :goto_7
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    goto :goto_0

    .line 1006
    :cond_a
    iget-object v4, v3, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v4}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->maybeThrowPrepareError()V

    const/4 v8, 0x1

    const/4 v9, 0x1

    .line 1009
    :cond_b
    iget-object v4, v3, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v4, v4, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->durationUs:J

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v8, :cond_d

    .line 1010
    iget-boolean v7, v3, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-eqz v7, :cond_d

    cmp-long v7, v4, v13

    if-eqz v7, :cond_c

    iget-object v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v7, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    cmp-long v10, v4, v7

    if-gtz v10, :cond_d

    :cond_c
    const/4 v4, 0x1

    goto :goto_8

    :cond_d
    const/4 v4, 0x0

    :goto_8
    if-eqz v4, :cond_e

    .line 1015
    iget-boolean v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v5, :cond_e

    .line 1016
    iput-boolean v12, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    .line 1017
    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v5, v5, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    const/4 v7, 0x5

    invoke-direct {v0, v12, v5, v12, v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    :cond_e
    const/4 v5, 0x3

    if-eqz v4, :cond_f

    .line 1023
    iget-object v4, v3, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->isFinal:Z

    if-eqz v4, :cond_f

    .line 1024
    invoke-direct {v0, v6}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setState(I)V

    .line 1025
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->stopRenderers()V

    goto :goto_9

    .line 1026
    :cond_f
    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_10

    .line 1027
    invoke-direct {v0, v9}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldTransitionToReadyState(Z)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1028
    invoke-direct {v0, v5}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setState(I)V

    const/4 v4, 0x0

    .line 1029
    iput-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    .line 1030
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1031
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->startRenderers()V

    goto :goto_9

    .line 1033
    :cond_10
    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-ne v4, v5, :cond_14

    iget v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v4, :cond_11

    .line 1034
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result v4

    if-eqz v4, :cond_12

    goto :goto_9

    :cond_11
    if-nez v9, :cond_14

    .line 1035
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v4

    iput-boolean v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRebuffering:Z

    const/4 v4, 0x2

    .line 1036
    invoke-direct {v0, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setState(I)V

    .line 1037
    iget-boolean v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRebuffering:Z

    if-eqz v4, :cond_13

    .line 1038
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->notifyTrackSelectionRebuffer()V

    .line 1039
    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    invoke-interface {v4}, Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;->notifyRebuffer()V

    .line 1041
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->stopRenderers()V

    .line 1045
    :cond_14
    :goto_9
    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_17

    const/4 v4, 0x0

    .line 1046
    :goto_a
    iget-object v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v8, v7

    if-ge v4, v8, :cond_16

    .line 1047
    aget-object v7, v7, v4

    invoke-static {v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v7

    if-eqz v7, :cond_15

    iget-object v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object v7, v7, v4

    .line 1048
    invoke-interface {v7}, Lcom/google/android/exoplr2avp/Renderer;->getStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v7

    iget-object v8, v3, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v8, v8, v4

    if-ne v7, v8, :cond_15

    .line 1049
    iget-object v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object v7, v7, v4

    invoke-interface {v7}, Lcom/google/android/exoplr2avp/Renderer;->maybeThrowStreamError()V

    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 1052
    :cond_16
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    if-nez v3, :cond_17

    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    const-wide/32 v7, 0x7a120

    cmp-long v9, v3, v7

    if-gez v9, :cond_17

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_b

    :cond_17
    const/4 v3, 0x0

    :goto_b
    if-nez v3, :cond_18

    .line 1066
    iput-wide v13, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_c

    .line 1067
    :cond_18
    iget-wide v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    cmp-long v7, v3, v13

    if-nez v7, :cond_19

    .line 1068
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    goto :goto_c

    .line 1069
    :cond_19
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/util/Clock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0xfa0

    cmp-long v9, v3, v7

    if-gez v9, :cond_20

    .line 1073
    :goto_c
    iget-boolean v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v4, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    if-eq v3, v4, :cond_1a

    .line 1074
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithOffloadSchedulingEnabled(Z)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 1078
    :cond_1a
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-eqz v3, :cond_1b

    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v3, v5, :cond_1c

    :cond_1b
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1d

    :cond_1c
    const-wide/16 v3, 0xa

    .line 1080
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeScheduleWakeup(JJ)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    goto :goto_e

    .line 1081
    :cond_1d
    iget v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enabledRendererCount:I

    if-eqz v3, :cond_1e

    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v3, v6, :cond_1e

    const-wide/16 v3, 0x3e8

    .line 1082
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    goto :goto_d

    .line 1084
    :cond_1e
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->removeMessages(I)V

    :goto_d
    const/4 v1, 0x0

    .line 1086
    :goto_e
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    if-eq v2, v1, :cond_1f

    .line 1087
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithSleepingForOffload(Z)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 1089
    :cond_1f
    iput-boolean v12, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->requestForRendererSleep:Z

    .line 1091
    invoke-static {}, Lcom/google/android/exoplr2avp/util/TraceUtil;->endSection()V

    return-void

    .line 1070
    :cond_20
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Playback stuck buffering and not loading"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 960
    :cond_21
    :goto_f
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->removeMessages(I)V

    return-void
.end method

.method private enableRenderer(IZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2441
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object v1, v1, p1

    .line 2442
    invoke-static {v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 2445
    :cond_0
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v2

    .line 2446
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    .line 2447
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v3

    .line 2448
    iget-object v6, v3, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplr2avp/RendererConfiguration;

    aget-object v6, v6, p1

    .line 2450
    iget-object v3, v3, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    aget-object v3, v3, p1

    .line 2451
    invoke-static {v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplr2avp/Format;

    move-result-object v7

    .line 2453
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v8, 0x3

    if-ne v3, v8, :cond_2

    const/4 v14, 0x1

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-eqz v14, :cond_3

    const/4 v8, 0x1

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    .line 2457
    :goto_2
    iget v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enabledRendererCount:I

    add-int/2addr v3, v5

    iput v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 2458
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2459
    iget-object v3, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v5, v3, p1

    iget-wide v10, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2466
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v12

    .line 2467
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v15

    move-object v2, v1

    move-object v3, v6

    move-object v4, v7

    move-wide v6, v10

    move-wide v10, v12

    move-wide v12, v15

    .line 2459
    invoke-interface/range {v2 .. v13}, Lcom/google/android/exoplr2avp/Renderer;->enable(Lcom/google/android/exoplr2avp/RendererConfiguration;[Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/source/SampleStream;JZZJJ)V

    const/16 v2, 0xb

    .line 2468
    new-instance v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$1;

    invoke-direct {v3, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$1;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;)V

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplr2avp/Renderer;->handleMessage(ILjava/lang/Object;)V

    .line 2482
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->onRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)V

    if-eqz v14, :cond_4

    .line 2485
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Renderer;->start()V

    :cond_4
    return-void
.end method

.method private enableRenderers()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2417
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enableRenderers([Z)V

    return-void
.end method

.method private enableRenderers([Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2421
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    .line 2422
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2425
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 2426
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object v5, v5, v3

    invoke-interface {v4, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2427
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplr2avp/Renderer;->reset()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2431
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 2432
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2433
    aget-boolean v3, p1, v2

    invoke-direct {p0, v2, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enableRenderer(IZ)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    .line 2436
    iput-boolean p1, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->allRenderersInCorrectState:Z

    return-void
.end method

.method private ensureStopped(Lcom/google/android/exoplr2avp/Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1651
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Renderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1652
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Renderer;->stop()V

    :cond_0
    return-void
.end method

.method private extractMetadataFromTrackSelectionArray([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ")",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/android/exoplr2avp/metadata/Metadata;",
            ">;"
        }
    .end annotation

    .line 2400
    new-instance v0, Lcom/google/common/collect/ImmutableList$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableList$Builder;-><init>()V

    .line 2402
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v5, p1, v3

    if-eqz v5, :cond_1

    .line 2404
    invoke-interface {v5, v2}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v5

    .line 2405
    iget-object v6, v5, Lcom/google/android/exoplr2avp/Format;->metadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    if-nez v6, :cond_0

    .line 2406
    new-instance v5, Lcom/google/android/exoplr2avp/metadata/Metadata;

    new-array v6, v2, [Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    invoke-direct {v5, v6}, Lcom/google/android/exoplr2avp/metadata/Metadata;-><init>([Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;)V

    invoke-virtual {v0, v5}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_1

    .line 2408
    :cond_0
    iget-object v4, v5, Lcom/google/android/exoplr2avp/Format;->metadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    invoke-virtual {v0, v4}, Lcom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    const/4 v4, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    .line 2413
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->build()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private getCurrentLiveOffsetUs()J
    .locals 4

    .line 1095
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getLiveOffsetUs(Lcom/google/android/exoplr2avp/Timeline;Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getFormats(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplr2avp/Format;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2963
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->length()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2964
    :goto_0
    new-array v2, v1, [Lcom/google/android/exoplr2avp/Format;

    :goto_1
    if-ge v0, v1, :cond_1

    .line 2966
    invoke-interface {p0, v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private getLiveOffsetUs(Lcom/google/android/exoplr2avp/Timeline;Ljava/lang/Object;J)J
    .locals 3

    .line 1100
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 1101
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 1102
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-wide p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 1105
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1106
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long/2addr p3, v0

    sub-long/2addr p1, p3

    return-wide p1

    :cond_1
    :goto_0
    return-wide v0
.end method

.method private getMaxRendererReadPositionUs()J
    .locals 9

    .line 1939
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1943
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v1

    .line 1944
    iget-boolean v3, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-nez v3, :cond_1

    return-wide v1

    :cond_1
    const/4 v3, 0x0

    .line 1947
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    .line 1948
    aget-object v4, v4, v3

    invoke-static {v4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object v4, v4, v3

    .line 1949
    invoke-interface {v4}, Lcom/google/android/exoplr2avp/Renderer;->getStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v5, v5, v3

    if-eq v4, v5, :cond_2

    goto :goto_1

    .line 1953
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object v4, v4, v3

    invoke-interface {v4}, Lcom/google/android/exoplr2avp/Renderer;->getReadingPositionUs()J

    move-result-wide v4

    const-wide/high16 v6, -0x8000000000000000L

    cmp-long v8, v4, v6

    if-nez v8, :cond_3

    return-wide v6

    .line 1957
    :cond_3
    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-wide v1
.end method

.method private getPlaceholderFirstMediaPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1471
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 1472
    invoke-static {}, Lcom/google/android/exoplr2avp/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object p1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 1474
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result v6

    .line 1475
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p1

    .line 1476
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 1479
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1480
    invoke-virtual {v3, p1, v4, v1, v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplr2avp/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v3

    .line 1482
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1483
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1484
    iget-object v0, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p1, v0, v4}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1486
    iget p1, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget v4, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 1487
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v1

    :cond_1
    move-wide v4, v1

    .line 1490
    :cond_2
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private getTotalBufferedDurationUs()J
    .locals 2

    .line 2513
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getTotalBufferedDurationUs(J)J
    .locals 5

    .line 2517
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2521
    :cond_0
    iget-wide v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2522
    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    .line 2523
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private handleContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 2

    .line 2261
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplr2avp/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2265
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-wide v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 2266
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method private handleIoException(Ljava/io/IOException;I)V
    .locals 1

    .line 628
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->createForSource(Ljava/io/IOException;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    .line 629
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 632
    iget-object p2, p2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplr2avp/source/MediaPeriodId;)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    :cond_0
    const-string p2, "ExoPlayerImplInternal"

    const-string v0, "Playback error"

    .line 634
    invoke-static {p2, v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 635
    invoke-direct {p0, p2, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 636
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplr2avp/ExoPlaybackException;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    return-void
.end method

.method private handleLoadingMediaPeriodChanged(Z)V
    .locals 5

    .line 2490
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2492
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 2493
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 2494
    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 2496
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 2498
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    if-nez v0, :cond_2

    .line 2500
    iget-wide v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    goto :goto_1

    .line 2501
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v3

    :goto_1
    iput-wide v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    .line 2502
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    if-eqz v0, :cond_4

    .line 2503
    iget-boolean p1, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-eqz p1, :cond_4

    .line 2507
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object p1

    .line 2508
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 2506
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;)V

    :cond_4
    return-void
.end method

.method private handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplr2avp/Timeline;Z)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    .line 1815
    iget-object v2, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    iget-object v4, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget v5, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v8, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    move-object/from16 v1, p1

    .line 1816
    invoke-static/range {v1 .. v8}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolvePositionForPlaylistChange(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;Lcom/google/android/exoplr2avp/MediaPeriodQueue;IZLcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-result-object v7

    .line 1825
    iget-object v8, v7, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1826
    iget-wide v9, v7, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->requestedContentPositionUs:J

    .line 1827
    iget-boolean v0, v7, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->forceBufferingState:Z

    .line 1828
    iget-wide v13, v7, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->periodPositionUs:J

    .line 1829
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1830
    invoke-virtual {v1, v8}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v15, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    cmp-long v3, v13, v1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v16, 0x1

    :goto_1
    const/16 v17, 0x3

    const/4 v6, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x4

    .line 1832
    :try_start_0
    iget-boolean v1, v7, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->endPlayback:Z

    if-eqz v1, :cond_3

    .line 1833
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v1, v15, :cond_2

    .line 1834
    invoke-direct {v11, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setState(I)V

    .line 1836
    :cond_2
    invoke-direct {v11, v5, v5, v5, v15}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :cond_3
    if-nez v16, :cond_4

    .line 1844
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-wide v3, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1845
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getMaxRendererReadPositionUs()J

    move-result-wide v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v2, p1

    const/4 v15, -0x1

    const/16 v20, 0x4

    const/4 v15, 0x0

    move-wide/from16 v5, v21

    .line 1844
    :try_start_1
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->updateQueuedPeriods(Lcom/google/android/exoplr2avp/Timeline;JJ)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1846
    invoke-direct {v11, v15}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    goto :goto_3

    :cond_4
    const/4 v15, 0x0

    const/16 v20, 0x4

    .line 1848
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1850
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_6

    .line 1853
    iget-object v2, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2, v8}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1854
    iget-object v2, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-object v3, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    invoke-virtual {v2, v12, v3}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getUpdatedMediaPeriodInfo(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/MediaPeriodInfo;)Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    .line 1855
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->updateClipping()V

    .line 1857
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    goto :goto_2

    .line 1859
    :cond_6
    invoke-direct {v11, v8, v13, v14, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v13, v0

    .line 1862
    :cond_7
    :goto_3
    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1867
    iget-boolean v0, v7, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v0, :cond_8

    move-wide v6, v13

    goto :goto_4

    :cond_8
    move-wide/from16 v6, v18

    :goto_4
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    .line 1862
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)V

    if-nez v16, :cond_9

    .line 1870
    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v2, v9, v0

    if-eqz v2, :cond_c

    .line 1872
    :cond_9
    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1873
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    if-eqz v16, :cond_a

    if-eqz p2, :cond_a

    .line 1877
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    iget-object v2, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1878
    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/Timeline$Period;->isPlaceholder:Z

    if-nez v1, :cond_a

    const/16 v23, 0x1

    goto :goto_5

    :cond_a
    const/16 v23, 0x0

    .line 1879
    :goto_5
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 1886
    invoke-virtual {v12, v0}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/16 v17, 0x4

    :cond_b
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    .line 1880
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 1890
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 1891
    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-direct {v11, v12, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)V

    .line 1893
    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v0, v12}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 1894
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v6, 0x0

    .line 1896
    iput-object v6, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    .line 1898
    :cond_d
    invoke-direct {v11, v15}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void

    :catchall_0
    move-exception v0

    const/4 v6, 0x0

    goto :goto_6

    :catchall_1
    move-exception v0

    const/4 v15, 0x0

    const/16 v20, 0x4

    .line 1862
    :goto_6
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v5, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1867
    iget-boolean v1, v7, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;->setTargetLiveOffset:Z

    if-eqz v1, :cond_e

    move-wide/from16 v18, v13

    :cond_e
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v15, v6

    move-wide/from16 v6, v18

    .line 1862
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)V

    if-nez v16, :cond_f

    .line 1870
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    cmp-long v3, v9, v1

    if-eqz v3, :cond_12

    .line 1872
    :cond_f
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1873
    iget-object v2, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    if-eqz v16, :cond_10

    if-eqz p2, :cond_10

    .line 1877
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1878
    invoke-virtual {v2, v1, v3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplr2avp/Timeline$Period;->isPlaceholder:Z

    if-nez v2, :cond_10

    const/16 v23, 0x1

    goto :goto_7

    :cond_10
    const/16 v23, 0x0

    .line 1879
    :goto_7
    iget-object v2, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v5, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 1886
    invoke-virtual {v12, v1}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    const/16 v17, 0x4

    :cond_11
    move-object/from16 v1, p0

    move-object v2, v8

    move-wide v3, v13

    move-wide v7, v5

    move-wide v5, v9

    move/from16 v9, v23

    move/from16 v10, v17

    .line 1880
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 1890
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 1891
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-direct {v11, v12, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolvePendingMessagePositions(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)V

    .line 1893
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v1, v12}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 1894
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1896
    iput-object v15, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    :cond_13
    const/4 v1, 0x0

    .line 1898
    invoke-direct {v11, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1899
    throw v0
.end method

.method private handlePeriodPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2235
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->isLoading(Lcom/google/android/exoplr2avp/source/MediaPeriod;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2239
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object p1

    .line 2240
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    .line 2241
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 2240
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->handlePrepared(FLcom/google/android/exoplr2avp/Timeline;)V

    .line 2243
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 2242
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updateLoadControlTrackSelection(Lcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;)V

    .line 2244
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2246
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 2247
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enableRenderers()V

    .line 2248
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->startPositionUs:J

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v5, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v7, p1, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->startPositionUs:J

    const/4 v9, 0x0

    const/4 v10, 0x5

    move-object v1, p0

    .line 2249
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 2257
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeContinueLoading()V

    return-void
.end method

.method private handlePlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;FZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 2287
    iget-object p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 2289
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {p3, p1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 2291
    :cond_1
    iget p3, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    invoke-direct {p0, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updateTrackSelectionPlaybackSpeed(F)V

    .line 2292
    iget-object p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length p4, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_3

    aget-object v1, p3, v0

    if-eqz v1, :cond_2

    .line 2294
    iget v2, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    invoke-interface {v1, p2, v2}, Lcom/google/android/exoplr2avp/Renderer;->setPlaybackSpeed(FF)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private handlePlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2272
    iget v0, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;FZZ)V

    return-void
.end method

.method private handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 14

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v5, p4

    .line 2353
    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    cmp-long v1, p2, v3

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 2356
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 2357
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2358
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    .line 2359
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    .line 2360
    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 2361
    iget-object v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/MediaSourceList;->isPrepared()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2362
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 2365
    sget-object v3, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    goto :goto_2

    .line 2366
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v3

    :goto_2
    if-nez v1, :cond_3

    .line 2369
    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    goto :goto_3

    .line 2370
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v4

    .line 2371
    :goto_3
    iget-object v7, v4, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-direct {p0, v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->extractMetadataFromTrackSelectionArray([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    if-eqz v1, :cond_4

    .line 2373
    iget-object v8, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v8, v8, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->requestedContentPositionUs:J

    cmp-long v10, v8, v5

    if-eqz v10, :cond_4

    .line 2375
    iget-object v8, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    .line 2376
    invoke-virtual {v8, v5, v6}, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->copyWithRequestedContentPositionUs(J)Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    :cond_4
    move-object v11, v3

    move-object v12, v4

    move-object v13, v7

    goto :goto_4

    .line 2378
    :cond_5
    iget-object v7, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v7}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 2380
    sget-object v1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    .line 2381
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    .line 2382
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    :cond_6
    move-object v11, v1

    move-object v12, v3

    move-object v13, v4

    :goto_4
    if-eqz p8, :cond_7

    .line 2385
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    move/from16 v3, p9

    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPositionDiscontinuity(I)V

    .line 2387
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 2392
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v9

    move-object v2, p1

    move-wide/from16 v3, p2

    move-wide/from16 v5, p4

    move-wide/from16 v7, p6

    .line 2387
    invoke-virtual/range {v1 .. v13}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v1

    return-object v1
.end method

.method private hasReachedServerSideInsertedAdsTransition(Lcom/google/android/exoplr2avp/Renderer;Lcom/google/android/exoplr2avp/MediaPeriodHolder;)Z
    .locals 3

    .line 2206
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    .line 2212
    iget-object p2, p2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-boolean p2, p2, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->isFollowedByTransitionToSameStream:Z

    if-eqz p2, :cond_1

    iget-boolean p2, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-eqz p2, :cond_1

    instance-of p2, p1, Lcom/google/android/exoplr2avp/text/TextRenderer;

    if-nez p2, :cond_0

    instance-of p2, p1, Lcom/google/android/exoplr2avp/metadata/MetadataRenderer;

    if-nez p2, :cond_0

    .line 2216
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Renderer;->getReadingPositionUs()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private hasReadingPeriodFinishedReading()Z
    .locals 6

    .line 2186
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    .line 2187
    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    .line 2190
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 2191
    aget-object v3, v3, v1

    .line 2192
    iget-object v4, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v4, v4, v1

    .line 2193
    invoke-interface {v3}, Lcom/google/android/exoplr2avp/Renderer;->getStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v5

    if-ne v5, v4, :cond_2

    if-eqz v4, :cond_1

    .line 2195
    invoke-interface {v3}, Lcom/google/android/exoplr2avp/Renderer;->hasReadStreamToEnd()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2196
    invoke-direct {p0, v3, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->hasReachedServerSideInsertedAdsTransition(Lcom/google/android/exoplr2avp/Renderer;Lcom/google/android/exoplr2avp/MediaPeriodHolder;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private static isIgnorableServerSideAdInsertionPeriodChange(ZLcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline$Period;J)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_3

    cmp-long p0, p2, p6

    if-nez p0, :cond_3

    .line 2717
    iget-object p0, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p2, p4, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2719
    invoke-virtual {p0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2723
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    const/4 p2, 0x1

    if-eqz p0, :cond_2

    iget p0, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplr2avp/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 2725
    iget p0, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p3, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {p5, p0, p3}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdState(II)I

    move-result p0

    const/4 p3, 0x4

    if-eq p0, p3, :cond_1

    iget p0, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 2727
    invoke-virtual {p5, p0, p1}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdState(II)I

    move-result p0

    const/4 p1, 0x2

    if-eq p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 2731
    :cond_2
    invoke-virtual {p4}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, p4, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {p5, p0}, Lcom/google/android/exoplr2avp/Timeline$Period;->isServerSideInsertedAdGroup(I)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_0
    return v0
.end method

.method private isLoadingPossible()Z
    .locals 6

    .line 2325
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2329
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z
    .locals 0

    .line 2972
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/Renderer;->getState()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTimelineReady()Z
    .locals 5

    .line 1805
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    .line 1806
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->durationUs:J

    .line 1807
    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v1, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    cmp-long v0, v3, v1

    if-ltz v0, :cond_0

    .line 1810
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isUsingPlaceholderPeriod(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline$Period;)Z
    .locals 2

    .line 2736
    iget-object v0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 2737
    iget-object p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 2738
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p0

    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/Timeline$Period;->isPlaceholder:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private maybeContinueLoading()V
    .locals 3

    .line 2301
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldContinueLoading()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_0

    .line 2303
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->continueLoading(J)V

    .line 2305
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updateIsLoading()V

    return-void
.end method

.method private maybeNotifyPlaybackInfoChanged()V
    .locals 2

    .line 679
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    .line 680
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->access$100(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdateListener:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    .line 682
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    :cond_0
    return-void
.end method

.method private maybeScheduleWakeup(JJ)Z
    .locals 1

    .line 1125
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->requestForRendererSleep:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1129
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->scheduleNextWork(JJ)V

    const/4 p1, 0x1

    return p1
.end method

.method private maybeTriggerPendingMessages(JJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1588
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1593
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1

    sub-long/2addr p1, v0

    const/4 v0, 0x0

    .line 1595
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->deliverPendingMessageAtStartPositionRequired:Z

    .line 1599
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1600
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    .line 1601
    iget v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_2

    .line 1603
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_0

    :cond_2
    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_4

    .line 1604
    iget v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-gt v4, v0, :cond_3

    iget v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_4

    iget-wide v3, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v5, v3, p1

    if-lez v5, :cond_4

    :cond_3
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_2

    .line 1610
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_0

    .line 1613
    :cond_4
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1614
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_1

    :cond_5
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    .line 1616
    iget-object v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_7

    iget v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-lt v4, v0, :cond_6

    iget v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_7

    iget-wide v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    .line 1623
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 1624
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_1

    :cond_7
    :goto_2
    if-eqz v3, :cond_d

    .line 1628
    iget-object v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    if-eqz v4, :cond_d

    iget v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    if-ne v4, v0, :cond_d

    iget-wide v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p1

    if-lez v6, :cond_d

    iget-wide v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    cmp-long v6, v4, p3

    if-gtz v6, :cond_d

    .line 1634
    :try_start_0
    iget-object v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-direct {p0, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplr2avp/PlayerMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1636
    iget-object v4, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result v4

    if-nez v4, :cond_9

    iget-object v3, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/PlayerMessage;->isCanceled()Z

    move-result v3

    if-eqz v3, :cond_8

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1637
    :cond_9
    :goto_3
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1643
    :goto_4
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    .line 1644
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    goto :goto_2

    :cond_a
    move-object v3, v2

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1636
    iget-object p2, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/PlayerMessage;->getDeleteAfterDelivery()Z

    move-result p2

    if-nez p2, :cond_b

    iget-object p2, v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/PlayerMessage;->isCanceled()Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1637
    :cond_b
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1641
    :cond_c
    throw p1

    .line 1647
    :cond_d
    iput v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->nextPendingMessageIndexHint:I

    :cond_e
    :goto_5
    return-void
.end method

.method private maybeUpdateLoadingPeriod()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1975
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->reevaluateBuffer(J)V

    .line 1976
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->shouldLoadNextMediaPeriod()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1978
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getNextMediaPeriodInfo(JLcom/google/android/exoplr2avp/PlaybackInfo;)Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1980
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplr2avp/LoadControl;

    .line 1984
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/LoadControl;->getAllocator()Lcom/google/android/exoplr2avp/upstream/Allocator;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    iget-object v10, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-object v9, v0

    .line 1981
    invoke-virtual/range {v4 .. v10}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->enqueueNextMediaPeriodHolder([Lcom/google/android/exoplr2avp/RendererCapabilities;Lcom/google/android/exoplr2avp/trackselection/TrackSelector;Lcom/google/android/exoplr2avp/upstream/Allocator;Lcom/google/android/exoplr2avp/MediaSourceList;Lcom/google/android/exoplr2avp/MediaPeriodInfo;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;)Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    .line 1988
    iget-object v2, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->startPositionUs:J

    invoke-interface {v2, p0, v3, v4}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V

    .line 1989
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 1990
    iget-wide v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->startPositionUs:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetRendererPosition(J)V

    :cond_0
    const/4 v0, 0x0

    .line 1992
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1995
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-eqz v0, :cond_2

    .line 1998
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 1999
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updateIsLoading()V

    goto :goto_0

    .line 2001
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeContinueLoading()V

    :goto_0
    return-void
.end method

.method private maybeUpdatePlayingPeriod()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2136
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldAdvancePlayingPeriod()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    .line 2139
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    .line 2141
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    .line 2142
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2143
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v3, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget-object v4, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v4, v4, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 2148
    :goto_1
    iget-object v4, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v6, v4, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v4, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v7, v4, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->startPositionUs:J

    iget-object v4, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v9, v4, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->requestedContentPositionUs:J

    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v11, v2, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->startPositionUs:J

    xor-int/lit8 v13, v3, 0x1

    const/4 v14, 0x0

    move-object v5, p0

    .line 2149
    invoke-direct/range {v5 .. v14}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 2156
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 2157
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updatePlaybackPositions()V

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private maybeUpdateReadingPeriod()V
    .locals 15

    .line 2006
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2011
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 2035
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->hasReadingPeriodFinishedReading()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 2039
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-nez v1, :cond_3

    iget-wide v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2040
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v7

    cmp-long v1, v5, v7

    if-gez v1, :cond_3

    return-void

    .line 2046
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v1

    .line 2047
    iget-object v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->advanceReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v5

    .line 2048
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v6

    .line 2050
    iget-object v7, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v9, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v7, v5, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v10, v7, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v7, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v11, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v12, v0, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    const-wide v13, -0x7fffffffffffffffL    # -4.9E-324

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)V

    .line 2057
    iget-boolean v0, v5, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_4

    iget-object v0, v5, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 2058
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v7

    cmp-long v0, v7, v2

    if-eqz v0, :cond_4

    .line 2062
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v0

    .line 2061
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setAllRendererStreamsFinal(J)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 2065
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v2, v2

    if-ge v0, v2, :cond_8

    .line 2066
    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v2

    .line 2067
    invoke-virtual {v6, v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v3

    if-eqz v2, :cond_7

    .line 2068
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/Renderer;->isCurrentStreamFinal()Z

    move-result v2

    if-nez v2, :cond_7

    .line 2069
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererCapabilities:[Lcom/google/android/exoplr2avp/RendererCapabilities;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/RendererCapabilities;->getTrackType()I

    move-result v2

    const/4 v7, -0x2

    if-ne v2, v7, :cond_5

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 2070
    :goto_1
    iget-object v7, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplr2avp/RendererConfiguration;

    aget-object v7, v7, v0

    .line 2071
    iget-object v8, v6, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->rendererConfigurations:[Lcom/google/android/exoplr2avp/RendererConfiguration;

    aget-object v8, v8, v0

    if-eqz v3, :cond_6

    .line 2072
    invoke-virtual {v8, v7}, Lcom/google/android/exoplr2avp/RendererConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v2, :cond_7

    .line 2078
    :cond_6
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object v2, v2, v0

    .line 2080
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v7

    .line 2078
    invoke-direct {p0, v2, v7, v8}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setCurrentStreamFinal(Lcom/google/android/exoplr2avp/Renderer;J)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void

    .line 2014
    :cond_9
    :goto_2
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->isFinal:Z

    if-nez v1, :cond_a

    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v1, :cond_d

    .line 2015
    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v5, v1

    if-ge v4, v5, :cond_d

    .line 2016
    aget-object v1, v1, v4

    .line 2017
    iget-object v5, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v5, v5, v4

    if-eqz v5, :cond_c

    .line 2021
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Renderer;->getStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v6

    if-ne v6, v5, :cond_c

    .line 2022
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Renderer;->hasReadStreamToEnd()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 2025
    iget-object v5, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v5, v5, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->durationUs:J

    cmp-long v7, v5, v2

    if-eqz v7, :cond_b

    iget-object v5, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v5, v5, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->durationUs:J

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v9, v5, v7

    if-eqz v9, :cond_b

    .line 2026
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v5

    iget-object v7, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v7, v7, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->durationUs:J

    add-long/2addr v5, v7

    goto :goto_4

    :cond_b
    move-wide v5, v2

    .line 2028
    :goto_4
    invoke-direct {p0, v1, v5, v6}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setCurrentStreamFinal(Lcom/google/android/exoplr2avp/Renderer;J)V

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method private maybeUpdateReadingRenderers()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2087
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2088
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    .line 2089
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    if-eq v1, v0, :cond_1

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2094
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->replaceStreamsOrDisableRendererForTransition()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2095
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enableRenderers()V

    :cond_1
    :goto_0
    return-void
.end method

.method private mediaSourceListUpdateRequestedInternal()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    .line 750
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->createTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    const/4 v1, 0x1

    .line 749
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplr2avp/Timeline;Z)V

    return-void
.end method

.method private moveMediaItemsInternal(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 732
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    iget v1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;->fromIndex:I

    iget v2, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;->toIndex:I

    iget v3, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;->newFromIndex:I

    iget-object p1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    .line 733
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/exoplr2avp/MediaSourceList;->moveMediaSourceRange(IIILcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    .line 738
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplr2avp/Timeline;Z)V

    return-void
.end method

.method private notifyTrackSelectionDiscontinuity()V
    .locals 5

    .line 1760
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1762
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1764
    invoke-interface {v4}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->onDiscontinuity()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1767
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifyTrackSelectionPlayWhenReadyChanged(Z)V
    .locals 5

    .line 760
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 762
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 764
    invoke-interface {v4, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 767
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private notifyTrackSelectionRebuffer()V
    .locals 5

    .line 942
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 944
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 946
    invoke-interface {v4}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->onRebuffer()V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 949
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private prepareInternal()V
    .locals 3

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    const/4 v0, 0x0

    .line 688
    invoke-direct {p0, v0, v0, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplr2avp/LoadControl;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/LoadControl;->onPrepared()V

    .line 694
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setState(I)V

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;->getTransferListener()Lcom/google/android/exoplr2avp/upstream/TransferListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/MediaSourceList;->prepare(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 696
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method private releaseInternal()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1376
    invoke-direct {p0, v0, v1, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1381
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplr2avp/LoadControl;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/LoadControl;->onReleased()V

    .line 1382
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setState(I)V

    .line 1383
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    .line 1384
    monitor-enter p0

    .line 1385
    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->released:Z

    .line 1386
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1387
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeMediaItemsInternal(IILcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 743
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 744
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/MediaSourceList;->removeMediaSourceRange(IILcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    const/4 p2, 0x0

    .line 745
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplr2avp/Timeline;Z)V

    return-void
.end method

.method private replaceStreamsOrDisableRendererForTransition()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 2100
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    .line 2101
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 2103
    :goto_0
    iget-object v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v6, v5

    const/4 v7, 0x1

    if-ge v3, v6, :cond_5

    .line 2104
    aget-object v8, v5, v3

    .line 2105
    invoke-static {v8}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    .line 2109
    :cond_0
    invoke-interface {v8}, Lcom/google/android/exoplr2avp/Renderer;->getStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v5

    iget-object v6, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v6, v6, v3

    if-eq v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 2110
    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v6

    if-eqz v6, :cond_2

    if-nez v5, :cond_2

    goto :goto_2

    .line 2115
    :cond_2
    invoke-interface {v8}, Lcom/google/android/exoplr2avp/Renderer;->isCurrentStreamFinal()Z

    move-result v5

    if-nez v5, :cond_3

    .line 2117
    iget-object v5, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getFormats(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)[Lcom/google/android/exoplr2avp/Format;

    move-result-object v9

    .line 2118
    iget-object v5, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v10, v5, v3

    .line 2121
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v11

    .line 2122
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v13

    .line 2118
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplr2avp/Renderer;->replaceStream([Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/source/SampleStream;JJ)V

    goto :goto_2

    .line 2123
    :cond_3
    invoke-interface {v8}, Lcom/google/android/exoplr2avp/Renderer;->isEnded()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2125
    invoke-direct {p0, v8}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplr2avp/Renderer;)V

    goto :goto_2

    :cond_4
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    xor-int/lit8 v0, v4, 0x1

    return v0
.end method

.method private reselectTracksInternal()V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v10, p0

    .line 1667
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    .line 1669
    iget-object v1, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    .line 1670
    iget-object v2, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    if-eqz v1, :cond_b

    .line 1674
    iget-boolean v4, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 1678
    :cond_0
    iget-object v4, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v1, v0, v4}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->selectTracks(FLcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v13

    .line 1679
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v4

    invoke-virtual {v13, v4}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->isEquivalent(Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;)Z

    move-result v4

    const/4 v9, 0x0

    if-nez v4, :cond_9

    const/4 v8, 0x4

    if-eqz v3, :cond_6

    .line 1692
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v6

    .line 1693
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplr2avp/MediaPeriodHolder;)Z

    move-result v16

    .line 1695
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v0, v0

    new-array v7, v0, [Z

    .line 1696
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v14, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    move-object v12, v6

    move-object/from16 v17, v7

    .line 1697
    invoke-virtual/range {v12 .. v17}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;JZ[Z)J

    move-result-wide v12

    .line 1699
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v0, v8, :cond_1

    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    cmp-long v2, v12, v0

    if-eqz v2, :cond_1

    const/4 v14, 0x1

    goto :goto_1

    :cond_1
    const/4 v14, 0x0

    .line 1702
    :goto_1
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v15, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v16, v2

    move-wide v2, v12

    move-object v11, v6

    move-object/from16 v18, v7

    move-wide/from16 v6, v16

    move v8, v14

    move v9, v15

    .line 1703
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    iput-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    if-eqz v14, :cond_2

    .line 1711
    invoke-direct {v10, v12, v13}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1714
    :cond_2
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v0, v0

    new-array v0, v0, [Z

    const/4 v9, 0x0

    .line 1715
    :goto_2
    iget-object v1, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v2, v1

    if-ge v9, v2, :cond_5

    .line 1716
    aget-object v1, v1, v9

    .line 1717
    invoke-static {v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v2

    aput-boolean v2, v0, v9

    .line 1718
    iget-object v2, v11, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v2, v2, v9

    .line 1719
    aget-boolean v3, v0, v9

    if-eqz v3, :cond_4

    .line 1720
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/Renderer;->getStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 1722
    invoke-direct {v10, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplr2avp/Renderer;)V

    goto :goto_3

    .line 1723
    :cond_3
    aget-boolean v2, v18, v9

    if-eqz v2, :cond_4

    .line 1725
    iget-wide v2, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplr2avp/Renderer;->resetPosition(J)V

    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 1729
    :cond_5
    invoke-direct {v10, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enableRenderers([Z)V

    goto :goto_4

    .line 1732
    :cond_6
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplr2avp/MediaPeriodHolder;)Z

    .line 1733
    iget-boolean v0, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_7

    .line 1734
    iget-object v0, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v2, v0, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->startPositionUs:J

    iget-wide v4, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1735
    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    const/4 v4, 0x0

    .line 1736
    invoke-virtual {v1, v13, v2, v3, v4}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->applyTrackSelection(Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;JZ)J

    :cond_7
    :goto_4
    const/4 v5, 0x1

    .line 1739
    invoke-direct {v10, v5}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1740
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_8

    .line 1741
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeContinueLoading()V

    .line 1742
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updatePlaybackPositions()V

    .line 1743
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v2, :cond_a

    const/4 v3, 0x0

    .line 1687
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    :goto_5
    return-void
.end method

.method private resetInternal(ZZZZ)V
    .locals 34

    move-object/from16 v1, p0

    .line 1395
    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->removeMessages(I)V

    const/4 v2, 0x0

    .line 1396
    iput-object v2, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    const/4 v3, 0x0

    .line 1397
    iput-boolean v3, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1398
    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->stop()V

    const-wide v4, 0xe8d4a51000L

    .line 1399
    iput-wide v4, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1400
    iget-object v4, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    const-string v7, "ExoPlayerImplInternal"

    if-ge v6, v5, :cond_0

    aget-object v0, v4, v6

    .line 1402
    :try_start_0
    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplr2avp/Renderer;)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    const-string v8, "Disable failed."

    .line 1405
    invoke-static {v7, v8, v0}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 1409
    iget-object v4, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_2

    aget-object v0, v4, v6

    .line 1410
    iget-object v8, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v8, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1412
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Renderer;->reset()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v8, v0

    const-string v0, "Reset failed."

    .line 1415
    invoke-static {v7, v0, v8}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1420
    :cond_2
    iput v3, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enabledRendererCount:I

    .line 1422
    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1423
    iget-object v4, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v4, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    .line 1425
    iget-object v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v6, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v7, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-static {v6, v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline$Period;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_5

    .line 1427
    :cond_3
    iget-object v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    goto :goto_6

    .line 1426
    :cond_4
    :goto_5
    iget-object v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v6, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    :goto_6
    if-eqz p2, :cond_6

    .line 1430
    iput-object v2, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    .line 1431
    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 1432
    invoke-direct {v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;

    move-result-object v0

    .line 1433
    iget-object v4, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1434
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 1436
    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v4, v0}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    move-object/from16 v22, v4

    move-wide/from16 v30, v5

    move-wide v12, v7

    goto :goto_8

    :cond_5
    move-object/from16 v22, v4

    move-wide/from16 v30, v5

    move-wide v12, v7

    goto :goto_7

    :cond_6
    move-object/from16 v22, v0

    move-wide/from16 v30, v4

    move-wide v12, v6

    :goto_7
    const/4 v0, 0x0

    .line 1441
    :goto_8
    iget-object v4, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->clear()V

    .line 1442
    iput-boolean v3, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldContinueLoading:Z

    .line 1444
    new-instance v3, Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v10, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v4, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v4, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eqz p4, :cond_7

    goto :goto_9

    .line 1451
    :cond_7
    iget-object v2, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    :goto_9
    move-object/from16 v17, v2

    const/16 v18, 0x0

    if-eqz v0, :cond_8

    .line 1453
    sget-object v2, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    goto :goto_a

    :cond_8
    iget-object v2, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    :goto_a
    move-object/from16 v19, v2

    if-eqz v0, :cond_9

    .line 1454
    iget-object v2, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    goto :goto_b

    :cond_9
    iget-object v2, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    :goto_b
    move-object/from16 v20, v2

    if-eqz v0, :cond_a

    .line 1455
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    goto :goto_c

    :cond_a
    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_c
    move-object/from16 v21, v0

    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    move/from16 v23, v0

    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v24, v0

    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-object/from16 v25, v0

    const-wide/16 v28, 0x0

    iget-boolean v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    move/from16 v32, v0

    const/16 v33, 0x0

    move-object v9, v3

    move-object/from16 v11, v22

    move-wide/from16 v14, v30

    move/from16 v16, v4

    move-wide/from16 v26, v30

    invoke-direct/range {v9 .. v33}, Lcom/google/android/exoplr2avp/PlaybackInfo;-><init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJILcom/google/android/exoplr2avp/ExoPlaybackException;ZLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;ZILcom/google/android/exoplr2avp/PlaybackParameters;JJJZZ)V

    iput-object v3, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    if-eqz p3, :cond_b

    .line 1466
    iget-object v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->release()V

    :cond_b
    return-void
.end method

.method private resetPendingPauseAtEndOfPeriod()V
    .locals 1

    .line 2163
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2164
    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->isLastInTimelineWindow:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    return-void
.end method

.method private resetRendererPosition(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1320
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide v0, 0xe8d4a51000L

    add-long/2addr p1, v0

    goto :goto_0

    .line 1324
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 1325
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->resetPosition(J)V

    .line 1326
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget-object v1, p1, v0

    .line 1327
    invoke-static {v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1328
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-interface {v1, v2, v3}, Lcom/google/android/exoplr2avp/Renderer;->resetPosition(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1331
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->notifyTrackSelectionDiscontinuity()V

    return-void
.end method

.method private static resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)V
    .locals 5

    .line 2829
    iget-object v0, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {p0, v0, p3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 2830
    invoke-virtual {p0, v0, p2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->lastPeriodIndex:I

    const/4 v0, 0x1

    .line 2831
    invoke-virtual {p0, p2, p3, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/exoplr2avp/Timeline$Period;->uid:Ljava/lang/Object;

    .line 2832
    iget-wide v0, p3, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v0, p3, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    .line 2833
    :goto_0
    invoke-virtual {p1, p2, v0, v1, p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    return-void
.end method

.method private static resolvePendingMessagePosition(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;IZLcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)Z
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    move-object/from16 v1, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    .line 2761
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-wide/high16 v13, -0x8000000000000000L

    if-nez v2, :cond_3

    .line 2764
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-nez v3, :cond_0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 2766
    :cond_0
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v1

    .line 2768
    :goto_0
    new-instance v3, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    .line 2772
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/PlayerMessage;->getTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v4

    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    .line 2773
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/PlayerMessage;->getMediaItemIndex()I

    move-result v5

    invoke-direct {v3, v4, v5, v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplr2avp/Timeline;IJ)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move-object v2, v3

    move v3, v4

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    .line 2769
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolveSeekPositionUs(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    if-nez v1, :cond_1

    return v11

    .line 2783
    :cond_1
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2784
    invoke-virtual {v8, v2}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2785
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2783
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    .line 2787
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/PlayerMessage;->getPositionMs()J

    move-result-wide v1

    cmp-long v3, v1, v13

    if-nez v3, :cond_2

    .line 2788
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)V

    :cond_2
    return v12

    .line 2793
    :cond_3
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v8, v2}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    return v11

    .line 2797
    :cond_4
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/PlayerMessage;->getPositionMs()J

    move-result-wide v3

    cmp-long v5, v3, v13

    if-nez v5, :cond_5

    .line 2799
    invoke-static {v8, p0, v9, v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolvePendingMessageEndOfStreamPosition(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)V

    return v12

    .line 2802
    :cond_5
    iput v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodIndex:I

    .line 2803
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    invoke-virtual {v1, v2, v10}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2804
    iget-boolean v2, v10, Lcom/google/android/exoplr2avp/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_6

    iget v2, v10, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 2805
    invoke-virtual {v1, v2, v9}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 2806
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v2, v1, :cond_6

    .line 2810
    iget-wide v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodTimeUs:J

    .line 2811
    invoke-virtual/range {p6 .. p6}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v3

    add-long v5, v1, v3

    .line 2812
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->resolvedPeriodUid:Ljava/lang/Object;

    .line 2813
    invoke-virtual {v8, v1, v10}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v1

    iget v4, v1, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2815
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    .line 2816
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2817
    invoke-virtual {v8, v2}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 2818
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2816
    invoke-virtual {p0, v2, v3, v4, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->setResolvedPosition(IJLjava/lang/Object;)V

    :cond_6
    return v12
.end method

.method private resolvePendingMessagePositions(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 9

    .line 1564
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1568
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1569
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    .line 1570
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    iget v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    move-object v3, p1

    move-object v4, p2

    .line 1569
    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;IZLcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1578
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;->message:Lcom/google/android/exoplr2avp/PlayerMessage;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/PlayerMessage;->markAsProcessed(Z)V

    .line 1579
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1583
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method private static resolvePositionForPlaylistChange(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;Lcom/google/android/exoplr2avp/MediaPeriodQueue;IZLcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;
    .locals 30

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p5

    move-object/from16 v11, p7

    .line 2545
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2546
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    .line 2547
    invoke-static {}, Lcom/google/android/exoplr2avp/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v0

    .line 2554
    :cond_0
    iget-object v14, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 2555
    iget-object v12, v14, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2556
    invoke-static {v8, v11}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isUsingPlaceholderPeriod(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline$Period;)Z

    move-result v13

    .line 2558
    iget-object v0, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz v13, :cond_1

    goto :goto_0

    .line 2560
    :cond_1
    iget-wide v0, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    goto :goto_1

    .line 2559
    :cond_2
    :goto_0
    iget-wide v0, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    :goto_1
    move-wide v15, v0

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    if-eqz v9, :cond_6

    const/4 v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v21, v14

    const/4 v14, -0x1

    move-object/from16 v6, p7

    .line 2570
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolveSeekPositionUs(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_3

    .line 2581
    invoke-virtual {v7, v10}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    move v6, v0

    move-wide v0, v15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto :goto_4

    .line 2584
    :cond_3
    iget-wide v1, v9, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v3, v1, v17

    if-nez v3, :cond_4

    .line 2585
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2586
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    iget v6, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    move-wide v0, v15

    const/4 v2, 0x0

    goto :goto_2

    .line 2588
    :cond_4
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2589
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 2593
    :goto_2
    iget v3, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    const/4 v4, 0x0

    :goto_4
    move-object/from16 v9, p6

    move/from16 v29, v2

    move/from16 v27, v3

    move/from16 v28, v4

    move v3, v6

    move-object/from16 v6, v21

    goto/16 :goto_a

    :cond_6
    move-object/from16 v21, v14

    const/4 v14, -0x1

    .line 2595
    iget-object v0, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2597
    invoke-virtual {v7, v10}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    :goto_5
    move-object/from16 v9, p6

    move v3, v0

    move-wide v0, v15

    move-object/from16 v6, v21

    :goto_6
    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_7
    const/16 v29, 0x0

    goto/16 :goto_a

    .line 2598
    :cond_7
    invoke-virtual {v7, v12}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, v14, :cond_9

    .line 2602
    iget-object v5, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move/from16 v2, p4

    move/from16 v3, p5

    move-object v4, v12

    move-object/from16 v6, p0

    .line 2603
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 2614
    invoke-virtual {v7, v10}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    const/4 v4, 0x1

    goto :goto_8

    .line 2619
    :cond_8
    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    const/4 v4, 0x0

    :goto_8
    move-object/from16 v9, p6

    move v3, v0

    move/from16 v28, v4

    move-wide v0, v15

    move-object/from16 v6, v21

    const/16 v27, 0x0

    goto :goto_7

    :cond_9
    cmp-long v0, v15, v17

    if-nez v0, :cond_a

    .line 2624
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    goto :goto_5

    :cond_a
    if-eqz v13, :cond_c

    .line 2628
    iget-object v0, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    move-object/from16 v6, v21

    iget-object v1, v6, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1, v11}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2629
    iget-object v0, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget v1, v11, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    move-object/from16 v9, p6

    invoke-virtual {v0, v1, v9}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    iget-object v1, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v2, v6, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2630
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 2633
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    add-long v4, v15, v0

    .line 2634
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 2636
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2637
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2638
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object v12, v1

    move-wide v0, v2

    goto :goto_9

    :cond_b
    move-wide v0, v15

    :goto_9
    const/4 v3, -0x1

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x1

    goto :goto_a

    :cond_c
    move-object/from16 v9, p6

    move-object/from16 v6, v21

    move-wide v0, v15

    const/4 v3, -0x1

    goto/16 :goto_6

    :goto_a
    if-eq v3, v14, :cond_d

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    .line 2648
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2653
    iget-object v12, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2654
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    move-object/from16 v2, p3

    move-wide/from16 v25, v17

    goto :goto_b

    :cond_d
    move-object/from16 v2, p3

    move-wide/from16 v25, v0

    .line 2660
    :goto_b
    invoke-virtual {v2, v7, v12, v0, v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplr2avp/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v2

    .line 2662
    iget v3, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v14, :cond_f

    iget v3, v6, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v14, :cond_e

    iget v3, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    iget v4, v6, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-lt v3, v4, :cond_e

    goto :goto_c

    :cond_e
    const/4 v3, 0x0

    goto :goto_d

    :cond_f
    :goto_c
    const/4 v3, 0x1

    .line 2669
    :goto_d
    iget-object v4, v6, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v4, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 2672
    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-nez v4, :cond_10

    .line 2673
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-nez v4, :cond_10

    if-eqz v3, :cond_10

    goto :goto_e

    :cond_10
    const/16 v20, 0x0

    .line 2683
    :goto_e
    invoke-virtual {v7, v12, v11}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v17

    move v12, v13

    move-object v13, v6

    move-object v3, v6

    move-wide v14, v15

    move-object/from16 v16, v2

    move-wide/from16 v18, v25

    .line 2678
    invoke-static/range {v12 .. v19}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isIgnorableServerSideAdInsertionPeriodChange(ZLcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JLcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline$Period;J)Z

    move-result v4

    if-nez v20, :cond_11

    if-eqz v4, :cond_12

    :cond_11
    move-object v2, v3

    .line 2689
    :cond_12
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 2690
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2691
    iget-wide v0, v8, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    goto :goto_f

    .line 2693
    :cond_13
    iget-object v0, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v7, v0, v11}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2695
    iget v0, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    iget v1, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v11, v1}, Lcom/google/android/exoplr2avp/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v1

    if-ne v0, v1, :cond_14

    .line 2696
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v0

    goto :goto_f

    :cond_14
    const-wide/16 v0, 0x0

    :cond_15
    :goto_f
    move-wide/from16 v23, v0

    .line 2701
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;

    move-object/from16 v21, v0

    move-object/from16 v22, v2

    invoke-direct/range {v21 .. v29}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PositionUpdateForPlaylistChange;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJZZZ)V

    return-object v0
.end method

.method private static resolveSeekPositionUs(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline;",
            "Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;",
            "ZIZ",
            "Lcom/google/android/exoplr2avp/Timeline$Window;",
            "Lcom/google/android/exoplr2avp/Timeline$Period;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p1

    move-object/from16 v8, p6

    .line 2856
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 2857
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    const/4 v9, 0x0

    if-eqz v2, :cond_0

    return-object v9

    .line 2861
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v10, v7

    goto :goto_0

    :cond_1
    move-object v10, v1

    .line 2869
    :goto_0
    :try_start_0
    iget v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->windowIndex:I

    iget-wide v5, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v1, v10

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    .line 2870
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2876
    invoke-virtual {p0, v10}, Lcom/google/android/exoplr2avp/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 2881
    :cond_2
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 2884
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v2, v8}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/exoplr2avp/Timeline$Period;->isPlaceholder:Z

    if-eqz v2, :cond_3

    iget v2, v8, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    move-object/from16 v11, p5

    .line 2885
    invoke-virtual {v10, v2, v11}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2886
    invoke-virtual {v10, v3}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 2890
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v1, v8}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v1

    iget v3, v1, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 2891
    iget-wide v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2892
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v1

    :cond_3
    return-object v1

    :cond_4
    move-object/from16 v11, p5

    if-eqz p2, :cond_5

    .line 2900
    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move v2, p3

    move/from16 v3, p4

    move-object v5, v10

    move-object v6, p0

    .line 2901
    invoke-static/range {v0 .. v6}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2914
    invoke-virtual {p0, v0, v8}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    iget v3, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    .line 2911
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catch_0
    :cond_5
    return-object v9
.end method

.method static resolveSubsequentPeriod(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)Ljava/lang/Object;
    .locals 9

    .line 2945
    invoke-virtual {p5, p4}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    .line 2947
    invoke-virtual {p5}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v4, p4

    const/4 p4, -0x1

    :goto_0
    if-ge v2, v0, :cond_1

    if-ne p4, v1, :cond_1

    move-object v3, p5

    move-object v5, p1

    move-object v6, p0

    move v7, p2

    move v8, p3

    .line 2950
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplr2avp/Timeline;->getNextPeriodIndex(ILcom/google/android/exoplr2avp/Timeline$Period;Lcom/google/android/exoplr2avp/Timeline$Window;IZ)I

    move-result v4

    if-ne v4, v1, :cond_0

    goto :goto_1

    .line 2956
    :cond_0
    invoke-virtual {p5, v4}, Lcom/google/android/exoplr2avp/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p6, p4}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result p4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne p4, v1, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    .line 2958
    :cond_2
    invoke-virtual {p6, p4}, Lcom/google/android/exoplr2avp/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    return-object p0
.end method

.method private scheduleNextWork(JJ)V
    .locals 2

    .line 1120
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->removeMessages(I)V

    .line 1121
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    add-long/2addr p1, p3

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method

.method private seekToCurrentPosition(Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 841
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 842
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    .line 843
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide v3

    .line 848
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 849
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v7, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    const/4 v10, 0x5

    move-object v1, p0

    move-object v2, v0

    move v9, p1

    .line 850
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    :cond_0
    return-void
.end method

.method private seekToInternal(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1134
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1141
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget v4, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v5, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v6, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v7, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    const/4 v3, 0x1

    move-object/from16 v2, p1

    .line 1142
    invoke-static/range {v1 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolveSeekPositionUs(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;ZIZLcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)Landroid/util/Pair;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 1153
    iget-object v7, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 1154
    invoke-direct {v11, v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getPlaceholderFirstMediaPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;

    move-result-object v7

    .line 1155
    iget-object v9, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1156
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1158
    iget-object v7, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v7

    xor-int/2addr v7, v8

    move v10, v7

    move-wide/from16 v17, v4

    :goto_0
    move-wide v4, v12

    move-wide/from16 v12, v17

    goto :goto_4

    .line 1161
    :cond_0
    iget-object v7, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 1162
    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 1164
    iget-wide v9, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v14, v9, v4

    if-nez v14, :cond_1

    move-wide v9, v4

    goto :goto_1

    :cond_1
    move-wide v9, v12

    .line 1165
    :goto_1
    iget-object v14, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-object v15, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v15, v15, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 1166
    invoke-virtual {v14, v15, v7, v12, v13}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->resolveMediaPeriodIdForAdsAfterPeriodPositionChange(Lcom/google/android/exoplr2avp/Timeline;Ljava/lang/Object;J)Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v7

    .line 1168
    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1169
    iget-object v4, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v5, v7, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v12, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v4, v5, v12}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1171
    iget-object v4, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget v5, v7, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Timeline$Period;->getFirstAdIndexToPlay(I)I

    move-result v4

    iget v5, v7, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    if-ne v4, v5, :cond_2

    .line 1172
    iget-object v4, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdResumePositionUs()J

    move-result-wide v4

    move-wide v12, v4

    goto :goto_2

    :cond_2
    move-wide v12, v2

    :goto_2
    move-wide v4, v12

    move-wide v12, v9

    const/4 v10, 0x1

    move-object v9, v7

    goto :goto_4

    .line 1177
    :cond_3
    iget-wide v14, v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;->windowPositionUs:J

    cmp-long v16, v14, v4

    if-nez v16, :cond_4

    const/4 v4, 0x1

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    move-wide/from16 v17, v9

    move v10, v4

    move-object v9, v7

    goto :goto_0

    .line 1182
    :goto_4
    :try_start_0
    iget-object v7, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v7}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1184
    iput-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    goto :goto_5

    :cond_5
    const/4 v0, 0x4

    if-nez v1, :cond_7

    .line 1187
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v1, v8, :cond_6

    .line 1188
    invoke-direct {v11, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setState(I)V

    .line 1190
    :cond_6
    invoke-direct {v11, v6, v8, v6, v8}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    :goto_5
    move-wide v7, v4

    goto/16 :goto_9

    .line 1198
    :cond_7
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v9, v1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1199
    iget-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 1200
    iget-boolean v7, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-eqz v7, :cond_8

    cmp-long v7, v4, v2

    if-eqz v7, :cond_8

    .line 1203
    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-object v2, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    .line 1204
    invoke-interface {v1, v4, v5, v2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J

    move-result-wide v1

    goto :goto_6

    :cond_8
    move-wide v1, v4

    .line 1207
    :goto_6
    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v14

    iget-object v3, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v6, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    invoke-static {v6, v7}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v6

    cmp-long v3, v14, v6

    if-nez v3, :cond_b

    iget-object v3, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v6, 0x2

    if-eq v3, v6, :cond_9

    iget-object v3, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v6, 0x3

    if-ne v3, v6, :cond_b

    .line 1211
    :cond_9
    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v7, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 1231
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    return-void

    :cond_a
    move-wide v1, v4

    .line 1215
    :cond_b
    :try_start_1
    iget-object v3, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-ne v3, v0, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    .line 1216
    :goto_7
    invoke-direct {v11, v9, v1, v2, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JZ)J

    move-result-wide v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    cmp-long v0, v4, v14

    if-eqz v0, :cond_d

    goto :goto_8

    :cond_d
    const/4 v8, 0x0

    :goto_8
    or-int/2addr v8, v10

    .line 1222
    :try_start_2
    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-object/from16 v1, p0

    move-object v3, v9

    move-wide v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v10, v8

    move-wide v7, v14

    :goto_9
    const/4 v0, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v0

    .line 1231
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    iput-object v0, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    return-void

    :catchall_0
    move-exception v0

    move v10, v8

    move-wide v7, v14

    goto :goto_a

    :catchall_1
    move-exception v0

    move-wide v7, v4

    :goto_a
    const/4 v14, 0x2

    move-object/from16 v1, p0

    move-object v2, v9

    move-wide v3, v7

    move-wide v5, v12

    move v9, v10

    move v10, v14

    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v1

    iput-object v1, v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 1238
    throw v0
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JZ)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1245
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    .line 1248
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v6, p4

    .line 1245
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToPeriodPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JZZ)J

    move-result-wide p1

    return-wide p1
.end method

.method private seekToPeriodPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JZZ)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1258
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->stopRenderers()V

    const/4 v0, 0x0

    .line 1259
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRebuffering:Z

    const/4 v1, 0x2

    if-nez p5, :cond_0

    .line 1260
    iget-object p5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget p5, p5, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v2, 0x3

    if-ne p5, v2, :cond_1

    .line 1261
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setState(I)V

    .line 1265
    :cond_1
    iget-object p5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p5}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object p5

    move-object v2, p5

    :goto_0
    if-eqz v2, :cond_3

    .line 1268
    iget-object v3, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1271
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v2

    goto :goto_0

    :cond_3
    :goto_1
    if-nez p4, :cond_4

    if-ne p5, v2, :cond_4

    if-eqz v2, :cond_7

    .line 1279
    invoke-virtual {v2, p2, p3}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->toRendererTime(J)J

    move-result-wide p4

    const-wide/16 v3, 0x0

    cmp-long p1, p4, v3

    if-gez p1, :cond_7

    .line 1280
    :cond_4
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length p4, p1

    const/4 p5, 0x0

    :goto_2
    if-ge p5, p4, :cond_5

    aget-object v3, p1, p5

    .line 1281
    invoke-direct {p0, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->disableRenderer(Lcom/google/android/exoplr2avp/Renderer;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_2

    :cond_5
    if-eqz v2, :cond_7

    .line 1285
    :goto_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object p1

    if-eq p1, v2, :cond_6

    .line 1286
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->advancePlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    goto :goto_3

    .line 1288
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplr2avp/MediaPeriodHolder;)Z

    const-wide p4, 0xe8d4a51000L

    .line 1289
    invoke-virtual {v2, p4, p5}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->setRendererOffset(J)V

    .line 1291
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enableRenderers()V

    :cond_7
    if-eqz v2, :cond_a

    .line 1297
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->removeAfter(Lcom/google/android/exoplr2avp/MediaPeriodHolder;)Z

    .line 1298
    iget-boolean p1, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_8

    .line 1299
    iget-object p1, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    .line 1300
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->copyWithStartPositionUs(J)Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    goto :goto_4

    .line 1301
    :cond_8
    iget-boolean p1, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz p1, :cond_9

    .line 1302
    iget-object p1, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p1

    .line 1303
    iget-object p3, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    iget-wide p4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->backBufferDurationUs:J

    sub-long p4, p1, p4

    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->retainBackBufferFromKeyframe:Z

    invoke-interface {p3, p4, p5, v2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->discardBuffer(JZ)V

    move-wide p2, p1

    .line 1306
    :cond_9
    :goto_4
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1307
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeContinueLoading()V

    goto :goto_5

    .line 1310
    :cond_a
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->clear()V

    .line 1311
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 1314
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    .line 1315
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-wide p2
.end method

.method private sendMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1494
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->getPositionMs()J

    move-result-wide v0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1496
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->sendMessageToTarget(Lcom/google/android/exoplr2avp/PlayerMessage;)V

    goto :goto_0

    .line 1497
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1499
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplr2avp/PlayerMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1501
    :cond_1
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;-><init>(Lcom/google/android/exoplr2avp/PlayerMessage;)V

    .line 1502
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->repeatMode:I

    iget-boolean v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    iget-object v7, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    move-object v2, v0

    invoke-static/range {v2 .. v8}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolvePendingMessagePosition(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PendingMessageInfo;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;IZLcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1510
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1512
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingMessages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1514
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->markAsProcessed(Z)V

    :goto_0
    return-void
.end method

.method private sendMessageToTarget(Lcom/google/android/exoplr2avp/PlayerMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1520
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_1

    .line 1521
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplr2avp/PlayerMessage;)V

    .line 1522
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-ne p1, v1, :cond_2

    .line 1525
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    invoke-interface {p1, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1528
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0xf

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method private sendMessageToTargetThread(Lcom/google/android/exoplr2avp/PlayerMessage;)V
    .locals 3

    .line 1533
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1534
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "TAG"

    const-string v1, "Trying to send message on a dead thread."

    .line 1535
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1536
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->markAsProcessed(Z)V

    return-void

    .line 1539
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    const/4 v2, 0x0

    .line 1540
    invoke-interface {v1, v0, v2}, Lcom/google/android/exoplr2avp/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$eQXFBWMWBKGBVWDC8Q48XXD9sag;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$eQXFBWMWBKGBVWDC8Q48XXD9sag;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;Lcom/google/android/exoplr2avp/PlayerMessage;)V

    .line 1541
    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setAllRendererStreamsFinal(J)V
    .locals 5

    .line 2220
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2221
    invoke-interface {v3}, Lcom/google/android/exoplr2avp/Renderer;->getStream()Lcom/google/android/exoplr2avp/source/SampleStream;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2222
    invoke-direct {p0, v3, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setCurrentStreamFinal(Lcom/google/android/exoplr2avp/Renderer;J)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setCurrentStreamFinal(Lcom/google/android/exoplr2avp/Renderer;J)V
    .locals 1

    .line 2228
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Renderer;->setCurrentStreamFinal()V

    .line 2229
    instance-of v0, p1, Lcom/google/android/exoplr2avp/text/TextRenderer;

    if-eqz v0, :cond_0

    .line 2230
    check-cast p1, Lcom/google/android/exoplr2avp/text/TextRenderer;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplr2avp/text/TextRenderer;->setFinalStreamEndPositionUs(J)V

    :cond_0
    return-void
.end method

.method private setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 4

    .line 1346
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->foregroundMode:Z

    if-eq v0, p1, :cond_1

    .line 1347
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_1

    .line 1349
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1350
    invoke-static {v2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderersToReset:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1351
    invoke-interface {v2}, Lcom/google/android/exoplr2avp/Renderer;->reset()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 1357
    monitor-enter p0

    const/4 p1, 0x1

    .line 1358
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1359
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1360
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method private setMediaItemsInternal(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 702
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 703
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    new-instance v1, Lcom/google/android/exoplr2avp/PlaylistTimeline;

    .line 706
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v2

    .line 707
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    .line 708
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$200(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)I

    move-result v2

    .line 709
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$500(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplr2avp/Timeline;IJ)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingInitialSeekPosition:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    .line 713
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$300(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Ljava/util/List;

    move-result-object v1

    .line 714
    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move-result-object p1

    .line 712
    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplr2avp/MediaSourceList;->setMediaSources(Ljava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    .line 715
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplr2avp/Timeline;Z)V

    return-void
.end method

.method private setOffloadSchedulingEnabledInternal(Z)V
    .locals 2

    .line 808
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 811
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->offloadSchedulingEnabled:Z

    .line 812
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-nez p1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 816
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 814
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithOffloadSchedulingEnabled(Z)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    :goto_1
    return-void
.end method

.method private setPauseAtEndOfWindowInternal(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 797
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pauseAtEndOfWindow:Z

    .line 798
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetPendingPauseAtEndOfPeriod()V

    .line 799
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    .line 802
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    const/4 p1, 0x0

    .line 803
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    :cond_0
    return-void
.end method

.method private setPlayWhenReadyInternal(ZIZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 777
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {v0, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 778
    iget-object p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p3, p4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->setPlayWhenReadyChangeReason(I)V

    .line 779
    iget-object p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlayWhenReady(ZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    const/4 p2, 0x0

    .line 780
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRebuffering:Z

    .line 781
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->notifyTrackSelectionPlayWhenReadyChanged(Z)V

    .line 782
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result p1

    if-nez p1, :cond_0

    .line 783
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->stopRenderers()V

    .line 784
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->updatePlaybackPositions()V

    goto :goto_0

    .line 786
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 p2, 0x3

    const/4 p3, 0x2

    if-ne p1, p2, :cond_1

    .line 787
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->startRenderers()V

    .line 788
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    invoke-interface {p1, p3}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 789
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget p1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-ne p1, p3, :cond_2

    .line 790
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    invoke-interface {p1, p3}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setPlaybackParametersInternal(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 1336
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    .line 1337
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;Z)V

    return-void
.end method

.method private setRepeatModeInternal(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 822
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->repeatMode:I

    .line 823
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->updateRepeatMode(Lcom/google/android/exoplr2avp/Timeline;I)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 824
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 826
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setSeekParametersInternal(Lcom/google/android/exoplr2avp/SeekParameters;)V
    .locals 0

    .line 1341
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    return-void
.end method

.method private setShuffleModeEnabledInternal(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 831
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shuffleModeEnabled:Z

    .line 832
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->updateShuffleModeEnabled(Lcom/google/android/exoplr2avp/Timeline;Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 833
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToCurrentPosition(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 835
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleLoadingMediaPeriodChanged(Z)V

    return-void
.end method

.method private setShuffleOrderInternal(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 754
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaSourceList;->setShuffleOrder(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    const/4 v0, 0x0

    .line 756
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleMediaSourceListInfoRefreshed(Lcom/google/android/exoplr2avp/Timeline;Z)V

    return-void
.end method

.method private setState(I)V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v0, p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 672
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackMaybeBecameStuckAtMs:J

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    :cond_1
    return-void
.end method

.method private shouldAdvancePlayingPeriod()Z
    .locals 7

    .line 2169
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldPlayWhenReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2172
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingPauseAtEndOfPeriod:Z

    if-eqz v0, :cond_1

    return v1

    .line 2175
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 2179
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2180
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2181
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getStartPositionRendererTime()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_3

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->allRenderersInCorrectState:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method private shouldContinueLoading()Z
    .locals 9

    .line 2309
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isLoadingPossible()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2312
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    .line 2314
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNextLoadPositionUs()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getTotalBufferedDurationUs(J)J

    move-result-wide v6

    .line 2316
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 2317
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    .line 2319
    :cond_1
    iget-wide v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 2318
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-wide v3, v0, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v1, v3

    move-wide v4, v1

    .line 2320
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplr2avp/LoadControl;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    .line 2321
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    iget v8, v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    .line 2320
    invoke-interface/range {v3 .. v8}, Lcom/google/android/exoplr2avp/LoadControl;->shouldContinueLoading(JJF)Z

    move-result v0

    return v0
.end method

.method private shouldPlayWhenReady()Z
    .locals 1

    .line 2532
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private shouldTransitionToReadyState(Z)Z
    .locals 11

    .line 1772
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->enabledRendererCount:I

    if-nez v0, :cond_0

    .line 1774
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isTimelineReady()Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 1779
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    const/4 v1, 0x1

    if-nez p1, :cond_2

    return v1

    .line 1786
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1787
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;->getTargetLiveOffsetUs()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    move-wide v9, v2

    .line 1789
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object p1

    .line 1790
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->isFullyBuffered()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-boolean v2, v2, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->isFinal:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 1794
    :goto_1
    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-nez v2, :cond_6

    if-nez p1, :cond_6

    .line 1795
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplr2avp/LoadControl;

    .line 1798
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v5

    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    .line 1799
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object p1

    iget v7, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    iget-boolean v8, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRebuffering:Z

    .line 1797
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplr2avp/LoadControl;->shouldStartPlayback(JFZJ)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v0, 0x1

    :cond_7
    return v0
.end method

.method private shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z
    .locals 4

    .line 1111
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1114
    :cond_0
    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 1115
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 1116
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-boolean p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-wide p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private startRenderers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 861
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRebuffering:Z

    .line 862
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->start()V

    .line 863
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 864
    invoke-static {v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 865
    invoke-interface {v3}, Lcom/google/android/exoplr2avp/Renderer;->start()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private stopInternal(ZZ)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 1365
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->foregroundMode:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetInternal(ZZZZ)V

    .line 1370
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfoUpdate:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 1371
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplr2avp/LoadControl;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/LoadControl;->onStopped()V

    .line 1372
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setState(I)V

    return-void
.end method

.method private stopRenderers()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 871
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->stop()V

    .line 872
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 873
    invoke-static {v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->isRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 874
    invoke-direct {p0, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->ensureStopped(Lcom/google/android/exoplr2avp/Renderer;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateIsLoading()V
    .locals 2

    .line 2337
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    .line 2338
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldContinueLoading:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 2339
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2340
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    if-eq v0, v1, :cond_2

    .line 2341
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithIsLoading(Z)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    :cond_2
    return-void
.end method

.method private updateLoadControlTrackSelection(Lcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;)V
    .locals 2

    .line 2528
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->loadControl:Lcom/google/android/exoplr2avp/LoadControl;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplr2avp/LoadControl;->onTracksSelected([Lcom/google/android/exoplr2avp/Renderer;Lcom/google/android/exoplr2avp/source/TrackGroupArray;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;)V

    return-void
.end method

.method private updatePeriods()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1964
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceList:Lcom/google/android/exoplr2avp/MediaSourceList;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaSourceList;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1968
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeUpdateLoadingPeriod()V

    .line 1969
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeUpdateReadingPeriod()V

    .line 1970
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeUpdateReadingRenderers()V

    .line 1971
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeUpdatePlayingPeriod()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updatePlaybackPositions()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 891
    :cond_0
    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->prepared:Z

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_1

    .line 892
    iget-object v1, v0, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->mediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v4

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide v6, v2

    :goto_0
    const/4 v10, 0x0

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    .line 895
    invoke-direct {p0, v6, v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resetRendererPosition(J)V

    .line 898
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    cmp-long v2, v6, v0

    if-eqz v2, :cond_4

    .line 899
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    const/4 v8, 0x1

    const/4 v9, 0x5

    move-object v0, p0

    move-wide v2, v6

    .line 900
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePositionDiscontinuity(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    goto :goto_2

    .line 909
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    .line 911
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 910
    :goto_1
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->syncAndGetPositionUs(Z)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->rendererPositionUs:J

    .line 912
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide v0

    .line 913
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeTriggerPendingMessages(JJ)V

    .line 914
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iput-wide v0, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    .line 918
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getLoadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    .line 919
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getBufferedPositionUs()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    .line 920
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    .line 923
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 925
    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    .line 927
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    .line 929
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getCurrentLiveOffsetUs()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getTotalBufferedDurationUs()J

    move-result-wide v3

    .line 928
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;->getAdjustedPlaybackSpeed(JJ)F

    move-result v0

    .line 930
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_5

    .line 931
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplr2avp/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    .line 932
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    .line 934
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v1

    iget v1, v1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    .line 932
    invoke-direct {p0, v0, v1, v10, v10}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;FZZ)V

    :cond_5
    return-void
.end method

.method private updatePlaybackSpeedSettingsForNewPeriod(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)V
    .locals 3

    .line 1908
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->shouldUseLivePlaybackSpeedControl(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1912
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplr2avp/PlaybackParameters;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    .line 1913
    :goto_0
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1914
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaClock:Lcom/google/android/exoplr2avp/DefaultMediaClock;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    :cond_1
    return-void

    .line 1918
    :cond_2
    iget-object v0, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 1919
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 1920
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/Timeline$Window;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;->setLiveConfiguration(Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;)V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p5, v0

    if-eqz v2, :cond_3

    .line 1922
    iget-object p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1923
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getLiveOffsetUs(Lcom/google/android/exoplr2avp/Timeline;Ljava/lang/Object;J)J

    move-result-wide p1

    .line 1922
    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    goto :goto_1

    .line 1925
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 1927
    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result p5

    if-nez p5, :cond_4

    .line 1928
    iget-object p2, p4, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p2

    iget p2, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 1929
    iget-object p4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p3, p2, p4}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p2

    iget-object p2, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    .line 1931
    :cond_4
    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 1933
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;->setTargetLiveOffsetOverrideUs(J)V

    :cond_5
    :goto_1
    return-void
.end method

.method private updateTrackSelectionPlaybackSpeed(F)V
    .locals 5

    .line 1748
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getPlayingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    .line 1750
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getTrackSelectorResult()Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-eqz v4, :cond_0

    .line 1752
    invoke-interface {v4, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1755
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->getNext()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private declared-synchronized waitUninterruptibly(Lcom/google/common/base/Supplier;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/base/Supplier<",
            "Ljava/lang/Boolean;",
            ">;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 651
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/util/Clock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p2

    const/4 v2, 0x0

    .line 654
    :goto_0
    invoke-interface {p1}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const-wide/16 v3, 0x0

    cmp-long v5, p2, v3

    if-lez v5, :cond_0

    .line 656
    :try_start_1
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/util/Clock;->onThreadBlocked()V

    .line 657
    invoke-virtual {p0, p2, p3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 p2, 0x1

    const/4 v2, 0x1

    .line 661
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {p2}, Lcom/google/android/exoplr2avp/util/Clock;->elapsedRealtime()J

    move-result-wide p2

    sub-long p2, v0, p2

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 665
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 667
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addMediaSources(ILjava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    new-instance v8, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;IJLcom/google/android/exoplr2avp/ExoPlayerImplInternal$1;)V

    const/16 p2, 0x12

    const/4 p3, 0x0

    .line 352
    invoke-interface {v0, p2, p1, p3, v8}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    .line 361
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)V
    .locals 0

    .line 284
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    return-void
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0x18

    .line 289
    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    .line 291
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "Playback error"

    const-string v1, "ExoPlayerImplInternal"

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 472
    :try_start_0
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    return v3

    .line 551
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->attemptRendererErrorRecovery()V

    goto/16 :goto_6

    .line 548
    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setOffloadSchedulingEnabledInternal(Z)V

    goto/16 :goto_6

    .line 545
    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setPauseAtEndOfWindowInternal(Z)V

    goto/16 :goto_6

    .line 542
    :pswitch_3
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->mediaSourceListUpdateRequestedInternal()V

    goto/16 :goto_6

    .line 539
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setShuffleOrderInternal(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    goto/16 :goto_6

    .line 536
    :pswitch_5
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    invoke-direct {p0, v5, v6, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->removeMediaItemsInternal(IILcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    goto/16 :goto_6

    .line 533
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->moveMediaItemsInternal(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;)V

    goto/16 :goto_6

    .line 530
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->addMediaItemsInternal(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;I)V

    goto/16 :goto_6

    .line 527
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setMediaItemsInternal(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;)V

    goto/16 :goto_6

    .line 518
    :pswitch_9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/PlaybackParameters;

    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;Z)V

    goto/16 :goto_6

    .line 524
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->sendMessageToTargetThread(Lcom/google/android/exoplr2avp/PlayerMessage;)V

    goto/16 :goto_6

    .line 521
    :pswitch_b
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/PlayerMessage;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->sendMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage;)V

    goto/16 :goto_6

    .line 502
    :pswitch_c
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0, v5, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setForegroundModeInternal(ZLjava/util/concurrent/atomic/AtomicBoolean;)V

    goto/16 :goto_6

    .line 487
    :pswitch_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setShuffleModeEnabledInternal(Z)V

    goto/16 :goto_6

    .line 484
    :pswitch_e
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setRepeatModeInternal(I)V

    goto/16 :goto_6

    .line 515
    :pswitch_f
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->reselectTracksInternal()V

    goto/16 :goto_6

    .line 512
    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    goto/16 :goto_6

    .line 509
    :pswitch_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handlePeriodPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    goto/16 :goto_6

    .line 554
    :pswitch_12
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->releaseInternal()V

    return v4

    .line 506
    :pswitch_13
    invoke-direct {p0, v3, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->stopInternal(ZZ)V

    goto/16 :goto_6

    .line 499
    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/SeekParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setSeekParametersInternal(Lcom/google/android/exoplr2avp/SeekParameters;)V

    goto/16 :goto_6

    .line 496
    :pswitch_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/PlaybackParameters;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setPlaybackParametersInternal(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    goto/16 :goto_6

    .line 493
    :pswitch_16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekToInternal(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;)V

    goto/16 :goto_6

    .line 490
    :pswitch_17
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->doSomeWork()V

    goto/16 :goto_6

    .line 477
    :pswitch_18
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_4

    :cond_4
    const/4 v5, 0x0

    :goto_4
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v5, p1, v4, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setPlayWhenReadyInternal(ZIZI)V

    goto/16 :goto_6

    .line 474
    :pswitch_19
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->prepareInternal()V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/google/android/exoplr2avp/ParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/google/android/exoplr2avp/upstream/DataSourceException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/google/android/exoplr2avp/source/BehindLiveWindowException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception p1

    .line 611
    instance-of v5, p1, Ljava/lang/IllegalStateException;

    if-nez v5, :cond_5

    instance-of v5, p1, Ljava/lang/IllegalArgumentException;

    if-eqz v5, :cond_6

    :cond_5
    const/16 v2, 0x3ec

    .line 616
    :cond_6
    invoke-static {p1, v2}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    .line 617
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 618
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 619
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplr2avp/ExoPlaybackException;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    goto/16 :goto_6

    :catch_1
    move-exception p1

    const/16 v0, 0x7d0

    .line 608
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_6

    :catch_2
    move-exception p1

    const/16 v0, 0x3ea

    .line 606
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_6

    :catch_3
    move-exception p1

    .line 604
    iget v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSourceException;->reason:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto/16 :goto_6

    :catch_4
    move-exception p1

    .line 589
    iget v0, p1, Lcom/google/android/exoplr2avp/ParserException;->dataType:I

    if-ne v0, v4, :cond_8

    .line 591
    iget-boolean v0, p1, Lcom/google/android/exoplr2avp/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_7

    const/16 v0, 0xbb9

    const/16 v2, 0xbb9

    goto :goto_5

    :cond_7
    const/16 v0, 0xbbb

    const/16 v2, 0xbbb

    goto :goto_5

    .line 594
    :cond_8
    iget v0, p1, Lcom/google/android/exoplr2avp/ParserException;->dataType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 596
    iget-boolean v0, p1, Lcom/google/android/exoplr2avp/ParserException;->contentIsMalformed:Z

    if-eqz v0, :cond_9

    const/16 v0, 0xbba

    const/16 v2, 0xbba

    goto :goto_5

    :cond_9
    const/16 v0, 0xbbc

    const/16 v2, 0xbbc

    .line 602
    :cond_a
    :goto_5
    invoke-direct {p0, p1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto :goto_6

    :catch_5
    move-exception p1

    .line 586
    iget v0, p1, Lcom/google/android/exoplr2avp/drm/DrmSession$DrmSessionException;->errorCode:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handleIoException(Ljava/io/IOException;I)V

    goto :goto_6

    :catch_6
    move-exception p1

    .line 561
    iget v2, p1, Lcom/google/android/exoplr2avp/ExoPlaybackException;->type:I

    if-ne v2, v4, :cond_b

    .line 562
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->queue:Lcom/google/android/exoplr2avp/MediaPeriodQueue;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaPeriodQueue;->getReadingPeriod()Lcom/google/android/exoplr2avp/MediaPeriodHolder;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 566
    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaPeriodHolder;->info:Lcom/google/android/exoplr2avp/MediaPeriodInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaPeriodInfo;->id:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->copyWithMediaPeriodId(Lcom/google/android/exoplr2avp/source/MediaPeriodId;)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    .line 569
    :cond_b
    iget-boolean v2, p1, Lcom/google/android/exoplr2avp/ExoPlaybackException;->isRecoverable:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    if-nez v2, :cond_c

    const-string v0, "Recoverable renderer error"

    .line 570
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 571
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0x19

    .line 575
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    .line 574
    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendMessageAtFrontOfQueue(Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;)Z

    goto :goto_6

    .line 577
    :cond_c
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    if-eqz v2, :cond_d

    .line 578
    invoke-virtual {v2, p1}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 579
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->pendingRecoverableRendererError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    .line 581
    :cond_d
    invoke-static {v1, v0, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 582
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->stopInternal(ZZ)V

    .line 583
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplr2avp/ExoPlaybackException;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 621
    :goto_6
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->maybeNotifyPlaybackInfoChanged()V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public synthetic lambda$release$0$ExoPlayerImplInternal()Ljava/lang/Boolean;
    .locals 1

    .line 424
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->released:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$sendMessageToTargetThread$1$ExoPlayerImplInternal(Lcom/google/android/exoplr2avp/PlayerMessage;)V
    .locals 2

    .line 1544
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->deliverMessage(Lcom/google/android/exoplr2avp/PlayerMessage;)V
    :try_end_0
    .catch Lcom/google/android/exoplr2avp/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Unexpected error delivering message on external thread."

    .line 1546
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1547
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public moveMediaSources(IIILcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 1

    .line 372
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MoveMediaItemsMessage;-><init>(IIILcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    .line 374
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 p2, 0x13

    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0x9

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/SequenceableLoader;)V
    .locals 0

    .line 73
    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0x10

    .line 463
    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    .line 464
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onPlaylistUpdateRequested()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0x16

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public onTrackSelectionsInvalidated()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    return-void
.end method

.method public prepare()V
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized release()Z
    .locals 3

    monitor-enter p0

    .line 420
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->sendEmptyMessage(I)Z

    .line 424
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$aWOu7K1rG50zX-WDyqe1_7Mfx58;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImplInternal$aWOu7K1rG50zX-WDyqe1_7Mfx58;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;)V

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->releaseTimeoutMs:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 425
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 421
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeMediaSources(IILcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0x14

    .line 366
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    .line 367
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public seekTo(Lcom/google/android/exoplr2avp/Timeline;IJ)V
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$SeekPosition;-><init>(Lcom/google/android/exoplr2avp/Timeline;IJ)V

    const/4 p1, 0x3

    .line 321
    invoke-interface {v0, p1, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    .line 322
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized sendMessage(Lcom/google/android/exoplr2avp/PlayerMessage;)V
    .locals 2

    monitor-enter p0

    .line 383
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->released:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0xe

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "ExoPlayerImplInternal"

    const-string v1, "Ignoring messages sent after release."

    .line 384
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->markAsProcessed(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setForegroundMode(Z)Z
    .locals 3

    monitor-enter p0

    .line 398
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->released:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->internalPlaybackThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xd

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 402
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return v1

    .line 405
    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 406
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    .line 407
    invoke-interface {v1, v0, v2, v2, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(IIILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object v0

    .line 408
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    .line 409
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$eLqdTe3x4bFi958pu_x4MuT3NjA;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$eLqdTe3x4bFi958pu_x4MuT3NjA;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    iget-wide v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setForegroundModeTimeoutMs:J

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->waitUninterruptibly(Lcom/google/common/base/Supplier;J)V

    .line 410
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return p1

    .line 399
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMediaSources(Ljava/util/List;IJLcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;IJ",
            "Lcom/google/android/exoplr2avp/source/ShuffleOrder;",
            ")V"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    new-instance v8, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v3, p5

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$MediaSourceListUpdateMessage;-><init>(Ljava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;IJLcom/google/android/exoplr2avp/ExoPlayerImplInternal$1;)V

    const/16 p1, 0x11

    .line 343
    invoke-interface {v0, p1, v8}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    .line 346
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setPauseAtEndOfWindow(Z)V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0x17

    .line 307
    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    .line 308
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setPlayWhenReady(ZI)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x1

    .line 301
    invoke-interface {v0, v1, p1, p2}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    .line 302
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x4

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 3

    .line 316
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-interface {v0, v2, p1, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(III)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/16 v1, 0x15

    invoke-interface {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(ILjava/lang/Object;)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->handler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    const/4 v1, 0x6

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->obtainMessage(I)Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/util/HandlerWrapper$Message;->sendToTarget()V

    return-void
.end method
