.class Lcom/google/unity/ads/UnityRewardedAd$1$1$1;
.super Ljava/lang/Object;
.source "UnityRewardedAd.java"

# interfaces
.implements Lcom/google/android/gms/ads/OnPaidEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/unity/ads/UnityRewardedAd$1$1;->onAdLoaded(Lcom/google/android/gms/ads/rewarded/RewardedAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/google/unity/ads/UnityRewardedAd$1$1;


# direct methods
.method constructor <init>(Lcom/google/unity/ads/UnityRewardedAd$1$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/google/unity/ads/UnityRewardedAd$1$1$1;->this$2:Lcom/google/unity/ads/UnityRewardedAd$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaidEvent(Lcom/google/android/gms/ads/AdValue;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "adValue"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/google/unity/ads/UnityRewardedAd$1$1$1$1;-><init>(Lcom/google/unity/ads/UnityRewardedAd$1$1$1;Lcom/google/android/gms/ads/AdValue;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
