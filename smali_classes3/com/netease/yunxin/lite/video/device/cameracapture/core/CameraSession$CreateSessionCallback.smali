.class public interface abstract Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;
.super Ljava/lang/Object;
.source "CameraSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CreateSessionCallback"
.end annotation


# virtual methods
.method public abstract onDone(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation
.end method

.method public abstract onFailure(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "failureType",
            "error",
            "deviceErrorType"
        }
    .end annotation
.end method

.method public abstract onOpening(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation
.end method
