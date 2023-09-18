.class public interface abstract Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;,
        Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventFlags;,
        Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;
    }
.end annotation


# static fields
.field public static final EVENT_AUDIO_ATTRIBUTES_CHANGED:I = 0x14

.field public static final EVENT_AUDIO_CODEC_ERROR:I = 0x405

.field public static final EVENT_AUDIO_DECODER_INITIALIZED:I = 0x3f0

.field public static final EVENT_AUDIO_DECODER_RELEASED:I = 0x3f4

.field public static final EVENT_AUDIO_DISABLED:I = 0x3f5

.field public static final EVENT_AUDIO_ENABLED:I = 0x3ef

.field public static final EVENT_AUDIO_INPUT_FORMAT_CHANGED:I = 0x3f1

.field public static final EVENT_AUDIO_POSITION_ADVANCING:I = 0x3f2

.field public static final EVENT_AUDIO_SESSION_ID:I = 0x15

.field public static final EVENT_AUDIO_SINK_ERROR:I = 0x3f6

.field public static final EVENT_AUDIO_UNDERRUN:I = 0x3f3

.field public static final EVENT_AVAILABLE_COMMANDS_CHANGED:I = 0xd

.field public static final EVENT_BANDWIDTH_ESTIMATE:I = 0x3ee

.field public static final EVENT_CUES:I = 0x1b

.field public static final EVENT_DEVICE_INFO_CHANGED:I = 0x1d

.field public static final EVENT_DEVICE_VOLUME_CHANGED:I = 0x1e

.field public static final EVENT_DOWNSTREAM_FORMAT_CHANGED:I = 0x3ec

.field public static final EVENT_DRM_KEYS_LOADED:I = 0x3ff

.field public static final EVENT_DRM_KEYS_REMOVED:I = 0x402

.field public static final EVENT_DRM_KEYS_RESTORED:I = 0x401

.field public static final EVENT_DRM_SESSION_ACQUIRED:I = 0x3fe

.field public static final EVENT_DRM_SESSION_MANAGER_ERROR:I = 0x400

.field public static final EVENT_DRM_SESSION_RELEASED:I = 0x403

.field public static final EVENT_DROPPED_VIDEO_FRAMES:I = 0x3fa

.field public static final EVENT_IS_LOADING_CHANGED:I = 0x3

.field public static final EVENT_IS_PLAYING_CHANGED:I = 0x7

.field public static final EVENT_LOAD_CANCELED:I = 0x3ea

.field public static final EVENT_LOAD_COMPLETED:I = 0x3e9

.field public static final EVENT_LOAD_ERROR:I = 0x3eb

.field public static final EVENT_LOAD_STARTED:I = 0x3e8

.field public static final EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED:I = 0x12

.field public static final EVENT_MEDIA_ITEM_TRANSITION:I = 0x1

.field public static final EVENT_MEDIA_METADATA_CHANGED:I = 0xe

.field public static final EVENT_METADATA:I = 0x1c

.field public static final EVENT_PLAYBACK_PARAMETERS_CHANGED:I = 0xc

.field public static final EVENT_PLAYBACK_STATE_CHANGED:I = 0x4

.field public static final EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED:I = 0x6

.field public static final EVENT_PLAYER_ERROR:I = 0xa

.field public static final EVENT_PLAYER_RELEASED:I = 0x404

.field public static final EVENT_PLAYLIST_METADATA_CHANGED:I = 0xf

.field public static final EVENT_PLAY_WHEN_READY_CHANGED:I = 0x5

.field public static final EVENT_POSITION_DISCONTINUITY:I = 0xb

.field public static final EVENT_RENDERED_FIRST_FRAME:I = 0x1a

.field public static final EVENT_REPEAT_MODE_CHANGED:I = 0x8

.field public static final EVENT_SEEK_BACK_INCREMENT_CHANGED:I = 0x10

.field public static final EVENT_SEEK_FORWARD_INCREMENT_CHANGED:I = 0x11

.field public static final EVENT_SHUFFLE_MODE_ENABLED_CHANGED:I = 0x9

.field public static final EVENT_SKIP_SILENCE_ENABLED_CHANGED:I = 0x17

.field public static final EVENT_SURFACE_SIZE_CHANGED:I = 0x18

.field public static final EVENT_TIMELINE_CHANGED:I = 0x0

.field public static final EVENT_TRACKS_CHANGED:I = 0x2

.field public static final EVENT_TRACK_SELECTION_PARAMETERS_CHANGED:I = 0x13

.field public static final EVENT_UPSTREAM_DISCARDED:I = 0x3ed

.field public static final EVENT_VIDEO_CODEC_ERROR:I = 0x406

.field public static final EVENT_VIDEO_DECODER_INITIALIZED:I = 0x3f8

.field public static final EVENT_VIDEO_DECODER_RELEASED:I = 0x3fb

.field public static final EVENT_VIDEO_DISABLED:I = 0x3fc

.field public static final EVENT_VIDEO_ENABLED:I = 0x3f7

.field public static final EVENT_VIDEO_FRAME_PROCESSING_OFFSET:I = 0x3fd

.field public static final EVENT_VIDEO_INPUT_FORMAT_CHANGED:I = 0x3f9

.field public static final EVENT_VIDEO_SIZE_CHANGED:I = 0x19

.field public static final EVENT_VOLUME_CHANGED:I = 0x16


# virtual methods
.method public abstract onAudioAttributesChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
.end method

.method public abstract onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
.end method

.method public abstract onAudioDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onAudioDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
.end method

.method public abstract onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
.end method

.method public abstract onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onAudioUnderrun(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
.end method

.method public abstract onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V
.end method

.method public abstract onBandwidthEstimate(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
.end method

.method public abstract onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;)V
.end method

.method public abstract onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDecoderDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDecoderEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDecoderInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Format;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDeviceInfoChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;)V
.end method

.method public abstract onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZ)V
.end method

.method public abstract onDownstreamFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
.end method

.method public abstract onDrmKeysLoaded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmKeysRemoved(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmKeysRestored(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onDrmSessionManagerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onDrmSessionReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDroppedVideoFrames(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJ)V
.end method

.method public abstract onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V
.end method

.method public abstract onIsLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onIsPlayingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onLoadCanceled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
.end method

.method public abstract onLoadCompleted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
.end method

.method public abstract onLoadError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
.end method

.method public abstract onLoadStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
.end method

.method public abstract onLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
.end method

.method public abstract onMediaItemTransition(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V
.end method

.method public abstract onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V
.end method

.method public abstract onMetadata(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V
.end method

.method public abstract onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V
.end method

.method public abstract onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V
.end method

.method public abstract onPlaybackStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onPlayerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V
.end method

.method public abstract onPlayerErrorChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V
.end method

.method public abstract onPlayerReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onPlayerStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V
.end method

.method public abstract onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V
.end method

.method public abstract onRenderedFirstFrame(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
.end method

.method public abstract onRepeatModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
.end method

.method public abstract onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
.end method

.method public abstract onSeekProcessed(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSeekStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onShuffleModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V
.end method

.method public abstract onTimelineChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
.end method

.method public abstract onTracksChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V
.end method

.method public abstract onUpstreamDiscarded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
.end method

.method public abstract onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
.end method

.method public abstract onVideoDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onVideoDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JI)V
.end method

.method public abstract onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
.end method

.method public abstract onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/video/VideoSize;)V
.end method

.method public abstract onVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V
.end method
