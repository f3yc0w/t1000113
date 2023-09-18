.class public interface abstract Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;
.super Ljava/lang/Object;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Events"
.end annotation


# virtual methods
.method public abstract onCameraClosed(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation
.end method

.method public abstract onCameraDisconnected(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation
.end method

.method public abstract onCameraError(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "error",
            "deviceErrorType"
        }
    .end annotation
.end method

.method public abstract onCameraFormatsInquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceId",
            "formats",
            "selectFormats"
        }
    .end annotation
.end method

.method public abstract onCameraOpening()V
.end method

.method public abstract onFrameCaptured(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Lcom/netease/lava/webrtc/VideoFrame;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "frame"
        }
    .end annotation
.end method
