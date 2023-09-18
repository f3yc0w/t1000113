.class final Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;
.implements Lcom/google/android/exoplr2avp/text/TextOutput;
.implements Lcom/google/android/exoplr2avp/metadata/MetadataOutput;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/google/android/exoplr2avp/video/spherical/SphericalGLSurfaceView$VideoSurfaceListener;
.implements Lcom/google/android/exoplr2avp/AudioFocusManager$PlayerControl;
.implements Lcom/google/android/exoplr2avp/AudioBecomingNoisyManager$EventListener;
.implements Lcom/google/android/exoplr2avp/StreamVolumeManager$Listener;
.implements Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V
    .locals 0

    .line 2703
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/ExoPlayerImpl$1;)V
    .locals 0

    .line 2703
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V

    return-void
.end method

.method static synthetic lambda$onCues$2(Ljava/util/List;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 2848
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onCues(Ljava/util/List;)V

    return-void
.end method

.method static synthetic lambda$onCues$3(Lcom/google/android/exoplr2avp/text/CueGroup;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 2854
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onCues(Lcom/google/android/exoplr2avp/text/CueGroup;)V

    return-void
.end method

.method static synthetic lambda$onMetadata$5(Lcom/google/android/exoplr2avp/metadata/Metadata;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 2870
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    return-void
.end method

.method static synthetic lambda$onSkipSilenceEnabledChanged$1(ZLcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 2832
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onStreamTypeChanged$6(Lcom/google/android/exoplr2avp/DeviceInfo;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 2965
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onDeviceInfoChanged(Lcom/google/android/exoplr2avp/DeviceInfo;)V

    return-void
.end method

.method static synthetic lambda$onStreamVolumeChanged$7(IZLcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 2973
    invoke-interface {p2, p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener;->onDeviceVolumeChanged(IZ)V

    return-void
.end method

.method static synthetic lambda$onVideoSizeChanged$0(Lcom/google/android/exoplr2avp/video/VideoSize;Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 0

    .line 2747
    invoke-interface {p1, p0}, Lcom/google/android/exoplr2avp/Player$Listener;->onVideoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V

    return-void
.end method


# virtual methods
.method public executePlayerCommand(I)V
    .locals 3

    .line 2942
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->getPlayWhenReady()Z

    move-result v0

    .line 2943
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    .line 2944
    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$2100(ZI)I

    move-result v2

    .line 2943
    invoke-static {v1, v0, p1, v2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$2200(Lcom/google/android/exoplr2avp/ExoPlayerImpl;ZII)V

    return-void
.end method

.method public synthetic lambda$onMetadata$4$ExoPlayerImpl$ComponentListener(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 1

    .line 2868
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1500(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/Player$Listener;->onMediaMetadataChanged(Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public onAudioBecomingNoisy()V
    .locals 4

    .line 2951
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x3

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$2200(Lcom/google/android/exoplr2avp/ExoPlayerImpl;ZII)V

    return-void
.end method

.method public onAudioCodecError(Ljava/lang/Exception;)V
    .locals 1

    .line 2842
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onAudioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 2791
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 1

    .line 2814
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onAudioDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 1

    .line 2819
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onAudioDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 2820
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1002(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/Format;

    .line 2821
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$902(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    return-void
.end method

.method public onAudioEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 1

    .line 2784
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$902(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    .line 2785
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onAudioEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 1

    .line 2798
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1002(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/Format;

    .line 2799
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onAudioPositionAdvancing(J)V
    .locals 1

    .line 2804
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onAudioPositionAdvancing(J)V

    return-void
.end method

.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 1

    .line 2837
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onAudioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onAudioUnderrun(IJJ)V
    .locals 7

    .line 2809
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onAudioUnderrun(IJJ)V

    return-void
.end method

.method public onCues(Lcom/google/android/exoplr2avp/text/CueGroup;)V
    .locals 2

    .line 2853
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1202(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/text/CueGroup;)Lcom/google/android/exoplr2avp/text/CueGroup;

    .line 2854
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$9c9sx7QVvSqaGI8cHCrrD8cpKVk;

    invoke-direct {v1, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$9c9sx7QVvSqaGI8cHCrrD8cpKVk;-><init>(Lcom/google/android/exoplr2avp/text/CueGroup;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 2848
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$PoJ93flrFi4HMv7-G4B2JPIOa8o;

    invoke-direct {v1, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$PoJ93flrFi4HMv7-G4B2JPIOa8o;-><init>(Ljava/util/List;)V

    const/16 p1, 0x1b

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 1

    .line 2740
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onDroppedFrames(IJ)V

    return-void
.end method

.method public synthetic onExperimentalOffloadSchedulingEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener$-CC;->$default$onExperimentalOffloadSchedulingEnabledChanged(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;Z)V

    return-void
.end method

.method public onExperimentalSleepingForOffloadChanged(Z)V
    .locals 0

    .line 2980
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$2600(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 3

    .line 2861
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    .line 2862
    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1300(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaMetadata;->buildUpon()Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->populateFromMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;)Lcom/google/android/exoplr2avp/MediaMetadata$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaMetadata$Builder;->build()Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v1

    .line 2861
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1302(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/MediaMetadata;)Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 2863
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v0

    .line 2864
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1500(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaMetadata;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2865
    iget-object v1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1502(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/MediaMetadata;)Lcom/google/android/exoplr2avp/MediaMetadata;

    .line 2866
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object v0

    const/16 v1, 0xe

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$8ka9BL0xQohyBNSkCCiPWLK3gsM;

    invoke-direct {v2, p0}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$8ka9BL0xQohyBNSkCCiPWLK3gsM;-><init>(Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 2870
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object v0

    const/16 v1, 0x1c

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$x03hLHTQDHGXHKSfY1-0s-IIfwQ;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$x03hLHTQDHGXHKSfY1-0s-IIfwQ;-><init>(Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->queueEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    .line 2871
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->flushEvents()V

    return-void
.end method

.method public onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 1

    .line 2752
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    .line 2753
    iget-object p2, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$800(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, p1, :cond_0

    .line 2754
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object p1

    const/16 p2, 0x1a

    sget-object p3, Lcom/google/android/exoplr2avp/-$$Lambda$sl0d7sm-il65hjVKbs9TUhX3kH4;->INSTANCE:Lcom/google/android/exoplr2avp/-$$Lambda$sl0d7sm-il65hjVKbs9TUhX3kH4;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 3

    .line 2826
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1100(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 2829
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1102(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Z)Z

    .line 2830
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object v0

    const/16 v1, 0x17

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$2UU13ke9UCl0D2PNOLEm9hXKr6o;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$2UU13ke9UCl0D2PNOLEm9hXKr6o;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onStreamTypeChanged(I)V
    .locals 3

    .line 2961
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$2300(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/StreamVolumeManager;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$2400(Lcom/google/android/exoplr2avp/StreamVolumeManager;)Lcom/google/android/exoplr2avp/DeviceInfo;

    move-result-object p1

    .line 2962
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$2500(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/DeviceInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/DeviceInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2963
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$2502(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/DeviceInfo;)Lcom/google/android/exoplr2avp/DeviceInfo;

    .line 2964
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object v0

    const/16 v1, 0x1d

    new-instance v2, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$aaFVWY5g10BaRaZOYGbzOLhD7rc;

    invoke-direct {v2, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$aaFVWY5g10BaRaZOYGbzOLhD7rc;-><init>(Lcom/google/android/exoplr2avp/DeviceInfo;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    :cond_0
    return-void
.end method

.method public onStreamVolumeChanged(IZ)V
    .locals 2

    .line 2971
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$B432Jd9TTqLMx9WyncaWoI7IVJI;

    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$B432Jd9TTqLMx9WyncaWoI7IVJI;-><init>(IZ)V

    const/16 p1, 0x1e

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 2900
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1900(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Landroid/graphics/SurfaceTexture;)V

    .line 2901
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplr2avp/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 2911
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 2912
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplr2avp/ExoPlayerImpl;II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 2906
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1, p2, p3}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplr2avp/ExoPlayerImpl;II)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public onVideoCodecError(Ljava/lang/Exception;)V
    .locals 1

    .line 2777
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 7

    .line 2727
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 1

    .line 2760
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public onVideoDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 1

    .line 2765
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onVideoDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    .line 2766
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$502(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/Format;

    .line 2767
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$302(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    return-void
.end method

.method public onVideoEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 1

    .line 2720
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$302(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    .line 2721
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onVideoEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public onVideoFrameProcessingOffset(JI)V
    .locals 1

    .line 2772
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 1

    .line 2734
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$502(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/Format;

    .line 2735
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$400(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;->onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 2

    .line 2745
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$602(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Lcom/google/android/exoplr2avp/video/VideoSize;)Lcom/google/android/exoplr2avp/video/VideoSize;

    .line 2746
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Lcom/google/android/exoplr2avp/util/ListenerSet;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$qrhXk3tEvS2VY3H3hyNW9IqZpVc;

    invoke-direct {v1, p1}, Lcom/google/android/exoplr2avp/-$$Lambda$ExoPlayerImpl$ComponentListener$qrhXk3tEvS2VY3H3hyNW9IqZpVc;-><init>(Lcom/google/android/exoplr2avp/video/VideoSize;)V

    const/16 p1, 0x19

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplr2avp/util/ListenerSet;->sendEvent(ILcom/google/android/exoplr2avp/util/ListenerSet$Event;)V

    return-void
.end method

.method public onVideoSurfaceCreated(Landroid/view/Surface;)V
    .locals 1

    .line 2925
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public onVideoSurfaceDestroyed(Landroid/view/Surface;)V
    .locals 1

    .line 2930
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Ljava/lang/Object;)V

    return-void
.end method

.method public setVolumeMultiplier(F)V
    .locals 0

    .line 2937
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$2000(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)V

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 2885
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1, p3, p4}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplr2avp/ExoPlayerImpl;II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 2878
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1600(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2879
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 2890
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1600(Lcom/google/android/exoplr2avp/ExoPlayerImpl;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2891
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1700(Lcom/google/android/exoplr2avp/ExoPlayerImpl;Ljava/lang/Object;)V

    .line 2893
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/ExoPlayerImpl$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/ExoPlayerImpl;

    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/google/android/exoplr2avp/ExoPlayerImpl;->access$1800(Lcom/google/android/exoplr2avp/ExoPlayerImpl;II)V

    return-void
.end method
