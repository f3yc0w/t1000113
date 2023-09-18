.class public Lcom/netease/lava/webrtc/EglRenderer;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/EglRenderer$HandlerWithExceptionCallback;,
        Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;,
        Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;,
        Lcom/netease/lava/webrtc/EglRenderer$FrameListener;
    }
.end annotation


# static fields
.field private static final LOG_INTERVAL_SEC:J = 0xfL

.field private static final ONE_SECONDS_TO_NANOS:J

.field private static final TAG:Ljava/lang/String; = "EglRenderer"


# instance fields
.field private final bitmapTextureFramebuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

.field private final drawMatrix:Landroid/graphics/Matrix;

.field private drawer:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private eglBase:Lcom/netease/lava/webrtc/EglBase;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private eglRenderInfo:Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

.field private final eglSurfaceCreationRunnable:Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;

.field private final fpsReductionLock:Ljava/lang/Object;

.field private final frameDrawer:Lcom/netease/lava/webrtc/VideoFrameDrawer;

.field private final frameListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;",
            ">;"
        }
    .end annotation
.end field

.field private final frameLock:Ljava/lang/Object;

.field private framesDropped:I

.field private framesNoSurface:I

.field private framesReceived:I

.field private framesRendered:I

.field private final handlerLock:Ljava/lang/Object;

.field private layoutAspectRatio:F

.field private final layoutLock:Ljava/lang/Object;

.field private logPrintTimeNs:J

.field private final logStatisticsRunnable:Ljava/lang/Runnable;

.field private minRenderPeriodNs:J

.field private mirror:Z

.field protected name:Ljava/lang/String;

.field private nextFrameTimeNs:J

.field private pendingFrame:Lcom/netease/lava/webrtc/VideoFrame;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private renderSwapBufferTimeNs:J

.field private renderThreadHandler:Landroid/os/Handler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private renderTimeNs:J

.field private final renderUtil:Lcom/netease/lava/webrtc/VideoRenderUtil;

.field private rendererGatherer:Lcom/netease/lava/webrtc/RendererGatherer;

.field protected reportFpsIntervalMs:J

.field private final statisticsLock:Ljava/lang/Object;

.field private statisticsStartTimeNs:J

.field private usePresentationTimeStamp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lcom/netease/lava/webrtc/EglRenderer;->ONE_SECONDS_TO_NANOS:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x3a98

    .line 115
    iput-wide v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->reportFpsIntervalMs:J

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    .line 135
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/VideoFrameDrawer;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameDrawer:Lcom/netease/lava/webrtc/VideoFrameDrawer;

    .line 138
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    .line 141
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    .line 145
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    .line 151
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    .line 172
    new-instance v0, Lcom/netease/lava/webrtc/VideoRenderUtil;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/VideoRenderUtil;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderUtil:Lcom/netease/lava/webrtc/VideoRenderUtil;

    .line 175
    new-instance v0, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    const/16 v1, 0x1908

    invoke-direct {v0, v1}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    .line 178
    new-instance v0, Lcom/netease/lava/webrtc/EglRenderer$1;

    invoke-direct {v0, p0}, Lcom/netease/lava/webrtc/EglRenderer$1;-><init>(Lcom/netease/lava/webrtc/EglRenderer;)V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    .line 191
    new-instance v0, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;-><init>(Lcom/netease/lava/webrtc/EglRenderer;Lcom/netease/lava/webrtc/EglRenderer$1;)V

    iput-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->name:Ljava/lang/String;

    .line 199
    new-instance p1, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglRenderInfo:Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/webrtc/EglRenderer;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/lava/webrtc/EglRenderer;)Lcom/netease/lava/webrtc/EglBase;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/lava/webrtc/EglRenderer;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/netease/lava/webrtc/EglRenderer;->logStatistics()V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/lava/webrtc/EglRenderer;)Ljava/lang/Object;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/lava/webrtc/EglRenderer;)Landroid/os/Handler;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$402(Lcom/netease/lava/webrtc/EglRenderer;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$500(Lcom/netease/lava/webrtc/EglRenderer;)Ljava/lang/Runnable;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/netease/lava/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private averageTimeAsString(JI)Ljava/lang/String;
    .locals 4

    if-gtz p3, :cond_0

    const-string p1, "NA"

    goto :goto_0

    .line 818
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v2, p3

    div-long/2addr p1, v2

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " us"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private clearSurfaceOnRenderThread(FFFF)V
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "clearSurface"

    .line 603
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 604
    invoke-static {p1, p2, p3, p4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 605
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 606
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/EglBase;->swapBuffers()V

    :cond_0
    return-void
.end method

.method private createEglSurfaceInternal(Ljava/lang/Object;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 291
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private fenceSyncGPU(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 5

    .line 631
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->getOpenGlesVersion()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    .line 636
    :cond_1
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    move-result-object v0

    .line 637
    sget-object v3, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeWrapTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    .line 639
    sget-object v1, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    if-ne v0, v1, :cond_4

    .line 640
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    check-cast p1, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    check-cast p1, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getFenceSyncObject()J

    move-result-wide v0

    goto :goto_2

    .line 641
    :cond_4
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    check-cast p1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;

    check-cast p1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getFenceSyncObject()J

    move-result-wide v0

    :goto_2
    const-wide/16 v3, 0x0

    cmp-long p1, v0, v3

    if-eqz p1, :cond_5

    const-wide/16 v3, -0x1

    .line 643
    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES30;->glWaitSync(JIJ)V

    .line 645
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glDeleteSync(J)V

    :cond_5
    return-void
.end method

.method public static synthetic lambda$VcG6PUm4TL_fgajLti3ghhKFuuc(Lcom/netease/lava/webrtc/EglRenderer;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/lava/webrtc/EglRenderer;->renderFrameOnRenderThread()V

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    .line 859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EglRenderer"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logE(Ljava/lang/String;)V
    .locals 2

    .line 863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EglRenderer"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logStatistics()V
    .locals 13

    .line 822
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 823
    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 824
    :try_start_0
    iget-wide v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->statisticsStartTimeNs:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 826
    monitor-exit v2

    return-void

    .line 828
    :cond_0
    iget v5, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesReceived:I

    int-to-long v5, v5

    sget-wide v7, Lcom/netease/lava/webrtc/EglRenderer;->ONE_SECONDS_TO_NANOS:J

    mul-long v5, v5, v7

    div-long/2addr v5, v3

    .line 829
    iget v9, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesRendered:I

    int-to-long v9, v9

    mul-long v9, v9, v7

    div-long/2addr v9, v3

    long-to-int v6, v5

    .line 830
    invoke-virtual {p0, v6}, Lcom/netease/lava/webrtc/EglRenderer;->onReceivedFps(I)V

    long-to-int v5, v9

    .line 831
    invoke-virtual {p0, v5}, Lcom/netease/lava/webrtc/EglRenderer;->onRendererFps(I)V

    .line 834
    iget-wide v5, p0, Lcom/netease/lava/webrtc/EglRenderer;->logPrintTimeNs:J

    sub-long v5, v0, v5

    const-wide/16 v11, 0xf

    mul-long v7, v7, v11

    cmp-long v11, v5, v7

    if-ltz v11, :cond_1

    .line 835
    new-instance v5, Ljava/text/DecimalFormat;

    const-string v6, "#.0"

    invoke-direct {v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 836
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duration: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms. Frames received: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesReceived:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Dropped: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesDropped:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Rendered: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesRendered:I

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ". Render fps: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    invoke-virtual {v5, v9, v10}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Average render time: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderTimeNs:J

    iget v5, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesRendered:I

    .line 840
    invoke-direct {p0, v3, v4, v5}, Lcom/netease/lava/webrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Average swapBuffer time: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    iget v5, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesRendered:I

    .line 841
    invoke-direct {p0, v3, v4, v5}, Lcom/netease/lava/webrtc/EglRenderer;->averageTimeAsString(JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 836
    invoke-direct {p0, v3}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 842
    iput-wide v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->logPrintTimeNs:J

    .line 844
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/netease/lava/webrtc/EglRenderer;->resetStatistics(J)V

    .line 845
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyCallbacks(Lcom/netease/lava/webrtc/VideoFrame;Z)V
    .locals 15

    move-object v0, p0

    .line 766
    iget-object v1, v0, Lcom/netease/lava/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 769
    :cond_0
    iget-object v1, v0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 770
    iget-object v1, v0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 771
    iget-boolean v1, v0, Lcom/netease/lava/webrtc/EglRenderer;->mirror:Z

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_1

    .line 772
    iget-object v1, v0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 773
    :cond_1
    iget-object v1, v0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v3, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 774
    iget-object v1, v0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v2, -0x41000000    # -0.5f

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 776
    iget-object v1, v0, Lcom/netease/lava/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 777
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 778
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;

    if-nez p2, :cond_2

    .line 779
    iget-boolean v3, v2, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;->applyFpsReduction:Z

    if-eqz v3, :cond_2

    goto :goto_0

    .line 784
    :cond_2
    iget v3, v2, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 785
    iget v4, v2, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;->scale:F

    invoke-virtual/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v4, v5

    float-to-int v12, v4

    if-eqz v3, :cond_4

    if-nez v12, :cond_3

    goto :goto_1

    .line 792
    :cond_3
    iget-object v4, v0, Lcom/netease/lava/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v4, v3, v12}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 794
    iget-object v4, v0, Lcom/netease/lava/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v4}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v4

    const v13, 0x8d40

    invoke-static {v13, v4}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v4, 0x8ce0

    const/16 v5, 0xde1

    .line 795
    iget-object v6, v0, Lcom/netease/lava/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    .line 796
    invoke-virtual {v6}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getTextureId()I

    move-result v6

    const/4 v14, 0x0

    .line 795
    invoke-static {v13, v4, v5, v6, v14}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 v4, 0x0

    .line 798
    invoke-static {v4, v4, v4, v4}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v4, 0x4000

    .line 799
    invoke-static {v4}, Landroid/opengl/GLES20;->glClear(I)V

    .line 800
    iget-object v4, v0, Lcom/netease/lava/webrtc/EglRenderer;->frameDrawer:Lcom/netease/lava/webrtc/VideoFrameDrawer;

    iget-object v6, v2, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;->drawer:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;

    iget-object v7, v0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p1

    move v10, v3

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawFrame(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    mul-int v4, v3, v12

    mul-int/lit8 v4, v4, 0x4

    .line 803
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 804
    invoke-static {v14, v14, v3, v12}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move v6, v3

    move v7, v12

    move-object v10, v11

    .line 805
    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 808
    invoke-static {v13, v14}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v4, "EglRenderer.notifyCallbacks"

    .line 809
    invoke-static {v4}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 811
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v12, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 812
    invoke-virtual {v3, v11}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 813
    iget-object v2, v2, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lcom/netease/lava/webrtc/EglRenderer$FrameListener;

    invoke-interface {v2, v3}, Lcom/netease/lava/webrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 788
    :cond_4
    :goto_1
    iget-object v2, v2, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lcom/netease/lava/webrtc/EglRenderer$FrameListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/netease/lava/webrtc/EglRenderer$FrameListener;->onFrame(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private postToRenderThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 594
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 596
    invoke-virtual {v1, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 598
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

.method private renderFrameOnRenderThread()V
    .locals 14

    .line 657
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 658
    :try_start_0
    iget-object v9, p0, Lcom/netease/lava/webrtc/EglRenderer;->pendingFrame:Lcom/netease/lava/webrtc/VideoFrame;

    if-nez v9, :cond_0

    .line 659
    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 662
    iput-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->pendingFrame:Lcom/netease/lava/webrtc/VideoFrame;

    .line 663
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 664
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    const/4 v10, 0x1

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_8

    .line 672
    :cond_1
    iget v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesNoSurface:I

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 673
    iput v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesNoSurface:I

    const-string v0, "render frame - surface come back"

    .line 674
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 680
    :cond_2
    invoke-virtual {v9}, Lcom/netease/lava/webrtc/VideoFrame;->getBroadcastRenderMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    invoke-virtual {v9}, Lcom/netease/lava/webrtc/VideoFrame;->getBroadcastRenderMs()J

    move-result-wide v2

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/netease/lava/webrtc/VideoRenderUtil;->getRtcTimeMillis()J

    move-result-wide v2

    .line 681
    :goto_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderUtil:Lcom/netease/lava/webrtc/VideoRenderUtil;

    invoke-virtual {v0, v2, v3}, Lcom/netease/lava/webrtc/VideoRenderUtil;->setStartTime(J)V

    .line 684
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 685
    :try_start_1
    iget-wide v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->minRenderPeriodNs:J

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v2, v6

    if-nez v8, :cond_4

    :goto_1
    const/4 v11, 0x0

    goto :goto_3

    :cond_4
    cmp-long v6, v2, v4

    if-gtz v6, :cond_5

    :goto_2
    const/4 v11, 0x1

    goto :goto_3

    .line 692
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 693
    iget-wide v4, p0, Lcom/netease/lava/webrtc/EglRenderer;->nextFrameTimeNs:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_6

    const-string v2, "Skipping frame rendering - fps reduction is active."

    .line 694
    invoke-direct {p0, v2}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    goto :goto_1

    .line 697
    :cond_6
    iget-wide v6, p0, Lcom/netease/lava/webrtc/EglRenderer;->minRenderPeriodNs:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/netease/lava/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 699
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->nextFrameTimeNs:J

    goto :goto_2

    .line 703
    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 705
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    .line 707
    invoke-virtual {v9}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v9}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 709
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v1

    .line 710
    :try_start_2
    iget v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->layoutAspectRatio:F

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v2, v0

    .line 711
    :goto_4
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v2

    if-lez v4, :cond_8

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_8
    div-float/2addr v0, v2

    const/high16 v2, 0x3f800000    # 1.0f

    .line 724
    :goto_5
    iget-object v4, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 725
    iget-object v4, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-virtual {v4, v5, v5}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 726
    iget-boolean v4, p0, Lcom/netease/lava/webrtc/EglRenderer;->mirror:Z

    if-eqz v4, :cond_9

    .line 727
    iget-object v4, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 728
    :cond_9
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 729
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v11, :cond_b

    .line 732
    invoke-static {v3, v3, v3, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    .line 733
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 734
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameDrawer:Lcom/netease/lava/webrtc/VideoFrameDrawer;

    iget-object v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawer:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;

    iget-object v4, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawMatrix:Landroid/graphics/Matrix;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    .line 735
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->surfaceWidth()I

    move-result v7

    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->surfaceHeight()I

    move-result v8

    move-object v2, v9

    .line 734
    invoke-virtual/range {v1 .. v8}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawFrame(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    .line 737
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 738
    iget-boolean v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->usePresentationTimeStamp:Z

    if-eqz v2, :cond_a

    .line 739
    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-virtual {v9}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Lcom/netease/lava/webrtc/EglBase;->swapBuffers(J)V

    goto :goto_6

    .line 741
    :cond_a
    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {v2}, Lcom/netease/lava/webrtc/EglBase;->swapBuffers()V

    .line 744
    :goto_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 745
    iget-object v4, p0, Lcom/netease/lava/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 746
    :try_start_3
    iget v5, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesRendered:I

    add-int/2addr v5, v10

    iput v5, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesRendered:I

    sub-long v5, v2, v12

    sub-long/2addr v2, v0

    .line 749
    iget-wide v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderTimeNs:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderTimeNs:J

    .line 750
    iget-wide v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 752
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglRenderInfo:Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->setRenderTimeNs(J)V

    .line 753
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglRenderInfo:Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->setSwapBufferTimeNs(J)V

    .line 754
    monitor-exit v4

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 756
    :cond_b
    :goto_7
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderUtil:Lcom/netease/lava/webrtc/VideoRenderUtil;

    invoke-static {}, Lcom/netease/lava/webrtc/VideoRenderUtil;->getRtcTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/webrtc/VideoRenderUtil;->setEndTime(J)V

    .line 761
    invoke-direct {p0, v9, v11}, Lcom/netease/lava/webrtc/EglRenderer;->notifyCallbacks(Lcom/netease/lava/webrtc/VideoFrame;Z)V

    .line 762
    invoke-virtual {v9}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    return-void

    :catchall_1
    move-exception v0

    .line 711
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :catchall_2
    move-exception v1

    .line 703
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    .line 665
    :cond_c
    :goto_8
    iget v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesNoSurface:I

    if-eqz v0, :cond_d

    rem-int/lit16 v0, v0, 0x12c

    if-nez v0, :cond_e

    :cond_d
    const-string v0, "Dropping frame - No surface"

    .line 666
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 668
    :cond_e
    iget v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesNoSurface:I

    add-int/2addr v0, v10

    iput v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesNoSurface:I

    .line 669
    invoke-virtual {v9}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    return-void

    :catchall_3
    move-exception v1

    .line 663
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v1
.end method

.method private resetStatistics(J)V
    .locals 3

    .line 358
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    iput-wide p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->statisticsStartTimeNs:J

    const/4 p1, 0x0

    .line 360
    iput p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesReceived:I

    .line 361
    iput p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesDropped:I

    .line 362
    iput p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesRendered:I

    const-wide/16 v1, 0x0

    .line 363
    iput-wide v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderTimeNs:J

    .line 364
    iput-wide v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderSwapBufferTimeNs:J

    .line 365
    iput p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesNoSurface:I

    .line 366
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;F)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 471
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/netease/lava/webrtc/EglRenderer;->addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FLcom/netease/lava/webrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FLcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/lava/webrtc/EglRenderer;->addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FLcom/netease/lava/webrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FLcom/netease/lava/webrtc/RendererCommon$GlDrawer;Z)V
    .locals 7
    .param p3    # Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 501
    new-instance v6, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$sTAPwydi-EaqBFORpiw2ioV6VF8;-><init>(Lcom/netease/lava/webrtc/EglRenderer;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FZ)V

    invoke-direct {p0, v6}, Lcom/netease/lava/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public clearImage()V
    .locals 1

    const/4 v0, 0x0

    .line 614
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->clearImage(FFFF)V

    return-void
.end method

.method public clearImage(FFFF)V
    .locals 9

    .line 621
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 623
    monitor-exit v0

    return-void

    .line 625
    :cond_0
    new-instance v8, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;-><init>(Lcom/netease/lava/webrtc/EglRenderer;FFFF)V

    invoke-virtual {v1, v8}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 626
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public createEglSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 286
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public createEglSurface(Landroid/view/Surface;)V
    .locals 0

    .line 282
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->createEglSurfaceInternal(Ljava/lang/Object;)V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 435
    invoke-virtual {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public getRenderTime()I
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderUtil:Lcom/netease/lava/webrtc/VideoRenderUtil;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/VideoRenderUtil;->getExecuteTime()J

    move-result-wide v0

    long-to-int v1, v0

    .line 397
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderUtil:Lcom/netease/lava/webrtc/VideoRenderUtil;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/VideoRenderUtil;->clearAll()V

    return v1
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V
    .locals 1
    .param p1    # Lcom/netease/lava/webrtc/EglBase$Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/netease/lava/webrtc/EglRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;Z)V

    return-void
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;Z)V
    .locals 2
    .param p1    # Lcom/netease/lava/webrtc/EglBase$Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 212
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 213
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "Initializing EglRenderer"

    .line 216
    invoke-direct {p0, v1}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 217
    iput-object p3, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawer:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;

    .line 218
    iput-boolean p4, p0, Lcom/netease/lava/webrtc/EglRenderer;->usePresentationTimeStamp:Z

    .line 220
    new-instance p3, Landroid/os/HandlerThread;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "EglRenderer"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p3}, Landroid/os/HandlerThread;->start()V

    .line 222
    new-instance p4, Lcom/netease/lava/webrtc/EglRenderer$HandlerWithExceptionCallback;

    .line 223
    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    new-instance v1, Lcom/netease/lava/webrtc/EglRenderer$2;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/EglRenderer$2;-><init>(Lcom/netease/lava/webrtc/EglRenderer;)V

    invoke-direct {p4, p3, v1}, Lcom/netease/lava/webrtc/EglRenderer$HandlerWithExceptionCallback;-><init>(Landroid/os/Looper;Ljava/lang/Runnable;)V

    iput-object p4, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 234
    new-instance p3, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$6M0McuMmTggy6kb7gtFRrRPM5NM;

    invoke-direct {p3, p0, p1, p2}, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$6M0McuMmTggy6kb7gtFRrRPM5NM;-><init>(Lcom/netease/lava/webrtc/EglRenderer;Lcom/netease/lava/webrtc/EglBase$Context;[I)V

    invoke-static {p4, p3}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 263
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 264
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    .line 265
    invoke-direct {p0, p1, p2}, Lcom/netease/lava/webrtc/EglRenderer;->resetStatistics(J)V

    .line 266
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/netease/lava/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    iget-wide p3, p0, Lcom/netease/lava/webrtc/EglRenderer;->reportFpsIntervalMs:J

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 267
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglRenderInfo:Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->reset()V

    .line 268
    monitor-exit v0

    return-void

    .line 214
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/netease/lava/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "Already initialized"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 268
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic lambda$addFrameListener$3$EglRenderer(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FZ)V
    .locals 2

    if-nez p1, :cond_0

    .line 502
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawer:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    new-instance v1, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;

    invoke-direct {v1, p2, p3, p1, p4}, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;-><init>(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FLcom/netease/lava/webrtc/RendererCommon$GlDrawer;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public synthetic lambda$clearImage$6$EglRenderer(FFFF)V
    .locals 0

    .line 625
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/lava/webrtc/EglRenderer;->clearSurfaceOnRenderThread(FFFF)V

    return-void
.end method

.method public synthetic lambda$init$0$EglRenderer(Lcom/netease/lava/webrtc/EglBase$Context;[I)V
    .locals 1

    if-nez p1, :cond_0

    :try_start_0
    const-string v0, "EglBase10.create context"

    .line 240
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 241
    invoke-static {p2}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl10([I)Lcom/netease/lava/webrtc/EglBase10;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    goto :goto_0

    :cond_0
    const-string v0, "EglBase.create shared context"

    .line 243
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 244
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    if-nez p1, :cond_1

    :try_start_1
    const-string p1, "EglBase10.create new context"

    .line 249
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 250
    sget-object p1, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN:[I

    invoke-static {p1}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl10([I)Lcom/netease/lava/webrtc/EglBase10;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    goto :goto_0

    :cond_1
    const-string p2, "EglBase.create new shared context"

    .line 252
    invoke-direct {p0, p2}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 253
    sget-object p2, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN:[I

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const/4 p2, 0x0

    .line 256
    iput-object p2, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    .line 257
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EglBase create context exception: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->logE(Ljava/lang/String;)V

    .line 259
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->onRenderError(Ljava/lang/String;)V

    .line 261
    :goto_0
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderUtil:Lcom/netease/lava/webrtc/VideoRenderUtil;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoRenderUtil;->create()V

    return-void
.end method

.method public synthetic lambda$release$1$EglRenderer(Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 312
    sget-object v0, Lcom/netease/lava/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 313
    :try_start_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawer:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 316
    invoke-interface {v0}, Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;->release()V

    .line 317
    iput-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->drawer:Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameDrawer:Lcom/netease/lava/webrtc/VideoFrameDrawer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->release()V

    .line 320
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->bitmapTextureFramebuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->release()V

    .line 321
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_1

    const-string v0, "eglBase detach and release."

    .line 322
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->detachCurrent()V

    .line 324
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    .line 325
    iput-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 328
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 329
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderUtil:Lcom/netease/lava/webrtc/VideoRenderUtil;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoRenderUtil;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    .line 314
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthetic lambda$release$2$EglRenderer(Landroid/os/Looper;)V
    .locals 1

    const-string v0, "Quitting render thread."

    .line 334
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method public synthetic lambda$releaseEglSurface$5$EglRenderer(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "releaseSurface"

    .line 577
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->releaseSurface()V

    .line 582
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method public synthetic lambda$removeFrameListener$4$EglRenderer(Ljava/util/concurrent/CountDownLatch;Lcom/netease/lava/webrtc/EglRenderer$FrameListener;)V
    .locals 1

    .line 525
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 526
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 527
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 528
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;

    iget-object v0, v0, Lcom/netease/lava/webrtc/EglRenderer$FrameListenerAndParams;->listener:Lcom/netease/lava/webrtc/EglRenderer$FrameListener;

    if-ne v0, p2, :cond_0

    .line 529
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 5

    .line 540
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 541
    :try_start_0
    iget v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesReceived:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesReceived:I

    .line 542
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 544
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 545
    :try_start_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p1, "Dropping frame - Not initialized or already released."

    .line 546
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 547
    monitor-exit v1

    return-void

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 550
    :try_start_2
    iget-object v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->pendingFrame:Lcom/netease/lava/webrtc/VideoFrame;

    if-eqz v3, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    .line 552
    invoke-virtual {v3}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    .line 554
    :cond_2
    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->pendingFrame:Lcom/netease/lava/webrtc/VideoFrame;

    .line 555
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->retain()V

    .line 556
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$VcG6PUm4TL_fgajLti3ghhKFuuc;

    invoke-direct {v3, p0}, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$VcG6PUm4TL_fgajLti3ghhKFuuc;-><init>(Lcom/netease/lava/webrtc/EglRenderer;)V

    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 557
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 558
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v4, :cond_3

    .line 560
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->statisticsLock:Ljava/lang/Object;

    monitor-enter p1

    .line 561
    :try_start_4
    iget v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesDropped:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->framesDropped:I

    .line 562
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 557
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :catchall_2
    move-exception p1

    .line 558
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :catchall_3
    move-exception p1

    .line 542
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p1
.end method

.method protected onReceivedFps(I)V
    .locals 0

    return-void
.end method

.method protected onRenderError(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onRendererFps(I)V
    .locals 0

    return-void
.end method

.method public pauseVideo()V
    .locals 1

    const/4 v0, 0x0

    .line 439
    invoke-virtual {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public printStackTrace()V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 372
    :cond_0
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 374
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 375
    array-length v2, v1

    if-lez v2, :cond_1

    const-string v2, "EglRenderer stack trace:"

    .line 376
    invoke-direct {p0, v2}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 377
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 378
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 382
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 5

    const-string v0, "Releasing."

    .line 301
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 303
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 304
    :try_start_0
    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    const-string v0, "Already released"

    .line 305
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 306
    monitor-exit v1

    return-void

    .line 308
    :cond_0
    iget-object v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->logStatisticsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 310
    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$9Ih0VmtfbSgIh6fXp9_qyNJjyBA;

    invoke-direct {v3, p0, v0}, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$9Ih0VmtfbSgIh6fXp9_qyNJjyBA;-><init>(Lcom/netease/lava/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 331
    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 333
    iget-object v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v4, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$ZpmQiGfXgvsGaWTnVOvpJfq3TCQ;

    invoke-direct {v4, p0, v2}, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$ZpmQiGfXgvsGaWTnVOvpJfq3TCQ;-><init>(Lcom/netease/lava/webrtc/EglRenderer;Landroid/os/Looper;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    .line 338
    iput-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    .line 339
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 341
    invoke-static {v0}, Lcom/netease/lava/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    .line 342
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->frameLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->pendingFrame:Lcom/netease/lava/webrtc/VideoFrame;

    if-eqz v1, :cond_1

    .line 344
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    .line 345
    iput-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->pendingFrame:Lcom/netease/lava/webrtc/VideoFrame;

    .line 347
    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 348
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->rendererGatherer:Lcom/netease/lava/webrtc/RendererGatherer;

    if-eqz v0, :cond_2

    .line 349
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglRenderInfo:Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/RendererGatherer;->removeEglRenderInfo(Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;)V

    :cond_2
    const-string v0, "Releasing done."

    .line 351
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    .line 347
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    .line 339
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public releaseEglSurface(Ljava/lang/Runnable;)V
    .locals 3

    .line 572
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;->setSurface(Ljava/lang/Object;)V

    .line 573
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 574
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 575
    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglSurfaceCreationRunnable:Lcom/netease/lava/webrtc/EglRenderer$EglSurfaceCreation;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 576
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$5RxhlKxE7uGwL4Vr_KA-zprk_Yo;

    invoke-direct {v2, p0, p1}, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$5RxhlKxE7uGwL4Vr_KA-zprk_Yo;-><init>(Lcom/netease/lava/webrtc/EglRenderer;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 584
    monitor-exit v0

    return-void

    .line 586
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 587
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 586
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public removeFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;)V
    .locals 4

    .line 516
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 517
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    .line 519
    monitor-exit v1

    return-void

    .line 521
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->renderThreadHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 524
    new-instance v2, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$beouNMd-ATXdW32pPFYFO1I1T4w;

    invoke-direct {v2, p0, v0, p1}, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$beouNMd-ATXdW32pPFYFO1I1T4w;-><init>(Lcom/netease/lava/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;Lcom/netease/lava/webrtc/EglRenderer$FrameListener;)V

    invoke-direct {p0, v2}, Lcom/netease/lava/webrtc/EglRenderer;->postToRenderThread(Ljava/lang/Runnable;)V

    .line 533
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    invoke-static {v0}, Lcom/netease/lava/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void

    .line 522
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "removeFrameListener must not be called on the render thread."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 533
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setFpsReduction(F)V
    .locals 5

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFpsReduction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->fpsReductionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-wide v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->minRenderPeriodNs:J

    const/4 v3, 0x0

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_0

    const-wide v3, 0x7fffffffffffffffL

    .line 423
    iput-wide v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->minRenderPeriodNs:J

    goto :goto_0

    .line 425
    :cond_0
    sget-wide v3, Lcom/netease/lava/webrtc/EglRenderer;->ONE_SECONDS_TO_NANOS:J

    long-to-float v3, v3

    div-float/2addr v3, p1

    float-to-long v3, v3

    iput-wide v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->minRenderPeriodNs:J

    .line 427
    :goto_0
    iget-wide v3, p0, Lcom/netease/lava/webrtc/EglRenderer;->minRenderPeriodNs:J

    cmp-long p1, v3, v1

    if-eqz p1, :cond_1

    .line 429
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->nextFrameTimeNs:J

    .line 431
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLayoutAspectRatio(F)V
    .locals 2

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLayoutAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 407
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 408
    :try_start_0
    iput p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->layoutAspectRatio:F

    .line 409
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMirror(Z)V
    .locals 2

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/EglRenderer;->logD(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_0
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->mirror:Z

    .line 392
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setRendererGatherer(Lcom/netease/lava/webrtc/RendererGatherer;)V
    .locals 1

    .line 443
    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->rendererGatherer:Lcom/netease/lava/webrtc/RendererGatherer;

    .line 444
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglRenderInfo:Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

    if-eqz v0, :cond_0

    .line 445
    invoke-virtual {p1, v0}, Lcom/netease/lava/webrtc/RendererGatherer;->addEglRenderInfo(Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;)V

    :cond_0
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 2

    const-string v0, ""

    .line 450
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglRenderInfo:Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, ":"

    .line 452
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "uid"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 454
    iget-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer;->eglRenderInfo:Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;

    invoke-virtual {p1, v0, v1}, Lcom/netease/lava/webrtc/RendererGatherer$EglRenderInfo;->setUid(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "EglRenderer"

    const-string v0, "setUid error"

    .line 456
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
