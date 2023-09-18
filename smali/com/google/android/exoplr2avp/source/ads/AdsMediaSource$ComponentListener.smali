.class final Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/ads/AdsLoader$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ComponentListener"
.end annotation


# instance fields
.field private final playerHandler:Landroid/os/Handler;

.field private volatile stopped:Z

.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    invoke-static {}, Lcom/google/android/exoplr2avp/util/Util;->createHandlerForCurrentLooper()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAdPlaybackState$0$AdsMediaSource$ComponentListener(Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)V
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;->access$100(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)V

    return-void
.end method

.method public synthetic onAdClicked()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/source/ads/AdsLoader$EventListener$-CC;->$default$onAdClicked(Lcom/google/android/exoplr2avp/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method public onAdLoadError(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdLoadException;Lcom/google/android/exoplr2avp/upstream/DataSpec;)V
    .locals 8

    .line 393
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;->access$000(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    new-instance v7, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    .line 399
    invoke-static {}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->getNewId()J

    move-result-wide v2

    .line 401
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;J)V

    const/4 p2, 0x6

    const/4 v1, 0x1

    .line 397
    invoke-virtual {v0, v7, p2, p1, v1}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;ILjava/io/IOException;Z)V

    return-void
.end method

.method public onAdPlaybackState(Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)V
    .locals 2

    .line 379
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    if-eqz v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$nEYzjFlJDp0EJSGBu9DiV6pd5rQ;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$ComponentListener$nEYzjFlJDp0EJSGBu9DiV6pd5rQ;-><init>(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic onAdTapped()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/source/ads/AdsLoader$EventListener$-CC;->$default$onAdTapped(Lcom/google/android/exoplr2avp/source/ads/AdsLoader$EventListener;)V

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x1

    .line 373
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->stopped:Z

    .line 374
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$ComponentListener;->playerHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
