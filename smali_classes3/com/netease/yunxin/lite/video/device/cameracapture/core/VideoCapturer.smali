.class public interface abstract Lcom/netease/yunxin/lite/video/device/cameracapture/core/VideoCapturer;
.super Ljava/lang/Object;
.source "VideoCapturer.java"


# virtual methods
.method public abstract changeCaptureFormat(III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "framerate"
        }
    .end annotation
.end method

.method public abstract dispose()V
.end method

.method public abstract initialize(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceTextureHelper",
            "applicationContext",
            "capturerObserver"
        }
    .end annotation
.end method

.method public abstract isScreencast()Z
.end method

.method public abstract startCapture(III)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "framerate"
        }
    .end annotation
.end method

.method public abstract stopCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
