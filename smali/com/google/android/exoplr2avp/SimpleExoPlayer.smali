.class public Lcom/google/android/exoplr2avp/SimpleExoPlayer;
.super Lcom/google/android/exoplr2avp/BasePlayer;
.source "SimpleExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/ExoPlayer;
.implements Lcom/google/android/exoplr2avp/ExoPlayer$AudioComponent;
.implements Lcom/google/android/exoplr2avp/ExoPlayer$VideoComponent;
.implements Lcom/google/android/exoplr2avp/ExoPlayer$TextComponent;
.implements Lcom/google/android/exoplr2avp/ExoPlayer$DeviceComponent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final constructorFinished:Lcom/google/android/exoplr2avp/util/ConditionVariable;

.field private final player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/trackselection/TrackSelector;Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/LoadControl;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;ZLcom/google/android/exoplr2avp/util/Clock;Landroid/os/Looper;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 374
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

    move/from16 v0, p8

    .line 383
    invoke-virtual {v8, v0}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setUseLazyPreparation(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-result-object v0

    move-object/from16 v1, p9

    .line 384
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setClock(Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-result-object v0

    move-object/from16 v1, p10

    .line 385
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setLooper(Landroid/os/Looper;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-result-object v0

    move-object v1, p0

    .line 374
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;-><init>(Lcom/google/android/exoplr2avp/ExoPlayer$Builder;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayer$Builder;)V
    .locals 2

    .line 398
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/BasePlayer;-><init>()V

    .line 399
    new-instance v0, Lcom/google/android/exoplr2avp/util/ConditionVariable;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplr2avp/util/ConditionVariable;

    .line 401
    :try_start_0
    new-instance v1, Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-direct {v1, p1, p0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;-><init>(Lcom/google/android/exoplr2avp/ExoPlayer$Builder;Lcom/google/android/exoplr2avp/Player;)V

    iput-object v1, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ConditionVariable;->open()Z

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplr2avp/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ConditionVariable;->open()Z

    .line 404
    throw p1
.end method

.method protected constructor <init>(Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;)V
    .locals 0

    .line 392
    invoke-static {p1}, Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;->access$000(Lcom/google/android/exoplr2avp/SimpleExoPlayer$Builder;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;-><init>(Lcom/google/android/exoplr2avp/ExoPlayer$Builder;)V

    return-void
.end method

.method private blockUntilConstructorFinished()V
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->constructorFinished:Lcom/google/android/exoplr2avp/util/ConditionVariable;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ConditionVariable;->blockUninterruptible()V

    return-void
.end method


# virtual methods
.method public addAnalyticsListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 628
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addAnalyticsListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method

.method public addAudioOffloadListener(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    .line 550
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 551
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addAudioOffloadListener(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public addListener(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 1

    .line 730
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

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

    .line 856
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 857
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaSource(ILcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 1

    .line 868
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 869
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSource(ILcom/google/android/exoplr2avp/source/MediaSource;)V

    return-void
.end method

.method public addMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 1

    .line 862
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 863
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V

    return-void
.end method

.method public addMediaSources(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;)V"
        }
    .end annotation

    .line 880
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 881
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSources(ILjava/util/List;)V

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

    .line 874
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 875
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->addMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public clearAuxEffectInfo()V
    .locals 1

    .line 592
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 593
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearAuxEffectInfo()V

    return-void
.end method

.method public clearCameraMotionListener(Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;)V
    .locals 1

    .line 698
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 699
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearCameraMotionListener(Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;)V

    return-void
.end method

.method public clearVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V
    .locals 1

    .line 686
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 687
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 496
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 497
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurface()V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 502
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 503
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 520
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 521
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 532
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 533
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 544
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->clearVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public createMessage(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;
    .locals 1

    .line 1036
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1037
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->createMessage(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;

    move-result-object p1

    return-object p1
.end method

.method public decreaseDeviceVolume()V
    .locals 1

    .line 1240
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1241
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->decreaseDeviceVolume()V

    return-void
.end method

.method public experimentalIsSleepingForOffload()Z
    .locals 1

    .line 415
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 416
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->experimentalIsSleepingForOffload()Z

    move-result v0

    return v0
.end method

.method public experimentalSetOffloadSchedulingEnabled(Z)V
    .locals 1

    .line 409
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 410
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->experimentalSetOffloadSchedulingEnabled(Z)V

    return-void
.end method

.method public getAnalyticsCollector()Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;
    .locals 1

    .line 622
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getAnalyticsCollector()Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 718
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 719
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;
    .locals 1

    .line 568
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 569
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getAudioComponent()Lcom/google/android/exoplr2avp/ExoPlayer$AudioComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getAudioDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;
    .locals 1

    .line 674
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 675
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getAudioDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    move-result-object v0

    return-object v0
.end method

.method public getAudioFormat()Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 660
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 661
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getAudioFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .line 580
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 581
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplr2avp/Player$Commands;
    .locals 1

    .line 772
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getAvailableCommands()Lcom/google/android/exoplr2avp/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 1152
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1153
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getClock()Lcom/google/android/exoplr2avp/util/Clock;
    .locals 1

    .line 724
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 725
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getClock()Lcom/google/android/exoplr2avp/util/Clock;

    move-result-object v0

    return-object v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 1188
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1189
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 1182
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1183
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 1170
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1171
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 1176
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1177
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentCues()Lcom/google/android/exoplr2avp/text/CueGroup;
    .locals 1

    .line 704
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 705
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentCues()Lcom/google/android/exoplr2avp/text/CueGroup;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 1134
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1135
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 1128
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1129
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 1146
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1147
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    .line 1122
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1123
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1070
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1071
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTrackSelections()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1080
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1081
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentTrackSelections()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTracks()Lcom/google/android/exoplr2avp/Tracks;
    .locals 1

    .line 1086
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1087
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getCurrentTracks()Lcom/google/android/exoplr2avp/Tracks;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceComponent()Lcom/google/android/exoplr2avp/ExoPlayer$DeviceComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplr2avp/DeviceInfo;
    .locals 1

    .line 1210
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1211
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getDeviceInfo()Lcom/google/android/exoplr2avp/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 1216
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1217
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getDeviceVolume()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 1140
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1141
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 976
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 977
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 1

    .line 1104
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1105
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getMediaMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPauseAtEndOfMediaItems()Z
    .locals 1

    .line 922
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 923
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPauseAtEndOfMediaItems()Z

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 910
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 911
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackLooper()Landroid/os/Looper;
    .locals 1

    .line 712
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlaybackLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 988
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 989
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 742
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 743
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 748
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlaybackSuppressionReason()I

    move-result v0

    return v0
.end method

.method public getPlayerError()Lcom/google/android/exoplr2avp/ExoPlaybackException;
    .locals 1

    .line 755
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 756
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayerError()Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPlayerError()Lcom/google/android/exoplr2avp/PlaybackException;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->getPlayerError()Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 1

    .line 1110
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1111
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlaylistMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getRenderer(I)Lcom/google/android/exoplr2avp/Renderer;
    .locals 1

    .line 1054
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1055
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getRenderer(I)Lcom/google/android/exoplr2avp/Renderer;

    move-result-object p1

    return-object p1
.end method

.method public getRendererCount()I
    .locals 1

    .line 1042
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1043
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getRendererCount()I

    move-result v0

    return v0
.end method

.method public getRendererType(I)I
    .locals 1

    .line 1048
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1049
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getRendererType(I)I

    move-result p1

    return p1
.end method

.method public getRepeatMode()I
    .locals 1

    .line 928
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 929
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 964
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 965
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 970
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 971
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekParameters()Lcom/google/android/exoplr2avp/SeekParameters;
    .locals 1

    .line 1000
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1001
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getSeekParameters()Lcom/google/android/exoplr2avp/SeekParameters;

    move-result-object v0

    return-object v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 946
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 947
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    .line 610
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 611
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getSkipSilenceEnabled()Z

    move-result v0

    return v0
.end method

.method public getTextComponent()Lcom/google/android/exoplr2avp/ExoPlayer$TextComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 1158
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1159
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;
    .locals 1

    .line 1092
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1093
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getTrackSelector()Lcom/google/android/exoplr2avp/trackselection/TrackSelector;
    .locals 1

    .line 1060
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1061
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getTrackSelector()Lcom/google/android/exoplr2avp/trackselection/TrackSelector;

    move-result-object v0

    return-object v0
.end method

.method public getVideoChangeFrameRateStrategy()I
    .locals 1

    .line 484
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 485
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getVideoChangeFrameRateStrategy()I

    move-result v0

    return v0
.end method

.method public getVideoComponent()Lcom/google/android/exoplr2avp/ExoPlayer$VideoComponent;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public getVideoDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;
    .locals 1

    .line 667
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 668
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getVideoDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    move-result-object v0

    return-object v0
.end method

.method public getVideoFormat()Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 653
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 654
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getVideoFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    return-object v0
.end method

.method public getVideoScalingMode()I
    .locals 1

    .line 471
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getVideoScalingMode()I

    move-result v0

    return v0
.end method

.method public getVideoSize()Lcom/google/android/exoplr2avp/video/VideoSize;
    .locals 1

    .line 490
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 491
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getVideoSize()Lcom/google/android/exoplr2avp/video/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 604
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getVolume()F

    move-result v0

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 1

    .line 1234
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1235
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->increaseDeviceVolume()V

    return-void
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 1222
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1223
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isDeviceMuted()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 952
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 953
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 1164
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1165
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public moveMediaItems(III)V
    .locals 1

    .line 886
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 887
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->moveMediaItems(III)V

    return-void
.end method

.method public prepare()V
    .locals 1

    .line 778
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->prepare()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 789
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 790
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->prepare(Lcom/google/android/exoplr2avp/source/MediaSource;)V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplr2avp/source/MediaSource;ZZ)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 801
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 802
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->prepare(Lcom/google/android/exoplr2avp/source/MediaSource;ZZ)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 1030
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1031
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->release()V

    return-void
.end method

.method public removeAnalyticsListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
    .locals 1

    .line 634
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeAnalyticsListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    return-void
.end method

.method public removeAudioOffloadListener(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;)V
    .locals 1

    .line 556
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 557
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeAudioOffloadListener(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;)V

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 1

    .line 736
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 1

    .line 892
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 893
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->removeMediaItems(II)V

    return-void
.end method

.method public retry()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 766
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 767
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->retry()V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 958
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 959
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->seekTo(IJ)V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Z)V
    .locals 1

    .line 562
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 563
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Z)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1

    .line 574
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setAudioSessionId(I)V

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V
    .locals 1

    .line 586
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 587
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V

    return-void
.end method

.method public setCameraMotionListener(Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;)V
    .locals 1

    .line 692
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 693
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setCameraMotionListener(Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;)V

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 1

    .line 1246
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1247
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setDeviceMuted(Z)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 1

    .line 1228
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1229
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setDeviceVolume(I)V

    return-void
.end method

.method public setForegroundMode(Z)V
    .locals 1

    .line 1006
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1007
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setForegroundMode(Z)V

    return-void
.end method

.method public setHandleAudioBecomingNoisy(Z)V
    .locals 1

    .line 640
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setHandleAudioBecomingNoisy(Z)V

    return-void
.end method

.method public setHandleWakeLock(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1198
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1199
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setHandleWakeLock(Z)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 813
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 814
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 807
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 808
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 1

    .line 838
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 839
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;J)V
    .locals 1

    .line 850
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 851
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;J)V

    return-void
.end method

.method public setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V
    .locals 1

    .line 844
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 845
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V

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

    .line 819
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 820
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSources(Ljava/util/List;)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation

    .line 832
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 833
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSources(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaSources(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation

    .line 825
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 826
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setMediaSources(Ljava/util/List;Z)V

    return-void
.end method

.method public setPauseAtEndOfMediaItems(Z)V
    .locals 1

    .line 916
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 917
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setPauseAtEndOfMediaItems(Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 904
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 905
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 1

    .line 982
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 983
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 1

    .line 1116
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1117
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setPlaylistMetadata(Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplr2avp/util/PriorityTaskManager;)V
    .locals 1

    .line 646
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setPriorityTaskManager(Lcom/google/android/exoplr2avp/util/PriorityTaskManager;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 934
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 935
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setRepeatMode(I)V

    return-void
.end method

.method public setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)V
    .locals 1

    .line 994
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 995
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    .line 940
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 941
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setShuffleOrder(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V
    .locals 1

    .line 898
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 899
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setShuffleOrder(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 1

    .line 616
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setSkipSilenceEnabled(Z)V

    return-void
.end method

.method setThrowsWhenUsingWrongThread(Z)V
    .locals 1

    .line 1251
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1252
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setThrowsWhenUsingWrongThread(Z)V

    return-void
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 1

    .line 1098
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1099
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public setVideoChangeFrameRateStrategy(I)V
    .locals 1

    .line 478
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoChangeFrameRateStrategy(I)V

    return-void
.end method

.method public setVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V
    .locals 1

    .line 680
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 681
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V

    return-void
.end method

.method public setVideoScalingMode(I)V
    .locals 1

    .line 465
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 466
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoScalingMode(I)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 508
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 509
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 514
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 526
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 527
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 538
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 539
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 598
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setVolume(F)V

    return-void
.end method

.method public setWakeMode(I)V
    .locals 1

    .line 1204
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1205
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->setWakeMode(I)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1012
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1013
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->stop()V

    return-void
.end method

.method public stop(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1024
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->blockUntilConstructorFinished()V

    .line 1025
    iget-object v0, p0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;->player:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->stop(Z)V

    return-void
.end method
