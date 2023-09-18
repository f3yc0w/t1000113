.class Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "UnityRewardedInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1;->onAdLoaded(Lcom/google/android/gms/ads/rewardedinterstitial/RewardedInterstitialAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2;->this$2:Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2$3;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2$3;-><init>(Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 146
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "error"
        }
    .end annotation

    .line 109
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2$1;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2$1;-><init>(Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2;Lcom/google/android/gms/ads/AdError;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2$4;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2$4;-><init>(Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 160
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2$2;

    invoke-direct {v1, p0}, Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2$2;-><init>(Lcom/google/unity/ads/UnityRewardedInterstitialAd$1$1$2;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
