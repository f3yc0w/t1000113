.class public Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;
.super Ljava/lang/Object;
.source "CameraCapturerWrapper.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraCapturerWrapper"


# instance fields
.field cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;


# direct methods
.method public constructor <init>(Landroid/content/Context;IZZZILjava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;)V
    .locals 13
    .param p8    # Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
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
            "context",
            "cameraType",
            "captureToTexture",
            "cameraHQ",
            "cameraFpsUp",
            "cameraStabilizationMode",
            "cameraName",
            "eventsHandler"
        }
    .end annotation

    move-object v1, p0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraCapturerWrapper::cameraType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", captureToTexture:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", cameraHQ:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", cameraFpsUp:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p5

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", cameraStabilizationMode:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v11, p6

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "CameraCapturerWrapper"

    invoke-static {v12, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;->isCamera2BlackList()Z

    move-result v0

    const/4 v4, 0x2

    if-nez v0, :cond_1

    invoke-static {}, Lcom/netease/lava/webrtc/device/HardwareLevel;->level()I

    move-result v0

    if-lt v0, v4, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x16

    if-gt v0, v5, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "Device in Camera2 BlackList OR build version too low, use Camera1!"

    .line 33
    invoke-static {v12, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :goto_1
    if-eq v0, v4, :cond_2

    .line 50
    :try_start_0
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;

    move-object v4, v0

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;-><init>(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;ZZZI)V

    iput-object v0, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    goto :goto_2

    .line 42
    :cond_2
    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;

    move-object v4, v0

    move-object v5, p1

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-direct/range {v4 .. v11}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Capturer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;ZZZI)V

    iput-object v0, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    goto :goto_2

    .line 45
    :cond_3
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;

    move-object v4, v0

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v4 .. v10}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Capturer;-><init>(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;ZZZI)V

    iput-object v0, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CameraCapturerWrapper create failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 1
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

    .line 211
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V

    :cond_0
    return-void
.end method

.method public changeCaptureFormat(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "framerate"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->changeCaptureFormat(III)V

    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->dispose()V

    :cond_0
    return-void
.end method

.method public getCurrentZoom()I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->getCurrentZoom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->getMaxZoom()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public initialize(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;)V
    .locals 1
    .param p1    # Lcom/netease/lava/webrtc/SurfaceTextureHelper;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surfaceTextureHelper",
            "applicationContext",
            "capturerObserver"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->initialize(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;)V

    :cond_0
    return-void
.end method

.method public isCameraExposurePositionSupported()Z
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraExposurePositionSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraFocusSupported()Z
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraFocusSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraTorchSupported()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraTorchSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isCameraZoomSupported()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraZoomSupported()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isScreencast()Z
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isScreencast()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public printStackTrace()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->printStackTrace()V

    :cond_0
    return-void
.end method

.method public removeMediaRecorderFromCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultHandler"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->removeMediaRecorderFromCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V

    :cond_0
    return-void
.end method

.method public setFlash(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flash"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->setFlash(Z)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public setFocusAndMeteringCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->setFocusAndMeteringCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V

    :cond_0
    return-void
.end method

.method public setFocusAreas(FF)V
    .locals 1
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

    .line 157
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->setFocusAreas(FF)V

    :cond_0
    return-void
.end method

.method public setMeteringAreas(FF)V
    .locals 1
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

    .line 150
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->setMeteringAreas(FF)V

    :cond_0
    return-void
.end method

.method public setZoom(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->setZoom(I)V

    :cond_0
    return-void
.end method

.method public startCapture(III)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "framerate"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->startCapture(III)V

    goto :goto_0

    :cond_0
    const-string p1, "CameraCapturerWrapper"

    const-string p2, "startCapture failed! cameraCapturer is null"

    .line 72
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public stopCapture()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stopCapture()V

    :cond_0
    return-void
.end method

.method public switchCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "switchEventsHandler"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CameraCapturerWrapper;->cameraCapturer:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V

    :cond_0
    return-void
.end method
