.class public Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;
.super Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;
.source "Camera2Capturer.java"


# instance fields
.field private final cameraManager:Landroid/hardware/camera2/CameraManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;ZZZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "cameraName",
            "eventsHandler",
            "captureToTexture",
            "cameraHQ",
            "cameraFpsUp",
            "cameraStabilizationMode"
        }
    .end annotation

    .line 31
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;

    invoke-direct {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;-><init>(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;)V

    .line 33
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->context:Landroid/content/Context;

    .line 34
    iput-boolean p4, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->captureToTexture:Z

    .line 35
    iput-boolean p5, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraHQ:Z

    .line 36
    iput-boolean p6, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraFpsUp:Z

    .line 37
    iput p7, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraStabilizationMode:I

    const-string p2, "camera"

    .line 38
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraManager:Landroid/hardware/camera2/CameraManager;

    return-void
.end method


# virtual methods
.method protected createCameraSession(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;Landroid/content/Context;Lcom/netease/lava/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "createSessionCallback",
            "events",
            "applicationContext",
            "surfaceTextureHelper",
            "cameraName",
            "width",
            "height",
            "framerate"
        }
    .end annotation

    move-object v0, p0

    .line 46
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraManager:Landroid/hardware/camera2/CameraManager;

    move-object/from16 v7, p5

    invoke-static {v1, v7}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;->getDeviceIndexByName(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraId:I

    .line 47
    iget-object v5, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-boolean v11, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->captureToTexture:Z

    iget-boolean v12, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraHQ:Z

    iget-boolean v13, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraFpsUp:Z

    iget v14, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;->cameraStabilizationMode:I

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v14}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->create(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/netease/lava/webrtc/SurfaceTextureHelper;Ljava/lang/String;IIIZZZI)V

    return-void
.end method
