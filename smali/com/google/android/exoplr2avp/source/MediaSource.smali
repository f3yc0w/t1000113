.class public interface abstract Lcom/google/android/exoplr2avp/source/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;,
        Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;,
        Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    }
.end annotation


# virtual methods
.method public abstract addDrmEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V
.end method

.method public abstract addEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;)V
.end method

.method public abstract createPeriod(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/upstream/Allocator;J)Lcom/google/android/exoplr2avp/source/MediaPeriod;
.end method

.method public abstract disable(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract enable(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract getInitialTimeline()Lcom/google/android/exoplr2avp/Timeline;
.end method

.method public abstract getMediaItem()Lcom/google/android/exoplr2avp/MediaItem;
.end method

.method public abstract isSingleWindow()Z
.end method

.method public abstract maybeThrowSourceInfoRefreshError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract prepareSource(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract prepareSource(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
.end method

.method public abstract releasePeriod(Lcom/google/android/exoplr2avp/source/MediaPeriod;)V
.end method

.method public abstract releaseSource(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;)V
.end method

.method public abstract removeDrmEventListener(Lcom/google/android/exoplr2avp/drm/DrmSessionEventListener;)V
.end method

.method public abstract removeEventListener(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;)V
.end method
