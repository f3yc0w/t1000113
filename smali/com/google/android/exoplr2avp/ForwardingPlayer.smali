.class public Lcom/google/android/exoplr2avp/ForwardingPlayer;
.super Ljava/lang/Object;
.source "ForwardingPlayer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Player;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/ForwardingPlayer$ForwardingListener;
    }
.end annotation


# instance fields
.field private final player:Lcom/google/android/exoplr2avp/Player;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Player;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    new-instance v1, Lcom/google/android/exoplr2avp/ForwardingPlayer$ForwardingListener;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/ForwardingPlayer$ForwardingListener;-><init>(Lcom/google/android/exoplr2avp/ForwardingPlayer;Lcom/google/android/exoplr2avp/Player$Listener;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/Player;->addListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method

.method public addMediaItem(ILcom/google/android/exoplr2avp/MediaItem;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/Player;->addMediaItem(ILcom/google/android/exoplr2avp/MediaItem;)V

    return-void
.end method

.method public addMediaItem(Lcom/google/android/exoplr2avp/MediaItem;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->addMediaItem(Lcom/google/android/exoplr2avp/MediaItem;)V

    return-void
.end method

.method public addMediaItems(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/Player;->addMediaItems(ILjava/util/List;)V

    return-void
.end method

.method public addMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->addMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public canAdvertiseSession()Z
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->canAdvertiseSession()Z

    move-result v0

    return v0
.end method

.method public clearMediaItems()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->clearMediaItems()V

    return-void
.end method

.method public clearVideoSurface()V
    .locals 1

    .line 767
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->clearVideoSurface()V

    return-void
.end method

.method public clearVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 773
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->clearVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->clearVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public clearVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 803
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->clearVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public clearVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 815
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->clearVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public decreaseDeviceVolume()V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->decreaseDeviceVolume()V

    return-void
.end method

.method public getApplicationLooper()Landroid/os/Looper;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getApplicationLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;
    .locals 1

    .line 743
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableCommands()Lcom/google/android/exoplr2avp/Player$Commands;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getAvailableCommands()Lcom/google/android/exoplr2avp/Player$Commands;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedPercentage()I
    .locals 1

    .line 635
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getBufferedPercentage()I

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .line 629
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentBufferedPosition()J
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getContentBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentDuration()J
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getContentDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getContentPosition()J
    .locals 2

    .line 731
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getContentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdGroupIndex()I
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentAdGroupIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 719
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentAdIndexInAdGroup()I

    move-result v0

    return v0
.end method

.method public getCurrentCues()Lcom/google/android/exoplr2avp/text/CueGroup;
    .locals 1

    .line 821
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentCues()Lcom/google/android/exoplr2avp/text/CueGroup;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLiveOffset()J
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentLiveOffset()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 599
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentMediaItem()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMediaItemIndex()I
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPeriodIndex()I
    .locals 1

    .line 538
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentPeriodIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 623
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTracks()Lcom/google/android/exoplr2avp/Tracks;
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentTracks()Lcom/google/android/exoplr2avp/Tracks;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getCurrentWindowIndex()I

    move-result v0

    return v0
.end method

.method public getDeviceInfo()Lcom/google/android/exoplr2avp/DeviceInfo;
    .locals 1

    .line 827
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getDeviceInfo()Lcom/google/android/exoplr2avp/DeviceInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVolume()I
    .locals 1

    .line 833
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getDeviceVolume()I

    move-result v0

    return v0
.end method

.method public getDuration()J
    .locals 2

    .line 617
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxSeekToPreviousPosition()J
    .locals 2

    .line 373
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getMaxSeekToPreviousPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMediaItemAt(I)Lcom/google/android/exoplr2avp/MediaItem;
    .locals 1

    .line 611
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->getMediaItemAt(I)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p1

    return-object p1
.end method

.method public getMediaItemCount()I
    .locals 1

    .line 605
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method public getMediaMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getMediaMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getNextMediaItemIndex()I
    .locals 1

    .line 574
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getNextMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getNextWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 568
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getNextWindowIndex()I

    move-result v0

    return v0
.end method

.method public getPlayWhenReady()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getPlayWhenReady()Z

    move-result v0

    return v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()I
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getPlaybackState()I

    move-result v0

    return v0
.end method

.method public getPlaybackSuppressionReason()I
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getPlaybackSuppressionReason()I

    move-result v0

    return v0
.end method

.method public getPlayerError()Lcom/google/android/exoplr2avp/PlaybackException;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getPlayerError()Lcom/google/android/exoplr2avp/PlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public getPlaylistMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getPlaylistMetadata()Lcom/google/android/exoplr2avp/MediaMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPreviousMediaItemIndex()I
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getPreviousMediaItemIndex()I

    move-result v0

    return v0
.end method

.method public getPreviousWindowIndex()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getPreviousWindowIndex()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getSeekBackIncrement()J
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getSeekBackIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSeekForwardIncrement()J
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getSeekForwardIncrement()J

    move-result-wide v0

    return-wide v0
.end method

.method public getShuffleModeEnabled()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getShuffleModeEnabled()Z

    move-result v0

    return v0
.end method

.method public getTotalBufferedDuration()J
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getTotalBufferedDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v0

    return-object v0
.end method

.method public getVideoSize()Lcom/google/android/exoplr2avp/video/VideoSize;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getVideoSize()Lcom/google/android/exoplr2avp/video/VideoSize;

    move-result-object v0

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->getVolume()F

    move-result v0

    return v0
.end method

.method public getWrappedPlayer()Lcom/google/android/exoplr2avp/Player;
    .locals 1

    .line 868
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 385
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNextMediaItem()Z
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->hasNextMediaItem()Z

    move-result v0

    return v0
.end method

.method public hasNextWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->hasNextWindow()Z

    move-result v0

    return v0
.end method

.method public hasPrevious()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->hasPrevious()Z

    move-result v0

    return v0
.end method

.method public hasPreviousMediaItem()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->hasPreviousMediaItem()Z

    move-result v0

    return v0
.end method

.method public hasPreviousWindow()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->hasPreviousWindow()Z

    move-result v0

    return v0
.end method

.method public increaseDeviceVolume()V
    .locals 1

    .line 851
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->increaseDeviceVolume()V

    return-void
.end method

.method public isCommandAvailable(I)Z
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->isCommandAvailable(I)Z

    move-result p1

    return p1
.end method

.method public isCurrentMediaItemDynamic()Z
    .locals 1

    .line 659
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isCurrentMediaItemDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemLive()Z
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isCurrentMediaItemLive()Z

    move-result v0

    return v0
.end method

.method public isCurrentMediaItemSeekable()Z
    .locals 1

    .line 701
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isCurrentMediaItemSeekable()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowDynamic()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isCurrentWindowDynamic()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowLive()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 671
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isCurrentWindowLive()Z

    move-result v0

    return v0
.end method

.method public isCurrentWindowSeekable()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 695
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isCurrentWindowSeekable()Z

    move-result v0

    return v0
.end method

.method public isDeviceMuted()Z
    .locals 1

    .line 839
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isDeviceMuted()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isLoading()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public isPlayingAd()Z
    .locals 1

    .line 707
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->isPlayingAd()Z

    move-result v0

    return v0
.end method

.method public moveMediaItem(II)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/Player;->moveMediaItem(II)V

    return-void
.end method

.method public moveMediaItems(III)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Player;->moveMediaItems(III)V

    return-void
.end method

.method public next()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->next()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->play()V

    return-void
.end method

.method public prepare()V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->prepare()V

    return-void
.end method

.method public previous()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->previous()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->release()V

    return-void
.end method

.method public removeListener(Lcom/google/android/exoplr2avp/Player$Listener;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    new-instance v1, Lcom/google/android/exoplr2avp/ForwardingPlayer$ForwardingListener;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/ForwardingPlayer$ForwardingListener;-><init>(Lcom/google/android/exoplr2avp/ForwardingPlayer;Lcom/google/android/exoplr2avp/Player$Listener;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/Player;->removeListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method

.method public removeMediaItem(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->removeMediaItem(I)V

    return-void
.end method

.method public removeMediaItems(II)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/Player;->removeMediaItems(II)V

    return-void
.end method

.method public seekBack()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->seekBack()V

    return-void
.end method

.method public seekForward()V
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->seekForward()V

    return-void
.end method

.method public seekTo(IJ)V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Player;->seekTo(IJ)V

    return-void
.end method

.method public seekTo(J)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/Player;->seekTo(J)V

    return-void
.end method

.method public seekToDefaultPosition()V
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->seekToDefaultPosition()V

    return-void
.end method

.method public seekToDefaultPosition(I)V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->seekToDefaultPosition(I)V

    return-void
.end method

.method public seekToNext()V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->seekToNext()V

    return-void
.end method

.method public seekToNextMediaItem()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->seekToNextMediaItem()V

    return-void
.end method

.method public seekToNextWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 427
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->seekToNextWindow()V

    return-void
.end method

.method public seekToPrevious()V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->seekToPrevious()V

    return-void
.end method

.method public seekToPreviousMediaItem()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->seekToPreviousMediaItem()V

    return-void
.end method

.method public seekToPreviousWindow()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->seekToPreviousWindow()V

    return-void
.end method

.method public setDeviceMuted(Z)V
    .locals 1

    .line 863
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setDeviceMuted(Z)V

    return-void
.end method

.method public setDeviceVolume(I)V
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setDeviceVolume(I)V

    return-void
.end method

.method public setMediaItem(Lcom/google/android/exoplr2avp/MediaItem;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setMediaItem(Lcom/google/android/exoplr2avp/MediaItem;)V

    return-void
.end method

.method public setMediaItem(Lcom/google/android/exoplr2avp/MediaItem;J)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Player;->setMediaItem(Lcom/google/android/exoplr2avp/MediaItem;J)V

    return-void
.end method

.method public setMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Z)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/Player;->setMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Z)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;)V"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setMediaItems(Ljava/util/List;)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;IJ)V"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/Player;->setMediaItems(Ljava/util/List;IJ)V

    return-void
.end method

.method public setMediaItems(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ">;Z)V"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/Player;->setMediaItems(Ljava/util/List;Z)V

    return-void
.end method

.method public setPlayWhenReady(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setPlayWhenReady(Z)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 1

    .line 445
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method public setPlaybackSpeed(F)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setPlaybackSpeed(F)V

    return-void
.end method

.method public setPlaylistMetadata(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setPlaylistMetadata(Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setRepeatMode(I)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setShuffleModeEnabled(Z)V

    return-void
.end method

.method public setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 1

    .line 501
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public setVideoSurface(Landroid/view/Surface;)V
    .locals 1

    .line 779
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setVideoSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setVideoSurfaceHolder(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public setVideoSurfaceView(Landroid/view/SurfaceView;)V
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setVideoSurfaceView(Landroid/view/SurfaceView;)V

    return-void
.end method

.method public setVideoTextureView(Landroid/view/TextureView;)V
    .locals 1

    .line 809
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setVideoTextureView(Landroid/view/TextureView;)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->setVolume(F)V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Player;->stop()V

    return-void
.end method

.method public stop(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ForwardingPlayer;->player:Lcom/google/android/exoplr2avp/Player;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/Player;->stop(Z)V

    return-void
.end method
