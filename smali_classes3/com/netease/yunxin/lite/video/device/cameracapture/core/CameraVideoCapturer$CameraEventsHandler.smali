.class public interface abstract Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraEventsHandler"
.end annotation


# virtual methods
.method public abstract onCameraClosed()V
.end method

.method public abstract onCameraDisconnected(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract onCameraError(Ljava/lang/String;IZ)V
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
.end method

.method public abstract onCameraFormatsInrequired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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
.end method

.method public abstract onCameraFreezed(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorDescription"
        }
    .end annotation
.end method

.method public abstract onCameraOpening(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraName"
        }
    .end annotation
.end method

.method public abstract onCameraReOpen(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tryNum"
        }
    .end annotation
.end method

.method public abstract onFirstFrameAvailable()V
.end method
