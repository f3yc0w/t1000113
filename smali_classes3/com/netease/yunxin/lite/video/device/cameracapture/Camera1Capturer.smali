.class public Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;
.super Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;
.source "Camera1Capturer.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;ZZZI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraName",
            "eventsHandler",
            "captureToTexture",
            "cameraHQ",
            "cameraFpsUp",
            "cameraStabilizationMode"
        }
    .end annotation

    .line 24
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;

    invoke-direct {v0, p3, p4, p5, p6}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;-><init>(ZZZI)V

    invoke-direct {p0, p1, p2, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;-><init>(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;)V

    .line 26
    iput-boolean p3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->captureToTexture:Z

    .line 27
    iput-boolean p4, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->cameraHQ:Z

    .line 28
    iput-boolean p5, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->cameraFpsUp:Z

    .line 29
    iput p6, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->cameraStabilizationMode:I

    return-void
.end method


# virtual methods
.method protected createCameraSession(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;Landroid/content/Context;Lcom/netease/lava/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
    .locals 14
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

    .line 37
    invoke-static/range {p5 .. p5}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;->getCameraIndex(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->cameraId:I

    .line 38
    iget-boolean v4, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->captureToTexture:Z

    iget v7, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->cameraId:I

    iget-boolean v11, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->cameraHQ:Z

    iget-boolean v12, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->cameraFpsUp:Z

    iget v13, v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;->cameraStabilizationMode:I

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v13}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->create(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;ZLandroid/content/Context;Lcom/netease/lava/webrtc/SurfaceTextureHelper;IIIIZZI)V

    return-void
.end method
