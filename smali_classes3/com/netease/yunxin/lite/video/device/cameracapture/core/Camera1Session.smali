.class public Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;
.super Ljava/lang/Object;
.source "Camera1Session.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;
    }
.end annotation


# static fields
.field private static final FOCUS_AREA_SIZE:I = 0xc8

.field private static final FPS_UNIT_FACTOR:I = 0x3e8

.field private static final METERING_AREA_SIZE:I = 0xc8

.field private static final NUMBER_OF_CAPTURE_BUFFERS:I = 0x3

.field private static final TAG:Ljava/lang/String; = "Camera1Session"

.field private static mCameraFpsUp:Z = false

.field private static mCameraHQ:Z = false

.field private static mCameraStabilizaionMode:I = -0x1

.field private static mRequestFPS:I


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final camera:Landroid/hardware/Camera;

.field private final cameraId:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private final captureFormat:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

.field private final captureToTexture:Z

.field private final constructionTimeNs:J

.field private final events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

.field private firstFrameReported:Z

.field private final info:Landroid/hardware/Camera$CameraInfo;

.field private mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mExposureModeSupported:Z

.field private mFDModeSupported:Z

.field private mFlashModeTorchSupported:Z

.field private mFocusCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mFocusModeSupported:Z

.field private mMaxZoomValue:I

.field private mZoomModeSupported:Z

.field private mZoomValue:I

.field private state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

.field private final surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;ZLandroid/content/Context;Lcom/netease/lava/webrtc/SurfaceTextureHelper;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
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
            "events",
            "captureToTexture",
            "applicationContext",
            "surfaceTextureHelper",
            "cameraId",
            "camera",
            "info",
            "captureFormat",
            "constructionTimeNs"
        }
    .end annotation

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create new camera1 session on cameraid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", captureToTexture:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 275
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    .line 276
    iput-boolean p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->captureToTexture:Z

    .line 277
    iput-object p3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->applicationContext:Landroid/content/Context;

    .line 278
    iput-object p4, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    .line 279
    iput p5, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->cameraId:I

    .line 280
    iput-object p6, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    .line 281
    iput-object p7, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    .line 282
    iput-object p8, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->captureFormat:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    .line 283
    iput-wide p9, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->constructionTimeNs:J

    .line 285
    iget p1, p8, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget p2, p8, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p4, p1, p2}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 287
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->startCapturing()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->stopInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Landroid/hardware/Camera;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->firstFrameReported:Z

    return p0
.end method

.method static synthetic access$502(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->firstFrameReported:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->captureFormat:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)I
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->getFrameOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .line 626
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 627
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;ZLandroid/content/Context;Lcom/netease/lava/webrtc/SurfaceTextureHelper;IIIIZZI)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "events",
            "captureToTexture",
            "applicationContext",
            "surfaceTextureHelper",
            "cameraId",
            "width",
            "height",
            "framerate",
            "cameraHQ",
            "cameraFpsUp",
            "cameraStabilizationMode"
        }
    .end annotation

    move-object v1, p0

    move/from16 v0, p2

    move/from16 v7, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v8, p11

    .line 94
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Open camera "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", captureToTexture:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", cameraHQ: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", cameraFpsUp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", cameraStabilizationMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "Camera1Session"

    invoke-static {v10, v9}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-interface/range {p1 .. p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraOpening()V

    .line 101
    :try_start_0
    invoke-static/range {p5 .. p5}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v9
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez v9, :cond_0

    .line 108
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.hardware.Camera.open returned null for camera id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA1_NULL_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-interface {p0, v0, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onFailure(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void

    .line 114
    :cond_0
    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 121
    new-instance v10, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v10}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 122
    invoke-static {v7, v10}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 125
    sput-boolean v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mCameraHQ:Z

    .line 126
    sput-boolean v6, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mCameraFpsUp:Z

    .line 127
    sput v8, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mCameraStabilizaionMode:I

    .line 128
    sput v4, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mRequestFPS:I

    .line 130
    :try_start_2
    invoke-virtual {v9}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    .line 131
    invoke-static {v5, v2, v3, v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v13

    .line 132
    invoke-static {v5, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lcom/netease/lava/webrtc/Size;

    move-result-object v2

    .line 133
    invoke-static {v9, v5, v13, v2, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;Lcom/netease/lava/webrtc/Size;Z)V

    move-object/from16 v3, p1

    .line 134
    invoke-static {v7, v5, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->reportCameraFormats(ILandroid/hardware/Camera$Parameters;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 142
    :cond_1
    invoke-virtual {v13}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->frameSize()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    .line 144
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 145
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v9, v6}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 151
    :cond_2
    :goto_1
    :try_start_3
    invoke-virtual {v9, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 158
    new-instance v14, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    move-object v2, v14

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object v8, v9

    move-object v9, v10

    move-object v10, v13

    invoke-direct/range {v2 .. v12}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;ZLandroid/content/Context;Lcom/netease/lava/webrtc/SurfaceTextureHelper;ILandroid/hardware/Camera;Landroid/hardware/Camera$CameraInfo;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;J)V

    invoke-interface {p0, v14}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onDone(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 153
    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V

    .line 154
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA1_SET_DISPLAY_ORIENTATION_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-interface {p0, v0, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onFailure(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void

    :catch_1
    move-exception v0

    .line 136
    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V

    .line 137
    sget-object v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA1_UPDATE_PARAM_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-interface {p0, v2, v0, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onFailure(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    .line 116
    :goto_2
    invoke-virtual {v9}, Landroid/hardware/Camera;->release()V

    .line 117
    sget-object v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA1_SURFACE_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-interface {p0, v2, v0, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onFailure(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 103
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA1_INIT_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-interface {p0, v0, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onFailure(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void
.end method

.method private static findClosestCaptureFormat(Landroid/hardware/Camera$Parameters;III)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "width",
            "height",
            "framerate"
        }
    .end annotation

    .line 246
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;->convertFramerates(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Available fps ranges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera1Session"

    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    sget-boolean v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mCameraFpsUp:Z

    .line 250
    invoke-static {v0, p3, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;IZ)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object p3

    .line 252
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Available preview sizes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    invoke-static {p0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lcom/netease/lava/webrtc/Size;

    move-result-object p0

    .line 257
    new-instance p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    iget p2, p0, Lcom/netease/lava/webrtc/Size;->width:I

    iget p0, p0, Lcom/netease/lava/webrtc/Size;->height:I

    invoke-direct {p1, p2, p0, p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;-><init>(IILcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    .line 258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Using capture format: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static findClosestPictureSize(Landroid/hardware/Camera$Parameters;II)Lcom/netease/lava/webrtc/Size;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "width",
            "height"
        }
    .end annotation

    .line 265
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    .line 264
    invoke-static {p0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lcom/netease/lava/webrtc/Size;

    move-result-object p0

    return-object p0
.end method

.method private getFrameOrientation()I
    .locals 2

    .line 618
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 619
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v1, :cond_0

    rsub-int v0, v0, 0x168

    .line 622
    :cond_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v1, v1, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private getParametersSafe(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    if-eqz p1, :cond_0

    .line 437
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getParametersSafe failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera1Session"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private initCameraParameters()V
    .locals 4

    const/4 v0, 0x0

    .line 446
    iput v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomValue:I

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mMaxZoomValue:I

    .line 447
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFlashModeTorchSupported:Z

    .line 448
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomModeSupported:Z

    .line 449
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFocusModeSupported:Z

    .line 450
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mExposureModeSupported:Z

    .line 451
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFDModeSupported:Z

    .line 452
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->getParametersSafe(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "Camera1Session"

    const-string v1, "initCameraParameters: getParametersSafe failed"

    .line 454
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 457
    :cond_0
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 458
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxZoom()I

    move-result v2

    iput v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mMaxZoomValue:I

    .line 460
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v2

    iput-boolean v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomModeSupported:Z

    .line 461
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mExposureModeSupported:Z

    .line 462
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFocusModeSupported:Z

    .line 463
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v2

    if-lez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFDModeSupported:Z

    .line 464
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "torch"

    .line 465
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x1

    :cond_5
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFlashModeTorchSupported:Z

    return-void
.end method

.method private listenForBytebufferFrames()V
    .locals 2

    .line 578
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    return-void
.end method

.method private listenForTextureFrames()V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$Sz0ksN453LfgmMivxIVxOlmNRgk;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$Sz0ksN453LfgmMivxIVxOlmNRgk;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)V

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->startListening(Lcom/netease/lava/webrtc/VideoSink;)V

    return-void
.end method

.method private static reportCameraFormats(ILandroid/hardware/Camera$Parameters;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "deviceId",
            "parameters",
            "events"
        }
    .end annotation

    const-string v0, "fps"

    const-string v1, "Camera1Session"

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 206
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v2

    .line 207
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v3

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto/16 :goto_2

    .line 214
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 216
    :try_start_0
    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;->convertFramerates(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "size"

    .line 217
    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera1Enumerator;->convertSizes(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 219
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 222
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 225
    invoke-virtual {p1, v3}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 226
    new-instance p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v3, v3, v6

    invoke-direct {p1, v5, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;-><init>(II)V

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "width : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", height : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", frameRateRange : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", expect: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mRequestFPS:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v3, "w"

    .line 231
    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "h"

    .line 232
    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "expect"

    .line 234
    sget v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mRequestFPS:I

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p0, p1, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraFormatsInquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_2
    const-string p0, "Get formats failed."

    .line 210
    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    :goto_3
    const-string p0, "report camera formats failed, paramters illegal."

    .line 202
    invoke-static {v1, p0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startCapturing()V
    .locals 3

    const-string v0, "Camera1Session"

    const-string v1, "Start capturing"

    .line 469
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->checkIsOnCameraThread()V

    .line 471
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->initCameraParameters()V

    .line 472
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    if-eqz v0, :cond_0

    .line 473
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->setCamera(Landroid/hardware/Camera;)V

    .line 475
    :cond_0
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;->RUNNING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    .line 477
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$2;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$2;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    .line 505
    :try_start_0
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->captureToTexture:Z

    if-eqz v0, :cond_1

    .line 506
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->listenForTextureFrames()V

    goto :goto_0

    .line 508
    :cond_1
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->listenForBytebufferFrames()V

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 513
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->stopInternal()V

    .line 514
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA1_SURFACE_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-virtual {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->getCode()I

    move-result v2

    invoke-interface {v1, p0, v0, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraError(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private stopInternal()V
    .locals 4

    const-string v0, "Camera1Session"

    const-string v1, "Stop internal"

    .line 519
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    if-eqz v1, :cond_0

    .line 521
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->destory()V

    const/4 v1, 0x0

    .line 522
    iput-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    .line 524
    :cond_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->checkIsOnCameraThread()V

    .line 525
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    sget-object v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    if-ne v1, v2, :cond_1

    const-string v1, "Camera is already stopped"

    .line 526
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 531
    :cond_1
    :try_start_0
    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    iput-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    .line 532
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 536
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 537
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 539
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop camera error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    invoke-interface {v1, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraClosed(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V

    const-string v1, "Stop done"

    .line 542
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static updateCameraParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;Lcom/netease/lava/webrtc/Size;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "camera",
            "parameters",
            "captureFormat",
            "pictureSize",
            "captureToTexture"
        }
    .end annotation

    .line 165
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    .line 166
    iget-object v1, p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->framerate:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v1, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    sget v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mRequestFPS:I

    mul-int/lit16 v2, v2, 0x3e8

    if-lt v1, v2, :cond_1

    sget-boolean v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mCameraHQ:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object v1, p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->framerate:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v1, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget-object v2, p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->framerate:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v2, v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    goto :goto_1

    .line 167
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Andorid deprecated API , CameraHQ fps, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mRequestFPS:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera1Session"

    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mRequestFPS:I

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 173
    :goto_1
    iget v1, p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget v2, p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {p1, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 174
    iget v1, p3, Lcom/netease/lava/webrtc/Size;->width:I

    iget p3, p3, Lcom/netease/lava/webrtc/Size;->height:I

    invoke-virtual {p1, v1, p3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    if-eqz p4, :cond_2

    goto :goto_2

    .line 176
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p2, 0x11

    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 179
    :goto_2
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result p2

    if-eqz p2, :cond_3

    sget p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mCameraStabilizaionMode:I

    if-lez p2, :cond_3

    const/4 p2, 0x1

    .line 180
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    :cond_3
    const-string p2, "continuous-video"

    .line 182
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 183
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 196
    :cond_4
    invoke-virtual {p0, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    return-void
.end method


# virtual methods
.method public getCurrentZoom()I
    .locals 1

    .line 347
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomValue:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .line 352
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mMaxZoomValue:I

    return v0
.end method

.method public isCameraExposurePositionSupported()Z
    .locals 1

    .line 390
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mExposureModeSupported:Z

    return v0
.end method

.method public isCameraFaceDetectModeSupported()Z
    .locals 1

    .line 395
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFDModeSupported:Z

    return v0
.end method

.method public isCameraFocusSupported()Z
    .locals 1

    .line 411
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFocusModeSupported:Z

    return v0
.end method

.method public isCameraTorchSupported()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFlashModeTorchSupported:Z

    return v0
.end method

.method public isCameraZoomSupported()Z
    .locals 1

    .line 305
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomModeSupported:Z

    return v0
.end method

.method public synthetic lambda$listenForTextureFrames$2$Camera1Session(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "frame"
        }
    .end annotation

    .line 547
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->checkIsOnCameraThread()V

    .line 549
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;->RUNNING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    if-eq v0, v1, :cond_0

    const-string p1, "Camera1Session"

    const-string v0, "Texture frame captured but camera is no longer running."

    .line 550
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 554
    :cond_0
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->firstFrameReported:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 555
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 556
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->constructionTimeNs:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 558
    iput-boolean v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->firstFrameReported:Z

    .line 563
    :cond_1
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrame;

    .line 565
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v2

    check-cast v2, Lcom/netease/lava/webrtc/TextureBufferImpl;

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x0

    if-ne v3, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 564
    :goto_0
    invoke-static {v2, v3, v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->createTextureBufferWithModifiedTransformMatrix(Lcom/netease/lava/webrtc/TextureBufferImpl;ZI)Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    move-result-object v2

    .line 568
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->getFrameOrientation()I

    move-result v3

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v5

    invoke-direct {v0, v2, v3, v5, v6}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 570
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->info:Landroid/hardware/Camera$CameraInfo;

    iget p1, p1, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/VideoFrame;->setIsMirror(Z)V

    .line 571
    invoke-virtual {v0, v4}, Lcom/netease/lava/webrtc/VideoFrame;->setDualFrame(Z)V

    .line 572
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    invoke-interface {p1, p0, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onFrameCaptured(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Lcom/netease/lava/webrtc/VideoFrame;)V

    .line 573
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    return-void
.end method

.method public synthetic lambda$setFlash$1$Camera1Session(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "flash"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->getParametersSafe(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 369
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v1

    const-string v2, "Camera1Session"

    if-eqz v1, :cond_2

    const-string v3, "torch"

    .line 370
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "off"

    .line 371
    :goto_0
    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 373
    :try_start_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlash failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p1, "setFlash failed: not supported torch flash"

    .line 378
    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public synthetic lambda$setZoom$0$Camera1Session(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "zoomValue"
        }
    .end annotation

    const-string v0, "setZoom failed: "

    const-string v1, "Camera1Session"

    .line 316
    :try_start_0
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-direct {p0, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->getParametersSafe(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 320
    :cond_0
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->isZoomSupported()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 321
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomValue:I

    .line 322
    iget v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mMaxZoomValue:I

    if-le p1, v3, :cond_1

    .line 323
    iput v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomValue:I

    goto :goto_0

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    .line 325
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomValue:I

    .line 328
    :cond_2
    :goto_0
    iget p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomValue:I

    invoke-virtual {v2, p1}, Landroid/hardware/Camera$Parameters;->setZoom(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 331
    :try_start_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {p1, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 333
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string p1, "setZoom failed: not supported"

    .line 336
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setFlash(Z)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flash"
        }
    .end annotation

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlash "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFlashModeTorchSupported:Z

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$S4nYRsak_x8zRsGfzS-VJodppdc;

    invoke-direct {v1, p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$S4nYRsak_x8zRsGfzS-VJodppdc;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1
.end method

.method public setFocusAndMeteringCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusAndMeteringCallback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFocusCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    return-void
.end method

.method public setFocusAreas(FF)V
    .locals 3
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

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusAreas {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    .line 419
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->setCamera(Landroid/hardware/Camera;)V

    .line 420
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFocusCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->setFocusCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    const/16 v1, 0xc8

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->focusArea(FFIZ)V

    return-void
.end method

.method public setMeteringAreas(FF)V
    .locals 3
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

    .line 400
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMeteringAreas {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    .line 403
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->setCamera(Landroid/hardware/Camera;)V

    .line 404
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mFocusCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->setFocusCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mAreaFocus:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    const/16 v1, 0xc8

    const/4 v2, 0x1

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->focusArea(FFIZ)V

    return-void
.end method

.method public setZoom(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->mZoomValue:I

    if-ne p1, v0, :cond_0

    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$epOriNJsnCNkRfJjxbN84LW-hwM;

    invoke-direct {v1, p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$epOriNJsnCNkRfJjxbN84LW-hwM;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 6

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop camera1 session on camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->cameraId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera1Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->checkIsOnCameraThread()V

    .line 294
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    sget-object v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$SessionState;

    if-eq v0, v2, :cond_0

    .line 295
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 296
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->stopInternal()V

    .line 297
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop camera1 session use: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
