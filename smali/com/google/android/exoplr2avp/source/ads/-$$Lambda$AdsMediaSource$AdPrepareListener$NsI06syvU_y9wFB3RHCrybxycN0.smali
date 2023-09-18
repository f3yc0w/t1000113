.class public final synthetic Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NsI06syvU_y9wFB3RHCrybxycN0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

.field public final synthetic f$2:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NsI06syvU_y9wFB3RHCrybxycN0;->f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NsI06syvU_y9wFB3RHCrybxycN0;->f$1:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NsI06syvU_y9wFB3RHCrybxycN0;->f$2:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NsI06syvU_y9wFB3RHCrybxycN0;->f$0:Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NsI06syvU_y9wFB3RHCrybxycN0;->f$1:Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/ads/-$$Lambda$AdsMediaSource$AdPrepareListener$NsI06syvU_y9wFB3RHCrybxycN0;->f$2:Ljava/io/IOException;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdPrepareListener;->lambda$onPrepareError$1$AdsMediaSource$AdPrepareListener(Lcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Ljava/io/IOException;)V

    return-void
.end method
