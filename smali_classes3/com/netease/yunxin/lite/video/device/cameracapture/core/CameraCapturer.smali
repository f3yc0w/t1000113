.class public abstract Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;
    }
.end annotation


# static fields
.field private static final CLOSE_CAMERA_TIMEOUT:I = 0xbb8

.field private static final MAX_OPEN_CAMERA_ATTEMPTS:I = 0x3

.field private static final OPEN_CAMERA_DELAY_MS:I = 0x1f4

.field private static final OPEN_CAMERA_TIMEOUT:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "CameraCapturer"


# instance fields
.field private applicationContext:Landroid/content/Context;

.field private final cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

.field protected cameraFpsUp:Z

.field protected cameraHQ:Z

.field protected cameraId:I

.field private cameraName:Ljava/lang/String;

.field private final cameraSessionEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected cameraStabilizationMode:I

.field private cameraStatistics:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private cameraThreadHandler:Landroid/os/Handler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected captureToTexture:Z

.field private capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

.field private final createSessionCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final eventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private fallbackAttemptsRemaining:I

.field private firstFrameObserved:Z

.field private foregroundOb:Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;

.field private framerate:I

.field private height:I

.field private mIsForeground:Z

.field private mShouldReopen:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private openAttemptsRemaining:I

.field private final openCameraTimeoutRunnable:Ljava/lang/Runnable;

.field private sessionOpening:Z

.field private final stateLock:Ljava/lang/Object;

.field private surfaceHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private switchEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private switchState:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

.field private final uiThreadHandler:Landroid/os/Handler;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;)V
    .locals 1
    .param p2    # Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;
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
            "cameraName",
            "eventsHandler",
            "cameraEnumerator"
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->createSessionCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    .line 142
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraSessionEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    .line 247
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$3;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$3;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    .line 267
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 277
    iput v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->fallbackAttemptsRemaining:I

    .line 278
    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IDLE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchState:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    .line 380
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->foregroundOb:Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;

    if-nez p2, :cond_0

    .line 289
    new-instance p2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$4;

    invoke-direct {p2, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$4;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    .line 327
    :cond_0
    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->eventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    .line 328
    iput-object p3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    .line 329
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 330
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->mIsForeground:Z

    .line 331
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->mShouldReopen:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 332
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    .line 334
    invoke-interface {p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object p1

    .line 336
    array-length p2, p1

    if-eqz p2, :cond_2

    .line 339
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 340
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Camera name "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " does not match any known camera device."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 337
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "No cameras attached."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->checkIsOnCameraThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchState:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->eventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchState:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->firstFrameObserved:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->firstFrameObserved:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openAttemptsRemaining:I

    return p0
.end method

.method static synthetic access$1202(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openAttemptsRemaining:I

    return p1
.end method

.method static synthetic access$1210(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I
    .locals 2

    .line 28
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openAttemptsRemaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$1300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchCameraInternal(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->fallbackAttemptsRemaining:I

    return p0
.end method

.method static synthetic access$1710(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I
    .locals 2

    .line 28
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->fallbackAttemptsRemaining:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->fallbackAttemptsRemaining:I

    return v0
.end method

.method static synthetic access$1800(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->fallbackToCamera1(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->createSessionInternal(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->mShouldReopen:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->mIsForeground:Z

    return p0
.end method

.method static synthetic access$2102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->mIsForeground:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->createSessionCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraSessionEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->width:I

    return p0
.end method

.method static synthetic access$2600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->height:I

    return p0
.end method

.method static synthetic access$2700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->framerate:I

    return p0
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    return-object p0
.end method

.method static synthetic access$302(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    return-object p0
.end method

.method static synthetic access$700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->sessionOpening:Z

    return p0
.end method

.method static synthetic access$702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->sessionOpening:Z

    return p1
.end method

.method static synthetic access$800(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraStatistics:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    return-object p0
.end method

.method static synthetic access$802(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraStatistics:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    return-object p1
.end method

.method static synthetic access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->surfaceHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method private checkIsOnCameraThread()V
    .locals 2

    .line 703
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "CameraCapturer"

    const-string v1, "Check is on camera thread failed."

    .line 704
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on camera thread."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createSessionInternal(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMs"
        }
    .end annotation

    .line 420
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$7;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    add-int/lit16 p1, p1, 0x1388

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private fallbackToCamera1(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "delayMs"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$6;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->uiThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openCameraTimeoutRunnable:Ljava/lang/Runnable;

    add-int/lit16 p1, p1, 0x1388

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private isCameraReady()Z
    .locals 2

    .line 619
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->sessionOpening:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const-string v0, "CameraCapturer"

    const-string v1, "Session is not ready"

    .line 620
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private reportCameraSwitchError(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 1
    .param p2    # Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "switchEventsHandler"
        }
    .end annotation

    const-string v0, "CameraCapturer"

    .line 644
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 646
    invoke-interface {p2, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private switchCameraInternal(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 5
    .param p1    # Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "switchEventsHandler"
        }
    .end annotation

    const-string v0, "CameraCapturer"

    const-string v1, "switchCamera internal"

    .line 651
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraEnumerator:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    invoke-interface {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;->getDeviceNames()[Ljava/lang/String;

    move-result-object v0

    .line 655
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    if-eqz p1, :cond_0

    const-string v0, "No camera to switch to."

    .line 657
    invoke-interface {p1, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 662
    :cond_1
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 663
    :try_start_0
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchState:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    sget-object v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IDLE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    if-eq v2, v3, :cond_2

    const-string v0, "Camera switch already in progress."

    .line 664
    invoke-direct {p0, v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 665
    monitor-exit v1

    return-void

    .line 667
    :cond_2
    iget-boolean v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->sessionOpening:Z

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    if-nez v3, :cond_3

    const-string v0, "switchCamera: camera is not running."

    .line 668
    invoke-direct {p0, v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->reportCameraSwitchError(Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 669
    monitor-exit v1

    return-void

    .line 672
    :cond_3
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchEventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    if-eqz v2, :cond_4

    .line 674
    sget-object p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->PENDING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchState:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    .line 675
    monitor-exit v1

    return-void

    .line 677
    :cond_4
    sget-object p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IN_PROGRESS:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->switchState:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    const-string p1, "CameraCapturer"

    const-string v2, "switchCamera: Stopping session"

    .line 680
    invoke-static {p1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraStatistics:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->release()V

    const/4 p1, 0x0

    .line 682
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraStatistics:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    .line 683
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    .line 684
    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$10;

    invoke-direct {v4, p0, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$10;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 690
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    .line 692
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v2, 0x1

    add-int/2addr p1, v2

    .line 693
    array-length v3, v0

    rem-int/2addr p1, v3

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraName:Ljava/lang/String;

    .line 695
    iput-boolean v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->sessionOpening:Z

    .line 696
    iput v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openAttemptsRemaining:I

    const/4 p1, 0x0

    .line 697
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->createSessionInternal(I)V

    .line 698
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "CameraCapturer"

    const-string v0, "switchCamera done"

    .line 699
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 698
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public synthetic addMediaRecorderToCamera(Landroid/media/MediaRecorder;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$-CC;->$default$addMediaRecorderToCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;Landroid/media/MediaRecorder;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method public changeCaptureFormat(III)V
    .locals 3
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

    const-string v0, "CameraCapturer"

    .line 472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeCaptureFormat: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 474
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stopCapture()V

    .line 475
    invoke-virtual {p0, p1, p2, p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->startCapture(III)V

    .line 476
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract createCameraSession(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;Landroid/content/Context;Lcom/netease/lava/webrtc/SurfaceTextureHelper;Ljava/lang/String;III)V
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
.end method

.method public dispose()V
    .locals 2

    const-string v0, "CameraCapturer"

    const-string v1, "dispose"

    .line 481
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    invoke-static {}, Lcom/netease/lava/webrtc/ForegroundMonitor;->getInstance()Lcom/netease/lava/webrtc/ForegroundMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->foregroundOb:Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/ForegroundMonitor;->removeObserver(Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;)V

    .line 484
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stopCapture()V

    return-void
.end method

.method protected getCameraName()Ljava/lang/String;
    .locals 2

    .line 710
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraName:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 712
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getCurrentZoom()I
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 527
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->getCurrentZoom()I

    move-result v1

    monitor-exit v0

    return v1

    .line 530
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMaxZoom()I
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 537
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->getMaxZoom()I

    move-result v1

    monitor-exit v0

    return v1

    .line 540
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initialize(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;)V
    .locals 0
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

    .line 348
    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->applicationContext:Landroid/content/Context;

    .line 349
    iput-object p3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    .line 350
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->surfaceHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 352
    :cond_0
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public isCameraExposurePositionSupported()Z
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->isCameraExposurePositionSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 572
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CameraCapturer"

    const-string v1, "isCameraExposurePositionSupported return false camera is not started"

    .line 573
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 572
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isCameraFocusSupported()Z
    .locals 2

    .line 589
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 590
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 591
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->isCameraFocusSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 593
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CameraCapturer"

    const-string v1, "isCameraFocusSupported return false camera is not started"

    .line 594
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 593
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isCameraTorchSupported()Z
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 547
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->isCameraTorchSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 550
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CameraCapturer"

    const-string v1, "isCameraTorchSupported return false camera is not started"

    .line 551
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 550
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isCameraZoomSupported()Z
    .locals 2

    .line 505
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 506
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->isCameraZoomSupported()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 509
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "CameraCapturer"

    const-string v1, "isCameraZoomSupported return false camera is not started"

    .line 510
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    .line 509
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public isScreencast()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public printStackTrace()V
    .locals 5

    .line 628
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 633
    array-length v1, v0

    if-lez v1, :cond_1

    const-string v1, "CameraCapturer"

    const-string v2, "CameraCapturer stack trace:"

    .line 634
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 636
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public synthetic removeMediaRecorderFromCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$-CC;->$default$removeMediaRecorderFromCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$MediaRecorderHandler;)V

    return-void
.end method

.method public setFlash(Z)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "flash"
        }
    .end annotation

    const-string v0, "CameraCapturer"

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFlash "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->setFlash(Z)I

    move-result p1

    monitor-exit v0

    return p1

    .line 562
    :cond_0
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setFocusAndMeteringCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    const-string v0, "CameraCapturer"

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusAndMeteringCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->setFocusAndMeteringCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V

    .line 615
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    const-string v0, "CameraCapturer"

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFocusAreas {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 602
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 603
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->setFocusAreas(FF)V

    .line 605
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
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

    const-string v0, "CameraCapturer"

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMeteringAreas {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 581
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->setMeteringAreas(FF)V

    .line 584
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setZoom(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zoomValue"
        }
    .end annotation

    const-string v0, "CameraCapturer"

    .line 516
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setZoom "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 518
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->isCameraReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    invoke-interface {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;->setZoom(I)V

    .line 521
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startCapture(III)V
    .locals 3
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

    const-string v0, "CameraCapturer"

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCapture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->applicationContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 363
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 364
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->sessionOpening:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->width:I

    .line 370
    iput p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->height:I

    .line 371
    iput p3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->framerate:I

    const/4 p1, 0x1

    .line 373
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->sessionOpening:Z

    const/4 p1, 0x3

    .line 374
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->openAttemptsRemaining:I

    const/4 p1, 0x0

    .line 375
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->createSessionInternal(I)V

    .line 376
    invoke-static {}, Lcom/netease/lava/webrtc/ForegroundMonitor;->getInstance()Lcom/netease/lava/webrtc/ForegroundMonitor;

    move-result-object p1

    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->foregroundOb:Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;

    invoke-virtual {p1, p2}, Lcom/netease/lava/webrtc/ForegroundMonitor;->addObserver(Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;)V

    .line 377
    monitor-exit v0

    return-void

    :cond_1
    :goto_0
    const-string p1, "CameraCapturer"

    const-string p2, "Session already open"

    .line 365
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 377
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 360
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "CameraCapturer must be initialized before calling startCapture."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopCapture()V
    .locals 5

    const-string v0, "CameraCapturer"

    const-string v1, "Stop capture"

    .line 434
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 436
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->sessionOpening:Z

    if-eqz v1, :cond_0

    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture: Waiting for session to open"

    .line 437
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    :try_start_1
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stateLock:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "CameraCapturer"

    const-string v2, "Stop capture interrupted while waiting for the session to open."

    .line 441
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 443
    monitor-exit v0

    return-void

    .line 447
    :cond_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "CameraCapturer"

    const-string v3, "Stop capture: Nulling session"

    .line 448
    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    .line 450
    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$8;

    invoke-direct {v4, p0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$8;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 456
    iput-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->currentSession:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    .line 457
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    invoke-interface {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;->onCapturerStopped()V

    goto :goto_1

    :cond_1
    const-string v1, "CameraCapturer"

    const-string v3, "Stop capture: No session open"

    .line 459
    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_1
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraStatistics:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    if-eqz v1, :cond_2

    .line 462
    invoke-virtual {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->release()V

    .line 463
    iput-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraStatistics:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    .line 465
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "CameraCapturer"

    const-string v1, "Stop capture done"

    .line 467
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 465
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public switchCamera(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "switchEventsHandler"
        }
    .end annotation

    const-string v0, "CameraCapturer"

    const-string v1, "switchCamera"

    .line 489
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->cameraThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$9;

    invoke-direct {v1, p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$9;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
