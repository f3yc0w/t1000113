.class public Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;
.super Ljava/lang/Object;
.source "CameraEnumeratorWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraEnumeratorWrapper"

.field private static cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

.field private static lastCamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cameraType"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;->isCamera2BlackList()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcom/netease/lava/webrtc/device/HardwareLevel;->level()I

    move-result v0

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-gt v0, v3, :cond_1

    :cond_0
    const-string p2, "CameraEnumeratorWrapper"

    const-string v0, "device in Camera2 BlackList or build version too low, use Camera1!"

    .line 26
    invoke-static {p2, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 31
    :cond_1
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    if-eqz v0, :cond_2

    sget v0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->lastCamType:I

    if-ne p2, v0, :cond_2

    return-void

    :cond_2
    if-eq p2, v1, :cond_3

    .line 47
    new-instance p1, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;

    invoke-direct {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;-><init>()V

    sput-object p1, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    .line 48
    sput v2, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->lastCamType:I

    goto :goto_0

    .line 37
    :cond_3
    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;->isSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 38
    new-instance p2, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;

    invoke-direct {p2, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;-><init>(Landroid/content/Context;)V

    sput-object p2, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    .line 39
    sput v1, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->lastCamType:I

    goto :goto_0

    .line 41
    :cond_4
    new-instance p1, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;

    invoke-direct {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;-><init>()V

    sput-object p1, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    .line 42
    sput v2, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->lastCamType:I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCameraIndex(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    .line 94
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    if-eqz v0, :cond_0

    .line 95
    invoke-interface {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;->getDeviceIndexByName(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public getDeviceNames()[Ljava/lang/String;
    .locals 1

    .line 57
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSupportedFormats(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 86
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;->getSupportedFormats(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public isBackFacing(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    if-eqz v0, :cond_0

    .line 77
    invoke-interface {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;->isBackFacing(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFrontFacing(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraEnumeratorWrapper;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
