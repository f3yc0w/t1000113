.class final Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/MergingMediaPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ForwardingTrackSelection"
.end annotation


# instance fields
.field private final trackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

.field private final trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;Lcom/google/android/exoplr2avp/source/TrackGroup;)V
    .locals 0

    .line 483
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 484
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    .line 485
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

    return-void
.end method


# virtual methods
.method public blacklist(IJ)Z
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->blacklist(IJ)Z

    move-result p1

    return p1
.end method

.method public disable()V
    .locals 1

    .line 530
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->disable()V

    return-void
.end method

.method public enable()V
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->enable()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 616
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 619
    :cond_1
    check-cast p1, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;

    .line 620
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    iget-object v3, p1, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-virtual {v1, p1}, Lcom/google/android/exoplr2avp/source/TrackGroup;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public evaluateQueueSize(JLjava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation

    .line 592
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->evaluateQueueSize(JLjava/util/List;)I

    move-result p1

    return p1
.end method

.method public getFormat(I)Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 505
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    return-object p1
.end method

.method public getIndexInTrackGroup(I)I
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getIndexInTrackGroup(I)I

    move-result p1

    return p1
.end method

.method public getSelectedFormat()Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectedFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    .line 545
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getSelectedIndexInTrackGroup()I
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectedIndexInTrackGroup()I

    move-result v0

    return v0
.end method

.method public getSelectionData()Ljava/lang/Object;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectionData()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionReason()I
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getSelectionReason()I

    move-result v0

    return v0
.end method

.method public getTrackGroup()Lcom/google/android/exoplr2avp/source/TrackGroup;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->getType()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackGroup:Lcom/google/android/exoplr2avp/source/TrackGroup;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/TrackGroup;->hashCode()I

    move-result v0

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 627
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public indexOf(I)I
    .locals 1

    .line 520
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->indexOf(I)I

    move-result p1

    return p1
.end method

.method public indexOf(Lcom/google/android/exoplr2avp/Format;)I
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->indexOf(Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    return p1
.end method

.method public isBlacklisted(IJ)Z
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->isBlacklisted(IJ)Z

    move-result p1

    return p1
.end method

.method public length()I
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->length()I

    move-result v0

    return v0
.end method

.method public onDiscontinuity()V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->onDiscontinuity()V

    return-void
.end method

.method public onPlayWhenReadyChanged(Z)V
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->onPlayWhenReadyChanged(Z)V

    return-void
.end method

.method public onPlaybackSpeed(F)V
    .locals 1

    .line 561
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->onPlaybackSpeed(F)V

    return-void
.end method

.method public onRebuffer()V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->onRebuffer()V

    return-void
.end method

.method public shouldCancelChunkLoad(JLcom/google/android/exoplr2avp/source/chunk/Chunk;Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplr2avp/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation

    .line 598
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->shouldCancelChunkLoad(JLcom/google/android/exoplr2avp/source/chunk/Chunk;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;[",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    .line 586
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/MergingMediaPeriod$ForwardingTrackSelection;->trackSelection:Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection;->updateSelectedTrack(JJJLjava/util/List;[Lcom/google/android/exoplr2avp/source/chunk/MediaChunkIterator;)V

    return-void
.end method
