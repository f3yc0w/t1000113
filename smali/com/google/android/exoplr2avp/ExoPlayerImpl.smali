.class final Lcom/google/android/exoplr2avp/ExoPlayerImpl;
.super Lcom/google/android/exoplr2avp/BasePlayer;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/ExoPlayer;
.implements Lcom/google/android/exoplr2avp/ExoPlayer$AudioComponent;
.implements Lcom/google/android/exoplr2avp/ExoPlayer$VideoComponent;
.implements Lcom/google/android/exoplr2avp/ExoPlayer$TextComponent;
.implements Lcom/google/android/exoplr2avp/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/ExoPlayerImpl$Api31;,
        Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;,
        Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;,
        Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final analyticsCollector:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

.field private final applicationContext:Landroid/content/Context;

.field private final applicationLooper:Landroid/os/Looper;

.field private audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

.field private final audioBecomingNoisyManager:Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager;

.field private audioDecoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

.field private final audioFocusManager:Lcom/google/android/exoplr2avp/AudioFocusManager;

.field private audioFormat:Lcom/google/android/exoplr2avp/Format;

.field private final audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private audioSessionId:I

.field private availableCommands:Lcom/google/android/exoplr2avp/Player$Commands;

.field private final bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

.field private cameraMotionListener:Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;

.field private final clock:Lcom/google/android/exoplr2avp/util/Clock;

.field private final componentListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

.field private final constructorFinished:Lcom/google/android/exoplr2avp/util/ConditionVariable;

.field private currentCueGroup:Lcom/google/android/exoplr2avp/text/CueGroup;

.field private final detachSurfaceTimeoutMs:J

.field private deviceInfo:Lcom/google/android/exoplr2avp/DeviceInfo;

.field final emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

.field private foregroundMode:Z

.field private final frameMetadataListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;

.field private hasNotifiedFullWrongThreadWarning:Z

.field private final internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

.field private isPriorityTaskManagerRegistered:Z

.field private keepSessionIdAudioTrack:Landroid/media/AudioTrack;

.field private final listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/util/ListenerSet<",
            "Lcom/google/android/exoplr2avp/Player$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

.field private final mediaSourceFactory:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

.field private final mediaSourceHolderSnapshots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;",
            ">;"
        }
    .end annotation
.end field

.field private ownedSurface:Landroid/view/Surface;

.field private pauseAtEndOfMediaItems:Z

.field private pendingDiscontinuity:Z

.field private pendingDiscontinuityReason:I

.field private pendingOperationAcks:I

.field private pendingPlayWhenReadyChangeReason:I

.field private final period:Lcom/google/android/exoplr2avp/Timeline$Period;

.field final permanentAvailableCommands:Lcom/google/android/exoplr2avp/Player$Commands;

.field private playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

.field private final playbackInfoUpdateHandler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

.field private final playbackInfoUpdateListener:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

.field private playerReleased:Z

.field private playlistMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

.field private priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

.field private final renderers:[Lcom/google/android/exoplr2avp/Renderer;

.field private repeatMode:I

.field private final seekBackIncrementMs:J

.field private final seekForwardIncrementMs:J

.field private seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

.field private shuffleModeEnabled:Z

.field private shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

.field private skipSilenceEnabled:Z

.field private sphericalGLSurfaceView:Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

.field private staticAndDynamicMediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

.field private final streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

.field private surfaceHeight:I

.field private surfaceHolder:Landroid/view/SurfaceHolder;

.field private surfaceHolderSurfaceIsVideoOutput:Z

.field private surfaceWidth:I

.field private textureView:Landroid/view/TextureView;

.field private throwsWhenUsingWrongThread:Z

.field private final trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

.field private final useLazyPreparation:Z

.field private videoChangeFrameRateStrategy:I

.field private videoDecoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

.field private videoFormat:Lcom/google/android/exoplr2avp/Format;

.field private videoFrameMetadataListener:Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;

.field private videoOutput:Ljava/lang/Object;

.field private videoScalingMode:I

.field private videoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

.field private volume:F

.field private final wakeLockManager:Lcom/google/android/exoplr2avp/WakeLockManager;

.field private final wifiLockManager:Lcom/google/android/exoplr2avp/WifiLockManager;

.field private final wrappingPlayer:Lcom/google/android/exoplr2avp/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.exoplayer"

    .line 112
    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayer$Builder;Lcom/google/android/exoplr2avp/Player;)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 213
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/BasePlayer;-><init>()V

    .line 214
    new-instance v2, Lcom/google/android/exoplr2avp/util/ConditionVariable;

    invoke-direct {v2}, Lcom/google/android/exoplr2avp/util/ConditionVariable;-><init>()V

    iput-object v2, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->constructorFinished:Lcom/google/android/exoplr2avp/util/ConditionVariable;

    :try_start_0
    const-string v3, "ExoPlayerImpl"

    .line 216
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Init "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "ExoPlayerLib/2.18.0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/google/android/exoplr2avp/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-static {v3, v4}, Lcom/google/android/exoplr2avp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    .line 226
    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-interface {v4, v5}, Lcom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    iput-object v4, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    .line 227
    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    iput-object v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    .line 228
    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    iput-object v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    .line 229
    iget v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->videoScalingMode:I

    iput v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoScalingMode:I

    .line 230
    iget v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    iput v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 231
    iget-boolean v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->skipSilenceEnabled:Z

    iput-boolean v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->skipSilenceEnabled:Z

    .line 232
    iget-wide v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    iput-wide v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    .line 233
    new-instance v15, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    const/4 v14, 0x0

    invoke-direct {v15, v1, v14}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/ExoPlayerImpl$1;)V

    iput-object v15, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    .line 234
    new-instance v13, Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {v13, v14}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl$1;)V

    iput-object v13, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;

    .line 235
    new-instance v6, Landroid/os/Handler;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    invoke-direct {v6, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 236
    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 239
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcom/google/android/exoplr2avp/RenderersFactory;

    move-object v8, v6

    move-object v9, v15

    move-object v10, v15

    move-object v11, v15

    move-object v12, v15

    .line 240
    invoke-interface/range {v7 .. v12}, Lcom/google/android/exoplr2avp/RenderersFactory;->createRenderers(Landroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/text/TextOutput;Lcom/google/android/exoplr2avp/metadata/MetadataOutput;)[Lcom/google/android/exoplr2avp/Renderer;

    move-result-object v7

    iput-object v7, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    .line 246
    array-length v5, v7

    const/4 v12, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 247
    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    iput-object v10, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    .line 248
    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    iput-object v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceFactory:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 249
    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v9, v5

    check-cast v9, Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    iput-object v9, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    .line 250
    iget-boolean v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->useLazyPreparation:Z

    iput-boolean v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->useLazyPreparation:Z

    .line 251
    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    iput-object v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    move-object/from16 v16, v15

    .line 252
    iget-wide v14, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->seekBackIncrementMs:J

    iput-wide v14, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekBackIncrementMs:J

    .line 253
    iget-wide v14, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->seekForwardIncrementMs:J

    iput-wide v14, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekForwardIncrementMs:J

    .line 254
    iget-boolean v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    iput-boolean v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 255
    iget-object v15, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    iput-object v15, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    .line 256
    iget-object v14, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    iput-object v14, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    if-nez p2, :cond_1

    move-object v5, v1

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    .line 257
    :goto_1
    iput-object v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wrappingPlayer:Lcom/google/android/exoplr2avp/Player;

    .line 258
    new-instance v8, Lcom/google/android/exoplr2avp/util/ListenerSet;

    new-instance v11, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$GCv76M6WLfmjcG-MAhzWdxpFwJI;

    invoke-direct {v11, v1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$GCv76M6WLfmjcG-MAhzWdxpFwJI;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V

    invoke-direct {v8, v15, v14, v11}, Lcom/google/android/exoplr2avp/util/ListenerSet;-><init>(Landroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/util/ListenerSet$IterationFinishedEvent;)V

    iput-object v8, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    .line 263
    new-instance v8, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v8}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v8, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 264
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 265
    new-instance v8, Lcom/google/android/exoplr2avp/source/ShuffleOrder$DefaultShuffleOrder;

    invoke-direct {v8, v12}, Lcom/google/android/exoplr2avp/source/ShuffleOrder$DefaultShuffleOrder;-><init>(I)V

    iput-object v8, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    .line 266
    new-instance v8, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    array-length v11, v7

    new-array v11, v11, [Lcom/google/android/exoplr2avp/RendererConfiguration;

    array-length v12, v7

    new-array v12, v12, [Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    move-object/from16 v20, v6

    sget-object v6, Lcom/google/android/exoplr2avp/Tracks;->EMPTY:Lcom/google/android/exoplr2avp/Tracks;

    move-object/from16 v21, v9

    const/4 v9, 0x0

    invoke-direct {v8, v11, v12, v6, v9}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;-><init>([Lcom/google/android/exoplr2avp/RendererConfiguration;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;Lcom/google/android/exoplr2avp/Tracks;Ljava/lang/Object;)V

    iput-object v8, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    .line 272
    new-instance v6, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v6}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    iput-object v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 273
    new-instance v6, Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    invoke-direct {v6}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;-><init>()V

    const/16 v12, 0x15

    new-array v9, v12, [I

    const/4 v11, 0x1

    const/16 v18, 0x0

    aput v11, v9, v18

    const/4 v12, 0x2

    aput v12, v9, v11

    move-object/from16 v23, v2

    const/4 v2, 0x3

    aput v2, v9, v12

    const/16 v19, 0xd

    aput v19, v9, v2

    const/16 v22, 0xe

    const/4 v2, 0x4

    aput v22, v9, v2

    const/16 v24, 0xf

    const/4 v2, 0x5

    aput v24, v9, v2

    const/16 v25, 0x10

    const/4 v2, 0x6

    aput v25, v9, v2

    const/16 v26, 0x11

    const/4 v2, 0x7

    aput v26, v9, v2

    const/16 v27, 0x12

    const/16 v2, 0x8

    aput v27, v9, v2

    const/16 v28, 0x13

    const/16 v2, 0x9

    aput v28, v9, v2

    const/16 v29, 0x14

    const/16 v2, 0xa

    aput v29, v9, v2

    const/16 v30, 0xb

    const/16 v31, 0x1e

    aput v31, v9, v30

    const/16 v30, 0xc

    const/16 v31, 0x15

    aput v31, v9, v30

    const/16 v30, 0x16

    aput v30, v9, v19

    const/16 v19, 0x17

    aput v19, v9, v22

    const/16 v19, 0x18

    aput v19, v9, v24

    const/16 v19, 0x19

    aput v19, v9, v25

    const/16 v19, 0x1a

    aput v19, v9, v26

    const/16 v19, 0x1b

    aput v19, v9, v27

    const/16 v19, 0x1c

    aput v19, v9, v28

    const/16 v11, 0x1f

    aput v11, v9, v29

    .line 275
    invoke-virtual {v6, v9}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->addAll([I)Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    move-result-object v6

    const/16 v9, 0x1d

    .line 298
    invoke-virtual {v10}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v12

    .line 297
    invoke-virtual {v6, v9, v12}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->addIf(IZ)Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    move-result-object v6

    .line 299
    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->build()Lcom/google/android/exoplr2avp/Player$Commands;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->permanentAvailableCommands:Lcom/google/android/exoplr2avp/Player$Commands;

    .line 300
    new-instance v9, Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    invoke-direct {v9}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;-><init>()V

    .line 302
    invoke-virtual {v9, v6}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->addAll(Lcom/google/android/exoplr2avp/Player$Commands;)Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    move-result-object v6

    const/4 v9, 0x4

    .line 303
    invoke-virtual {v6, v9}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->add(I)Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    move-result-object v6

    .line 304
    invoke-virtual {v6, v2}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->add(I)Lcom/google/android/exoplr2avp/Player$Commands$Builder;

    move-result-object v6

    .line 305
    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/Player$Commands$Builder;->build()Lcom/google/android/exoplr2avp/Player$Commands;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplr2avp/Player$Commands;

    const/4 v12, 0x0

    .line 306
    invoke-interface {v14, v15, v12}, Lcom/google/android/exoplr2avp/util/Clock;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    .line 307
    new-instance v9, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$lBWTTHeDhuwsQc68oIw6rXjBEzY;

    invoke-direct {v9, v1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$lBWTTHeDhuwsQc68oIw6rXjBEzY;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V

    iput-object v9, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfoUpdateListener:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    .line 310
    invoke-static {v8}, Lcom/google/android/exoplr2avp/PlaybackInfo;->createDummy(Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v6

    iput-object v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 311
    invoke-interface {v4, v5, v15}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->setPlayer(Lcom/google/android/exoplr2avp/Player;Landroid/os/Looper;)V

    .line 313
    sget v5, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-ge v5, v11, :cond_2

    .line 314
    new-instance v5, Lcom/google/android/exoplr2avp/analytics/PlayerId;

    invoke-direct {v5}, Lcom/google/android/exoplr2avp/analytics/PlayerId;-><init>()V

    goto :goto_2

    .line 315
    :cond_2
    iget-boolean v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    invoke-static {v3, v1, v5}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$Api31;->registerMediaMetricsListener(Landroid/content/Context;Lcom/google/android/exoplr2avp/ExoPlayerImpl;Z)Lcom/google/android/exoplr2avp/analytics/PlayerId;

    move-result-object v5

    :goto_2
    move-object/from16 v22, v5

    .line 317
    new-instance v11, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 322
    invoke-interface {v5}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/google/android/exoplr2avp/LoadControl;

    iget v6, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->repeatMode:I

    iget-boolean v5, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleModeEnabled:Z

    iget-object v2, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    move-object/from16 v25, v15

    iget-object v15, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    move-object/from16 v27, v2

    move-object/from16 v26, v3

    iget-wide v2, v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->releaseTimeoutMs:J

    iget-boolean v0, v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move/from16 v28, v5

    move-object v5, v11

    move-object/from16 v32, v20

    move/from16 v20, v6

    move-object v6, v7

    move-object v7, v10

    move-object/from16 v29, v21

    move-object/from16 v21, v9

    move-object/from16 v9, v17

    move-object/from16 v33, v10

    move-object/from16 v10, v29

    move-object/from16 p2, v11

    const/4 v1, 0x1

    move/from16 v11, v20

    move-object/from16 v17, v12

    const/4 v1, 0x0

    move/from16 v12, v28

    move-object/from16 v34, v13

    move-object v13, v4

    move-object/from16 v20, v14

    move-object/from16 v28, v17

    move-object/from16 v14, v27

    move-object/from16 v35, v16

    move-wide/from16 v16, v2

    move/from16 v18, v0

    move-object/from16 v19, v25

    :try_start_1
    invoke-direct/range {v5 .. v22}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;-><init>([Lcom/google/android/exoplr2avp/Renderer;Lcom/google/android/exoplr2avp/trackselection/TrackSelector;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Lcom/google/android/exoplr2avp/LoadControl;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;IZLcom/google/android/exoplr2avp/analytics/AnalyticsCollector;Lcom/google/android/exoplr2avp/SeekParameters;Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;JZLandroid/os/Looper;Lcom/google/android/exoplr2avp/util/Clock;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v2, p0

    move-object/from16 v0, p2

    :try_start_2
    iput-object v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    const/high16 v3, 0x3f800000    # 1.0f

    .line 336
    iput v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->volume:F

    .line 337
    iput v1, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->repeatMode:I

    .line 338
    sget-object v3, Lcom/google/android/exoplr2avp/MediaMetadata;->EMPTY:Lcom/google/android/exoplr2avp/MediaMetadata;

    iput-object v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 339
    sget-object v3, Lcom/google/android/exoplr2avp/MediaMetadata;->EMPTY:Lcom/google/android/exoplr2avp/MediaMetadata;

    iput-object v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 340
    sget-object v3, Lcom/google/android/exoplr2avp/MediaMetadata;->EMPTY:Lcom/google/android/exoplr2avp/MediaMetadata;

    iput-object v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    const/4 v3, -0x1

    .line 341
    iput v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingWindowIndex:I

    .line 342
    sget v3, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/16 v5, 0x15

    if-ge v3, v5, :cond_3

    .line 343
    invoke-direct {v2, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    move-result v3

    iput v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioSessionId:I

    goto :goto_3

    .line 345
    :cond_3
    invoke-static/range {v26 .. v26}, Lcom/google/android/exoplr2avp/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioSessionId:I

    .line 347
    :goto_3
    sget-object v3, Lcom/google/android/exoplr2avp/text/CueGroup;->EMPTY:Lcom/google/android/exoplr2avp/text/CueGroup;

    iput-object v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplr2avp/text/CueGroup;

    const/4 v3, 0x1

    .line 348
    iput-boolean v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    .line 350
    invoke-virtual {v2, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    .line 351
    new-instance v3, Landroid/os/Handler;

    move-object/from16 v5, v25

    invoke-direct {v3, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v5, v29

    invoke-interface {v5, v3, v4}, Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;->addEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter$EventListener;)V

    move-object/from16 v3, v35

    .line 352
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addAudioOffloadListener(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;)V

    move-object/from16 v4, p1

    .line 353
    iget-wide v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-lez v9, :cond_4

    .line 354
    iget-wide v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    invoke-virtual {v0, v5, v6}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->experimentalSetForegroundModeTimeoutMs(J)V

    .line 357
    :cond_4
    new-instance v0, Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager;

    iget-object v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->context:Landroid/content/Context;

    move-object/from16 v6, v32

    invoke-direct {v0, v5, v6, v3}, Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager$EventListener;)V

    iput-object v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager;

    .line 359
    iget-boolean v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    invoke-virtual {v0, v5}, Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 360
    new-instance v0, Lcom/google/android/exoplr2avp/AudioFocusManager;

    iget-object v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v5, v6, v3}, Lcom/google/android/exoplr2avp/AudioFocusManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplr2avp/AudioFocusManager$PlayerControl;)V

    iput-object v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplr2avp/AudioFocusManager;

    .line 361
    iget-boolean v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->handleAudioFocus:Z

    if-eqz v5, :cond_5

    iget-object v14, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    goto :goto_4

    :cond_5
    move-object/from16 v14, v28

    :goto_4
    invoke-virtual {v0, v14}, Lcom/google/android/exoplr2avp/AudioFocusManager;->setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    .line 362
    new-instance v0, Lcom/google/android/exoplr2avp/StreamVolumeManager;

    iget-object v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v5, v6, v3}, Lcom/google/android/exoplr2avp/StreamVolumeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/exoplr2avp/StreamVolumeManager$Listener;)V

    iput-object v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    .line 364
    iget-object v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    iget v3, v3, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->usage:I

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->setStreamType(I)V

    .line 365
    new-instance v3, Lcom/google/android/exoplr2avp/WakeLockManager;

    iget-object v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/google/android/exoplr2avp/WakeLockManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplr2avp/WakeLockManager;

    .line 366
    iget v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->wakeMode:I

    if-eqz v5, :cond_6

    const/4 v12, 0x1

    goto :goto_5

    :cond_6
    const/4 v12, 0x0

    :goto_5
    invoke-virtual {v3, v12}, Lcom/google/android/exoplr2avp/WakeLockManager;->setEnabled(Z)V

    .line 367
    new-instance v3, Lcom/google/android/exoplr2avp/WifiLockManager;

    iget-object v5, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->context:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/google/android/exoplr2avp/WifiLockManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplr2avp/WifiLockManager;

    .line 368
    iget v4, v4, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->wakeMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    const/4 v12, 0x1

    goto :goto_6

    :cond_7
    const/4 v12, 0x0

    :goto_6
    invoke-virtual {v3, v12}, Lcom/google/android/exoplr2avp/WifiLockManager;->setEnabled(Z)V

    .line 369
    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createDeviceInfo(Lcom/google/android/exoplr2avp/StreamVolumeManager;)Lcom/google/android/exoplr2avp/DeviceInfo;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplr2avp/DeviceInfo;

    .line 370
    sget-object v0, Lcom/google/android/exoplr2avp/video/VideoSize;->UNKNOWN:Lcom/google/android/exoplr2avp/video/VideoSize;

    iput-object v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    .line 372
    iget-object v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    move-object/from16 v1, v33

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    .line 373
    iget v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 374
    iget v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioSessionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v2, v5, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 375
    iget-object v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    const/4 v1, 0x3

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 376
    iget v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoScalingMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {v2, v5, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 377
    iget v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    .line 378
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x5

    .line 377
    invoke-direct {v2, v5, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 379
    iget-boolean v0, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->skipSilenceEnabled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v3, 0x1

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    move-object/from16 v0, v34

    const/4 v1, 0x7

    .line 380
    invoke-direct {v2, v5, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    const/16 v1, 0x8

    const/4 v3, 0x6

    .line 382
    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 385
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/exoplr2avp/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v2, p0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v1

    :goto_7
    iget-object v1, v2, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->constructorFinished:Lcom/google/android/exoplr2avp/util/ConditionVariable;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ConditionVariable;->open()Z

    .line 386
    throw v0
.end method

.method static synthetic access$1002(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/Format;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFormat:Lcom/google/android/exoplr2avp/Format;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Z)Z
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->skipSilenceEnabled:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/text/CueGroup;)Lcom/google/android/exoplr2avp/text/CueGroup;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplr2avp/text/CueGroup;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/MediaMetadata;)Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->buildUpdatedMediaMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/MediaMetadata;)Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Ljava/lang/Object;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/google/android/exoplr2avp/ExoPlayerImpl;II)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic access$1900(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendVolumeToRenderers()V

    return-void
.end method

.method static synthetic access$2100(ZI)I
    .locals 0

    .line 104
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lcom/google/android/exoplr2avp/ExoPlayerImpl;ZII)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method static synthetic access$2300(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/StreamVolumeManager;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/google/android/exoplr2avp/StreamVolumeManager;)Lcom/google/android/exoplr2avp/DeviceInfo;
    .locals 0

    .line 104
    invoke-static {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createDeviceInfo(Lcom/google/android/exoplr2avp/StreamVolumeManager;)Lcom/google/android/exoplr2avp/DeviceInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/DeviceInfo;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplr2avp/DeviceInfo;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/DeviceInfo;)Lcom/google/android/exoplr2avp/DeviceInfo;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplr2avp/DeviceInfo;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updateWakeAndWifiLock()V

    return-void
.end method

.method static synthetic access$302(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)Lcom/google/android/exoplr2avp/decoder/DecoderCounters;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoDecoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    return-object p0
.end method

.method static synthetic access$502(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/Format;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoFormat:Lcom/google/android/exoplr2avp/Format;

    return-object p1
.end method

.method static synthetic access$602(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/video/VideoSize;)Lcom/google/android/exoplr2avp/video/VideoSize;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    return-object p1
.end method

.method static synthetic access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Ljava/lang/Object;
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$902(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)Lcom/google/android/exoplr2avp/decoder/DecoderCounters;
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioDecoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    return-object p1
.end method

.method private addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;",
            ">;"
        }
    .end annotation

    .line 2177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2178
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2179
    new-instance v2, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;

    .line 2180
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/source/MediaSource;

    iget-boolean v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->useLazyPreparation:Z

    invoke-direct {v2, v3, v4}, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V

    .line 2181
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2182
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    add-int v4, v1, p1

    new-instance v5, Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;

    iget-object v6, v2, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->uid:Ljava/lang/Object;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceHolder;->mediaSource:Lcom/google/android/exoplr2avp/source/MaskingMediaSource;

    .line 2183
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/MaskingMediaSource;->getTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;-><init>(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline;)V

    .line 2182
    invoke-interface {v3, v4, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2185
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    .line 2187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2186
    invoke-interface {p2, p1, v1}, Lcom/google/android/exoplr2avp/source/ShuffleOrder;->cloneAndInsert(II)Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    return-object v0
.end method

.method private buildUpdatedMediaMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 3

    .line 2420
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 2421
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2422
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    return-object v0

    .line 2424
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 2426
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaMetadata;->buildUpon()Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->populate(Lcom/google/android/exoplr2avp/MediaMetadata;)Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->build()Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method private static createDeviceInfo(Lcom/google/android/exoplr2avp/StreamVolumeManager;)Lcom/google/android/exoplr2avp/DeviceInfo;
    .locals 3

    .line 2663
    new-instance v0, Lcom/google/android/exoplr2avp/DeviceInfo;

    .line 2665
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->getMinVolume()I

    move-result v1

    .line 2666
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->getMaxVolume()I

    move-result p0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p0}, Lcom/google/android/exoplr2avp/DeviceInfo;-><init>(III)V

    return-object v0
.end method

.method private createMaskingTimeline()Lcom/google/android/exoplr2avp/Timeline;
    .locals 3

    .line 2227
    new-instance v0, Lcom/google/android/exoplr2avp/PlaylistTimeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/PlaylistTimeline;-><init>(Ljava/util/Collection;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    return-object v0
.end method

.method private createMediaSources(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 1734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1735
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1736
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceFactory:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/MediaItem;

    invoke-interface {v2, v3}, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 9

    .line 2402
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v0

    .line 2403
    new-instance v8, Lcom/google/android/exoplr2avp/PlayerMessage;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v4, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, v0

    .line 2407
    :goto_0
    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    .line 2409
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/PlayerMessage;-><init>(Lcom/google/android/exoplr2avp/PlayerMessage$Sender;Lcom/google/android/exoplr2avp/PlayerMessage$Target;Lcom/google/android/exoplr2avp/Timeline;ILcom/google/android/exoplr2avp/util/Clock;Landroid/os/Looper;)V

    return-object v8
.end method

.method private evaluateMediaItemTransitionReason(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/PlaybackInfo;ZIZ)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/PlaybackInfo;",
            "Lcom/google/android/exoplr2avp/PlaybackInfo;",
            "ZIZ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2068
    iget-object v0, p2, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 2069
    iget-object v1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 2070
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    const/4 v3, -0x1

    .line 2071
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    if-eqz v2, :cond_0

    .line 2070
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2071
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2072
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x1

    if-eq v2, v6, :cond_1

    .line 2073
    new-instance p1, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2076
    :cond_1
    iget-object v2, p2, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2077
    invoke-virtual {v0, v2, v6}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 2078
    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v2, v6}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2079
    iget-object v2, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2080
    invoke-virtual {v1, v2, v6}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 2081
    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v1, v2, v6}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2082
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    const/4 v7, 0x1

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    if-ne p4, v8, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :cond_3
    if-eqz p5, :cond_4

    .line 2096
    :goto_0
    new-instance p1, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2094
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_5
    if-eqz p3, :cond_6

    if-nez p4, :cond_6

    .line 2097
    iget-object p2, p2, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide p2, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object p1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide p4, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long p1, p2, p4

    if-gez p1, :cond_6

    .line 2101
    new-instance p1, Landroid/util/Pair;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 2103
    :cond_6
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v5, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private getCurrentPositionUsInternal(Lcom/google/android/exoplr2avp/PlaybackInfo;)J
    .locals 4

    .line 1723
    iget-object v0, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1724
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v0

    return-wide v0

    .line 1725
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1726
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    return-wide v0

    .line 1728
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getCurrentWindowIndexInternal()I
    .locals 3

    .line 1714
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1715
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingWindowIndex:I

    return v0

    .line 1717
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    return v0
.end method

.method private getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline;",
            "Lcom/google/android/exoplr2avp/Timeline;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2338
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    .line 2339
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v5, -0x1

    if-nez v2, :cond_3

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 2346
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v9

    .line 2348
    iget-object v7, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v8, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2350
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v10

    move-object v6, p1

    .line 2349
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 2351
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    iget-object v10, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 2352
    invoke-virtual {p2, v10}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v5, :cond_1

    return-object v0

    .line 2358
    :cond_1
    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v7, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget v8, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->repeatMode:I

    iget-boolean v9, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleModeEnabled:Z

    move-object v11, p1

    move-object v12, p2

    .line 2359
    invoke-static/range {v6 .. v12}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->resolveSubsequentPeriod(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IZLjava/lang/Object;Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2363
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2364
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget p1, p1, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget v0, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 2367
    invoke-virtual {p2, v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    .line 2364
    invoke-direct {p0, p2, p1, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 2370
    :cond_2
    invoke-direct {p0, p2, v5, v3, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 2340
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_5

    goto :goto_2

    .line 2343
    :cond_5
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v5

    :goto_2
    if-eqz p1, :cond_6

    move-wide v0, v3

    .line 2341
    :cond_6
    invoke-direct {p0, p2, v5, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private static getPlayWhenReadyChangeReason(ZI)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method private getPositionInfo(J)Lcom/google/android/exoplr2avp/Player$PositionInfo;
    .locals 12

    .line 2027
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    .line 2030
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2031
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2032
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2033
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v1

    .line 2034
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v3, v2, v4}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    .line 2035
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    move v5, v1

    move-object v1, v3

    move-object v3, v4

    move-object v4, v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    move-object v3, v1

    move-object v4, v3

    const/4 v5, -0x1

    .line 2037
    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v6

    .line 2038
    new-instance p1, Lcom/google/android/exoplr2avp/Player$PositionInfo;

    .line 2045
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2046
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplr2avp/PlaybackInfo;)J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    .line 2047
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v10, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v11, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object v0, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplr2avp/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplr2avp/MediaItem;Ljava/lang/Object;IJJII)V

    return-object p1
.end method

.method private getPreviousPositionInfo(ILcom/google/android/exoplr2avp/PlaybackInfo;I)Lcom/google/android/exoplr2avp/Player$PositionInfo;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1976
    new-instance v2, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v2}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 1977
    iget-object v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 1978
    iget-object v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v5, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 1979
    iget-object v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v3, v5, v2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1980
    iget v3, v2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 1981
    iget-object v6, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v6

    .line 1982
    iget-object v7, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v8, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v7, v3, v8}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v7

    iget-object v7, v7, Lcom/google/android/exoplr2avp/Timeline$Window;->uid:Ljava/lang/Object;

    .line 1983
    iget-object v8, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v8, v8, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    move v11, v3

    move-object v13, v5

    move v14, v6

    move-object v10, v7

    move-object v12, v8

    goto :goto_0

    :cond_0
    move/from16 v11, p3

    move-object v10, v5

    move-object v12, v10

    move-object v13, v12

    const/4 v14, -0x1

    :goto_0
    if-nez p1, :cond_3

    .line 1988
    iget-object v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1990
    iget-object v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v4, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v4, v4, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    .line 1991
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v2

    .line 1994
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplr2avp/PlaybackInfo;)J

    move-result-wide v4

    goto :goto_2

    .line 1995
    :cond_1
    iget-object v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->nextAdGroupIndex:I

    if-eq v3, v4, :cond_2

    .line 1998
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplr2avp/PlaybackInfo;)J

    move-result-wide v2

    goto :goto_1

    .line 2002
    :cond_2
    iget-wide v3, v2, Lcom/google/android/exoplr2avp/Timeline$Period;->positionInWindowUs:J

    iget-wide v5, v2, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    add-long v2, v3, v5

    goto :goto_1

    .line 2005
    :cond_3
    iget-object v3, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2006
    iget-wide v2, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    .line 2007
    invoke-static/range {p2 .. p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getRequestedContentPositionUs(Lcom/google/android/exoplr2avp/PlaybackInfo;)J

    move-result-wide v4

    goto :goto_2

    .line 2009
    :cond_4
    iget-wide v2, v2, Lcom/google/android/exoplr2avp/Timeline$Period;->positionInWindowUs:J

    iget-wide v4, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    add-long/2addr v2, v4

    :goto_1
    move-wide v4, v2

    .line 2012
    :goto_2
    new-instance v6, Lcom/google/android/exoplr2avp/Player$PositionInfo;

    .line 2018
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v15

    .line 2019
    invoke-static {v4, v5}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v17

    iget-object v2, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v2, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    move-object v9, v6

    move/from16 v19, v2

    move/from16 v20, v1

    invoke-direct/range {v9 .. v20}, Lcom/google/android/exoplr2avp/Player$PositionInfo;-><init>(Ljava/lang/Object;ILcom/google/android/exoplr2avp/MediaItem;Ljava/lang/Object;IJJII)V

    return-object v6
.end method

.method private static getRequestedContentPositionUs(Lcom/google/android/exoplr2avp/PlaybackInfo;)J
    .locals 7

    .line 2053
    new-instance v0, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    .line 2054
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 2055
    iget-object v2, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2056
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 2057
    iget-object p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget v1, v1, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    invoke-virtual {p0, v1, v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v0

    goto :goto_0

    .line 2058
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method

.method private handlePlaybackInfo(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 12

    .line 1742
    iget v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    iget v2, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->operationAcks:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1743
    iget-boolean v1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->positionDiscontinuity:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1744
    iget v1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->discontinuityReason:I

    iput v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingDiscontinuityReason:I

    .line 1745
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 1747
    :cond_0
    iget-boolean v1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->hasPlayWhenReadyChangeReason:Z

    if-eqz v1, :cond_1

    .line 1748
    iget v1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->playWhenReadyChangeReason:I

    iput v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    .line 1750
    :cond_1
    iget v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    if-nez v1, :cond_b

    .line 1751
    iget-object v1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 1752
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    .line 1755
    iput v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide/16 v5, 0x0

    .line 1756
    iput-wide v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 1757
    iput v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 1759
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1760
    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplr2avp/PlaylistTimeline;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/PlaylistTimeline;->getChildTimelines()Ljava/util/List;

    move-result-object v3

    .line 1761
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 v5, 0x0

    .line 1762
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1763
    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplr2avp/Timeline;

    invoke-static {v6, v7}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;->access$202(Lcom/google/android/exoplr2avp/ExoPlayerImpl$MediaSourceHolderSnapshot;Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/Timeline;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    .line 1768
    iget-boolean v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingDiscontinuity:Z

    if-eqz v3, :cond_a

    .line 1769
    iget-object v3, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v7, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v7, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1770
    invoke-virtual {v3, v7}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v7, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v10, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    cmp-long v3, v7, v10

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_2
    if-eqz v2, :cond_9

    .line 1775
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    .line 1777
    :cond_7
    iget-object v3, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v5, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v5, v5, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    invoke-direct {p0, v1, v3, v5, v6}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v5

    goto :goto_4

    .line 1776
    :cond_8
    :goto_3
    iget-object v1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v5, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    :cond_9
    :goto_4
    move-wide v7, v5

    move v5, v2

    goto :goto_5

    :cond_a
    move-wide v7, v5

    const/4 v5, 0x0

    .line 1783
    :goto_5
    iput-boolean v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingDiscontinuity:Z

    .line 1784
    iget-object v1, p1, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    const/4 v2, 0x1

    iget v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingPlayWhenReadyChangeReason:I

    const/4 v4, 0x0

    iget v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingDiscontinuityReason:I

    const/4 v9, -0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    :cond_b
    return-void
.end method

.method private initializeKeepSessionIdAudioTrack(I)I
    .locals 9

    .line 2627
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 2628
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2629
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 2630
    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2632
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_1

    const/16 v3, 0xfa0

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 2637
    new-instance v0, Landroid/media/AudioTrack;

    const/4 v2, 0x3

    const/4 v7, 0x0

    move-object v1, v0

    move v8, p1

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioTrack;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 2647
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result p1

    return p1
.end method

.method private static isPlaying(Lcom/google/android/exoplr2avp/PlaybackInfo;)Z
    .locals 2

    .line 2676
    iget v0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$maybeNotifySurfaceSizeChanged$27(IILcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 2529
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener;->onSurfaceSizeChanged(II)V

    return-void
.end method

.method static synthetic lambda$release$5(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 2

    .line 962
    new-instance v0, Lcom/google/android/exoplr2avp/ExoTimeoutException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    .line 963
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object v0

    .line 962
    invoke-interface {p0, v0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPlayerError(Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$setAudioAttributes$8(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1364
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onAudioAttributesChanged(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    return-void
.end method

.method static synthetic lambda$setAudioSessionId$9(ILcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1405
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onAudioSessionIdChanged(I)V

    return-void
.end method

.method static synthetic lambda$setRepeatMode$3(ILcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 758
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onRepeatModeChanged(I)V

    return-void
.end method

.method static synthetic lambda$setShuffleModeEnabled$4(ZLcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 778
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onShuffleModeEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setSkipSilenceEnabled$11(ZLcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1461
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setTrackSelectionParameters$6(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1164
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method static synthetic lambda$setVolume$10(FLcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1436
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onVolumeChanged(F)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$12(Lcom/google/android/exoplr2avp/PlaybackInfo;ILcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1860
    iget-object p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener;->onTimelineChanged(Lcom/google/android/exoplr2avp/Timeline;I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$13(ILcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1870
    invoke-interface {p3, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPositionDiscontinuity(I)V

    .line 1871
    invoke-interface {p3, p1, p2, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$14(Lcom/google/android/exoplr2avp/MediaItem;ILcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1879
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener;->onMediaItemTransition(Lcom/google/android/exoplr2avp/MediaItem;I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$15(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1884
    iget-object p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPlayerErrorChanged(Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$16(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1888
    iget-object p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPlayerError(Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$17(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1895
    iget-object p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object p0, p0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->tracks:Lcom/google/android/exoplr2avp/Tracks;

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onTracksChanged(Lcom/google/android/exoplr2avp/Tracks;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$18(Lcom/google/android/exoplr2avp/MediaMetadata;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1901
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$19(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 1

    .line 1907
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/Player$Listener;->onLoadingChanged(Z)V

    .line 1908
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onIsLoadingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$20(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 1

    .line 1915
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    iget p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    invoke-interface {p1, v0, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPlayerStateChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$21(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1921
    iget p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPlaybackStateChanged(I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$22(Lcom/google/android/exoplr2avp/PlaybackInfo;ILcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1927
    iget-boolean p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener;->onPlayWhenReadyChanged(ZI)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$23(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1935
    iget p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPlaybackSuppressionReasonChanged(I)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$24(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1941
    invoke-static {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlaying(Lcom/google/android/exoplr2avp/PlaybackInfo;)Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onIsPlayingChanged(Z)V

    return-void
.end method

.method static synthetic lambda$updatePlaybackInfo$25(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 1946
    iget-object p0, p0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method private maskTimelineAndPosition(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/PlaybackInfo;",
            "Lcom/google/android/exoplr2avp/Timeline;",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/android/exoplr2avp/PlaybackInfo;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 2232
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    move-object/from16 v3, p1

    .line 2233
    iget-object v5, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 2235
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithTimeline(Lcom/google/android/exoplr2avp/Timeline;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v6

    .line 2237
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2239
    invoke-static {}, Lcom/google/android/exoplr2avp/PlaybackInfo;->getDummyPeriodForEmptyTimeline()Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    move-result-object v1

    .line 2240
    iget-wide v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingWindowPositionMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    .line 2241
    sget-object v16, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    .line 2250
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v18

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v17, v2

    .line 2242
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v2

    .line 2251
    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v1

    .line 2252
    iget-wide v2, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    iput-wide v2, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    return-object v1

    .line 2256
    :cond_2
    iget-object v3, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2257
    invoke-static/range {p3 .. p3}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/Pair;

    iget-object v7, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v4

    if-eqz v7, :cond_3

    .line 2259
    new-instance v8, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v9, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-direct {v8, v9}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v8, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    :goto_2
    move-object v14, v8

    .line 2260
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 2261
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v8

    .line 2262
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 2263
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2264
    invoke-virtual {v5, v3, v2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v2

    sub-long/2addr v8, v2

    :cond_4
    if-nez v7, :cond_b

    cmp-long v2, v12, v8

    if-gez v2, :cond_5

    goto/16 :goto_5

    :cond_5
    if-nez v2, :cond_9

    .line 2284
    iget-object v2, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2285
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    .line 2286
    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2287
    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v2

    iget v2, v2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    iget-object v3, v14, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2288
    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    if-eq v2, v3, :cond_8

    .line 2291
    :cond_6
    iget-object v2, v14, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2293
    invoke-virtual {v14}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2294
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget v2, v14, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v3, v14, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v1

    goto :goto_3

    .line 2295
    :cond_7
    iget-object v1, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    .line 2296
    :goto_3
    iget-wide v8, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    iget-wide v10, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    iget-wide v12, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-wide v3, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    sub-long v3, v1, v3

    iget-object v5, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v15, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v7, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object/from16 v18, v7

    move-object v7, v14

    move-object v0, v14

    move-object/from16 v17, v15

    move-wide v14, v3

    move-object/from16 v16, v5

    .line 2297
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v3

    .line 2306
    invoke-virtual {v3, v0}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v6

    .line 2307
    iput-wide v1, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    :cond_8
    :goto_4
    move-object/from16 v0, p0

    goto/16 :goto_9

    :cond_9
    move-object v0, v14

    .line 2310
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const-wide/16 v1, 0x0

    .line 2312
    iget-wide v3, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    sub-long v7, v12, v8

    sub-long/2addr v3, v7

    .line 2313
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    .line 2316
    iget-wide v1, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    .line 2317
    iget-object v3, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v4, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    add-long v1, v12, v14

    .line 2320
    :cond_a
    iget-object v3, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    iget-object v4, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v5, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    move-object v7, v0

    move-wide v8, v12

    move-wide v10, v12

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    .line 2321
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v6

    .line 2330
    iput-wide v1, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    goto :goto_4

    :cond_b
    :goto_5
    move-object v0, v14

    .line 2268
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    xor-int/2addr v1, v4

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const-wide/16 v14, 0x0

    if-eqz v7, :cond_c

    .line 2277
    sget-object v1, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->EMPTY:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    goto :goto_6

    :cond_c
    iget-object v1, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    :goto_6
    move-object/from16 v16, v1

    move-object v1, v0

    move-object/from16 v0, p0

    if-eqz v7, :cond_d

    .line 2278
    iget-object v2, v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->emptyTrackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    goto :goto_7

    :cond_d
    iget-object v2, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    :goto_7
    move-object/from16 v17, v2

    if-eqz v7, :cond_e

    .line 2279
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    goto :goto_8

    :cond_e
    iget-object v2, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    :goto_8
    move-object/from16 v18, v2

    move-object v7, v1

    move-wide v8, v12

    move-wide v10, v12

    move-wide v2, v12

    .line 2271
    invoke-virtual/range {v6 .. v18}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithNewPosition(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;JJJJLcom/google/android/exoplr2avp/source/TrackGroupArray;Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;Ljava/util/List;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v4

    .line 2280
    invoke-virtual {v4, v1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v6

    .line 2281
    iput-wide v2, v6, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    :goto_9
    return-object v6
.end method

.method private maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;IJ)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline;",
            "IJ)",
            "Landroid/util/Pair<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2378
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2380
    iput p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingWindowIndex:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, p3, p1

    if-nez v0, :cond_0

    const-wide/16 p3, 0x0

    .line 2381
    :cond_0
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingWindowPositionMs:J

    const/4 p1, 0x0

    .line 2382
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingPeriodIndex:I

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 2385
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 2388
    :cond_2
    iget-boolean p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result p2

    .line 2389
    iget-object p3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide p3

    :cond_3
    move v3, p2

    .line 2391
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-static {p3, p4}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline$Window;Lcom/google/android/exoplr2avp/Timeline$Period;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private maybeNotifySurfaceSizeChanged(II)V
    .locals 3

    .line 2525
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHeight:I

    if-eq p2, v0, :cond_1

    .line 2526
    :cond_0
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceWidth:I

    .line 2527
    iput p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHeight:I

    .line 2528
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v1, 0x18

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$Ts0grAVISNBaCmZZboF75hDuBhE;

    invoke-direct {v2, p1, p2}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$Ts0grAVISNBaCmZZboF75hDuBhE;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_1
    return-void
.end method

.method private periodPositionUsToWindowPositionUs(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)J
    .locals 1

    .line 2396
    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 2397
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide p1

    add-long/2addr p3, p1

    return-wide p3
.end method

.method private removeMediaItemsInternal(II)Lcom/google/android/exoplr2avp/PlaybackInfo;
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    if-lt p2, p1, :cond_0

    .line 2192
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 2193
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt p2, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 2192
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 2194
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    .line 2195
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v3

    .line 2196
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 2197
    iget v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v5, v1

    iput v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2198
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    .line 2199
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v5

    .line 2200
    iget-object v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 2204
    invoke-direct {p0, v3, v5}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;

    move-result-object v3

    .line 2201
    invoke-direct {p0, v6, v5, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v3

    .line 2206
    iget v5, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v6, 0x4

    if-eq v5, v1, :cond_1

    iget v5, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v5, v6, :cond_1

    if-ge p1, p2, :cond_1

    if-ne p2, v4, :cond_1

    iget-object v4, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 2211
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v4

    if-lt v2, v4, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 2213
    invoke-virtual {v3, v6}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v3

    .line 2215
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->removeMediaSources(IILcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    return-object v3
.end method

.method private removeMediaSourceHolders(II)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, p1, :cond_0

    .line 2221
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2223
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/ShuffleOrder;->cloneAndRemove(II)Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    return-void
.end method

.method private removeSurfaceCallbacks()V
    .locals 3

    .line 2430
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2431
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    const/16 v2, 0x2710

    .line 2432
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/PlayerMessage;->setType(I)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    .line 2433
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    .line 2434
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->send()Lcom/google/android/exoplr2avp/PlayerMessage;

    .line 2435
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;->removeVideoSurfaceListener(Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 2436
    iput-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

    .line 2438
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 2439
    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    if-eq v0, v2, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v2, "SurfaceTextureListener already unset or replaced."

    .line 2440
    invoke-static {v0, v2}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2442
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 2444
    :goto_0
    iput-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 2446
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    .line 2447
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2448
    iput-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    :cond_3
    return-void
.end method

.method private sendRendererMessage(IILjava/lang/Object;)V
    .locals 5

    .line 2609
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 2610
    invoke-interface {v3}, Lcom/google/android/exoplr2avp/Renderer;->getTrackType()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 2611
    invoke-direct {p0, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/exoplr2avp/PlayerMessage;->setType(I)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/exoplr2avp/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/PlayerMessage;->send()Lcom/google/android/exoplr2avp/PlayerMessage;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendVolumeToRenderers()V
    .locals 3

    .line 2534
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->volume:F

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplr2avp/AudioFocusManager;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/AudioFocusManager;->getVolumeMultiplier()F

    move-result v1

    mul-float v0, v0, v1

    .line 2535
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method private setMediaSourcesInternal(Ljava/util/List;IJZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;IJZ)V"
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v0, p2

    .line 2121
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v1

    .line 2122
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v2

    .line 2123
    iget v4, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2124
    iget-object v4, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 2125
    iget-object v4, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 2126
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 2125
    invoke-direct {v10, v6, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeMediaSourceHolders(II)V

    :cond_0
    move-object/from16 v4, p1

    .line 2129
    invoke-direct {v10, v6, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object v12

    .line 2130
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v4

    .line 2131
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v7

    if-ge v0, v7, :cond_1

    goto :goto_0

    .line 2132
    :cond_1
    new-instance v1, Lcom/google/android/exoplr2avp/IllegalSeekPositionException;

    move-wide/from16 v7, p3

    invoke-direct {v1, v4, v0, v7, v8}, Lcom/google/android/exoplr2avp/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplr2avp/Timeline;IJ)V

    throw v1

    :cond_2
    :goto_0
    move-wide/from16 v7, p3

    const/4 v9, -0x1

    if-eqz p5, :cond_3

    .line 2136
    iget-boolean v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v4, v0}, Lcom/google/android/exoplr2avp/Timeline;->getFirstWindowIndex(Z)I

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move v13, v0

    goto :goto_1

    :cond_3
    if-ne v0, v9, :cond_4

    move v13, v1

    move-wide v1, v2

    goto :goto_1

    :cond_4
    move v13, v0

    move-wide v1, v7

    .line 2142
    :goto_1
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 2146
    invoke-direct {v10, v4, v13, v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;IJ)Landroid/util/Pair;

    move-result-object v3

    .line 2143
    invoke-direct {v10, v0, v4, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    .line 2148
    iget v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v13, v9, :cond_7

    .line 2149
    iget v7, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v7, v5, :cond_7

    .line 2151
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v3

    if-lt v13, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x2

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v3, 0x4

    .line 2158
    :cond_7
    :goto_3
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v3

    .line 2159
    iget-object v11, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    .line 2160
    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v14

    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    move-object/from16 v16, v0

    .line 2159
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setMediaSources(Ljava/util/List;IJLcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    .line 2161
    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v1, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 2162
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 2163
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 2171
    invoke-direct {v10, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplr2avp/PlaybackInfo;)J

    move-result-wide v8

    const/4 v11, -0x1

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move-wide v7, v8

    move v9, v11

    .line 2164
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method private setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 v0, 0x0

    .line 2512
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 2513
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 2514
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 2515
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2516
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2517
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 2518
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    .line 2520
    :cond_0
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method private setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 2453
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2454
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 2455
    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    return-void
.end method

.method private setVideoOutputInternal(Ljava/lang/Object;)V
    .locals 9

    .line 2461
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2462
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    .line 2463
    invoke-interface {v6}, Lcom/google/android/exoplr2avp/Renderer;->getTrackType()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 2465
    invoke-direct {p0, v6}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v6

    .line 2466
    invoke-virtual {v6, v5}, Lcom/google/android/exoplr2avp/PlayerMessage;->setType(I)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v5

    .line 2467
    invoke-virtual {v5, p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v5

    .line 2468
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/PlayerMessage;->send()Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v5

    .line 2464
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2472
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_3

    .line 2476
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/PlayerMessage;

    .line 2477
    iget-wide v6, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->detachSurfaceTimeoutMs:J

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplr2avp/PlayerMessage;->blockUntilDelivered(J)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_2

    .line 2480
    :catch_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    const/4 v5, 0x0

    .line 2484
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-ne v0, v1, :cond_4

    .line 2486
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v0, 0x0

    .line 2487
    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    .line 2490
    :cond_4
    :goto_3
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-eqz v5, :cond_5

    .line 2492
    new-instance p1, Lcom/google/android/exoplr2avp/ExoTimeoutException;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/ExoTimeoutException;-><init>(I)V

    const/16 v0, 0x3eb

    .line 2494
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    .line 2492
    invoke-direct {p0, v3, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->stopInternal(ZLcom/google/android/exoplr2avp/ExoPlaybackException;)V

    :cond_5
    return-void
.end method

.method private stopInternal(ZLcom/google/android/exoplr2avp/ExoPlaybackException;)V
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1685
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 1687
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 1686
    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeMediaItemsInternal(II)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    const/4 v1, 0x0

    .line 1688
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplr2avp/ExoPlaybackException;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    goto :goto_0

    .line 1690
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    .line 1691
    iget-wide v1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    iput-wide v1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    const-wide/16 v1, 0x0

    .line 1692
    iput-wide v1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    :goto_0
    const/4 v1, 0x1

    .line 1694
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    if-eqz p2, :cond_1

    .line 1696
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplr2avp/ExoPlaybackException;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object p1

    :cond_1
    move-object v3, p1

    .line 1698
    iget p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 1699
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->stop()V

    .line 1700
    iget-object p1, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 1701
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, 0x4

    .line 1709
    invoke-direct {p0, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplr2avp/PlaybackInfo;)J

    move-result-wide v9

    const/4 v11, -0x1

    move-object v2, p0

    .line 1702
    invoke-direct/range {v2 .. v11}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method private updateAvailableCommands()V
    .locals 3

    .line 2107
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplr2avp/Player$Commands;

    .line 2108
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wrappingPlayer:Lcom/google/android/exoplr2avp/Player;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->permanentAvailableCommands:Lcom/google/android/exoplr2avp/Player$Commands;

    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->getAvailableCommands(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/Player$Commands;)Lcom/google/android/exoplr2avp/Player$Commands;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplr2avp/Player$Commands;

    .line 2109
    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/Player$Commands;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2110
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v1, 0xd

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$DOCeOcVDAeJPjDlElRQEtAePKHY;

    invoke-direct {v2, p0}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$DOCeOcVDAeJPjDlElRQEtAePKHY;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method private updatePlayWhenReady(ZII)V
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v0, 0x1

    .line 2548
    :cond_1
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean p2, p2, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    if-ne p2, p1, :cond_2

    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget p2, p2, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    if-ne p2, v0, :cond_2

    return-void

    .line 2552
    :cond_2
    iget p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 2553
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 2554
    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlayWhenReady(ZI)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v2

    .line 2555
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setPlayWhenReady(ZI)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v1, p0

    move v4, p3

    .line 2556
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method private updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p6

    .line 1810
    iget-object v9, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 1812
    iput-object v7, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 1814
    iget-object v0, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 1820
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v10, 0x1

    xor-int/lit8 v5, v0, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v9

    move/from16 v3, p5

    move/from16 v4, p6

    .line 1815
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->evaluateMediaItemTransitionReason(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/PlaybackInfo;ZIZ)Landroid/util/Pair;

    move-result-object v0

    .line 1821
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1822
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1823
    iget-object v2, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 1826
    iget-object v4, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1827
    iget-object v3, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v4, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v5, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1828
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v3

    iget v3, v3, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    .line 1830
    iget-object v4, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v5, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    .line 1832
    :cond_0
    sget-object v4, Lcom/google/android/exoplr2avp/MediaMetadata;->EMPTY:Lcom/google/android/exoplr2avp/MediaMetadata;

    iput-object v4, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    :cond_1
    if-nez v1, :cond_2

    .line 1834
    iget-object v4, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v5, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 1835
    invoke-interface {v4, v5}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1836
    :cond_2
    iget-object v2, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 1838
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaMetadata;->buildUpon()Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    move-result-object v2

    iget-object v4, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 1839
    invoke-virtual {v2, v4}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->populateFromMetadata(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    move-result-object v2

    .line 1840
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->build()Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v2

    iput-object v2, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->staticAndDynamicMediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 1841
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->buildUpdatedMediaMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v2

    .line 1843
    :cond_3
    iget-object v4, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    invoke-virtual {v2, v4}, Lcom/google/android/exoplr2avp/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v10

    .line 1844
    iput-object v2, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 1845
    iget-boolean v2, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    iget-boolean v5, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    const/4 v11, 0x0

    if-eq v2, v5, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 1847
    :goto_0
    iget v5, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    iget v12, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    if-eq v5, v12, :cond_5

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_6

    if-eqz v2, :cond_7

    .line 1850
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updateWakeAndWifiLock()V

    .line 1852
    :cond_7
    iget-boolean v12, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    iget-boolean v13, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    if-eq v12, v13, :cond_8

    const/4 v12, 0x1

    goto :goto_2

    :cond_8
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_9

    .line 1854
    iget-boolean v13, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    invoke-direct {v6, v13}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePriorityTaskManagerForIsLoadingChange(Z)V

    .line 1857
    :cond_9
    iget-object v13, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v14, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v13, v14}, Lcom/google/android/exoplr2avp/Timeline;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    .line 1858
    iget-object v13, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    new-instance v14, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$8T9WiH37h0MBf5N1neA4hVM3OnM;

    move/from16 v15, p2

    invoke-direct {v14, v7, v15}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$8T9WiH37h0MBf5N1neA4hVM3OnM;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;I)V

    invoke-virtual {v13, v11, v14}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_a
    if-eqz p5, :cond_b

    move/from16 v11, p9

    .line 1864
    invoke-direct {v6, v8, v9, v11}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPreviousPositionInfo(ILcom/google/android/exoplr2avp/PlaybackInfo;I)Lcom/google/android/exoplr2avp/Player$PositionInfo;

    move-result-object v11

    move-wide/from16 v13, p7

    .line 1866
    invoke-direct {v6, v13, v14}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPositionInfo(J)Lcom/google/android/exoplr2avp/Player$PositionInfo;

    move-result-object v13

    .line 1867
    iget-object v14, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v15, 0xb

    new-instance v10, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$z4d2n7YLFiTpx9m3nQNsAD16v1k;

    invoke-direct {v10, v8, v11, v13}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$z4d2n7YLFiTpx9m3nQNsAD16v1k;-><init>(ILcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;)V

    invoke-virtual {v14, v15, v10}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_b
    if-eqz v1, :cond_c

    .line 1877
    iget-object v1, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    new-instance v8, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$g1X5iW5pygpj9KYzr98fTh2Tpow;

    invoke-direct {v8, v3, v0}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$g1X5iW5pygpj9KYzr98fTh2Tpow;-><init>(Lcom/google/android/exoplr2avp/MediaItem;I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0, v8}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 1881
    :cond_c
    iget-object v0, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    iget-object v1, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    if-eq v0, v1, :cond_d

    .line 1882
    iget-object v0, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$WAzZQX2FL8yG0LPcLbjiq0Uqo4I;

    invoke-direct {v1, v7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$WAzZQX2FL8yG0LPcLbjiq0Uqo4I;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 1885
    iget-object v0, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    if-eqz v0, :cond_d

    .line 1886
    iget-object v0, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$7aUxCdwU_XRPHbA3oSKXNQ55-s4;

    invoke-direct {v1, v7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$7aUxCdwU_XRPHbA3oSKXNQ55-s4;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 1891
    :cond_d
    iget-object v0, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v1, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    if-eq v0, v1, :cond_e

    .line 1892
    iget-object v0, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    iget-object v1, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->info:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->onSelectionActivated(Ljava/lang/Object;)V

    .line 1893
    iget-object v0, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/4 v1, 0x2

    new-instance v3, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$wid7wvQce9we5w9auK8KxRsRkhM;

    invoke-direct {v3, v7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$wid7wvQce9we5w9auK8KxRsRkhM;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_e
    if-eqz v4, :cond_f

    .line 1898
    iget-object v0, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 1899
    iget-object v1, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v3, 0xe

    new-instance v4, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vZjafwC-tS5HatgAojDuyP48QZA;

    invoke-direct {v4, v0}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vZjafwC-tS5HatgAojDuyP48QZA;-><init>(Lcom/google/android/exoplr2avp/MediaMetadata;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_f
    if-eqz v12, :cond_10

    .line 1904
    iget-object v0, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/4 v1, 0x3

    new-instance v3, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$c6oUSMMOc3FlqeaC64tVdUF6FVY;

    invoke-direct {v3, v7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$c6oUSMMOc3FlqeaC64tVdUF6FVY;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_10
    const/4 v0, -0x1

    if-nez v5, :cond_11

    if-eqz v2, :cond_12

    .line 1912
    :cond_11
    iget-object v1, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    new-instance v3, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$JiZu-0QLhByO1d59SFj2IaukyP0;

    invoke-direct {v3, v7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$JiZu-0QLhByO1d59SFj2IaukyP0;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    invoke-virtual {v1, v0, v3}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_12
    if-eqz v5, :cond_13

    .line 1919
    iget-object v1, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/4 v3, 0x4

    new-instance v4, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$WMSDYBtgAIMTD6_mRd-t1fGHGmw;

    invoke-direct {v4, v7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$WMSDYBtgAIMTD6_mRd-t1fGHGmw;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_13
    if-eqz v2, :cond_14

    .line 1924
    iget-object v1, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/4 v2, 0x5

    new-instance v3, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$i7maxhMQzopAOPkjo1x1C2BxHiA;

    move/from16 v4, p3

    invoke-direct {v3, v7, v4}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$i7maxhMQzopAOPkjo1x1C2BxHiA;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;I)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 1930
    :cond_14
    iget v1, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    iget v2, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    if-eq v1, v2, :cond_15

    .line 1932
    iget-object v1, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/4 v2, 0x6

    new-instance v3, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$sxS_E5Py2CuPTHBbCzdKfr0z1Vo;

    invoke-direct {v3, v7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$sxS_E5Py2CuPTHBbCzdKfr0z1Vo;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 1938
    :cond_15
    invoke-static {v9}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlaying(Lcom/google/android/exoplr2avp/PlaybackInfo;)Z

    move-result v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlaying(Lcom/google/android/exoplr2avp/PlaybackInfo;)Z

    move-result v2

    if-eq v1, v2, :cond_16

    .line 1939
    iget-object v1, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/4 v2, 0x7

    new-instance v3, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$CYy4vAdTU3togmSC7PIJ1MHXgLU;

    invoke-direct {v3, v7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$CYy4vAdTU3togmSC7PIJ1MHXgLU;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 1943
    :cond_16
    iget-object v1, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    iget-object v2, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 1944
    iget-object v1, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v2, 0xc

    new-instance v3, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$c9dv_hgxToBxCw_cviTAckxxXzo;

    invoke-direct {v3, v7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$c9dv_hgxToBxCw_cviTAckxxXzo;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_17
    if-eqz p4, :cond_18

    .line 1949
    iget-object v1, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    sget-object v2, Lcom/google/android/exoplr2avp/-$$Lambda$HhyFNoHvYN1GQhMTvYv8u8mBIcg;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$HhyFNoHvYN1GQhMTvYv8u8mBIcg;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 1951
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updateAvailableCommands()V

    .line 1952
    iget-object v0, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushEvents()V

    .line 1954
    iget-boolean v0, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    iget-boolean v1, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    if-eq v0, v1, :cond_19

    .line 1955
    iget-object v0, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;

    .line 1956
    iget-boolean v2, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->offloadSchedulingEnabled:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;->onExperimentalOffloadSchedulingEnabledChanged(Z)V

    goto :goto_3

    .line 1960
    :cond_19
    iget-boolean v0, v9, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    iget-boolean v1, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    if-eq v0, v1, :cond_1a

    .line 1961
    iget-object v0, v6, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;

    .line 1962
    iget-boolean v2, v7, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;->onExperimentalSleepingForOffloadChanged(Z)V

    goto :goto_4

    :cond_1a
    return-void
.end method

.method private updatePriorityTaskManagerForIsLoadingChange(Z)V
    .locals 3

    .line 2651
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2652
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-nez v2, :cond_0

    .line 2653
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;->add(I)V

    const/4 p1, 0x1

    .line 2654
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 2655
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz p1, :cond_1

    .line 2656
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;->remove(I)V

    .line 2657
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private updateWakeAndWifiLock()V
    .locals 5

    .line 2568
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 2583
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 2572
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->experimentalIsSleepingForOffload()Z

    move-result v0

    .line 2573
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplr2avp/WakeLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/WakeLockManager;->setStayAwake(Z)V

    .line 2575
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplr2avp/WifiLockManager;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/WifiLockManager;->setStayAwake(Z)V

    goto :goto_2

    .line 2579
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplr2avp/WakeLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/WakeLockManager;->setStayAwake(Z)V

    .line 2580
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplr2avp/WifiLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/WifiLockManager;->setStayAwake(Z)V

    :goto_2
    return-void
.end method

.method private verifyApplicationThread()V
    .locals 4

    .line 2590
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->constructorFinished:Lcom/google/android/exoplr2avp/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ConditionVariable;->blockUninterruptible()V

    .line 2591
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2598
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread"

    .line 2593
    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2599
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    if-nez v1, :cond_1

    .line 2602
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    :goto_0
    const-string v3, "ExoPlayerImpl"

    invoke-static {v3, v0, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2603
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->hasNotifiedFullWrongThreadWarning:Z

    goto :goto_1

    .line 2600
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 1473
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->addListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioOffloadListener(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addListener(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 1

    .line 1591
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1592
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 600
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 601
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 602
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(ILcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 0

    .line 613
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 614
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 0

    .line 607
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 608
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 625
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 626
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 627
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v1

    .line 628
    iget v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 629
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSourceHolders(ILjava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 630
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 631
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 635
    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;

    move-result-object v1

    .line 632
    invoke-direct {p0, v2, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v4

    .line 636
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->addMediaSources(ILjava/util/List;Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 637
    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public addMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 619
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 620
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 3

    .line 1422
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1423
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;-><init>(IF)V

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V

    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;)V
    .locals 1

    .line 1572
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1573
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->cameraMotionListener:Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;

    if-eq v0, p1, :cond_0

    return-void

    .line 1576
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    const/16 v0, 0x8

    .line 1577
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->setType(I)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x0

    .line 1578
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    .line 1579
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->send()Lcom/google/android/exoplr2avp/PlayerMessage;

    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V
    .locals 1

    .line 1550
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1551
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoFrameMetadataListener:Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;

    if-eq v0, p1, :cond_0

    return-void

    .line 1554
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x7

    .line 1555
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->setType(I)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    const/4 v0, 0x0

    .line 1556
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    .line 1557
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->send()Lcom/google/android/exoplr2avp/PlayerMessage;

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 1237
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1238
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeSurfaceCallbacks()V

    const/4 v0, 0x0

    .line 1239
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1240
    invoke-direct {p0, v0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1245
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 1246
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoOutput:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    .line 1247
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 1284
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 1286
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 0

    .line 1314
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1315
    :cond_0
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 1345
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    if-eqz p1, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    if-ne p1, v0, :cond_0

    .line 1347
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurface()V

    :cond_0
    return-void
.end method

.method public createMessage(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 0

    .line 991
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 992
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    return-object p1
.end method

.method public decreaseDeviceVolume()V
    .locals 1

    .line 1661
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1662
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->decreaseVolume()V

    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .locals 1

    .line 429
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 430
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->sleepingForOffload:Z

    return v0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .locals 1

    .line 423
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 424
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->experimentalSetOffloadSchedulingEnabled(Z)V

    return-void
.end method

.method public getAnalyticsCollector()Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;
    .locals 1

    .line 1466
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1467
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->applicationLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;
    .locals 1

    .line 1379
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1380
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    return-object v0
.end method

.method public getAudioComponent()Lcom/google/android/exoplr2avp/ExoPlayer$AudioComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 393
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;
    .locals 1

    .line 1534
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1535
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioDecoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 1520
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1521
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFormat:Lcom/google/android/exoplr2avp/Format;

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 1410
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1411
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioSessionId:I

    return v0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplr2avp/Player$Commands;
    .locals 1

    .line 465
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplr2avp/Player$Commands;

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1032
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1033
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1034
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v0

    goto :goto_0

    .line 1036
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 1038
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Lcom/google/android/exoplr2avp/util/Clock;
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .locals 6

    .line 1083
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1084
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 1087
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->windowSequenceNumber:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1089
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    .line 1092
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1093
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1094
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    .line 1095
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    .line 1096
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdGroupTimeUs(I)J

    move-result-wide v1

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 1098
    iget-wide v0, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    goto :goto_0

    :cond_2
    move-wide v0, v1

    .line 1101
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->loadingMediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1102
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->periodPositionUsToWindowPositionUs(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)J

    move-result-wide v0

    .line 1101
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 5

    .line 1067
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1068
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1069
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1070
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1074
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 1073
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    .line 1074
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDefaultPositionMs()J

    move-result-wide v0

    goto :goto_0

    .line 1075
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/PlaybackInfo;->requestedContentPositionUs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 1077
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1055
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1056
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1061
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1062
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getCurrentCues()Lcom/google/android/exoplr2avp/text/CueGroup;
    .locals 1

    .line 1584
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1585
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplr2avp/text/CueGroup;

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 2

    .line 1007
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1008
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentWindowIndexInternal()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 2

    .line 997
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 998
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 999
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskingPeriodIndex:I

    return v0

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->getIndexOfPeriod(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1026
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1027
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplr2avp/PlaybackInfo;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    .line 1194
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1195
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .locals 1

    .line 1132
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1133
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackGroups:Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;
    .locals 2

    .line 1138
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1139
    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->selections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;-><init>([Lcom/google/android/exoplr2avp/trackselection/TrackSelection;)V

    return-object v0
.end method

.method public getCurrentTracks()Lcom/google/android/exoplr2avp/Tracks;
    .locals 1

    .line 1144
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1145
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->trackSelectorResult:Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectorResult;->tracks:Lcom/google/android/exoplr2avp/Tracks;

    return-object v0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplr2avp/ExoPlayer$DeviceComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 417
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    return-object p0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplr2avp/DeviceInfo;
    .locals 1

    .line 1631
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1632
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->deviceInfo:Lcom/google/android/exoplr2avp/DeviceInfo;

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 1637
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1638
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->getVolume()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 4

    .line 1014
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1015
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1017
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodByUid(Ljava/lang/Object;Lcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1018
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->period:Lcom/google/android/exoplr2avp/Timeline$Period;

    iget v2, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v0, v0, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v1, v2, v0}, Lcom/google/android/exoplr2avp/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 1019
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 1021
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 853
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 1

    .line 1169
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1170
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    return-object v0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .locals 1

    .line 732
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 733
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 747
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 748
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playWhenReady:Z

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 882
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 883
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 471
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 477
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackSuppressionReason:I

    return v0
.end method

.method public getPlayerError()Lcom/google/android/exoplr2avp/ExoPlaybackException;
    .locals 1

    .line 484
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackError:Lcom/google/android/exoplr2avp/ExoPlaybackException;

    return-object v0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplr2avp/PlaybackException;
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayerError()Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 1

    .line 1175
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1176
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    return-object v0
.end method

.method public getRenderer(I)Lcom/google/android/exoplr2avp/Renderer;
    .locals 1

    .line 1120
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1121
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getRendererCount()I
    .locals 1

    .line 1108
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1109
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    array-length v0, v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 1114
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1115
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->renderers:[Lcom/google/android/exoplr2avp/Renderer;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Renderer;->getTrackType()I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 766
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 767
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->repeatMode:I

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 841
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 842
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekBackIncrementMs:J

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 847
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 848
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekForwardIncrementMs:J

    return-wide v0
.end method

.method public getSeekParameters()Lcom/google/android/exoplr2avp/SeekParameters;
    .locals 1

    .line 900
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 901
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 786
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 787
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleModeEnabled:Z

    return v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    .line 1447
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1448
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->skipSilenceEnabled:Z

    return v0
.end method

.method public getTextComponent()Lcom/google/android/exoplr2avp/ExoPlayer$TextComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 409
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1043
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1044
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->usToMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;
    .locals 1

    .line 1150
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1151
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplr2avp/trackselection/TrackSelector;
    .locals 1

    .line 1126
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1127
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    return-object v0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .locals 1

    .line 1225
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1226
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    return v0
.end method

.method public getVideoComponent()Lcom/google/android/exoplr2avp/ExoPlayer$VideoComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;
    .locals 1

    .line 1527
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1528
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoDecoderCounters:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 1513
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1514
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoFormat:Lcom/google/android/exoplr2avp/Format;

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 1207
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1208
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoScalingMode:I

    return v0
.end method

.method public getVideoSize()Lcom/google/android/exoplr2avp/video/VideoSize;
    .locals 1

    .line 1231
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1232
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoSize:Lcom/google/android/exoplr2avp/video/VideoSize;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 1441
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1442
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->volume:F

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 1

    .line 1655
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1656
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->increaseVolume()V

    return-void
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 1643
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1644
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->isMuted()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 792
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 793
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->isLoading:Z

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1049
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1050
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$new$0$ExoPlayerImpl(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/util/FlagSet;)V
    .locals 2

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wrappingPlayer:Lcom/google/android/exoplr2avp/Player;

    new-instance v1, Lcom/google/android/exoplr2avp/Player$Events;

    invoke-direct {v1, p2}, Lcom/google/android/exoplr2avp/Player$Events;-><init>(Lcom/google/android/exoplr2avp/util/FlagSet;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/Player$Listener;->onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/Player$Events;)V

    return-void
.end method

.method public synthetic lambda$new$1$ExoPlayerImpl(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 0

    .line 309
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->handlePlaybackInfo(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void
.end method

.method public synthetic lambda$new$2$ExoPlayerImpl(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)V
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vv8pRGMvayhUCyPLXM5ZQVlm1jo;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$vv8pRGMvayhUCyPLXM5ZQVlm1jo;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$setPlaylistMetadata$7$ExoPlayerImpl(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/Player$Listener;->onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic lambda$updateAvailableCommands$26$ExoPlayerImpl(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 1

    .line 2112
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->availableCommands:Lcom/google/android/exoplr2avp/Player$Commands;

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/Player$Listener;->onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/Player$Commands;)V

    return-void
.end method

.method public moveMediaItems(III)V
    .locals 11

    .line 668
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v3, 0x1

    if-ltz p1, :cond_0

    if-gt p1, p2, :cond_0

    .line 669
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    .line 672
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gt p2, v4, :cond_0

    if-ltz p3, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 669
    :goto_0
    invoke-static {v4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 674
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v4

    .line 675
    iget v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 676
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    sub-int v5, p2, p1

    sub-int/2addr v3, v5

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 677
    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-static {v3, p1, p2, v2}, Lcom/google/android/exoplr2avp/util/Util;->moveItems(Ljava/util/List;III)V

    .line 678
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v3

    .line 679
    iget-object v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 683
    invoke-direct {p0, v4, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPeriodPositionUsAfterTimelineChanged(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/android/exoplr2avp/Timeline;)Landroid/util/Pair;

    move-result-object v4

    .line 680
    invoke-direct {p0, v5, v3, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v3

    .line 684
    iget-object v4, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    invoke-virtual {v4, p1, p2, v2, v5}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->moveMediaSources(IIILcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v8

    move v9, v10

    .line 685
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public prepare()V
    .locals 13

    .line 497
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 498
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    .line 500
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplr2avp/AudioFocusManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplr2avp/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v1

    .line 502
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v3

    .line 501
    invoke-direct {p0, v0, v1, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackError(Lcom/google/android/exoplr2avp/ExoPlaybackException;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    .line 509
    iget-object v3, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x4

    .line 508
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v4

    .line 514
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->prepare()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 516
    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 530
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 531
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V

    .line 532
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplr2avp/source/MediaSource;ZZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 538
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 539
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V

    .line 540
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public release()V
    .locals 6

    .line 936
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.18.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/android/exoplr2avp/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-static {}, Lcom/google/android/exoplr2avp/ExoPlayerLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 936
    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 948
    sget v0, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 949
    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    .line 950
    iput-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->keepSessionIdAudioTrack:Landroid/media/AudioTrack;

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager;->setEnabled(Z)V

    .line 953
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->release()V

    .line 954
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplr2avp/WakeLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/WakeLockManager;->setStayAwake(Z)V

    .line 955
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplr2avp/WifiLockManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/WifiLockManager;->setStayAwake(Z)V

    .line 956
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplr2avp/AudioFocusManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/AudioFocusManager;->release()V

    .line 957
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->release()Z

    move-result v0

    if-nez v0, :cond_1

    .line 959
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v3, 0xa

    sget-object v4, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$b4IviC1thJgyZeoq0P2Hvo5tp1A;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$b4IviC1thJgyZeoq0P2Hvo5tp1A;

    invoke-virtual {v0, v3, v4}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 967
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ListenerSet;->release()V

    .line 968
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfoUpdateHandler:Lcom/google/android/exoplr2avp/util/HandlerWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/util/HandlerWrapper;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 969
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->bandwidthMeter:Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    invoke-interface {v0, v3}, Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;->removeEventListener(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter$EventListener;)V

    .line 970
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 971
    iget-object v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithLoadingMediaPeriodId(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 972
    iget-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->positionUs:J

    iput-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->bufferedPositionUs:J

    .line 973
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    const-wide/16 v4, 0x0

    iput-wide v4, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->totalBufferedDurationUs:J

    .line 974
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->release()V

    .line 975
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->release()V

    .line 976
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    if-eqz v0, :cond_2

    .line 978
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 979
    iput-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->ownedSurface:Landroid/view/Surface;

    .line 981
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    if-eqz v0, :cond_3

    .line 982
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;->remove(I)V

    .line 983
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 985
    :cond_3
    sget-object v0, Lcom/google/android/exoplr2avp/text/CueGroup;->EMPTY:Lcom/google/android/exoplr2avp/text/CueGroup;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplr2avp/text/CueGroup;

    .line 986
    iput-boolean v3, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playerReleased:Z

    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 1480
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->removeListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method

.method public removeAudioOffloadListener(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioOffloadListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 1

    .line 1598
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1599
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 10

    .line 650
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->mediaSourceHolderSnapshots:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 652
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeMediaItemsInternal(II)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v1

    .line 653
    iget-object p1, v1, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/PlaybackInfo;->periodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->periodUid:Ljava/lang/Object;

    .line 654
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 v5, p1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x4

    .line 662
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplr2avp/PlaybackInfo;)J

    move-result-wide v7

    const/4 v9, -0x1

    move-object v0, p0

    .line 655
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public retry()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 492
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 13

    move-object v10, p0

    move v0, p1

    move-wide v1, p2

    .line 798
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 799
    iget-object v3, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->analyticsCollector:Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->notifySeekStarted()V

    .line 800
    iget-object v3, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/PlaybackInfo;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    if-ltz v0, :cond_3

    .line 802
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 805
    :cond_0
    iget v4, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 806
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlayingAd()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "seekTo ignored because an ad is playing"

    .line 810
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;

    iget-object v1, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;-><init>(Lcom/google/android/exoplr2avp/PlaybackInfo;)V

    .line 813
    invoke-virtual {v0, v5}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;->incrementPendingOperationAcks(I)V

    .line 814
    iget-object v1, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfoUpdateListener:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;

    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdateListener;->onPlaybackInfoUpdate(Lcom/google/android/exoplr2avp/ExoPlayerImplInternal$PlaybackInfoUpdate;)V

    return-void

    .line 819
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlaybackState()I

    move-result v4

    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x2

    .line 820
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v9

    .line 821
    iget-object v4, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackState(I)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v4

    .line 826
    invoke-direct {p0, v3, p1, v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;IJ)Landroid/util/Pair;

    move-result-object v5

    .line 823
    invoke-direct {p0, v4, v3, v5}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v4

    .line 827
    iget-object v5, v10, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-static/range {p2 .. p3}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v1

    invoke-virtual {v5, v3, p1, v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->seekTo(Lcom/google/android/exoplr2avp/Timeline;IJ)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    .line 835
    invoke-direct {p0, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPositionUsInternal(Lcom/google/android/exoplr2avp/PlaybackInfo;)J

    move-result-wide v11

    move-object v0, p0

    move-object v1, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move-wide v7, v11

    .line 828
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void

    .line 803
    :cond_3
    new-instance v4, Lcom/google/android/exoplr2avp/IllegalSeekPositionException;

    invoke-direct {v4, v3, p1, v1, v2}, Lcom/google/android/exoplr2avp/IllegalSeekPositionException;-><init>(Lcom/google/android/exoplr2avp/Timeline;IJ)V

    throw v4
.end method

.method public setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Z)V
    .locals 3

    .line 1353
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1354
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playerReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 1357
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1358
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 1359
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1360
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->usage:I

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->setStreamType(I)V

    .line 1362
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v1, 0x14

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$3ucFmrI30a6QxdVke_ig3Th6zrY;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$3ucFmrI30a6QxdVke_ig3Th6zrY;-><init>(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 1367
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplr2avp/AudioFocusManager;

    if-eqz p2, :cond_2

    move-object p2, p1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/AudioFocusManager;->setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    .line 1368
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    .line 1369
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result p1

    .line 1371
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplr2avp/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/google/android/exoplr2avp/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result p2

    .line 1373
    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v0

    .line 1372
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    .line 1374
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 4

    .line 1385
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1386
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioSessionId:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x15

    if-nez p1, :cond_2

    .line 1390
    sget p1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1391
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    move-result p1

    goto :goto_0

    .line 1393
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->applicationContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->generateAudioSessionIdV21(Landroid/content/Context;)I

    move-result p1

    goto :goto_0

    .line 1395
    :cond_2
    sget v1, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-ge v1, v0, :cond_3

    .line 1398
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->initializeKeepSessionIdAudioTrack(I)I

    .line 1400
    :cond_3
    :goto_0
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioSessionId:I

    const/4 v1, 0x1

    .line 1401
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    const/4 v1, 0x2

    .line 1402
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v1, v3, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1404
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$on1tPHupDnESBLmAhDgMX_7OPZo;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$on1tPHupDnESBLmAhDgMX_7OPZo;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V
    .locals 2

    .line 1416
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    const/4 v1, 0x6

    .line 1417
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setCameraMotionListener(Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;)V
    .locals 2

    .line 1562
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1563
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->cameraMotionListener:Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;

    .line 1564
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    const/16 v1, 0x8

    .line 1565
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/PlayerMessage;->setType(I)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    .line 1566
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    .line 1567
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->send()Lcom/google/android/exoplr2avp/PlayerMessage;

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 1

    .line 1667
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1668
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->setMuted(Z)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 1

    .line 1649
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1650
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->streamVolumeManager:Lcom/google/android/exoplr2avp/StreamVolumeManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/StreamVolumeManager;->setVolume(I)V

    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 2

    .line 906
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 907
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->foregroundMode:Z

    if-eq v0, p1, :cond_0

    .line 908
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->foregroundMode:Z

    .line 909
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setForegroundMode(Z)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 911
    new-instance v0, Lcom/google/android/exoplr2avp/ExoTimeoutException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/ExoTimeoutException;-><init>(I)V

    const/16 v1, 0x3eb

    .line 913
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;I)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object v0

    .line 911
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->stopInternal(ZLcom/google/android/exoplr2avp/ExoPlaybackException;)V

    :cond_0
    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 1

    .line 1485
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1486
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playerReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 1489
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioBecomingNoisyManager:Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager;->setEnabled(Z)V

    return-void
.end method

.method public setHandleWakeLock(Z)V
    .locals 0

    .line 1604
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1605
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setWakeMode(I)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 551
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 552
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 545
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 546
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMediaSources(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 0

    .line 557
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 558
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;J)V
    .locals 1

    .line 563
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 565
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 564
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V
    .locals 0

    .line 570
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 571
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 576
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x1

    .line 577
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 593
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    .line 594
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 582
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 583
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSourcesInternal(Ljava/util/List;IJZ)V

    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .locals 1

    .line 722
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 723
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 726
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pauseAtEndOfMediaItems:Z

    .line 727
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setPauseAtEndOfWindow(Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 2

    .line 738
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplr2avp/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlaybackState()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplr2avp/AudioFocusManager;->updateAudioFocus(ZI)I

    move-result v0

    .line 742
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReadyChangeReason(ZI)I

    move-result v1

    .line 741
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlayWhenReady(ZII)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 11

    .line 859
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 861
    sget-object p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplr2avp/PlaybackParameters;

    .line 863
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/PlaybackInfo;->playbackParameters:Lcom/google/android/exoplr2avp/PlaybackParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/PlaybackInfo;->copyWithPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v2

    .line 867
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 868
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, -0x1

    move-object v1, p0

    .line 869
    invoke-direct/range {v1 .. v10}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 2

    .line 1181
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1182
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1186
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playlistMetadata:Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 1187
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v0, 0xf

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$pu3e3FZ03ZWLkxcEByoPmtNBWIw;

    invoke-direct {v1, p0}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$pu3e3FZ03ZWLkxcEByoPmtNBWIw;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplr2avp/util/PriorityTaskManager;)V
    .locals 2

    .line 1494
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1495
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1498
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1499
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;->remove(I)V

    :cond_1
    if-eqz p1, :cond_2

    .line 1501
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1502
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;->add(I)V

    const/4 v0, 0x1

    .line 1503
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    goto :goto_0

    .line 1505
    :cond_2
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPriorityTaskManagerRegistered:Z

    .line 1507
    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 3

    .line 753
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 754
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_0

    .line 755
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->repeatMode:I

    .line 756
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setRepeatMode(I)V

    .line 757
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v1, 0x8

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$23ylB5d69djhqT0T0B2yEaLB90k;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$23ylB5d69djhqT0T0B2yEaLB90k;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 759
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updateAvailableCommands()V

    .line 760
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)V
    .locals 1

    .line 888
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 890
    sget-object p1, Lcom/google/android/exoplr2avp/SeekParameters;->DEFAULT:Lcom/google/android/exoplr2avp/SeekParameters;

    .line 892
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/SeekParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 893
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    .line 894
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)V

    :cond_1
    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 3

    .line 772
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 773
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 774
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 775
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setShuffleModeEnabled(Z)V

    .line 776
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v1, 0x9

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$slPEJoGogHT_1KmOTvR3tbqMMeo;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$slPEJoGogHT_1KmOTvR3tbqMMeo;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 779
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updateAvailableCommands()V

    .line 780
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushEvents()V

    :cond_0
    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 13

    .line 698
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 699
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMaskingTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 700
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->playbackInfo:Lcom/google/android/exoplr2avp/PlaybackInfo;

    .line 705
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v3

    .line 704
    invoke-direct {p0, v0, v2, v3, v4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskWindowPositionMsOrGetPeriodPositionUs(Lcom/google/android/exoplr2avp/Timeline;IJ)Landroid/util/Pair;

    move-result-object v2

    .line 701
    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maskTimelineAndPosition(Lcom/google/android/exoplr2avp/PlaybackInfo;Lcom/google/android/exoplr2avp/Timeline;Landroid/util/Pair;)Lcom/google/android/exoplr2avp/PlaybackInfo;

    move-result-object v4

    .line 706
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->pendingOperationAcks:I

    .line 707
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->shuffleOrder:Lcom/google/android/exoplr2avp/source/ShuffleOrder;

    .line 708
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->internalPlayer:Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImplInternal;->setShuffleOrder(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x5

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v12, -0x1

    move-object v3, p0

    .line 709
    invoke-direct/range {v3 .. v12}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->updatePlaybackInfo(Lcom/google/android/exoplr2avp/PlaybackInfo;IIZZIJI)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 3

    .line 1453
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1454
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->skipSilenceEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1457
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->skipSilenceEnabled:Z

    const/4 v0, 0x1

    const/16 v1, 0x9

    .line 1458
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    .line 1459
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v1, 0x17

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$1ltVyyhkmwy4gjqnysLI2DRn9Bs;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$1ltVyyhkmwy4gjqnysLI2DRn9Bs;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method setThrowsWhenUsingWrongThread(Z)V
    .locals 0

    .line 1672
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->throwsWhenUsingWrongThread:Z

    return-void
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 3

    .line 1156
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1157
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->isSetParametersSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    .line 1158
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->getParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1161
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->trackSelector:Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelector;->setParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    .line 1162
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v1, 0x13

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$jiUsCCgfwnMVRvDOBJe6SQAE-Aw;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$jiUsCCgfwnMVRvDOBJe6SQAE-Aw;-><init>(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .locals 2

    .line 1214
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1215
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1218
    :cond_0
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoChangeFrameRateStrategy:I

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 1220
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1219
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V
    .locals 2

    .line 1540
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1541
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoFrameMetadataListener:Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;

    .line 1542
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    const/4 v1, 0x7

    .line 1543
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/PlayerMessage;->setType(I)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    .line 1544
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    .line 1545
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlayerMessage;->send()Lcom/google/android/exoplr2avp/PlayerMessage;

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 2

    .line 1200
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1201
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->videoScalingMode:I

    .line 1202
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendRendererMessage(IILjava/lang/Object;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 0

    .line 1253
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1254
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1255
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 1257
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1262
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 1264
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_0

    .line 1266
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeSurfaceCallbacks()V

    const/4 v0, 0x1

    .line 1267
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolderSurfaceIsVideoOutput:Z

    .line 1268
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->surfaceHolder:Landroid/view/SurfaceHolder;

    .line 1269
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 1270
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1271
    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1272
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1273
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 1274
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1276
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1277
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    :goto_0
    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 2

    .line 1292
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 1293
    instance-of v0, p1, Lcom/google/android/exoplr2avp/video/VideoDecoderOutputBufferRenderer;

    if-eqz v0, :cond_0

    .line 1294
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1295
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1296
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    .line 1297
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

    if-eqz v0, :cond_1

    .line 1298
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1299
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

    .line 1300
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->frameMetadataListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$FrameMetadataListener;

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessageInternal(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    const/16 v1, 0x2710

    .line 1301
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/PlayerMessage;->setType(I)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

    .line 1302
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object v0

    .line 1303
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/PlayerMessage;->send()Lcom/google/android/exoplr2avp/PlayerMessage;

    .line 1304
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;->addVideoSurfaceListener(Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;)V

    .line 1305
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sphericalGLSurfaceView:Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView;->getVideoSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    .line 1306
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setNonVideoOutputSurfaceHolderInternal(Landroid/view/SurfaceHolder;)V

    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    .line 1308
    :cond_2
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    :goto_1
    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 2

    .line 1320
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    if-nez p1, :cond_0

    .line 1322
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurface()V

    goto :goto_1

    .line 1324
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeSurfaceCallbacks()V

    .line 1325
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->textureView:Landroid/view/TextureView;

    .line 1326
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "ExoPlayerImpl"

    const-string v1, "Replacing existing SurfaceTextureListener."

    .line 1327
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->componentListener:Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 1332
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_3

    .line 1334
    invoke-direct {p0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoOutputInternal(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1335
    invoke-direct {p0, p1, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    goto :goto_1

    .line 1337
    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setSurfaceTextureInternal(Landroid/graphics/SurfaceTexture;)V

    .line 1338
    invoke-virtual {p1}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/TextureView;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->maybeNotifySurfaceSizeChanged(II)V

    :goto_1
    return-void
.end method

.method public setVolume(F)V
    .locals 3

    .line 1428
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1429
    invoke-static {p1, v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(FFF)F

    move-result p1

    .line 1430
    iget v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->volume:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 1433
    :cond_0
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->volume:F

    .line 1434
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->sendVolumeToRenderers()V

    .line 1436
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->listeners:Lcom/google/android/exoplr2avp/util/ListenerSet;

    const/16 v1, 0x16

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ysSN-JCaOVAFNwNHz6ZBAtOvIrQ;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ysSN-JCaOVAFNwNHz6ZBAtOvIrQ;-><init>(F)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public setWakeMode(I)V
    .locals 2

    .line 1610
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1621
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplr2avp/WakeLockManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/WakeLockManager;->setEnabled(Z)V

    .line 1622
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplr2avp/WifiLockManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/WifiLockManager;->setEnabled(Z)V

    goto :goto_0

    .line 1617
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplr2avp/WakeLockManager;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/WakeLockManager;->setEnabled(Z)V

    .line 1618
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplr2avp/WifiLockManager;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/WifiLockManager;->setEnabled(Z)V

    goto :goto_0

    .line 1613
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wakeLockManager:Lcom/google/android/exoplr2avp/WakeLockManager;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/WakeLockManager;->setEnabled(Z)V

    .line 1614
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->wifiLockManager:Lcom/google/android/exoplr2avp/WifiLockManager;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/WifiLockManager;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 922
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    const/4 v0, 0x0

    .line 923
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->stop(Z)V

    return-void
.end method

.method public stop(Z)V
    .locals 3

    .line 928
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->verifyApplicationThread()V

    .line 929
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->audioFocusManager:Lcom/google/android/exoplr2avp/AudioFocusManager;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/AudioFocusManager;->updateAudioFocus(ZI)I

    const/4 v0, 0x0

    .line 930
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->stopInternal(ZLcom/google/android/exoplr2avp/ExoPlaybackException;)V

    .line 931
    sget-object p1, Lcom/google/android/exoplr2avp/text/CueGroup;->EMPTY:Lcom/google/android/exoplr2avp/text/CueGroup;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->currentCueGroup:Lcom/google/android/exoplr2avp/text/CueGroup;

    return-void
.end method
