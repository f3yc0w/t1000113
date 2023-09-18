.class final Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;
.super Lcom/google/android/exoplr2avp/source/ForwardingTimeline;
.source "ServerSideAdInsertionMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ServerSideAdInsertionTimeline"
.end annotation


# instance fields
.field private final adPlaybackStates:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Timeline;Lcom/google/common/collect/ImmutableMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/Timeline;",
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;",
            ">;)V"
        }
    .end annotation

    .line 997
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;-><init>(Lcom/google/android/exoplr2avp/Timeline;)V

    .line 998
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 999
    new-instance v0, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 1000
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1001
    invoke-virtual {p1, v1, v0, v2}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1002
    iget-object v3, v0, Lcom/google/android/exoplr2avp/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1004
    :cond_1
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method


# virtual methods
.method public getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;
    .locals 12

    const/4 p3, 0x1

    .line 1035
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1036
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v1, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 1037
    iget-wide v0, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    const/4 v2, -0x1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    .line 1039
    iget-wide v0, v9, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;->contentDurationUs:J

    goto :goto_0

    .line 1042
    :cond_0
    invoke-static {v0, v1, v2, v9}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v0

    :goto_0
    move-wide v5, v0

    const-wide/16 v0, 0x0

    .line 1046
    new-instance v3, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    const/4 v4, 0x0

    move-wide v7, v0

    :goto_1
    add-int/lit8 v0, p1, 0x1

    if-ge v4, v0, :cond_3

    .line 1048
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->timeline:Lcom/google/android/exoplr2avp/Timeline;

    invoke-virtual {v0, v4, v3, p3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    .line 1049
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    iget-object v1, v3, Lcom/google/android/exoplr2avp/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    if-nez v4, :cond_1

    .line 1053
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v7

    neg-long v7, v7

    .line 1052
    invoke-static {v7, v8, v2, v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v7

    neg-long v7, v7

    :cond_1
    if-eq v4, p1, :cond_2

    .line 1058
    iget-wide v10, v3, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    .line 1059
    invoke-static {v10, v11, v2, v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v0

    add-long/2addr v7, v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1065
    :cond_3
    iget-object v2, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->id:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->uid:Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->windowIndex:I

    iget-boolean v10, p2, Lcom/google/android/exoplr2avp/Timeline$Period;->isPlaceholder:Z

    move-object v1, p2

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/exoplr2avp/Timeline$Period;->set(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/exoplr2avp/source/ads/AdPlaybackState;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    return-object p2
.end method

.method public getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;
    .locals 5

    .line 1009
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/ForwardingTimeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;J)Lcom/google/android/exoplr2avp/Timeline$Window;

    .line 1010
    iget p1, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->firstPeriodIndex:I

    new-instance p3, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {p3}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    const/4 p4, 0x1

    .line 1011
    invoke-virtual {p0, p1, p3, p4}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;Z)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Timeline$Period;->uid:Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1012
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->adPlaybackStates:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {p3, p1}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 1013
    iget-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    const/4 v0, -0x1

    .line 1014
    invoke-static {p3, p4, v0, p1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUsForContent(JILcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p3

    .line 1018
    iget-wide v0, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1019
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;->contentDurationUs:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 1020
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;->contentDurationUs:J

    sub-long/2addr v0, p3

    iput-wide v0, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    goto :goto_1

    .line 1023
    :cond_0
    iget p1, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->lastPeriodIndex:I

    new-instance v0, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$ServerSideAdInsertionTimeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object p1

    .line 1025
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    goto :goto_0

    .line 1027
    :cond_1
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/Timeline$Period;->positionInWindowUs:J

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/Timeline$Period;->durationUs:J

    add-long/2addr v2, v0

    :goto_0
    iput-wide v2, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    .line 1029
    :cond_2
    :goto_1
    iput-wide p3, p2, Lcom/google/android/exoplr2avp/Timeline$Window;->positionInFirstPeriodUs:J

    return-object p2
.end method
