.class public abstract Lcom/google/android/exoplr2avp/BasePlayer;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Player;


# instance fields
.field protected final window:Lcom/google/android/exoplr2avp/Timeline$Window;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    return-void
.end method

.method private getRepeatModeForNavigation()I
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getRepeatMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method private seekToOffset(J)V
    .locals 5

    .line 433
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 434
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 436
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    .line 438
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 439
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/BasePlayer;->seekTo(J)V

    return-void
.end method


# virtual methods
.method public final addMediaItem(ILcom/google/android/exoplr2avp/MediaItem;)V
    .locals 0

    .line 57
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/BasePlayer;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public final addMediaItem(Lcom/google/android/exoplr2avp/MediaItem;)V
    .locals 0

    .line 62
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/BasePlayer;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    .line 67
    invoke-virtual {p0, v0, p1}, Lcom/google/android/exoplr2avp/BasePlayer;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public final canAdvertiseSession()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final clearMediaItems()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 84
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplr2avp/BasePlayer;->removeMediaItems(II)V

    return-void
.end method

.method public final getBufferedPercentage()I
    .locals 9

    .line 353
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getBufferedPosition()J

    move-result-wide v0

    .line 354
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getDuration()J

    move-result-wide v2

    const/16 v4, 0x64

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    .line 357
    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1, v5, v4}, Lcom/google/android/exoplr2avp/util/Util;->constrainValue(III)I

    move-result v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public final getContentDuration()J
    .locals 3

    .line 421
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 422
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getCurrentLiveOffset()J
    .locals 5

    .line 392
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 393
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    return-wide v2

    .line 397
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    .line 401
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;->getCurrentUnixTimeMs()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getContentPosition()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getCurrentManifest()Ljava/lang/Object;
    .locals 3

    .line 345
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 348
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->manifest:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final getCurrentMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 3

    .line 326
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    :goto_0
    return-object v0
.end method

.method public final getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getMediaItemAt(I)Lcom/google/android/exoplr2avp/MediaItem;
    .locals 2

    .line 339
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Timeline$Window;->mediaItem:Lcom/google/android/exoplr2avp/MediaItem;

    return-object p1
.end method

.method public final getMediaItemCount()I
    .locals 1

    .line 334
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v0

    return v0
.end method

.method public final getNextMediaItemIndex()I
    .locals 4

    .line 298
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 299
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 301
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getNextWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 293
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final getPreviousMediaItemIndex()I
    .locals 4

    .line 316
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getRepeatModeForNavigation()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getShuffleModeEnabled()Z

    move-result v3

    .line 319
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final getPreviousWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 311
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public final hasNext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasNextMediaItem()Z
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasNextWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasPrevious()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 150
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public final hasPreviousMediaItem()Z
    .locals 2

    .line 164
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPreviousWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public final isCommandAvailable(I)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getAvailableCommands()Lcom/google/android/exoplr2avp/Player$Commands;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/Player$Commands;->contains(I)Z

    move-result p1

    return p1
.end method

.method public final isCurrentMediaItemDynamic()Z
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 372
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentMediaItemLive()Z
    .locals 3

    .line 386
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Window;->isLive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentMediaItemSeekable()Z
    .locals 3

    .line 415
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 416
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/BasePlayer;->window:Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentWindowDynamic()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 366
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowLive()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public final isCurrentWindowSeekable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 114
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getPlaybackSuppressionReason()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final moveMediaItem(II)V
    .locals 1

    if-eq p1, p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    .line 73
    invoke-virtual {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/BasePlayer;->moveMediaItems(III)V

    :cond_0
    return-void
.end method

.method public final next()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToNextMediaItem()V

    return-void
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/BasePlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final play()V
    .locals 1

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/BasePlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public final previous()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 173
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToPreviousMediaItem()V

    return-void
.end method

.method public final removeMediaItem(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    .line 79
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/BasePlayer;->removeMediaItems(II)V

    return-void
.end method

.method public final seekBack()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getSeekBackIncrement()J

    move-result-wide v0

    neg-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToOffset(J)V

    return-void
.end method

.method public final seekForward()V
    .locals 2

    .line 141
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getSeekForwardIncrement()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToOffset(J)V

    return-void
.end method

.method public final seekTo(J)V
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/google/android/exoplr2avp/BasePlayer;->seekTo(IJ)V

    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 1

    .line 121
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentMediaItemIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToDefaultPosition(I)V

    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 126
    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/BasePlayer;->seekTo(IJ)V

    return-void
.end method

.method public final seekToNext()V
    .locals 1

    .line 262
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 263
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->hasNextMediaItem()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToNextMediaItem()V

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->isCurrentMediaItemDynamic()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 269
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToDefaultPosition()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final seekToNextMediaItem()V
    .locals 2

    .line 254
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getNextMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 256
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToDefaultPosition(I)V

    :cond_0
    return-void
.end method

.method public final seekToNextWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 249
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToNextMediaItem()V

    return-void
.end method

.method public final seekToPrevious()V
    .locals 5

    .line 195
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->hasPreviousMediaItem()Z

    move-result v0

    .line 200
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->isCurrentMediaItemLive()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->isCurrentMediaItemSeekable()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToPreviousMediaItem()V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getMaxSeekToPreviousPosition()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    .line 205
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToPreviousMediaItem()V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 207
    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplr2avp/BasePlayer;->seekTo(J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final seekToPreviousMediaItem()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getPreviousMediaItemIndex()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToDefaultPosition(I)V

    :cond_0
    return-void
.end method

.method public final seekToPreviousWindow()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->seekToPreviousMediaItem()V

    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplr2avp/MediaItem;)V
    .locals 0

    .line 37
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/BasePlayer;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplr2avp/MediaItem;J)V
    .locals 1

    .line 42
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/google/android/exoplr2avp/BasePlayer;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public final setMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Z)V
    .locals 0

    .line 47
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplr2avp/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public final setMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/BasePlayer;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public final setPlaybackSpeed(F)V
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/BasePlayer;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/PlaybackParameters;->withSpeed(F)Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/BasePlayer;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method
