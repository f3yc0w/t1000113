.class final Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
.super Ljava/lang/Object;
.source "ServerSideAdInsertionMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaPeriod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPeriodImpl"
.end annotation


# instance fields
.field public callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

.field public final drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

.field public hasNotifiedDownstreamFormatChange:[Z

.field public lastStartPositionUs:J

.field public final mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field public final mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

.field public final sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;)V
    .locals 0

    .line 1092
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1093
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    .line 1094
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    .line 1095
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    .line 1096
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->drmEventDispatcher:Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener$EventDispatcher;

    const/4 p1, 0x0

    new-array p1, p1, [Z

    .line 1097
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    return-void
.end method


# virtual methods
.method public continueLoading(J)Z
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->continueLoading(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(JZ)V
    .locals 1

    .line 1142
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->discardBuffer(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J
    .locals 1

    .line 1157
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getAdjustedSeekPositionUs(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JLcom/google/android/exoplr2avp/SeekParameters;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs()J
    .locals 2

    .line 1163
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getBufferedPositionUs(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNextLoadPositionUs()J
    .locals 2

    .line 1168
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getNextLoadPositionUs(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getStreamKeys(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;"
        }
    .end annotation

    .line 1118
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 1178
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->isLoading(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)Z

    move-result v0

    return v0
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 1102
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    .line 1103
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {p1, p0, p2, p3}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->prepare(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V

    return-void
.end method

.method public readDiscontinuity()J
    .locals 2

    .line 1147
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->readDiscontinuity(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    move-result-wide v0

    return-wide v0
.end method

.method public reevaluateBuffer(J)V
    .locals 1

    .line 1183
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->reevaluateBuffer(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V

    return-void
.end method

.method public seekToUs(J)J
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->seekToUs(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplr2avp/source/SampleStream;[ZJ)J
    .locals 9

    .line 1128
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    array-length v0, v0

    if-nez v0, :cond_0

    .line 1129
    array-length v0, p3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    .line 1131
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->sharedPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-wide v7, p5

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->selectTracks(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplr2avp/source/SampleStream;[ZJ)J

    move-result-wide p1

    return-wide p1
.end method
