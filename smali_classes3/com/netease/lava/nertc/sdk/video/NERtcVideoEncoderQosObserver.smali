.class public interface abstract Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;
.super Ljava/lang/Object;
.source "NERtcVideoEncoderQosObserver.java"


# virtual methods
.method public abstract onBitrateUpdated(ILcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V
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

.method public abstract onRequestSendKeyFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoStreamType"
        }
    .end annotation
.end method

.method public abstract onVideoCodecUpdated(Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V
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
