.class public Lcom/netease/lava/webrtc/SurfaceEglRenderer;
.super Lcom/netease/lava/webrtc/EglRenderer;
.source "SurfaceEglRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceEglRenderer"


# instance fields
.field private frameRotation:I

.field private isFirstFrameRendered:Z

.field private isRenderingPaused:Z

.field private final layoutLock:Ljava/lang/Object;

.field private rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;-><init>(Ljava/lang/String;)V

    .line 30
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    return-void
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SurfaceEglRenderer"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateFrameDimensionsAndReportEvents(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 5

    .line 146
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-boolean v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    if-eqz v1, :cond_0

    .line 148
    monitor-exit v0

    return-void

    .line 150
    :cond_0
    iget-boolean v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->isFirstFrameRendered:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 151
    iput-boolean v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->isFirstFrameRendered:Z

    const-string v1, "Reporting first rendered frame."

    .line 152
    invoke-direct {p0, v1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v1, :cond_1

    .line 154
    invoke-interface {v1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    .line 157
    :cond_1
    iget v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rotatedFrameWidth:I

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rotatedFrameHeight:I

    .line 158
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v2

    if-ne v1, v2, :cond_2

    iget v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->frameRotation:I

    .line 159
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v2

    if-eq v1, v2, :cond_4

    .line 160
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting frame resolution changed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with rotation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-direct {p0, v1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v1, :cond_3

    .line 164
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v4

    .line 163
    invoke-interface {v1, v2, v3, v4}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    .line 166
    :cond_3
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v1

    iput v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rotatedFrameWidth:I

    .line 167
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v1

    iput v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rotatedFrameHeight:I

    .line 168
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->frameRotation:I

    .line 170
    :cond_4
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
.method public disableFpsReduction()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 101
    :try_start_0
    iput-boolean v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    invoke-super {p0}, Lcom/netease/lava/webrtc/EglRenderer;->disableFpsReduction()V

    return-void

    :catchall_0
    move-exception v1

    .line 102
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 67
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 68
    iput-object p2, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    .line 69
    iget-object p2, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter p2

    const/4 v0, 0x0

    .line 70
    :try_start_0
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->isFirstFrameRendered:Z

    .line 71
    iput v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rotatedFrameWidth:I

    .line 72
    iput v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rotatedFrameHeight:I

    .line 73
    iput v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->frameRotation:I

    .line 74
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    invoke-super {p0, p1, p3, p4}, Lcom/netease/lava/webrtc/EglRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V

    return-void

    :catchall_0
    move-exception p1

    .line 74
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->updateFrameDimensionsAndReportEvents(Lcom/netease/lava/webrtc/VideoFrame;)V

    .line 118
    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V

    return-void
.end method

.method protected onReceivedFps(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onReceivedFps(I)V

    :cond_0
    return-void
.end method

.method protected onRenderError(Ljava/lang/String;)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 190
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onRenderError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onRendererFps(I)V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 183
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onRendererFps(I)V

    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 109
    :try_start_0
    iput-boolean v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    .line 110
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-super {p0}, Lcom/netease/lava/webrtc/EglRenderer;->pauseVideo()V

    return-void

    :catchall_0
    move-exception v1

    .line 110
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setFpsReduction(F)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->layoutLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 93
    :goto_0
    :try_start_0
    iput-boolean v1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->isRenderingPaused:Z

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->setFpsReduction(F)V

    return-void

    :catchall_0
    move-exception p1

    .line 94
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->name:Ljava/lang/String;

    .line 46
    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->setUid(Ljava/lang/String;)V

    return-void
.end method

.method public setRendererGatherer(Lcom/netease/lava/webrtc/RendererGatherer;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/netease/lava/webrtc/EglRenderer;->setRendererGatherer(Lcom/netease/lava/webrtc/RendererGatherer;)V

    return-void
.end method

.method public setReportFpsInterval(J)V
    .locals 0

    .line 55
    iput-wide p1, p0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->reportFpsIntervalMs:J

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 140
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "surfaceChanged: format: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string v0, "surfaceCreated"

    .line 124
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 126
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->createEglSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const-string p1, "surfaceDestroyed"

    .line 131
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->logD(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 133
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 134
    new-instance v0, Lcom/netease/lava/webrtc/-$$Lambda$xXX-ywdCqM5leaxXkxy473i7s2A;

    invoke-direct {v0, p1}, Lcom/netease/lava/webrtc/-$$Lambda$xXX-ywdCqM5leaxXkxy473i7s2A;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {p0, v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 135
    invoke-static {p1}, Lcom/netease/lava/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
