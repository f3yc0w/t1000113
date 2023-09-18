.class final Lcom/google/android/exoplr2avp/source/LoopingMediaSource$InfinitelyLoopingTimeline;
.super Lcom/google/android/exoplr2avp/source/ForwardingTimeline;
.source "LoopingMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/LoopingMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InfinitelyLoopingTimeline"
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 0

    .line 213
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method


# virtual methods
.method public getNextWindowIndex(IIZ)I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 220
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Timeline;->getNextWindowIndex(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 222
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getFirstWindowIndex(Z)I

    move-result p1

    :cond_0
    return p1
.end method

.method public getPreviousWindowIndex(IIZ)I
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$InfinitelyLoopingTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    .line 230
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    .line 232
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/source/LoopingMediaSource$InfinitelyLoopingTimeline;->getLastWindowIndex(Z)I

    move-result p1

    :cond_0
    return p1
.end method
