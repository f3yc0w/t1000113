.class final Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;
.super Ljava/lang/Object;
.source "ServerSideAdInsertionMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SharedMediaPeriod"
.end annotation


# instance fields
.field private final activeLoads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/util/Pair<",
            "Lcom/google/android/exoplr2avp/source/LoadEventInfo;",
            "Lcom/google/android/exoplr2avp/source/MediaLoadData;",
            ">;>;"
        }
    .end annotation
.end field

.field private final actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

.field private adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

.field private hasStartedPreparing:Z

.field private isPrepared:Z

.field public lastDownstreamFormatChangeData:[Lcom/google/android/exoplr2avp/source/MediaLoadData;

.field private loadingPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

.field private final mediaPeriods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final periodUid:Ljava/lang/Object;

.field public sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

.field public trackSelections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaPeriod;Ljava/lang/Object;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)V
    .locals 0

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 632
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 633
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->periodUid:Ljava/lang/Object;

    .line 634
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 635
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    .line 636
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->activeLoads:Ljava/util/Map;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 637
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    new-array p2, p1, [Lcom/google/android/exoplr2avp/source/SampleStream;

    .line 638
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    new-array p1, p1, [Lcom/google/android/exoplr2avp/source/MediaLoadData;

    .line 639
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->lastDownstreamFormatChangeData:[Lcom/google/android/exoplr2avp/source/MediaLoadData;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/lang/Object;
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->periodUid:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;)Ljava/util/List;
    .locals 0

    .line 615
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    return-object p0
.end method

.method private findMatchingStreamIndex(Lcom/google/android/exoplr2avp/source/MediaLoadData;)I
    .locals 8

    .line 955
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 958
    :goto_0
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    array-length v4, v3

    if-ge v2, v4, :cond_5

    .line 959
    aget-object v4, v3, v2

    if-eqz v4, :cond_4

    .line 960
    aget-object v3, v3, v2

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getTrackGroup()Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v3

    .line 963
    iget v4, p1, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackType:I

    if-nez v4, :cond_1

    .line 965
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x0

    .line 966
    :goto_2
    iget v6, v3, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v5, v6, :cond_4

    .line 967
    invoke-virtual {v3, v5}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v6

    .line 968
    iget-object v7, p1, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplr2avp/Format;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v4, :cond_2

    iget-object v7, v6, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    if-eqz v7, :cond_2

    iget-object v6, v6, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    iget-object v7, p1, Lcom/google/android/exoplr2avp/source/MediaLoadData;->trackFormat:Lcom/google/android/exoplr2avp/Format;

    iget-object v7, v7, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    .line 971
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private getMediaPeriodPositionUsWithEndOfSourceHandling(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J
    .locals 4

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-wide v0

    .line 948
    :cond_0
    iget-object v2, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 949
    invoke-static {p2, p3, v2, v3}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p2

    .line 950
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {p1, v2}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;->access$300(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v2

    cmp-long p1, p2, v2

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    move-wide v0, p2

    :goto_0
    return-wide v0
.end method

.method private getStreamPositionUsWithNotYetStartedHandling(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J
    .locals 4

    .line 934
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->lastStartPositionUs:J

    cmp-long v2, p2, v0

    if-gez v2, :cond_0

    .line 935
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->lastStartPositionUs:J

    iget-object v2, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 936
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v0

    .line 938
    iget-wide v2, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->lastStartPositionUs:J

    sub-long/2addr v2, p2

    sub-long/2addr v0, v2

    return-wide v0

    .line 940
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {p2, p3, p1, v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p1

    return-wide p1
.end method

.method private maybeNotifyDownstreamFormatChanged(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;I)V
    .locals 2

    .line 981
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    aget-boolean v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->lastDownstreamFormatChangeData:[Lcom/google/android/exoplr2avp/source/MediaLoadData;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p2

    .line 984
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->lastDownstreamFormatChangeData:[Lcom/google/android/exoplr2avp/source/MediaLoadData;

    aget-object p2, v1, p2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 985
    invoke-static {p1, p2, v1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;->access$400(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplr2avp/source/MediaLoadData;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)Lcom/google/android/exoplr2avp/source/MediaLoadData;

    move-result-object p1

    .line 984
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->downstreamFormatChanged(Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)V
    .locals 1

    .line 647
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canReuseMediaPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;J)Z
    .locals 4

    .line 667
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Iterables;->getLast(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 668
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 670
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;->access$300(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v1

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 669
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v0

    .line 673
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {p2, p3, p1, v2}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-nez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public continueLoading(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)Z
    .locals 7

    .line 723
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->activeLoads:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 726
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 728
    invoke-static {v0, v5, v6}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;->access$400(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplr2avp/source/MediaLoadData;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)Lcom/google/android/exoplr2avp/source/MediaLoadData;

    move-result-object v5

    .line 726
    invoke-virtual {v3, v4, v5}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    .line 729
    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaSourceEventDispatcher:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/exoplr2avp/source/MediaLoadData;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 730
    invoke-static {p1, v2, v5}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;->access$400(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplr2avp/source/MediaLoadData;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)Lcom/google/android/exoplr2avp/source/MediaLoadData;

    move-result-object v2

    .line 729
    invoke-virtual {v3, v4, v2}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    goto :goto_0

    .line 733
    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 735
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getStreamPositionUsWithNotYetStartedHandling(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J

    move-result-wide p1

    .line 736
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->continueLoading(J)Z

    move-result p1

    return p1
.end method

.method public discardBuffer(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JZ)V
    .locals 1

    .line 772
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 773
    invoke-static {p2, p3, p1, v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p1

    .line 774
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {p3, p1, p2, p4}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->discardBuffer(JZ)V

    return-void
.end method

.method public getAdjustedSeekPositionUs(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;JLcom/google/android/exoplr2avp/SeekParameters;)J
    .locals 2

    .line 763
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 764
    invoke-static {p2, p3, v0, v1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p2

    .line 765
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 766
    invoke-interface {v0, p2, p3, p4}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J

    move-result-wide p2

    .line 767
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object p4, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {p2, p3, p1, p4}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p1

    return-wide p1
.end method

.method public getBufferedPositionUs(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 745
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    .line 744
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getMediaPeriodPositionUsWithEndOfSourceHandling(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaPeriodForEvent(Lcom/google/android/exoplr2avp/source/MediaLoadData;)Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;
    .locals 9

    if-eqz p1, :cond_1

    .line 679
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/source/MediaLoadData;->mediaStartTimeMs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    .line 680
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 681
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 682
    iget-wide v2, p1, Lcom/google/android/exoplr2avp/source/MediaLoadData;->mediaStartTimeMs:J

    .line 684
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v2

    iget-object v4, v1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 683
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v2

    .line 687
    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {v1, v4}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource;->access$300(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-ltz v8, :cond_0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNextLoadPositionUs(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 750
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    .line 749
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getMediaPeriodPositionUsWithEndOfSourceHandling(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J

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

    .line 719
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getStreamKeys(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->getTrackGroups()Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public isLoading(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)Z
    .locals 1

    .line 740
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->isLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isReady(I)Z
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/SampleStream;->isReady()Z

    move-result p1

    return p1
.end method

.method public isUnused()Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public maybeThrowError(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 893
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/SampleStream;->maybeThrowError()V

    return-void
.end method

.method public maybeThrowPrepareError()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 711
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->maybeThrowPrepareError()V

    return-void
.end method

.method public onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 1

    .line 926
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    if-nez p1, :cond_0

    return-void

    .line 929
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;->onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/SequenceableLoader;)V

    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/SequenceableLoader;)V
    .locals 0

    .line 615
    check-cast p1, Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->onContinueLoadingRequested(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    return-void
.end method

.method public onDownstreamFormatChanged(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 2

    .line 898
    invoke-direct {p0, p2}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->findMatchingStreamIndex(Lcom/google/android/exoplr2avp/source/MediaLoadData;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 900
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->lastDownstreamFormatChangeData:[Lcom/google/android/exoplr2avp/source/MediaLoadData;

    aput-object p2, v1, v0

    .line 901
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->hasNotifiedDownstreamFormatChange:[Z

    const/4 p2, 0x1

    aput-boolean p2, p1, v0

    :cond_0
    return-void
.end method

.method public onLoadFinished(Lcom/google/android/exoplr2avp/source/LoadEventInfo;)V
    .locals 3

    .line 910
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->activeLoads:Ljava/util/Map;

    iget-wide v1, p1, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->loadTaskId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onLoadStarted(Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 3

    .line 906
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->activeLoads:Ljava/util/Map;

    iget-wide v1, p1, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->loadTaskId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
    .locals 2

    const/4 p1, 0x1

    .line 915
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->isPrepared:Z

    const/4 p1, 0x0

    .line 916
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 917
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 918
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    if-eqz v1, :cond_0

    .line 919
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public prepare(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V
    .locals 1

    .line 697
    iput-wide p2, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->lastStartPositionUs:J

    .line 698
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->hasStartedPreparing:Z

    if-eqz v0, :cond_1

    .line 699
    iget-boolean p2, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->isPrepared:Z

    if-eqz p2, :cond_0

    .line 700
    iget-object p2, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->callback:Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;

    invoke-interface {p2, p1}, Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;->onPrepared(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 704
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->hasStartedPreparing:Z

    .line 705
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 706
    invoke-static {p2, p3, p1, v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p1

    .line 707
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {p3, p0, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->prepare(Lcom/google/android/exoplr2avp/source/MediaPeriod$Callback;J)V

    return-void
.end method

.method public readData(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;ILcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I
    .locals 10

    or-int/lit8 v0, p5, 0x1

    const/4 v1, 0x4

    or-int/2addr v0, v1

    .line 861
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object v2, v2, p2

    .line 862
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {v2, p3, p4, v0}, Lcom/google/android/exoplr2avp/source/SampleStream;->readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    move-result v0

    .line 863
    iget-wide v2, p4, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    .line 864
    invoke-direct {p0, p1, v2, v3}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getMediaPeriodPositionUsWithEndOfSourceHandling(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, -0x4

    if-ne v0, v6, :cond_0

    cmp-long v7, v2, v4

    if-eqz v7, :cond_1

    :cond_0
    const/4 v7, -0x3

    if-ne v0, v7, :cond_2

    .line 867
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getBufferedPositionUs(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J

    move-result-wide v7

    cmp-long v9, v7, v4

    if-nez v9, :cond_2

    iget-boolean v4, p4, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->waitingForKeys:Z

    if-nez v4, :cond_2

    .line 869
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->maybeNotifyDownstreamFormatChanged(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;I)V

    .line 870
    invoke-virtual {p4}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->clear()V

    .line 871
    invoke-virtual {p4, v1}, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->addFlag(I)V

    return v6

    :cond_2
    if-ne v0, v6, :cond_3

    .line 875
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->maybeNotifyDownstreamFormatChanged(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;I)V

    .line 876
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {p1, p3, p4, p5}, Lcom/google/android/exoplr2avp/source/SampleStream;->readData(Lcom/google/android/exoplr2avp/FormatHolder;Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;I)I

    .line 877
    iput-wide v2, p4, Lcom/google/android/exoplr2avp/decoder/DecoderInputBuffer;->timeUs:J

    :cond_3
    return v0
.end method

.method public readDiscontinuity(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)J
    .locals 5

    .line 783
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_0

    return-wide v1

    .line 786
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->readDiscontinuity()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    goto :goto_0

    .line 789
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {v3, v4, p1, v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public reevaluateBuffer(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)V
    .locals 1

    .line 778
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    .line 779
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->getStreamPositionUsWithNotYetStartedHandling(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J

    move-result-wide p1

    .line 778
    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->reevaluateBuffer(J)V

    return-void
.end method

.method public release(Lcom/google/android/exoplr2avp/source/MediaSource;)V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/source/MediaSource;->releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V

    return-void
.end method

.method public remove(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;)V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 652
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->loadingPeriod:Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;

    .line 653
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->activeLoads:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public seekToUs(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;J)J
    .locals 2

    .line 754
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 755
    invoke-static {p2, p3, v0, v1}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p2

    .line 756
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    invoke-interface {v0, p2, p3}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->seekToUs(J)J

    move-result-wide p2

    .line 757
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {p2, p3, p1, v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p1

    return-wide p1
.end method

.method public selectTracks(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplr2avp/source/SampleStream;[ZJ)J
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-wide/from16 v4, p6

    .line 800
    iput-wide v4, v1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->lastStartPositionUs:J

    .line 801
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->mediaPeriods:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x0

    if-eqz v2, :cond_5

    .line 803
    array-length v2, v3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    iput-object v2, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 804
    iget-object v2, v1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v6, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 805
    invoke-static {v4, v5, v2, v6}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v7

    .line 808
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    array-length v4, v2

    if-nez v4, :cond_0

    .line 809
    array-length v2, v3

    new-array v2, v2, [Lcom/google/android/exoplr2avp/source/SampleStream;

    goto :goto_0

    .line 810
    :cond_0
    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/google/android/exoplr2avp/source/SampleStream;

    :goto_0
    move-object v11, v2

    .line 811
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->actualMediaPeriod:Lcom/google/android/exoplr2avp/source/MediaPeriod;

    move-object v3, p2

    move-object v4, p3

    move-object v5, v11

    move-object/from16 v6, p5

    .line 812
    invoke-interface/range {v2 .. v8}, Lcom/google/android/exoplr2avp/source/MediaPeriod;->selectTracks([Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;[Z[Lcom/google/android/exoplr2avp/source/SampleStream;[ZJ)J

    move-result-wide v2

    .line 818
    array-length v4, v11

    invoke-static {v11, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplr2avp/source/SampleStream;

    iput-object v4, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    .line 819
    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->lastDownstreamFormatChangeData:[Lcom/google/android/exoplr2avp/source/MediaLoadData;

    array-length v5, v11

    .line 820
    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lcom/google/android/exoplr2avp/source/MediaLoadData;

    iput-object v4, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->lastDownstreamFormatChangeData:[Lcom/google/android/exoplr2avp/source/MediaLoadData;

    .line 821
    :goto_1
    array-length v4, v11

    if-ge v9, v4, :cond_4

    .line 822
    aget-object v4, v11, v9

    if-nez v4, :cond_1

    .line 823
    aput-object v10, p4, v9

    .line 824
    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->lastDownstreamFormatChangeData:[Lcom/google/android/exoplr2avp/source/MediaLoadData;

    aput-object v10, v4, v9

    goto :goto_2

    .line 825
    :cond_1
    aget-object v4, p4, v9

    if-eqz v4, :cond_2

    aget-boolean v4, p5, v9

    if-eqz v4, :cond_3

    .line 826
    :cond_2
    new-instance v4, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;

    invoke-direct {v4, p1, v9}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;-><init>(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;I)V

    aput-object v4, p4, v9

    .line 827
    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->lastDownstreamFormatChangeData:[Lcom/google/android/exoplr2avp/source/MediaLoadData;

    aput-object v10, v4, v9

    :cond_3
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 830
    :cond_4
    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    invoke-static {v2, v3, v1, v4}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getMediaPeriodPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide v1

    return-wide v1

    :cond_5
    const/4 v2, 0x0

    .line 835
    :goto_3
    array-length v6, v3

    if-ge v2, v6, :cond_b

    .line 836
    aget-object v6, v3, v2

    const/4 v7, 0x1

    if-eqz v6, :cond_9

    .line 837
    aget-boolean v6, p3, v2

    if-eqz v6, :cond_7

    aget-object v6, p4, v2

    if-nez v6, :cond_6

    goto :goto_4

    :cond_6
    const/4 v7, 0x0

    :cond_7
    :goto_4
    aput-boolean v7, p5, v2

    .line 838
    aget-boolean v6, p5, v2

    if-eqz v6, :cond_a

    .line 840
    iget-object v6, v0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->trackSelections:[Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    aget-object v6, v6, v2

    aget-object v7, v3, v2

    invoke-static {v6, v7}, Lcom/google/android/exoplr2avp/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 841
    new-instance v6, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;

    invoke-direct {v6, p1, v2}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SampleStreamImpl;-><init>(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;I)V

    goto :goto_5

    .line 842
    :cond_8
    new-instance v6, Lcom/google/android/exoplr2avp/source/EmptySampleStream;

    invoke-direct {v6}, Lcom/google/android/exoplr2avp/source/EmptySampleStream;-><init>()V

    :goto_5
    aput-object v6, p4, v2

    goto :goto_6

    .line 845
    :cond_9
    aput-object v10, p4, v2

    .line 846
    aput-boolean v7, p5, v2

    :cond_a
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_b
    return-wide v4
.end method

.method public skipData(Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;IJ)I
    .locals 1

    .line 883
    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$MediaPeriodImpl;->mediaPeriodId:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    .line 884
    invoke-static {p3, p4, p1, v0}, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionUtil;->getStreamPositionUs(JLcom/google/android/exoplr2avp/source/MediaPeriodId;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)J

    move-result-wide p3

    .line 885
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->sampleStreams:[Lcom/google/android/exoplr2avp/source/SampleStream;

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/SampleStream;

    invoke-interface {p1, p3, p4}, Lcom/google/android/exoplr2avp/source/SampleStream;->skipData(J)I

    move-result p1

    return p1
.end method

.method public updateAdPlaybackState(Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)V
    .locals 0

    .line 643
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/ServerSideAdInsertionMediaSource$SharedMediaPeriod;->adPlaybackState:Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;

    return-void
.end method
