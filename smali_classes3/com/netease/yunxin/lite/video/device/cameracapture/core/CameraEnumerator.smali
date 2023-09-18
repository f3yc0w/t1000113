.class public interface abstract Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;
.super Ljava/lang/Object;
.source "CameraEnumerator.java"


# virtual methods
.method public abstract createCapturer(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "deviceName",
            "eventsHandler"
        }
    .end annotation
.end method

.method public abstract getDeviceIndexByName(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation
.end method

.method public abstract getDeviceNames()[Ljava/lang/String;
.end method

.method public abstract getSupportedFormats(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isBackFacing(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation
.end method

.method public abstract isFrontFacing(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation
.end method
