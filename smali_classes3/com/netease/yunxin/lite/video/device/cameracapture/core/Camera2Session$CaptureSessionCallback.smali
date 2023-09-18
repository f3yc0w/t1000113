.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;


# direct methods
.method private constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 244
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    return-void
.end method

.method private chooseExposureMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureRequestBuilder"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 424
    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 425
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "Camera2Session"

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 427
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 428
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 427
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 429
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using Exposure  auto with no flash control"

    .line 430
    invoke-static {v4, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Auto-exposure is not available."

    .line 434
    invoke-static {v4, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private chooseFDMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureRequestBuilder"
        }
    .end annotation

    .line 470
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->isCameraFDSceneModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 472
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_SCENE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureRequestBuilder"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 439
    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 441
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const-string v3, "Camera2Session"

    if-ge v2, v1, :cond_1

    aget v4, v0, v2

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 443
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 444
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 443
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using continuous video auto-focus."

    .line 445
    invoke-static {v3, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Auto-focus is not available."

    .line 449
    invoke-static {v3, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureRequestBuilder"
        }
    .end annotation

    .line 356
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-string v1, "Camera2Session"

    const/4 v2, 0x0

    .line 364
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    .line 362
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-eqz v0, :cond_1

    .line 359
    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_1

    aget v8, v0, v7

    if-ne v8, v4, :cond_0

    .line 361
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 363
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using optical stabilization."

    .line 365
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_3

    .line 374
    array-length v6, v0

    :goto_1
    if-ge v2, v6, :cond_3

    aget v7, v0, v2

    if-ne v7, v4, :cond_2

    .line 376
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 378
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {p1, v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using video stabilization."

    .line 380
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const-string p1, "Stabilization not available."

    .line 385
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private chooseWhiteBalanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureRequestBuilder"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 454
    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 455
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const-string v4, "Camera2Session"

    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 457
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 458
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 457
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 459
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 460
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 459
    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using white balance auto-mode."

    .line 461
    invoke-static {v4, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Auto-White-Balance is not available."

    .line 465
    invoke-static {v4, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openOpticalStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureRequestBuilder"
        }
    .end annotation

    .line 388
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_OPTICAL_STABILIZATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-string v1, "Camera2Session"

    if-eqz v0, :cond_1

    .line 391
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 393
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 394
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 393
    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 395
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 396
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 395
    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using optical stabilization."

    .line 397
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Optical Stabilization not available."

    .line 402
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private openVideoStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureRequestBuilder"
        }
    .end annotation

    .line 406
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_VIDEO_STABILIZATION_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const-string v1, "Camera2Session"

    if-eqz v0, :cond_1

    .line 409
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 411
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_VIDEO_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 412
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 411
    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 413
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->LENS_OPTICAL_STABILIZATION_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 414
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 413
    invoke-virtual {p1, v0, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    const-string p1, "Using video stabilization."

    .line 415
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Video Stabilization not available."

    .line 420
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onConfigured$0$Camera2Session$CaptureSessionCallback(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "frame"
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    .line 323
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;->RUNNING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    if-eq v0, v1, :cond_0

    const-string p1, "Camera2Session"

    const-string v0, "Texture frame captured but camera is no longer running."

    .line 324
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2402(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Z)Z

    .line 338
    :cond_1
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrame;

    .line 340
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lcom/netease/lava/webrtc/TextureBufferImpl;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 341
    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Z

    move-result v2

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 342
    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)I

    move-result v3

    neg-int v3, v3

    .line 339
    invoke-static {v1, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->createTextureBufferWithModifiedTransformMatrix(Lcom/netease/lava/webrtc/TextureBufferImpl;ZI)Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 343
    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)I

    move-result v2

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 344
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/VideoFrame;->setIsMirror(Z)V

    const/4 p1, 0x0

    .line 345
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/VideoFrame;->setDualFrame(Z)V

    .line 346
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-interface {p1, v1, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onFrameCaptured(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Lcom/netease/lava/webrtc/VideoFrame;)V

    .line 347
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    .line 248
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 249
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA2_CONFIGURE_SESSION_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    const-string v1, "Failed to configure capture session."

    invoke-static {p1, v1, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    const-string v0, "Camera2Session"

    const-string v1, "Camera capture session configured."

    .line 255
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 257
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    new-instance v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraCaptureCallback;

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraCaptureCallback;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;)V

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 266
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 267
    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v2

    .line 266
    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1902(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 269
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    new-instance v4, Landroid/util/Range;

    iget-object v5, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 270
    invoke-static {v5}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v5

    iget-object v5, v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->framerate:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v5, v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v6, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v6}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)I

    move-result v6

    div-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 271
    invoke-static {v6}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v6

    iget-object v6, v6, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->framerate:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v6, v6, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    iget-object v7, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v7}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)I

    move-result v7

    div-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    .line 269
    invoke-virtual {v1, v2, v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 273
    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$2;->$SwitchMap$com$netease$yunxin$lite$video$device$cameracapture$core$Camera2Session$CameraStabilizationMode:[I

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    if-eq v1, v3, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Compat camera2 Stabilization mode: STABILIZATION_ALL_ON"

    .line 295
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->chooseStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_1
    const-string v1, "Compat camera2 Stabilization mode: STABILIZATION_SOFTWARE"

    .line 290
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->openVideoStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_2
    const-string v1, "Compat camera2 Stabilization mode: STABILIZATION_OPTICAL"

    .line 285
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->openOpticalStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    goto :goto_0

    :cond_3
    const-string v1, "Compat camera2 Stabilization mode: STABILIZATION_ALL_OFF"

    .line 280
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v1, "Compat camera2 Stabilization mode: STABILIZATION_UNDEFINED"

    .line 276
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->openOpticalStabilizationMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 301
    :goto_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->chooseExposureMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 302
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->chooseFocusMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 303
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->chooseWhiteBalanceMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 304
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->chooseFDMode(Landroid/hardware/camera2/CaptureRequest$Builder;)V

    .line 305
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    .line 306
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 307
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 309
    :cond_5
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 310
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 313
    :cond_6
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    .line 314
    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/os/Handler;

    move-result-object v3

    .line 313
    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object p1

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$CaptureSessionCallback$lYJLk5HGbRezxPCh802aUQM8k7s;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$CaptureSessionCallback$lYJLk5HGbRezxPCh802aUQM8k7s;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;)V

    invoke-virtual {p1, v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->startListening(Lcom/netease/lava/webrtc/VideoSink;)V

    const-string p1, "Camera device successfully started."

    .line 349
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-interface {p1, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onDone(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 316
    :goto_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start capture request. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA2_START_CAP_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-static {v0, p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void
.end method
