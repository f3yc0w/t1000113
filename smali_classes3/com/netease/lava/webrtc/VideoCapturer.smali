.class public interface abstract Lcom/netease/lava/webrtc/VideoCapturer;
.super Ljava/lang/Object;
.source "VideoCapturer.java"


# virtual methods
.method public abstract changeCaptureFormat(III)V
.end method

.method public abstract dispose()V
.end method

.method public abstract initialize(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/netease/lava/webrtc/CapturerObserver;)V
.end method

.method public abstract isScreencast()Z
.end method

.method public abstract startCapture(III)V
.end method

.method public abstract stopCapture()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
