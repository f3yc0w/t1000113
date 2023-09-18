.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$4;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;-><init>(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;)V
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

    .line 289
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$4;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 0

    return-void
.end method

.method public onCameraDisconnected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    return-void
.end method

.method public onCameraError(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorDescription",
            "deviceErrorType",
            "callback"
        }
    .end annotation

    return-void
.end method

.method public onCameraFormatsInrequired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceName",
            "deviceId",
            "formats",
            "selectFormat"
        }
    .end annotation

    return-void
.end method

.method public onCameraFreezed(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorDescription"
        }
    .end annotation

    return-void
.end method

.method public onCameraOpening(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraName"
        }
    .end annotation

    return-void
.end method

.method public onCameraReOpen(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tryNum"
        }
    .end annotation

    return-void
.end method

.method public onFirstFrameAvailable()V
    .locals 0

    return-void
.end method
