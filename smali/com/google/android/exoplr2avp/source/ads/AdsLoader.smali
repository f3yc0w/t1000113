.class public interface abstract Lcom/google/android/exoplr2avp/source/ads/AdsLoader;
.super Ljava/lang/Object;
.source "AdsLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/ads/AdsLoader$EventListener;,
        Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;
    }
.end annotation


# virtual methods
.method public abstract handlePrepareComplete(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;II)V
.end method

.method public abstract handlePrepareError(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;IILjava/io/IOException;)V
.end method

.method public abstract release()V
.end method

.method public abstract setPlayer(Lcom/google/android/exoplr2avp/Player;)V
.end method

.method public varargs abstract setSupportedContentTypes([I)V
.end method

.method public abstract start(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplr2avp/ui/AdViewProvider;Lcom/google/android/exoplr2avp/source/ads/AdsLoader$EventListener;)V
.end method

.method public abstract stop(Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;Lcom/google/android/exoplr2avp/source/ads/AdsLoader$EventListener;)V
.end method
