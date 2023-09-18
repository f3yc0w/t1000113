.class public Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;
.super Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection;
.source "LimitedAdaptiveTrackSelection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;,
        Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;
    }
.end annotation


# instance fields
.field private m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[IILcom/google/android/exoplr2avp/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lcom/google/android/exoplr2avp/util/Clock;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "tracks",
            "type",
            "bandwidthMeter",
            "minDurationForQualityIncreaseMs",
            "maxDurationForQualityDecreaseMs",
            "minDurationToRetainAfterDiscardMs",
            "maxWidthToDiscard",
            "maxHeightToDiscard",
            "bandwidthFraction",
            "bufferedFractionToLiveEdgeForQualityIncrease",
            "adaptationCheckpoints",
            "clock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/TrackGroup;",
            "[II",
            "Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;",
            "JJJIIFF",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;",
            ">;",
            "Lcom/google/android/exoplr2avp/util/Clock;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct/range {p0 .. p16}, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[IILcom/google/android/exoplr2avp/upstream/BandwidthMeter;JJJIIFFLjava/util/List;Lcom/google/android/exoplr2avp/util/Clock;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[ILcom/google/android/exoplr2avp/upstream/BandwidthMeter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "group",
            "tracks",
            "bandwidthMeter"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;[ILcom/google/android/exoplr2avp/upstream/BandwidthMeter;)V

    return-void
.end method

.method public static synthetic access$002(Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;)Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;->m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    return-object p1
.end method


# virtual methods
.method public canSelectFormat(Lcom/google/android/exoplr2avp/Format;IJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "format",
            "trackBitrate",
            "effectiveBitrate"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection;->canSelectFormat(Lcom/google/android/exoplr2avp/Format;IJ)Z

    move-result p3

    .line 2
    iget-object p4, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;->m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p4, :cond_3

    iget v2, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    .line 3
    iget v3, p4, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxWidth:I

    if-lez v3, :cond_0

    if-gt v2, v3, :cond_2

    :cond_0
    iget v2, p4, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxHeight:I

    if-lez v2, :cond_1

    if-gt p1, v2, :cond_2

    :cond_1
    iget p1, p4, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxBitrate:I

    if-lez p1, :cond_3

    if-gt p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "playbackPositionUs",
            "queue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;->m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    .line 5
    iget-boolean v2, v1, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_bDirty:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, v1, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_bDirty:Z

    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 9
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;

    .line 10
    iget-wide v4, v3, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;->startTimeUs:J

    cmp-long v6, p1, v4

    if-gtz v6, :cond_0

    .line 12
    iget-wide v4, v3, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;->startTimeUs:J

    .line 14
    iget-wide v3, v3, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;->startTimeUs:J

    sub-long/2addr v3, p1

    .line 15
    iget-object v5, p0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection;->m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/32 v5, 0x3d0900

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 25
    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    .line 27
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;

    .line 28
    iget-wide p2, p1, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;->endTimeUs:J

    iget-wide p1, p1, Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;->startTimeUs:J

    goto :goto_2

    .line 35
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/AdaptiveTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result v0

    :cond_3
    :goto_2
    return v0
.end method
