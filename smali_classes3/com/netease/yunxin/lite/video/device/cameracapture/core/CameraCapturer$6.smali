.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->fallbackToCamera1(I)V
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

    .line 405
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fallback To Camera1, cameraID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    iget v1, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraCapturer"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    move-result-object v1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object v2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    iget-boolean v3, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->captureToTexture:Z

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Landroid/content/Context;

    move-result-object v4

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    .line 410
    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v5

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    iget v6, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraId:I

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v7

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v8

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    .line 411
    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v9

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    iget-boolean v10, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraHQ:Z

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    iget-boolean v11, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraFpsUp:Z

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    iget v12, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraStabilizationMode:I

    .line 409
    invoke-static/range {v1 .. v12}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->create(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;ZLandroid/content/Context;Lcom/netease/lava/webrtc/SurfaceTextureHelper;IIIIZZI)V

    return-void
.end method
