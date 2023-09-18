.class final Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;
.super Ljava/lang/Object;
.source "DebugTextViewHelper.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Player$Listener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Updater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;-><init>(Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;)V

    return-void
.end method


# virtual methods
.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/Player$Commands;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplr2avp/text/CueGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/Player$Listener;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplr2avp/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/Player$Events;)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplr2avp/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplr2avp/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplr2avp/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/Player$Listener;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplr2avp/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onMetadata(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    return-void
.end method

.method public onPlayWhenReadyChanged(ZI)V
    .locals 0

    .line 209
    iget-object p1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0

    .line 203
    iget-object p1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlayerError(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplr2avp/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player$Listener;I)V

    return-void
.end method

.method public onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V
    .locals 0

    .line 217
    iget-object p1, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method

.method public synthetic onRepeatModeChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplr2avp/Player$Listener;I)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method

.method public synthetic onShuffleModeEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onShuffleModeEnabledChanged(Lcom/google/android/exoplr2avp/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/Player$Listener;II)V

    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplr2avp/Timeline;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/Timeline;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplr2avp/Tracks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/Tracks;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/video/VideoSize;)V

    return-void
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplr2avp/Player$Listener;F)V

    return-void
.end method

.method public run()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper$Updater;->this$0:Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/DebugTextViewHelper;->updateAndPost()V

    return-void
.end method
