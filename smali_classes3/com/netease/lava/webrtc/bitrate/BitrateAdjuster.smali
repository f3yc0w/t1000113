.class public interface abstract Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;
.super Ljava/lang/Object;
.source "BitrateAdjuster.java"


# virtual methods
.method public abstract getAdjustedBitrateBps()I
.end method

.method public abstract getTargetsBitrateBps()I
.end method

.method public abstract getTargetsFrameRate()I
.end method

.method public abstract init(II)V
.end method

.method public abstract release()V
.end method

.method public abstract reportEncodedFrame(I)V
.end method

.method public abstract reportQP(I)V
.end method

.method public abstract setTargets(II)V
.end method
