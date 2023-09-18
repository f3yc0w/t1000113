.class public interface abstract Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;
.super Ljava/lang/Object;
.source "CapturerObserver.java"


# virtual methods
.method public abstract onCapturerStarted(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation
.end method

.method public abstract onCapturerStopped()V
.end method

.method public abstract onFrameCaptured(Lcom/netease/lava/webrtc/VideoFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation
.end method
