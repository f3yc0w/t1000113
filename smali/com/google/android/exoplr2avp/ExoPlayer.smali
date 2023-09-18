.class public interface abstract Lcom/google/android/exoplr2avp/ExoPlayer;
.super Ljava/lang/Object;
.source "ExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/ExoPlayer$Builder;,
        Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;,
        Lcom/google/android/exoplr2avp/ExoPlayer$DeviceComponent;,
        Lcom/google/android/exoplr2avp/ExoPlayer$TextComponent;,
        Lcom/google/android/exoplr2avp/ExoPlayer$VideoComponent;,
        Lcom/google/android/exoplr2avp/ExoPlayer$AudioComponent;
    }
.end annotation


# static fields
.field public static final DEFAULT_DETACH_SURFACE_TIMEOUT_MS:J = 0x7d0L

.field public static final DEFAULT_RELEASE_TIMEOUT_MS:J = 0x1f4L


# virtual methods
.method public abstract addAnalyticsListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
.end method

.method public abstract addAudioOffloadListener(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;)V
.end method

.method public abstract addMediaSource(ILcom/google/android/exoplr2avp/source/MediaSource;)V
.end method

.method public abstract addMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V
.end method

.method public abstract addMediaSources(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract addMediaSources(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract clearAuxEffectInfo()V
.end method

.method public abstract clearCameraMotionListener(Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;)V
.end method

.method public abstract clearVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V
.end method

.method public abstract createMessage(Lcom/google/android/exoplr2avp/PlayerMessage$Target;)Lcom/google/android/exoplr2avp/PlayerMessage;
.end method

.method public abstract experimentalIsSleepingForOffload()Z
.end method

.method public abstract experimentalSetOffloadSchedulingEnabled(Z)V
.end method

.method public abstract getAnalyticsCollector()Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;
.end method

.method public abstract getAudioComponent()Lcom/google/android/exoplr2avp/ExoPlayer$AudioComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getAudioDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;
.end method

.method public abstract getAudioFormat()Lcom/google/android/exoplr2avp/Format;
.end method

.method public abstract getAudioSessionId()I
.end method

.method public abstract getClock()Lcom/google/android/exoplr2avp/util/Clock;
.end method

.method public abstract getCurrentTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getCurrentTrackSelections()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getDeviceComponent()Lcom/google/android/exoplr2avp/ExoPlayer$DeviceComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getPauseAtEndOfMediaItems()Z
.end method

.method public abstract getPlaybackLooper()Landroid/os/Looper;
.end method

.method public abstract getPlayerError()Lcom/google/android/exoplr2avp/ExoPlaybackException;
.end method

.method public abstract getRenderer(I)Lcom/google/android/exoplr2avp/Renderer;
.end method

.method public abstract getRendererCount()I
.end method

.method public abstract getRendererType(I)I
.end method

.method public abstract getSeekParameters()Lcom/google/android/exoplr2avp/SeekParameters;
.end method

.method public abstract getSkipSilenceEnabled()Z
.end method

.method public abstract getTextComponent()Lcom/google/android/exoplr2avp/ExoPlayer$TextComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getTrackSelector()Lcom/google/android/exoplr2avp/trackselection/TrackSelector;
.end method

.method public abstract getVideoChangeFrameRateStrategy()I
.end method

.method public abstract getVideoComponent()Lcom/google/android/exoplr2avp/ExoPlayer$VideoComponent;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getVideoDecoderCounters()Lcom/google/android/exoplr2avp/decoder/DecoderCounters;
.end method

.method public abstract getVideoFormat()Lcom/google/android/exoplr2avp/Format;
.end method

.method public abstract getVideoScalingMode()I
.end method

.method public abstract prepare(Lcom/google/android/exoplr2avp/source/MediaSource;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract prepare(Lcom/google/android/exoplr2avp/source/MediaSource;ZZ)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract removeAnalyticsListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V
.end method

.method public abstract removeAudioOffloadListener(Lcom/google/android/exoplr2avp/ExoPlayer$AudioOffloadListener;)V
.end method

.method public abstract retry()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;Z)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V
.end method

.method public abstract setCameraMotionListener(Lcom/google/android/exoplr2avp/video/spherical/CameraMotionListener;)V
.end method

.method public abstract setForegroundMode(Z)V
.end method

.method public abstract setHandleAudioBecomingNoisy(Z)V
.end method

.method public abstract setHandleWakeLock(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;)V
.end method

.method public abstract setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;J)V
.end method

.method public abstract setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V
.end method

.method public abstract setMediaSources(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setMediaSources(Ljava/util/List;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;IJ)V"
        }
    .end annotation
.end method

.method public abstract setMediaSources(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract setPauseAtEndOfMediaItems(Z)V
.end method

.method public abstract setPriorityTaskManager(Lcom/google/android/exoplr2avp/util/PriorityTaskManager;)V
.end method

.method public abstract setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)V
.end method

.method public abstract setShuffleOrder(Lcom/google/android/exoplr2avp/source/ShuffleOrder;)V
.end method

.method public abstract setSkipSilenceEnabled(Z)V
.end method

.method public abstract setVideoChangeFrameRateStrategy(I)V
.end method

.method public abstract setVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V
.end method

.method public abstract setVideoScalingMode(I)V
.end method

.method public abstract setWakeMode(I)V
.end method
