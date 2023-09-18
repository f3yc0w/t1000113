.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->createSessionInternal(I)V
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

    .line 420
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 423
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    .line 424
    invoke-static {v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v4

    iget-object v5, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v5}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v6}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v6

    iget-object v7, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v7}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v7

    iget-object v8, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v8}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v8

    .line 423
    invoke-virtual/range {v0 .. v8}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->createCameraSession(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;Landroid/content/Context;Lcom/netease/lava/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V

    return-void
.end method
