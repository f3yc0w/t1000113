.class public Lcom/netease/yunxin/lite/video/LiteCameraEventListener;
.super Ljava/lang/Object;
.source "LiteCameraEventListener.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;


# instance fields
.field private mNativeHandle:J

.field private final mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const-wide/16 v0, 0x0

    .line 14
    iput-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    return-void
.end method

.method private native onCameraClosed(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private native onCameraDisconnected(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "callback"
        }
    .end annotation
.end method

.method private native onCameraError(JLjava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "errorDescription",
            "deviceErrorType",
            "callback"
        }
    .end annotation
.end method

.method private native onCameraFormatsInrequired(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "deviceName",
            "deviceId",
            "formats",
            "selectFormat"
        }
    .end annotation
.end method

.method private native onCameraFreezed(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "errorDescription"
        }
    .end annotation
.end method

.method private native onCameraOpening(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "cameraName"
        }
    .end annotation
.end method

.method private native onCameraReOpen(JI)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeHandle",
            "tryNum"
        }
    .end annotation
.end method

.method private native onFirstFrameAvailable(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation
.end method

.method private setNativeHandle(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 80
    iput-wide p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    .line 81
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public onCameraClosed()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 59
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->onCameraClosed(J)V

    .line 60
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onCameraDisconnected(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 31
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->onCameraDisconnected(JZ)V

    .line 32
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onCameraError(Ljava/lang/String;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "errorDescription",
            "deviceErrorType",
            "callback"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 24
    iget-wide v2, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->onCameraError(JLjava/lang/String;IZ)V

    .line 25
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onCameraFormatsInrequired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceName",
            "deviceId",
            "formats",
            "selectFormat"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 66
    iget-wide v2, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->onCameraFormatsInrequired(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onCameraFreezed(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorDescription"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 38
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->onCameraFreezed(JLjava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onCameraOpening(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraName"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 45
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->onCameraOpening(JLjava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onCameraReOpen(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tryNum"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 73
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    invoke-direct {p0, v0, v1, p1}, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->onCameraReOpen(JI)V

    .line 74
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public onFirstFrameAvailable()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 52
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandle:J

    invoke-direct {p0, v0, v1}, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->onFirstFrameAvailable(J)V

    .line 53
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraEventListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
