.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->listenForBytebufferFrames()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 578
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$null$0$Camera1Session$3([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "data"
        }
    .end annotation

    .line 604
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;->RUNNING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    if-ne v0, v1, :cond_0

    .line 605
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onPreviewFrame$1$Camera1Session$3([B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "data"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$800(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$3$UAaCJd68VeWKjgUQquJjVIqmhqQ;

    invoke-direct {v1, p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$3$UAaCJd68VeWKjgUQquJjVIqmhqQ;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "data",
            "callbackCamera"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)V

    .line 583
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Landroid/hardware/Camera;

    move-result-object v0

    const-string v1, "Camera1Session"

    if-eq p2, v0, :cond_0

    const-string p1, "Callback from a different camera. This should never happen."

    .line 584
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 588
    :cond_0
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    move-result-object p2

    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;->RUNNING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    if-eq p2, v0, :cond_1

    const-string p1, "Bytebuffer frame captured but camera is no longer running."

    .line 589
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 593
    :cond_1
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    .line 595
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 599
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    const/4 v2, 0x1

    invoke-static {p2, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$502(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;Z)Z

    .line 602
    :cond_2
    new-instance p2, Lcom/netease/lava/webrtc/NV21Buffer;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    .line 603
    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v2, v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v3

    iget v3, v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->height:I

    new-instance v4, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$3$d__uhZ8lvldGiv3Rmz7KNP7K52U;

    invoke-direct {v4, p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$3$d__uhZ8lvldGiv3Rmz7KNP7K52U;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;[B)V

    invoke-direct {p2, p1, v2, v3, v4}, Lcom/netease/lava/webrtc/NV21Buffer;-><init>([BIILjava/lang/Runnable;)V

    .line 608
    new-instance p1, Lcom/netease/lava/webrtc/VideoFrame;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)I

    move-result v2

    invoke-direct {p1, p2, v2, v0, v1}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    const/4 p2, 0x0

    .line 610
    invoke-virtual {p1, p2}, Lcom/netease/lava/webrtc/VideoFrame;->setDualFrame(Z)V

    .line 611
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object p2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-interface {p2, v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onFrameCaptured(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Lcom/netease/lava/webrtc/VideoFrame;)V

    .line 612
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    return-void
.end method
