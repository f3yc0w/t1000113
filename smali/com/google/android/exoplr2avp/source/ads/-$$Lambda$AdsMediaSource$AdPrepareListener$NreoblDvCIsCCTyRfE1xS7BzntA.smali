.class public final synthetic Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NreoblDvCIsCCTyRfE1xS7BzntA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NreoblDvCIsCCTyRfE1xS7BzntA;->f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NreoblDvCIsCCTyRfE1xS7BzntA;->f$1:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NreoblDvCIsCCTyRfE1xS7BzntA;->f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NreoblDvCIsCCTyRfE1xS7BzntA;->f$1:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->lambda$onPrepareComplete$0$AdsMediaSource$AdPrepareListener(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;)V

    return-void
.end method