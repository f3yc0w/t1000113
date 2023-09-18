.class public final synthetic Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$-CC;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"


# direct methods
.method public static $default$addMediaRecorderToCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;Landroid/media/MediaRecorder;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0
    .param p0, "_this"    # Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaRecorder",
            "resultHandler"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 174
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Deprecated and not implemented."

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static $default$removeMediaRecorderFromCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 1
    .param p0, "_this"    # Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultHandler"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 183
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Deprecated and not implemented."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
