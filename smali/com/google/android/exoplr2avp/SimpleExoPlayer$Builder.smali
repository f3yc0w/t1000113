.class public final Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
.super Ljava/lang/Object;
.source "SimpleExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/SimpleExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    new-instance v1, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p1, p3}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/trackselection/TrackSelector;Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/LoadControl;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v8, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/trackselection/TrackSelector;Lcom/google/android/exoplr2avp/LoadControl;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)V

    move-object v0, p0

    iput-object v8, v0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    new-instance v1, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    invoke-direct {v0, p1, v1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/SimpleExoPlayer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildSimpleExoPlayer()Lcom/google/android/exoplr2avp/SimpleExoPlayer;

    move-result-object v0

    return-object v0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->experimentalSetForegroundModeTimeoutMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setAnalyticsCollector(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setAnalyticsCollector(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Z)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setBandwidthMeter(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setBandwidthMeter(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setClock(Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setClock(Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 314
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setDetachSurfaceTimeoutMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setLivePlaybackSpeedControl(Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setLoadControl(Lcom/google/android/exoplr2avp/LoadControl;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplr2avp/LoadControl;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setMediaSourceFactory(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setMediaSourceFactory(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setPauseAtEndOfMediaItems(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplr2avp/util/PriorityTaskManager;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setPriorityTaskManager(Lcom/google/android/exoplr2avp/util/PriorityTaskManager;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setReleaseTimeoutMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 287
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setSeekBackIncrementMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 296
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setSeekForwardIncrementMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setSkipSilenceEnabled(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setTrackSelector(Lcom/google/android/exoplr2avp/trackselection/TrackSelector;)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplr2avp/trackselection/TrackSelector;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setUseLazyPreparation(Z)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setUseLazyPreparation(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setVideoChangeFrameRateStrategy(I)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setVideoScalingMode(I)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setVideoScalingMode(I)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method

.method public setWakeMode(I)Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->wrappedBuilder:Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setWakeMode(I)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    return-object p0
.end method
