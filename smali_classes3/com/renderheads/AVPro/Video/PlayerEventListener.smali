.class public final Lcom/renderheads/AVPro/Video/PlayerEventListener;
.super Ljava/lang/Object;
.source "PlayerEventListener.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Player$Listener;
.implements Lcom/google/android/exoplr2avp/metadata/MetadataOutput;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackSelector"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AVProVideo"

    .line 2
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/PlayerEventListener;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/PlayerEventListener;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    .line 8
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/PlayerEventListener;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    return-void
.end method

.method public static getAdaptiveSupportString(II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "trackCount",
            "adaptiveSupport"
        }
    .end annotation

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const-string p0, "N/A"

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    const/16 p0, 0x8

    if-eq p1, p0, :cond_2

    const/16 p0, 0x10

    if-eq p1, p0, :cond_1

    const-string p0, "?"

    return-object p0

    :cond_1
    const-string p0, "YES"

    return-object p0

    :cond_2
    const-string p0, "YES_NOT_SEAMLESS"

    return-object p0

    :cond_3
    const-string p0, "NO"

    return-object p0
.end method

.method private static getRepeatModeString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatMode"
        }
    .end annotation

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "ALL"

    return-object p0

    :cond_1
    const-string p0, "ONE"

    return-object p0

    :cond_2
    const-string p0, "OFF"

    return-object p0
.end method

.method private static getStateString(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string p0, "?"

    return-object p0

    :cond_0
    const-string p0, "E"

    return-object p0

    :cond_1
    const-string p0, "R"

    return-object p0

    :cond_2
    const-string p0, "B"

    return-object p0

    :cond_3
    const-string p0, "I"

    return-object p0
.end method

.method public static getTrackStatusString(Lcom/google/android/exoplr2avp/trackselection/TrackSelection;Lcom/google/android/exoplr2avp/source/TrackGroup;I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "selection",
            "group",
            "trackIndex"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplr2avp/trackselection/TrackSelection;->getTrackGroup()Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2
    invoke-interface {p0, p2}, Lcom/google/android/exoplr2avp/trackselection/TrackSelection;->indexOf(I)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 3
    :goto_0
    invoke-static {p0}, Lcom/renderheads/AVPro/Video/PlayerEventListener;->getTrackStatusString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTrackStatusString(Z)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    if-eqz p0, :cond_0

    const-string p0, "[X]"

    goto :goto_0

    :cond_0
    const-string p0, "[ ]"

    :goto_0
    return-object p0
.end method

.method private printMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "metadata",
            "prefix"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/metadata/Metadata;->length()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/metadata/Metadata;->get(I)Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lcom/google/android/exoplr2avp/metadata/id3/TextInformationFrame;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lcom/google/android/exoplr2avp/metadata/id3/TextInformationFrame;

    new-array v2, v3, [Ljava/lang/Object;

    .line 5
    iget-object v3, v1, Lcom/google/android/exoplr2avp/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    aput-object v3, v2, p2

    iget-object v1, v1, Lcom/google/android/exoplr2avp/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "%s: value=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .line 7
    :cond_0
    instance-of v2, v1, Lcom/google/android/exoplr2avp/metadata/id3/UrlLinkFrame;

    if-eqz v2, :cond_1

    .line 8
    check-cast v1, Lcom/google/android/exoplr2avp/metadata/id3/UrlLinkFrame;

    new-array v2, v3, [Ljava/lang/Object;

    .line 9
    iget-object v3, v1, Lcom/google/android/exoplr2avp/metadata/id3/UrlLinkFrame;->id:Ljava/lang/String;

    aput-object v3, v2, p2

    iget-object v1, v1, Lcom/google/android/exoplr2avp/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "%s: url=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .line 10
    :cond_1
    instance-of v2, v1, Lcom/google/android/exoplr2avp/metadata/id3/PrivFrame;

    if-eqz v2, :cond_2

    .line 11
    check-cast v1, Lcom/google/android/exoplr2avp/metadata/id3/PrivFrame;

    new-array v2, v3, [Ljava/lang/Object;

    .line 12
    iget-object v3, v1, Lcom/google/android/exoplr2avp/metadata/id3/PrivFrame;->id:Ljava/lang/String;

    aput-object v3, v2, p2

    iget-object v1, v1, Lcom/google/android/exoplr2avp/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    aput-object v1, v2, v4

    const-string v1, "%s: owner=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .line 13
    :cond_2
    instance-of v2, v1, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;

    const/4 v5, 0x3

    if-eqz v2, :cond_3

    .line 14
    check-cast v1, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    .line 15
    iget-object v6, v1, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;->id:Ljava/lang/String;

    aput-object v6, v2, p2

    iget-object v6, v1, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    aput-object v6, v2, v4

    iget-object v4, v1, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    aput-object v4, v2, v3

    iget-object v1, v1, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    aput-object v1, v2, v5

    const-string v1, "%s: mimeType=%s, filename=%s, description=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 17
    :cond_3
    instance-of v2, v1, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;

    if-eqz v2, :cond_4

    .line 18
    check-cast v1, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;

    new-array v2, v5, [Ljava/lang/Object;

    .line 19
    iget-object v5, v1, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;->id:Ljava/lang/String;

    aput-object v5, v2, p2

    iget-object v5, v1, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    aput-object v5, v2, v4

    iget-object v1, v1, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v1, "%s: mimeType=%s, description=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 21
    :cond_4
    instance-of v2, v1, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;

    if-eqz v2, :cond_5

    .line 22
    check-cast v1, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;

    new-array v2, v5, [Ljava/lang/Object;

    .line 23
    iget-object v5, v1, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;->id:Ljava/lang/String;

    aput-object v5, v2, p2

    iget-object v5, v1, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    aput-object v5, v2, v4

    iget-object v1, v1, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v1, "%s: language=%s, description=%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 25
    :cond_5
    instance-of v2, v1, Lcom/google/android/exoplr2avp/metadata/id3/Id3Frame;

    if-eqz v2, :cond_6

    .line 26
    check-cast v1, Lcom/google/android/exoplr2avp/metadata/id3/Id3Frame;

    new-array v2, v4, [Ljava/lang/Object;

    .line 27
    iget-object v1, v1, Lcom/google/android/exoplr2avp/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    aput-object v1, v2, p2

    const-string v1, "%s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 28
    :cond_6
    instance-of v2, v1, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;

    if-eqz v2, :cond_7

    .line 29
    check-cast v1, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;

    new-array v2, v5, [Ljava/lang/Object;

    .line 30
    iget-object v5, v1, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    aput-object v5, v2, p2

    iget-wide v5, v1, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;->id:J

    .line 31
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    iget-object v1, v1, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    aput-object v1, v2, v3

    const-string v1, "EMSG: scheme=%s, id=%d, value=%s"

    .line 32
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_7
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
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

.method public onMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/metadata/Metadata;->toString()Ljava/lang/String;

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackState"
        }
    .end annotation

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/Player$Listener;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

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

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V

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

.method public onTracksChanged(Lcom/google/android/exoplr2avp/Tracks;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracks"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/Tracks$Group;

    const/4 v3, 0x0

    .line 6
    :goto_1
    iget v4, v2, Lcom/google/android/exoplr2avp/Tracks$Group;->length:I

    if-ge v3, v4, :cond_2

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/Tracks$Group;->isTrackSelected(I)Z

    move-result v4

    invoke-static {v4}, Lcom/renderheads/AVPro/Video/PlayerEventListener;->getTrackStatusString(Z)Ljava/lang/String;

    .line 8
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/Tracks$Group;->getTrackSupport(I)I

    move-result v4

    invoke-static {v4}, Lcom/google/android/exoplr2avp/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    .line 9
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v4

    .line 16
    invoke-static {v4}, Lcom/google/android/exoplr2avp/Format;->toLogString(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    iget v5, v4, Lcom/google/android/exoplr2avp/Format;->stereoMode:I

    iget-object v5, v4, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    if-eqz v5, :cond_0

    .line 20
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/video/ColorInfo;->toString()Ljava/lang/String;

    :cond_0
    iget-object v5, v4, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    :cond_1
    iget-object v4, v4, Lcom/google/android/exoplr2avp/Format;->label:Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    if-nez v1, :cond_6

    .line 29
    invoke-virtual {p1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 30
    invoke-virtual {p1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/Tracks$Group;

    const/4 v4, 0x0

    :goto_3
    if-nez v1, :cond_5

    .line 31
    iget v5, v3, Lcom/google/android/exoplr2avp/Tracks$Group;->length:I

    if-ge v4, v5, :cond_5

    .line 32
    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/Tracks$Group;->isTrackSelected(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 33
    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/Tracks$Group;->getTrackFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/exoplr2avp/Format;->metadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    if-eqz v5, :cond_4

    .line 34
    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/metadata/Metadata;->length()I

    move-result v6

    if-lez v6, :cond_4

    const-string v1, "        "

    .line 37
    invoke-direct {p0, v5, v1}, Lcom/renderheads/AVPro/Video/PlayerEventListener;->printMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
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
