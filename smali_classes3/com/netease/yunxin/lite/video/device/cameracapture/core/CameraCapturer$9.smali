.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$9;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

.field final synthetic val$switchEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$switchEventsHandler"
        }
    .end annotation

    .line 490
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$9;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$9;->val$switchEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$9;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$9;->val$switchEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method
