.class public interface abstract Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;
.super Ljava/lang/Object;
.source "BandwidthMeter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/BandwidthMeter$EventListener;
    }
.end annotation


# virtual methods
.method public abstract addEventListener(Landroid/os/Handler;Lcom/google/android/exoplr2avp/upstream/BandwidthMeter$EventListener;)V
.end method

.method public abstract getBitrateEstimate()J
.end method

.method public abstract getTimeToFirstByteEstimateUs()J
.end method

.method public abstract getTransferListener()Lcom/google/android/exoplr2avp/upstream/TransferListener;
.end method

.method public abstract removeEventListener(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter$EventListener;)V
.end method
