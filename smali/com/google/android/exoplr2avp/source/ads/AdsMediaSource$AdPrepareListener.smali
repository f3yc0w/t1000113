.class final Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;
.super Ljava/lang/Object;
.source "AdsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MaskingMediaPeriod$PrepareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AdPrepareListener"
.end annotation


# instance fields
.field private final adUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;Landroid/net/Uri;)V
    .locals 0

    .line 412
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->adUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPrepareComplete$0$AdsMediaSource$AdPrepareListener(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 3

    .line 420
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;->access$400(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;)Lcom/google/android/exoplr2avp/source/ads/AdsLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    iget v2, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-interface {v0, v1, v2, p1}, Lcom/google/android/exoplr2avp/source/ads/AdsLoader;->handlePrepareComplete(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;II)V

    return-void
.end method

.method public synthetic lambda$onPrepareError$1$AdsMediaSource$AdPrepareListener(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;->access$400(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;)Lcom/google/android/exoplr2avp/source/ads/AdsLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    iget v2, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget p1, p1, Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-interface {v0, v1, v2, p1, p2}, Lcom/google/android/exoplr2avp/source/ads/AdsLoader;->handlePrepareError(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;IILjava/io/IOException;)V

    return-void
.end method

.method public onPrepareComplete(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;->access$200(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NreoblDvCIsCCTyRfE1xS7BzntA;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NreoblDvCIsCCTyRfE1xS7BzntA;-><init>(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPrepareError(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 8

    .line 428
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    invoke-static {v0, p1}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;->access$300(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    move-result-object v0

    new-instance v7, Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    .line 431
    invoke-static {}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->getNewId()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->adUri:Landroid/net/Uri;

    invoke-direct {v4, v1}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 433
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;J)V

    .line 435
    invoke-static {p2}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdLoadException;->createForAd(Ljava/lang/Exception;)Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdLoadException;

    move-result-object v1

    const/4 v2, 0x6

    const/4 v3, 0x1

    .line 429
    invoke-virtual {v0, v7, v2, v1, v3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->loadError(Lcom/google/android/exoplr2avp/source/LoadEventInfo;ILjava/io/IOException;Z)V

    .line 437
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->this$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;->access$200(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NsI06syvU_y9wFB3RHCrybxycN0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NsI06syvU_y9wFB3RHCrybxycN0;-><init>(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
