.class public final synthetic Lcom/google/android/exoplr2avp/source/MediaSource$-CC;
.super Ljava/lang/Object;
.source "MediaSource.java"


# direct methods
.method public static $default$getInitialTimeline(Lcom/google/android/exoplr2avp/source/MediaSource;)Lcom/google/android/exoplr2avp/Timeline;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static $default$isSingleWindow(Lcom/google/android/exoplr2avp/source/MediaSource;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static $default$prepareSource(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 1
    .param p0, "_this"    # Lcom/google/android/exoplr2avp/source/MediaSource;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 239
    sget-object v0, Lcom/google/android/exoplr2avp/analytics/PlayerId;->UNSET:Lcom/google/android/exoplr2avp/analytics/PlayerId;

    invoke-interface {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/source/MediaSource;->prepareSource(Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    return-void
.end method
