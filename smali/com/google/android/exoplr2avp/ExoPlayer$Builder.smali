.class public final Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field analyticsCollectorFunction:Lcom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplr2avp/util/Clock;",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;",
            ">;"
        }
    .end annotation
.end field

.field audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

.field bandwidthMeterSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;",
            ">;"
        }
    .end annotation
.end field

.field buildCalled:Z

.field clock:Lcom/google/android/exoplr2avp/util/Clock;

.field final context:Landroid/content/Context;

.field detachSurfaceTimeoutMs:J

.field foregroundModeTimeoutMs:J

.field handleAudioBecomingNoisy:Z

.field handleAudioFocus:Z

.field livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

.field loadControlSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/LoadControl;",
            ">;"
        }
    .end annotation
.end field

.field looper:Landroid/os/Looper;

.field mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field pauseAtEndOfMediaItems:Z

.field priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

.field releaseTimeoutMs:J

.field renderersFactorySupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/RenderersFactory;",
            ">;"
        }
    .end annotation
.end field

.field seekBackIncrementMs:J

.field seekForwardIncrementMs:J

.field seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

.field skipSilenceEnabled:Z

.field trackSelectorSupplier:Lcom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/trackselection/TrackSelector;",
            ">;"
        }
    .end annotation
.end field

.field useLazyPreparation:Z

.field usePlatformDiagnostics:Z

.field videoChangeFrameRateStrategy:I

.field videoScalingMode:I

.field wakeMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 509
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$49enl5sO8BKr4ddtHy0P4n0srbs;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$49enl5sO8BKr4ddtHy0P4n0srbs;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$mwhrdvLtYu1Qg1Bc2wZzxGQKOyg;

    invoke-direct {v1, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$mwhrdvLtYu1Qg1Bc2wZzxGQKOyg;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;)V
    .locals 1

    .line 528
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$Om1wb5u_pdeIjhieUoJI5EXyS6Q;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$Om1wb5u_pdeIjhieUoJI5EXyS6Q;-><init>(Lcom/google/android/exoplr2avp/RenderersFactory;)V

    new-instance p2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$rkF1BqjzTkhBwnOOoja2lA7WMUo;

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$rkF1BqjzTkhBwnOOoja2lA7WMUo;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)V
    .locals 1

    .line 570
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$nAzX6dLzNDr3dDPtByeSQ8eEgxY;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$nAzX6dLzNDr3dDPtByeSQ8eEgxY;-><init>(Lcom/google/android/exoplr2avp/RenderersFactory;)V

    new-instance p2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$m26_FGINSU46CqGyRNQYwHvC9KA;

    invoke-direct {p2, p3}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$m26_FGINSU46CqGyRNQYwHvC9KA;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/trackselection/TrackSelector;Lcom/google/android/exoplr2avp/LoadControl;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)V
    .locals 8

    .line 596
    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$qN6_MmGF4x8DL-GzPfDKdFr_U18;

    invoke-direct {v2, p2}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$qN6_MmGF4x8DL-GzPfDKdFr_U18;-><init>(Lcom/google/android/exoplr2avp/RenderersFactory;)V

    new-instance v3, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$l3at4KjtocHS-FJ_sWOb4I9iofo;

    invoke-direct {v3, p3}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$l3at4KjtocHS-FJ_sWOb4I9iofo;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)V

    new-instance v4, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$JjVSdmfRRM5tO5zCmA4eHxbPkUM;

    invoke-direct {v4, p4}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$JjVSdmfRRM5tO5zCmA4eHxbPkUM;-><init>(Lcom/google/android/exoplr2avp/trackselection/TrackSelector;)V

    new-instance v5, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$JjkXnN_g8Dr9wURop-k0tNqJPS8;

    invoke-direct {v5, p5}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$JjkXnN_g8Dr9wURop-k0tNqJPS8;-><init>(Lcom/google/android/exoplr2avp/LoadControl;)V

    new-instance v6, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$lmRuwrh1lG4Ol4abmK2xgdzkSg4;

    invoke-direct {v6, p6}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$lmRuwrh1lG4Ol4abmK2xgdzkSg4;-><init>(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)V

    new-instance v7, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$uCSAKvI3WMHxl1E53dc4w0M-OLQ;

    invoke-direct {v7, p7}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$uCSAKvI3WMHxl1E53dc4w0M-OLQ;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)V
    .locals 2

    .line 548
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$xTOhECLjOMo7KmQ3RHA6udosYBM;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$xTOhECLjOMo7KmQ3RHA6udosYBM;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$EVOTqfzPiHM7Uu7B2-4-GBOBGrs;

    invoke-direct {v1, p2}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$EVOTqfzPiHM7Uu7B2-4-GBOBGrs;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            ">;)V"
        }
    .end annotation

    .line 610
    new-instance v4, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$tg4bjXK3qGo9CIyKNFJCE73Ealc;

    invoke-direct {v4, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$tg4bjXK3qGo9CIyKNFJCE73Ealc;-><init>(Landroid/content/Context;)V

    sget-object v5, Lcom/google/android/exoplr2avp/-$$Lambda$nXYnrIRfA_iNmnO1il9NEcaVWio;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$nXYnrIRfA_iNmnO1il9NEcaVWio;

    new-instance v6, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$Yx7uEMmIAOwLKf-A-kWe__CJiJo;

    invoke-direct {v6, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$Yx7uEMmIAOwLKf-A-kWe__CJiJo;-><init>(Landroid/content/Context;)V

    sget-object v7, Lcom/google/android/exoplr2avp/-$$Lambda$khnwVTndSdDuF3GfKXHt2d0i5cE;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$khnwVTndSdDuF3GfKXHt2d0i5cE;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Supplier;Lcom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/RenderersFactory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/trackselection/TrackSelector;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/LoadControl;",
            ">;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;",
            ">;",
            "Lcom/google/common/base/Function<",
            "Lcom/google/android/exoplr2avp/util/Clock;",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;",
            ">;)V"
        }
    .end annotation

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->context:Landroid/content/Context;

    .line 629
    iput-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    .line 630
    iput-object p3, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    .line 631
    iput-object p4, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    .line 632
    iput-object p5, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    .line 633
    iput-object p6, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    .line 634
    iput-object p7, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    .line 635
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->getCurrentOrMainLooper()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    .line 636
    sget-object p1, Lcom/google/android/exoplr2avp/audio/AudioAttributes;->DEFAULT:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    const/4 p1, 0x0

    .line 637
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->wakeMode:I

    const/4 p2, 0x1

    .line 638
    iput p2, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->videoScalingMode:I

    .line 639
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    .line 640
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->useLazyPreparation:Z

    .line 641
    sget-object p1, Lcom/google/android/exoplr2avp/SeekParameters;->DEFAULT:Lcom/google/android/exoplr2avp/SeekParameters;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    const-wide/16 p3, 0x1388

    .line 642
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->seekBackIncrementMs:J

    const-wide/16 p3, 0x3a98

    .line 643
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->seekForwardIncrementMs:J

    .line 644
    new-instance p1, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl$Builder;->build()Lcom/google/android/exoplr2avp/DefaultLivePlaybackSpeedControl;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    .line 645
    sget-object p1, Lcom/google/android/exoplr2avp/util/Clock;->DEFAULT:Lcom/google/android/exoplr2avp/util/Clock;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    const-wide/16 p3, 0x1f4

    .line 646
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->releaseTimeoutMs:J

    const-wide/16 p3, 0x7d0

    .line 647
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    .line 648
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-void
.end method

.method static synthetic lambda$new$0(Landroid/content/Context;)Lcom/google/android/exoplr2avp/RenderersFactory;
    .locals 1

    .line 511
    new-instance v0, Lcom/google/android/exoplr2avp/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/content/Context;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 2

    .line 512
    new-instance v0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    new-instance v1, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method static synthetic lambda$new$10(Lcom/google/android/exoplr2avp/trackselection/TrackSelector;)Lcom/google/android/exoplr2avp/trackselection/TrackSelector;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$11(Lcom/google/android/exoplr2avp/LoadControl;)Lcom/google/android/exoplr2avp/LoadControl;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$12(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$13(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$14(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/TrackSelector;
    .locals 1

    .line 614
    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$15(Landroid/content/Context;)Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;
    .locals 0

    .line 616
    invoke-static {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$new$2(Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$3(Landroid/content/Context;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 2

    .line 531
    new-instance v0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    new-instance v1, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method static synthetic lambda$new$4(Landroid/content/Context;)Lcom/google/android/exoplr2avp/RenderersFactory;
    .locals 1

    .line 548
    new-instance v0, Lcom/google/android/exoplr2avp/DefaultRenderersFactory;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/DefaultRenderersFactory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic lambda$new$5(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$6(Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$7(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$8(Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$new$9(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setAnalyticsCollector$21(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setBandwidthMeter$20(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setLoadControl$19(Lcom/google/android/exoplr2avp/LoadControl;)Lcom/google/android/exoplr2avp/LoadControl;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setMediaSourceFactory$17(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setRenderersFactory$16(Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/RenderersFactory;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$setTrackSelector$18(Lcom/google/android/exoplr2avp/trackselection/TrackSelector;)Lcom/google/android/exoplr2avp/trackselection/TrackSelector;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public build()Lcom/google/android/exoplr2avp/ExoPlayer;
    .locals 2

    .line 1051
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1052
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    .line 1053
    new-instance v0, Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;-><init>(Lcom/google/android/exoplr2avp/ExoPlayer$Builder;Lcom/google/android/exoplr2avp/Player;)V

    return-object v0
.end method

.method buildSimpleExoPlayer()Lcom/google/android/exoplr2avp/SimpleExoPlayer;
    .locals 2

    .line 1057
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1058
    iput-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    .line 1059
    new-instance v0, Lcom/google/android/exoplr2avp/SimpleExoPlayer;

    invoke-direct {v0, p0}, Lcom/google/android/exoplr2avp/SimpleExoPlayer;-><init>(Lcom/google/android/exoplr2avp/ExoPlayer$Builder;)V

    return-object v0
.end method

.method public experimentalSetForegroundModeTimeoutMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 661
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 662
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->foregroundModeTimeoutMs:J

    return-object p0
.end method

.method public setAnalyticsCollector(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 753
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 754
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$ox4IXYmK60KE-VxcGSRV836zb8w;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$ox4IXYmK60KE-VxcGSRV836zb8w;-><init>(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->analyticsCollectorFunction:Lcom/google/common/base/Function;

    return-object p0
.end method

.method public setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 787
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 788
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->audioAttributes:Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    .line 789
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->handleAudioFocus:Z

    return-object p0
.end method

.method public setBandwidthMeter(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 726
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 727
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$d_SRDstOXrRK8rxKOpTGrBC3aNs;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$d_SRDstOXrRK8rxKOpTGrBC3aNs;-><init>(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->bandwidthMeterSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setClock(Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 1040
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1041
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->clock:Lcom/google/android/exoplr2avp/util/Clock;

    return-object p0
.end method

.method public setDetachSurfaceTimeoutMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 972
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 973
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->detachSurfaceTimeoutMs:J

    return-object p0
.end method

.method public setHandleAudioBecomingNoisy(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 828
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 829
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->handleAudioBecomingNoisy:Z

    return-object p0
.end method

.method public setLivePlaybackSpeedControl(Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 1004
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1005
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->livePlaybackSpeedControl:Lcom/google/android/exoplr2avp/LivePlaybackSpeedControl;

    return-object p0
.end method

.method public setLoadControl(Lcom/google/android/exoplr2avp/LoadControl;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 713
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 714
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$utx_bf7wfFL-PJYZapiyF2kj9Vg;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$utx_bf7wfFL-PJYZapiyF2kj9Vg;-><init>(Lcom/google/android/exoplr2avp/LoadControl;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->loadControlSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setLooper(Landroid/os/Looper;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 740
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 741
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->looper:Landroid/os/Looper;

    return-object p0
.end method

.method public setMediaSourceFactory(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 687
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 688
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$UHmPP8idc8zHp7c9AhsMX8lAN94;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$UHmPP8idc8zHp7c9AhsMX8lAN94;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->mediaSourceFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setPauseAtEndOfMediaItems(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 990
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 991
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->pauseAtEndOfMediaItems:Z

    return-object p0
.end method

.method public setPriorityTaskManager(Lcom/google/android/exoplr2avp/util/PriorityTaskManager;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 768
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 769
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    return-object p0
.end method

.method public setReleaseTimeoutMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 955
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 956
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->releaseTimeoutMs:J

    return-object p0
.end method

.method public setRenderersFactory(Lcom/google/android/exoplr2avp/RenderersFactory;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 674
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 675
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$1V1wA4iq4ALE6mJWtUasC4tx2nM;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$1V1wA4iq4ALE6mJWtUasC4tx2nM;-><init>(Lcom/google/android/exoplr2avp/RenderersFactory;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->renderersFactorySupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setSeekBackIncrementMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 922
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 923
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 924
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->seekBackIncrementMs:J

    return-object p0
.end method

.method public setSeekForwardIncrementMs(J)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 4

    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 937
    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 938
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 939
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->seekForwardIncrementMs:J

    return-object p0
.end method

.method public setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 908
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 909
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->seekParameters:Lcom/google/android/exoplr2avp/SeekParameters;

    return-object p0
.end method

.method public setSkipSilenceEnabled(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 841
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 842
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->skipSilenceEnabled:Z

    return-object p0
.end method

.method public setTrackSelector(Lcom/google/android/exoplr2avp/trackselection/TrackSelector;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 700
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 701
    new-instance v0, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$LW2Ix7k4VQvvrlGVoNhrRnnCckU;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayer$Builder$LW2Ix7k4VQvvrlGVoNhrRnnCckU;-><init>(Lcom/google/android/exoplr2avp/trackselection/TrackSelector;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->trackSelectorSupplier:Lcom/google/common/base/Supplier;

    return-object p0
.end method

.method public setUseLazyPreparation(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 895
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 896
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->useLazyPreparation:Z

    return-object p0
.end method

.method public setUsePlatformDiagnostics(Z)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 1025
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 1026
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->usePlatformDiagnostics:Z

    return-object p0
.end method

.method public setVideoChangeFrameRateStrategy(I)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 878
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 879
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->videoChangeFrameRateStrategy:I

    return-object p0
.end method

.method public setVideoScalingMode(I)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 857
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 858
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->videoScalingMode:I

    return-object p0
.end method

.method public setWakeMode(I)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;
    .locals 1

    .line 811
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->buildCalled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 812
    iput p1, p0, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->wakeMode:I

    return-object p0
.end method
