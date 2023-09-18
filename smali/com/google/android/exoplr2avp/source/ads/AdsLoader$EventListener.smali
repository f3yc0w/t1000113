.class public interface abstract Lcom/google/android/exoplr2avp/source/ads/AdsLoader$EventListener;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ads/AdsLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onAdClicked()V
.end method

.method public abstract onAdLoadError(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource$AdLoadException;Lcom/google/android/exoplr2avp/upstream/DataSpec;)V
.end method

.method public abstract onAdPlaybackState(Lcom/google/android/exoplr2avp/source/ads/AdPlaybackState;)V
.end method

.method public abstract onAdTapped()V
.end method
