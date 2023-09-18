.class public Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraStatistics"
.end annotation


# static fields
.field private static final CAMERA_FREEZE_REPORT_TIMOUT_MS:I = 0xfa0

.field private static final CAMERA_LOG_COUNT:I = 0x5

.field private static final CAMERA_OBSERVER_PERIOD_MS:I = 0x7d0

.field private static final TAG:Ljava/lang/String; = "CameraStatistics"


# instance fields
.field private final cameraObserver:Ljava/lang/Runnable;

.field private final eventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

.field private frameCount:I

.field private freezePeriodCount:I

.field private logCount:I

.field private final surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surfaceTextureHelper",
            "eventsHandler"
        }
    .end annotation

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 201
    iput v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->logCount:I

    .line 203
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;

    invoke-direct {v0, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->cameraObserver:Ljava/lang/Runnable;

    if-eqz p1, :cond_0

    .line 238
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    .line 239
    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->eventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    const/4 p2, 0x0

    .line 240
    iput p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->frameCount:I

    .line 241
    iput p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    .line 242
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 236
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SurfaceTextureHelper is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I
    .locals 0

    .line 191
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->frameCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;I)I
    .locals 0

    .line 191
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->frameCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I
    .locals 0

    .line 191
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->logCount:I

    return p0
.end method

.method static synthetic access$102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;I)I
    .locals 0

    .line 191
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->logCount:I

    return p1
.end method

.method static synthetic access$108(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I
    .locals 2

    .line 191
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->logCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->logCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I
    .locals 0

    .line 191
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;I)I
    .locals 0

    .line 191
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    return p1
.end method

.method static synthetic access$204(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I
    .locals 1

    .line 191
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->freezePeriodCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->eventsHandler:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method private checkThread()V
    .locals 2

    .line 246
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addFrame()V
    .locals 1

    .line 252
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->checkThread()V

    .line 253
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->frameCount:I

    return-void
.end method

.method public release()V
    .locals 2

    .line 257
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->cameraObserver:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
