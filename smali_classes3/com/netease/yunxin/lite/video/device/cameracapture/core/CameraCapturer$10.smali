.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$10;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchCameraInternal(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

.field final synthetic val$oldSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$oldSession"
        }
    .end annotation

    .line 684
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$10;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$10;->val$oldSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$10;->val$oldSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->stop()V

    return-void
.end method
