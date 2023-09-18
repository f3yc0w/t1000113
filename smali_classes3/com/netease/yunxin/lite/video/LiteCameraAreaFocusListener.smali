.class public Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;
.super Ljava/lang/Object;
.source "LiteCameraAreaFocusListener.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;


# instance fields
.field private mNativeHandle:J

.field private final mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method private constructor <init>(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nativeHandle"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandle:J

    .line 20
    iput-wide p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandle:J

    return-void
.end method

.method private native onCameraExposureChanged(JIIII)V
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
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation
.end method

.method private native onCameraFocusChanged(JIIII)V
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
            "left",
            "top",
            "right",
            "bottom"
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

    .line 47
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 48
    iput-wide p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandle:J

    .line 49
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method


# virtual methods
.method public exposureArea(Landroid/graphics/Rect;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 36
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez p1, :cond_0

    .line 38
    iget-wide v1, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandle:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->onCameraExposureChanged(JIIII)V

    goto :goto_0

    .line 40
    :cond_0
    iget-wide v1, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandle:J

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->onCameraExposureChanged(JIIII)V

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public focusArea(Landroid/graphics/Rect;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 25
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    if-nez p1, :cond_0

    .line 27
    iget-wide v1, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandle:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->onCameraFocusChanged(JIIII)V

    goto :goto_0

    .line 29
    :cond_0
    iget-wide v1, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandle:J

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->right:I

    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->onCameraFocusChanged(JIIII)V

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteCameraAreaFocusListener;->mNativeHandleLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
