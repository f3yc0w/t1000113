.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$2;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->startCapturing()V
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

    .line 477
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "camera"
        }
    .end annotation

    .line 481
    sget-object p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA_UNKNOWN_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 484
    sget-object p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA1_SERVER_DIED_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    const-string v0, "Camera server died!"

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "Camera error unknown!"

    goto :goto_0

    .line 488
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Camera1Session"

    .line 490
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)V

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 493
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-interface {p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraDisconnected(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V

    goto :goto_1

    .line 495
    :cond_2
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-virtual {p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->getCode()I

    move-result p2

    invoke-interface {p1, v1, v0, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraError(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method
