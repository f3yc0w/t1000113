.class public Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;
.super Landroid/view/TextureView;
.source "TextureViewRenderer.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Lcom/netease/lava/webrtc/VideoSink;
.implements Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureViewRenderer"


# instance fields
.field private eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

.field private rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

.field private resourceName:Ljava/lang/String;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I

.field private final videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance p1, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    .line 50
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    new-instance p1, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    .line 58
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setup()V

    return-void
.end method

.method private getResourceName()Ljava/lang/String;
    .locals 2

    .line 228
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, ""

    return-object v0
.end method

.method private logD(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "string"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TextureViewRenderer"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postOrRun(Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "r"
        }
    .end annotation

    .line 285
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 286
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setup()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->resourceName:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->resourceName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    .line 65
    invoke-virtual {p0, p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "listener",
            "scale"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;F)V

    return-void
.end method

.method public addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FLcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "listener",
            "scale",
            "drawerParam"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FLcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public clearImage()V
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->clearImage()V

    return-void
.end method

.method public getRenderTime()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->getRenderTime()I

    move-result v0

    return v0
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "rendererEvents"
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN_3:[I

    new-instance v1, Lcom/netease/lava/webrtc/GlRectDrawer;

    invoke-direct {v1}, Lcom/netease/lava/webrtc/GlRectDrawer;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10,
            0x0
        }
        names = {
            "sharedContext",
            "rendererEvents",
            "configAttributes",
            "drawer"
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 101
    iput-object p2, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    const/4 p2, 0x0

    .line 102
    iput p2, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rotatedFrameWidth:I

    .line 103
    iput p2, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rotatedFrameHeight:I

    .line 104
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {p2, p1, p0, p3, p4}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public synthetic lambda$onFrameResolutionChanged$0$TextureViewRenderer(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "rotatedWidth",
            "rotatedHeight"
        }
    .end annotation

    .line 257
    iput p1, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rotatedFrameWidth:I

    .line 258
    iput p2, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rotatedFrameHeight:I

    .line 259
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->requestLayout()V

    return-void
.end method

.method public onFirstFrameRendered()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 244
    invoke-interface {v0}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    :cond_0
    return-void
.end method

.method public onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V

    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "videoWidth",
            "videoHeight",
            "rotation"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 251
    invoke-interface {v0, p1, p2, p3}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onFrameResolutionChanged(III)V

    :cond_0
    const/16 v0, 0xb4

    if-eqz p3, :cond_2

    if-ne p3, v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p1

    :goto_1
    if-eqz p3, :cond_3

    if-ne p3, v0, :cond_4

    :cond_3
    move p1, p2

    .line 256
    :cond_4
    new-instance p2, Lcom/netease/yunxin/lite/video/render/-$$Lambda$TextureViewRenderer$uDFAdYLEd-9RW0Tkyb4VxA2D-_o;

    invoke-direct {p2, p0, v1, p1}, Lcom/netease/yunxin/lite/video/render/-$$Lambda$TextureViewRenderer$uDFAdYLEd-9RW0Tkyb4VxA2D-_o;-><init>(Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;II)V

    invoke-direct {p0, p2}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changed",
            "left",
            "top",
            "right",
            "bottom"
        }
    .end annotation

    .line 193
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 194
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p5, p3

    int-to-float p3, p5

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setLayoutAspectRatio(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthSpec",
            "heightSpec"
        }
    .end annotation

    .line 185
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 186
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    iget v1, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rotatedFrameWidth:I

    iget v2, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rotatedFrameHeight:I

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->measure(IIII)Landroid/graphics/Point;

    move-result-object p1

    .line 187
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setMeasuredDimension(II)V

    .line 188
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onMeasure(). New size: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedFps(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 266
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onReceivedFps(I)V

    :cond_0
    return-void
.end method

.method public onRenderError(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 280
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onRenderError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRendererFps(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 273
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onRendererFps(I)V

    :cond_0
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    .line 199
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 200
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->createEglSurface(Landroid/graphics/SurfaceTexture;)V

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureAvailable:  size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    const-string p1, "surfaceDestroyed"

    .line 212
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->logD(Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 214
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 215
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    new-instance v2, Lcom/netease/yunxin/lite/video/render/-$$Lambda$xXX-ywdCqM5leaxXkxy473i7s2A;

    invoke-direct {v2, p1}, Lcom/netease/yunxin/lite/video/render/-$$Lambda$xXX-ywdCqM5leaxXkxy473i7s2A;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v2}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->releaseEglSurface(Ljava/lang/Runnable;)V

    .line 216
    invoke-static {p1}, Lcom/netease/lava/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;)V

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "surface",
            "width",
            "height"
        }
    .end annotation

    .line 206
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onSurfaceTextureSizeChanged:  size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    return-void
.end method

.method public release()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->release()V

    return-void
.end method

.method public removeFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->removeFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;)V

    return-void
.end method

.method public setLogName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->resourceName:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mirror"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setMirror(Z)V

    return-void
.end method

.method public setReportFpsInterval(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisecond"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setReportFpsInterval(J)V

    :cond_0
    return-void
.end method

.method public setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scalingType"
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 164
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    .line 165
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->requestLayout()V

    return-void
.end method

.method public setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scalingTypeMatchOrientation",
            "scalingTypeMismatchOrientation"
        }
    .end annotation

    .line 170
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 171
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    .line 172
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->requestLayout()V

    return-void
.end method
