.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$3;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 247
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 250
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z

    .line 252
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 253
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$3;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v1

    const-string v2, "Camera failed to start within timeout."

    sget-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA_TIMEOUT_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-virtual {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->getCode()I

    move-result v3

    const/4 v4, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;IZ)V

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
