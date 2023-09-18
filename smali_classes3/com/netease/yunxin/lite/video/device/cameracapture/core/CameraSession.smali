.class public interface abstract Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;
.super Ljava/lang/Object;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;,
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;,
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;,
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FlashStats;,
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;
    }
.end annotation


# static fields
.field public static final dualFrame:Z = false

.field public static final enableFD:Z = false


# virtual methods
.method public abstract getCurrentZoom()I
.end method

.method public abstract getMaxZoom()I
.end method

.method public abstract isCameraExposurePositionSupported()Z
.end method

.method public abstract isCameraFaceDetectModeSupported()Z
.end method

.method public abstract isCameraFocusSupported()Z
.end method

.method public abstract isCameraTorchSupported()Z
.end method

.method public abstract isCameraZoomSupported()Z
.end method

.method public abstract setFlash(Z)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flash"
        }
    .end annotation
.end method

.method public abstract setFocusAndMeteringCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation
.end method

.method public abstract setFocusAreas(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation
.end method

.method public abstract setMeteringAreas(FF)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation
.end method

.method public abstract setZoom(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation
.end method

.method public abstract stop()V
.end method
