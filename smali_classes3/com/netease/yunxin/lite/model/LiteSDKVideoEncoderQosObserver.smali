.class public interface abstract Lcom/netease/yunxin/lite/model/LiteSDKVideoEncoderQosObserver;
.super Ljava/lang/Object;
.source "LiteSDKVideoEncoderQosObserver.java"


# virtual methods
.method public abstract onBitrateUpdated(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitrateBps",
            "videoStreamType"
        }
    .end annotation
.end method

.method public abstract onRequestSendKeyFrame(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoStreamType"
        }
    .end annotation
.end method

.method public abstract onVideoCodecUpdated(II)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoCodecType",
            "videoStreamType"
        }
    .end annotation
.end method
