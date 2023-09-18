.class public final Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;
.super Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunkIterator;
.source "DefaultDashChunkSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "RepresentationSegmentIterator"
.end annotation


# instance fields
.field private final nowPeriodTimeUs:J

.field private final representationHolder:Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;JJJ)V
    .locals 0

    .line 761
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/exoplr2avp/source/chunk/BaseMediaChunkIterator;-><init>(JJ)V

    .line 762
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    .line 763
    iput-wide p6, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->nowPeriodTimeUs:J

    return-void
.end method


# virtual methods
.method public getChunkEndTimeUs()J
    .locals 3

    .line 790
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->checkInBounds()V

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->getCurrentIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentEndTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getChunkStartTimeUs()J
    .locals 3

    .line 784
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->checkInBounds()V

    .line 785
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->getCurrentIndex()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentStartTimeUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDataSpec()Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 6

    .line 768
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->checkInBounds()V

    .line 769
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->getCurrentIndex()J

    move-result-wide v0

    .line 770
    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->getSegmentUrl(J)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v2

    .line 772
    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-wide v4, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->nowPeriodTimeUs:J

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->isSegmentAvailableAtFullNetworkSpeed(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 775
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationSegmentIterator;->representationHolder:Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$RepresentationHolder;->selectedBaseUrl:Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-static {v1, v3, v2, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object v0

    return-object v0
.end method
