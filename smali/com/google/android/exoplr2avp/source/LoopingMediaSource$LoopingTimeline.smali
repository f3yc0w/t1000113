.class final Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;
.super Lcom/google/android/exoplr2avp/AbstractConcatenatedTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LoopingTimeline"
.end annotation


# instance fields
.field private final childPeriodCount:I

.field private final childTimeline:Lcom/google/android/exoplr2avp/Timeline;

.field private final childWindowCount:I

.field private final loopCount:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Timeline;I)V
    .locals 2

    .line 149
    new-instance v0, Lcom/google/android/exoplr2avp/source/ShuffleOrder$UnshuffledShuffleOrder;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/source/ShuffleOrder$UnshuffledShuffleOrder;-><init>(I)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/google/android/exoplr2avp/AbstractConcatenatedTimeline;-><init>(ZLcom/google/android/exoplr2avp/source/ShuffleOrder;)V

    .line 150
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 151
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    .line 152
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    .line 153
    iput p2, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    if-lez v0, :cond_1

    const p1, 0x7fffffff

    .line 155
    div-int/2addr p1, v0

    if-gt p2, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string p1, "LoopingMediaSource contains too many periods"

    invoke-static {v1, p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(ZLjava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getChildIndexByChildUid(Ljava/lang/Object;)I
    .locals 1

    .line 183
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 186
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method protected getChildIndexByPeriodIndex(I)I
    .locals 1

    .line 173
    iget v0, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    div-int/2addr p1, v0

    return p1
.end method

.method protected getChildIndexByWindowIndex(I)I
    .locals 1

    .line 178
    iget v0, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    div-int/2addr p1, v0

    return p1
.end method

.method protected getChildUidByChildIndex(I)Ljava/lang/Object;
    .locals 0

    .line 206
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected getFirstPeriodIndexByChildIndex(I)I
    .locals 1

    .line 196
    iget v0, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    mul-int p1, p1, v0

    return p1
.end method

.method protected getFirstWindowIndexByChildIndex(I)I
    .locals 1

    .line 201
    iget v0, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    mul-int p1, p1, v0

    return p1
.end method

.method public getPeriodCount()I
    .locals 2

    .line 168
    iget v0, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childPeriodCount:I

    iget v1, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int v0, v0, v1

    return v0
.end method

.method protected getTimelineByChildIndex(I)Lcom/google/android/exoplr2avp/Timeline;
    .locals 0

    .line 191
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childTimeline:Lcom/google/android/exoplr2avp/Timeline;

    return-object p1
.end method

.method public getWindowCount()I
    .locals 2

    .line 163
    iget v0, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->childWindowCount:I

    iget v1, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$LoopingTimeline;->loopCount:I

    mul-int v0, v0, v1

    return v0
.end method
