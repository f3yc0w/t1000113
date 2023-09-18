.class public Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;
.super Ljava/lang/Object;
.source "Camera2Session.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraCaptureCallback;,
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;,
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;,
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;,
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;
    }
.end annotation


# static fields
.field private static final FOCUS_AREA_SIZE:I = 0xc8

.field private static final METERING_AREA_SIZE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "Camera2Session"

.field private static final ZOOM_GRADE:I = 0x64


# instance fields
.field private final applicationContext:Landroid/content/Context;

.field private final callback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

.field private cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

.field private cameraDevice:Landroid/hardware/camera2/CameraDevice;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final cameraId:Ljava/lang/String;

.field private final cameraManager:Landroid/hardware/camera2/CameraManager;

.field private cameraOrientation:I

.field private final cameraThreadHandler:Landroid/os/Handler;

.field private captureFormat:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

.field private captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private captureSession:Landroid/hardware/camera2/CameraCaptureSession;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final captureToTexture:Z

.field private final constructionTimeNs:J

.field private final events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

.field private firstFrameReported:Z

.field private fpsUnitFactor:I

.field private final framerate:I

.field private final height:I

.field private imageSurface:Landroid/view/Surface;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private isCameraFrontFacing:Z

.field private mAreaFocusCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mCameraFpsUp:Z

.field private final mCameraHQ:Z

.field private final mCameraStabilizationMode:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

.field private mCameraZoomRatios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureResult:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2CaptureResult;

.field private mCurZoom:I

.field private mImageReader:Landroid/media/ImageReader;

.field private mMaxZoom:I

.field private final mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

.field private state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

.field private surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

.field private textureSurface:Landroid/view/Surface;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final width:I


# direct methods
.method private constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/netease/lava/webrtc/SurfaceTextureHelper;Ljava/lang/String;IIIZZZI)V
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "events",
            "applicationContext",
            "cameraManager",
            "surfaceTextureHelper",
            "cameraId",
            "width",
            "height",
            "framerate",
            "captureToTexture",
            "cameraHQ",
            "cameraFpsUp",
            "cameraStabilizationMode"
        }
    .end annotation

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    .line 119
    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mImageReader:Landroid/media/ImageReader;

    .line 145
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;->RUNNING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    .line 643
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Create new camera2 session on camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", captureToTexture: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cameraHQ: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cameraFpsUp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->constructionTimeNs:J

    .line 524
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 525
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->callback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    .line 526
    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    .line 527
    iput-object p3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->applicationContext:Landroid/content/Context;

    .line 528
    iput-object p4, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    .line 529
    iput-object p5, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    .line 530
    iput-object p6, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraId:Ljava/lang/String;

    .line 531
    iput p7, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->width:I

    .line 532
    iput p8, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->height:I

    .line 533
    iput p9, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->framerate:I

    .line 534
    iput-boolean p11, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraHQ:Z

    .line 535
    iput-boolean p12, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraFpsUp:Z

    .line 536
    invoke-static {p13}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;->fromValue(I)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraStabilizationMode:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    .line 537
    iput-boolean p10, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureToTexture:Z

    .line 538
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->start()V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/view/Surface;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->textureSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->textureSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/media/ImageReader;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mImageReader:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mImageReader:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/media/ImageReader$OnImageAvailableListener;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mOnImageAvailableListener:Landroid/media/ImageReader$OnImageAvailableListener;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/os/Handler;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/view/Surface;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->imageSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$1502(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->imageSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;)Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->fpsUnitFactor:I

    return p0
.end method

.method static synthetic access$202(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraStabilizationMode:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStabilizationMode;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->prepareZoomMode()V

    return-void
.end method

.method static synthetic access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCharacteristics;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->firstFrameReported:Z

    return p0
.end method

.method static synthetic access$2402(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->firstFrameReported:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->isCameraFrontFacing:Z

    return p0
.end method

.method static synthetic access$2600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraOrientation:I

    return p0
.end method

.method static synthetic access$2700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)I
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->getFrameOrientation()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->stopInternal()V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->callback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->reportError(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$800(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureToTexture:Z

    return p0
.end method

.method static synthetic access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureFormat:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    return-object p0
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .line 977
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 978
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static create(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/netease/lava/webrtc/SurfaceTextureHelper;Ljava/lang/String;IIIZZZI)V
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
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callback",
            "events",
            "applicationContext",
            "cameraManager",
            "surfaceTextureHelper",
            "cameraId",
            "width",
            "height",
            "framerate",
            "captureToTexture",
            "cameraHQ",
            "cameraFpsUp",
            "cameraStabilizationMode"
        }
    .end annotation

    .line 512
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Lcom/netease/lava/webrtc/SurfaceTextureHelper;Ljava/lang/String;IIIZZZI)V

    return-void
.end method

.method private findCaptureFormat()V
    .locals 9

    const-string v0, "fps"

    .line 559
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->checkIsOnCameraThread()V

    .line 561
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 562
    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/util/Range;

    .line 563
    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;->getFpsUnitFactor([Landroid/util/Range;)I

    move-result v2

    iput v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->fpsUnitFactor:I

    .line 565
    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;->convertFramerates([Landroid/util/Range;I)Ljava/util/List;

    move-result-object v1

    .line 566
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/Camera2Enumerator;->getSupportedSizes(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v2

    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Available preview sizes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Camera2Session"

    invoke-static {v4, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Available fps ranges: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    iget-boolean v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraHQ:Z

    if-nez v3, :cond_0

    .line 572
    iget v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->framerate:I

    iget-boolean v5, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraFpsUp:Z

    invoke-static {v1, v3, v5}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->getClosestSupportedFramerateRange(Ljava/util/List;IZ)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object v3

    goto :goto_0

    .line 574
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    .line 575
    iget v6, v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    iget v7, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->framerate:I

    iget v8, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->fpsUnitFactor:I

    mul-int v7, v7, v8

    if-lt v6, v7, :cond_1

    .line 576
    new-instance v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    iget v6, v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    iget v5, v5, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    invoke-direct {v3, v6, v5}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;-><init>(II)V

    .line 577
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CameraHQ fps:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 584
    :goto_0
    iget v5, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->width:I

    iget v6, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->height:I

    invoke-static {v2, v5, v6}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->getClosestSupportedSize(Ljava/util/List;II)Lcom/netease/lava/webrtc/Size;

    move-result-object v5

    .line 586
    new-instance v6, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    iget v7, v5, Lcom/netease/lava/webrtc/Size;->width:I

    iget v8, v5, Lcom/netease/lava/webrtc/Size;->height:I

    invoke-direct {v6, v7, v8, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;-><init>(IILcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;)V

    iput-object v6, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureFormat:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    .line 587
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Using capture format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureFormat:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 592
    :try_start_0
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "size"

    .line 593
    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 595
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 598
    :goto_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "w"

    .line 600
    iget v6, v5, Lcom/netease/lava/webrtc/Size;->width:I

    invoke-virtual {v1, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "h"

    .line 601
    iget v5, v5, Lcom/netease/lava/webrtc/Size;->height:I

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 602
    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "expect"

    .line 603
    iget v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->framerate:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 605
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 608
    :goto_2
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraFormatsInquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getFrameOrientation()I
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getDeviceOrientation(Landroid/content/Context;)I

    move-result v0

    .line 970
    iget-boolean v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->isCameraFrontFacing:Z

    if-nez v1, :cond_0

    rsub-int v0, v0, 0x168

    .line 973
    :cond_0
    iget v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraOrientation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    return v1
.end method

.method private openCamera()V
    .locals 4

    .line 613
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->checkIsOnCameraThread()V

    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    invoke-interface {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraOpening()V

    .line 619
    :try_start_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraId:Ljava/lang/String;

    new-instance v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;)V

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    .line 620
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->callback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    if-eqz v0, :cond_0

    .line 621
    invoke-interface {v0, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onOpening(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    .line 624
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open camera: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA2_INIT_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-direct {p0, v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->reportError(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void
.end method

.method private prepareZoomMode()V
    .locals 7

    .line 703
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    sub-float v2, v0, v1

    div-float/2addr v2, v1

    .line 706
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraZoomRatios:Ljava/util/ArrayList;

    .line 707
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0x63

    if-ge v4, v5, :cond_0

    .line 709
    iget-object v5, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraZoomRatios:Ljava/util/ArrayList;

    int-to-float v6, v4

    mul-float v6, v6, v2

    add-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraZoomRatios:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraZoomRatios:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mMaxZoom:I

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 714
    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraZoomRatios:Ljava/util/ArrayList;

    :goto_1
    return-void
.end method

.method private reportError(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "deviceErrorType"
        }
    .end annotation

    .line 955
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->checkIsOnCameraThread()V

    .line 957
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 958
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", startFailure:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Camera2Session"

    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    iput-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    .line 960
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->stopInternal()V

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->callback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    invoke-interface {v0, v1, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onFailure(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    goto :goto_1

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->events:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    invoke-virtual {p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->getCode()I

    move-result p2

    invoke-interface {v0, p0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraError(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Ljava/lang/String;I)V

    :goto_1
    return-void
.end method

.method private start()V
    .locals 3

    .line 542
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->checkIsOnCameraThread()V

    const-string v0, "Camera2Session"

    const-string v1, "start"

    .line 543
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    :try_start_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraOrientation:I

    .line 552
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->isCameraFrontFacing:Z

    .line 554
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->findCaptureFormat()V

    .line 555
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->openCamera()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 548
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCameraCharacteristics(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA2_GET_CHA_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-direct {p0, v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->reportError(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void
.end method

.method private stopInternal()V
    .locals 3

    const-string v0, "Camera2Session"

    const-string v1, "Stop internal"

    .line 924
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->checkIsOnCameraThread()V

    .line 927
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 928
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 929
    iput-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    .line 932
    :cond_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v1, :cond_1

    .line 933
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 934
    iput-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 937
    :cond_1
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->imageSurface:Landroid/view/Surface;

    if-eqz v1, :cond_2

    .line 938
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 939
    iput-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->imageSurface:Landroid/view/Surface;

    .line 941
    :cond_2
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->textureSurface:Landroid/view/Surface;

    if-eqz v1, :cond_3

    .line 942
    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    .line 943
    iput-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->textureSurface:Landroid/view/Surface;

    .line 946
    :cond_3
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v1, :cond_4

    .line 947
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 948
    iput-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_4
    const-string v1, "Stop done"

    .line 951
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCurrentZoom()I
    .locals 1

    .line 754
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCurZoom:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .line 759
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mMaxZoom:I

    return v0
.end method

.method public isCameraExposurePositionSupported()Z
    .locals 3

    const/4 v0, 0x0

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v1, :cond_0

    .line 809
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isCameraFDSceneModeSupported()Z
    .locals 6

    .line 833
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 834
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isCameraFaceDetectModeSupported()Z
    .locals 8

    .line 819
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 820
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 822
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    .line 823
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "faceMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " face "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Camera2Session"

    invoke-static {v7, v6}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    if-lez v1, :cond_0

    return v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public isCameraFocusSupported()Z
    .locals 3

    const/4 v0, 0x0

    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v1, :cond_0

    .line 847
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public isCameraTorchSupported()Z
    .locals 3

    const/4 v0, 0x0

    .line 796
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v1, :cond_0

    .line 797
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return v0
.end method

.method public isCameraZoomSupported()Z
    .locals 1

    .line 790
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraZoomRatios:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$setFlash$1$Camera2Session(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "flash"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 771
    :try_start_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_0

    .line 773
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 775
    :goto_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 777
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public synthetic lambda$setFocusAreas$3$Camera2Session(Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "focusArea"
        }
    .end annotation

    .line 907
    :try_start_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 908
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v3, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 909
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 910
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 911
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 910
    invoke-virtual {p1, v0, v1, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    .line 914
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 915
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 917
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$setMeteringAreas$2$Camera2Session(Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "materingArea"
        }
    .end annotation

    .line 878
    :try_start_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 879
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 880
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_PRECAPTURE_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 881
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 882
    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    .line 881
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 884
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public synthetic lambda$setZoom$0$Camera2Session(I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "zoomValue"
        }
    .end annotation

    .line 725
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCameraZoomRatios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 727
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 729
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    float-to-double v6, v0

    mul-double v6, v6, v4

    div-double/2addr v2, v6

    double-to-int v0, v2

    .line 730
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v2, v6

    double-to-int v2, v2

    .line 732
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v0

    .line 733
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    .line 734
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, v2

    .line 735
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    .line 737
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v0, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 738
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 741
    :try_start_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->captureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCurZoom:I

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 743
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setZoom failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Camera2Session"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
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

    .line 764
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->isCameraTorchSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x2

    return p1

    .line 768
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$5rDZJk7IZ-mbPYjzr5fefwHvfJs;

    invoke-direct {v1, p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$5rDZJk7IZ-mbPYjzr5fefwHvfJs;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public setFocusAndMeteringCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 858
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mAreaFocusCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

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

    .line 891
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    if-nez v0, :cond_0

    .line 892
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    .line 894
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->setAreaSize(I)V

    .line 895
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->getAreaRect(FF)Landroid/graphics/RectF;

    move-result-object p1

    .line 896
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    invoke-virtual {p2, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p2

    .line 898
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFocusAreas areaRectF  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cameraRect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v1, 0x3e8

    invoke-direct {v0, p2, v1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    .line 901
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mAreaFocusCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    if-eqz p2, :cond_1

    .line 902
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    invoke-virtual {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->toIntRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;->focusArea(Landroid/graphics/Rect;)V

    .line 905
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$c8Rwbz-VJEvuw_lTj4uVVlp_Yd0;

    invoke-direct {p2, p0, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$c8Rwbz-VJEvuw_lTj4uVVlp_Yd0;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    .line 863
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    if-nez v0, :cond_0

    .line 864
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraCharacteristics:Landroid/hardware/camera2/CameraCharacteristics;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->applicationContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    .line 867
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->setAreaSize(I)V

    .line 868
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    invoke-virtual {v0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->getAreaRect(FF)Landroid/graphics/RectF;

    move-result-object p1

    .line 869
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    invoke-virtual {p2, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p2

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMeteringAreas areaRectF  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cameraRect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    new-instance v0, Landroid/hardware/camera2/params/MeteringRectangle;

    const/16 v1, 0x3e8

    invoke-direct {v0, p2, v1}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(Landroid/graphics/Rect;I)V

    .line 873
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mAreaFocusCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    if-eqz p2, :cond_1

    .line 874
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mTransformer:Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;

    invoke-virtual {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->toIntRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;->exposureArea(Landroid/graphics/Rect;)V

    .line 876
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    new-instance p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$-OKpUuuDvqd4Rxd15mJN1QhKovA;

    invoke-direct {p2, p0, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$-OKpUuuDvqd4Rxd15mJN1QhKovA;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/params/MeteringRectangle;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

    if-ltz p1, :cond_1

    .line 720
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mMaxZoom:I

    if-gt p1, v0, :cond_1

    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->mCurZoom:I

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 724
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$Rw1dUOrid7E--78ypDyjGezpqBM;

    invoke-direct {v1, p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$Rw1dUOrid7E--78ypDyjGezpqBM;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    :goto_0
    const-string p1, "Camera2Session"

    const-string v0, "bad zoom value!"

    .line 721
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 6

    .line 631
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stop camera2 session on camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->cameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Camera2Session"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->checkIsOnCameraThread()V

    .line 633
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    sget-object v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    if-eq v0, v2, :cond_0

    .line 634
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 635
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->state:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    .line 636
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->stopInternal()V

    .line 637
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    long-to-int v0, v2

    .line 639
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop camera2 session cost ms: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
