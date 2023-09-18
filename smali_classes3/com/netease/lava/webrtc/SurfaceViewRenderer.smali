.class public Lcom/netease/lava/webrtc/SurfaceViewRenderer;
.super Landroid/view/SurfaceView;
.source "SurfaceViewRenderer.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lcom/netease/lava/webrtc/VideoSink;
.implements Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceViewRenderer"


# instance fields
.field private final eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

.field private enableFixedSize:Z

.field private volatile hadReleased:Z

.field private rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

.field private resourceName:Ljava/lang/String;

.field private rotatedFrameHeight:I

.field private rotatedFrameWidth:I

.field private surfaceHeight:I

.field private surfaceWidth:I

.field private final videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 30
    new-instance p1, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->hadReleased:Z

    .line 51
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 52
    new-instance p1, Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    .line 53
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 54
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    new-instance p1, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    const/4 p1, 0x1

    .line 44
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->hadReleased:Z

    .line 62
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getResourceName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 63
    new-instance p1, Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    iget-object p2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    .line 64
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 65
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method private getResourceName()Ljava/lang/String;
    .locals 2

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getId()I

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

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SurfaceViewRenderer"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private postOrRun(Ljava/lang/Runnable;)V
    .locals 2

    .line 348
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 349
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 351
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private updateSurfaceSize()V
    .locals 5

    .line 243
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 244
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->enableFixedSize:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    .line 246
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 247
    iget v1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    int-to-float v2, v1

    iget v3, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    int-to-float v4, v3

    div-float/2addr v2, v4

    cmpl-float v2, v2, v0

    if-lez v2, :cond_0

    int-to-float v1, v3

    mul-float v1, v1, v0

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    int-to-float v2, v1

    div-float/2addr v2, v0

    float-to-int v3, v2

    .line 258
    :goto_0
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getWidth()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 259
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHeight()I

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSurfaceSize. Layout size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHeight()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", frame size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", requested surface size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", old surface size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    .line 263
    iget v2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    if-ne v0, v2, :cond_1

    iget v2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    if-eq v1, v2, :cond_3

    .line 264
    :cond_1
    iput v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 265
    iput v1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    .line 266
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 269
    iput v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    iput v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 270
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;F)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;F)V

    return-void
.end method

.method public addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FLcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->addFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;FLcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public clearImage()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->clearImage()V

    return-void
.end method

.method public disableFpsReduction()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->disableFpsReduction()V

    return-void
.end method

.method public getRenderTime()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->getRenderTime()I

    move-result v0

    return v0
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V
    .locals 2

    .line 99
    sget-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN_3:[I

    new-instance v1, Lcom/netease/lava/webrtc/GlRectDrawer;

    invoke-direct {v1}, Lcom/netease/lava/webrtc/GlRectDrawer;-><init>()V

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V

    return-void
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    .line 111
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 112
    iput-object p2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    const/4 p2, 0x0

    .line 113
    iput p2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 114
    iput p2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 115
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1, p0, p3, p4}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V

    .line 116
    iput-boolean p2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->hadReleased:Z

    return-void
.end method

.method public synthetic lambda$onFrameResolutionChanged$0$SurfaceViewRenderer(II)V
    .locals 0

    .line 319
    iput p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    .line 320
    iput p2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 321
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    .line 322
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->requestLayout()V

    return-void
.end method

.method public onFirstFrameRendered()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 306
    invoke-interface {v0}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onFirstFrameRendered()V

    :cond_0
    return-void
.end method

.method public onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->hadReleased:Z

    if-eqz v0, :cond_0

    return-void

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V

    return-void
.end method

.method public onFrameResolutionChanged(III)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 313
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

    .line 318
    :cond_4
    new-instance p2, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceViewRenderer$q3iowXo9mtODqK-H4oZdO-qAeUM;

    invoke-direct {p2, p0, v1, p1}, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceViewRenderer$q3iowXo9mtODqK-H4oZdO-qAeUM;-><init>(Lcom/netease/lava/webrtc/SurfaceViewRenderer;II)V

    invoke-direct {p0, p2}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->postOrRun(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 237
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 238
    iget-object p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    sub-int/2addr p4, p2

    int-to-float p2, p4

    sub-int/2addr p5, p3

    int-to-float p3, p5

    div-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setLayoutAspectRatio(F)V

    .line 239
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 228
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 229
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    iget v1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameWidth:I

    iget v2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rotatedFrameHeight:I

    .line 230
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->measure(IIII)Landroid/graphics/Point;

    move-result-object p1

    .line 231
    iget p2, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p2, v0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->setMeasuredDimension(II)V

    .line 232
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

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->logD(Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedFps(I)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 329
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onReceivedFps(I)V

    :cond_0
    return-void
.end method

.method public onRenderError(Ljava/lang/String;)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 343
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onRenderError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRendererFps(I)V
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->rendererEvents:Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;->onRendererFps(I)V

    :cond_0
    return-void
.end method

.method public pauseVideo()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->pauseVideo()V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->hadReleased:Z

    .line 127
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->release()V

    return-void
.end method

.method public removeFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->removeFrameListener(Lcom/netease/lava/webrtc/EglRenderer$FrameListener;)V

    return-void
.end method

.method public setEnableHardwareScaler(Z)V
    .locals 0

    .line 166
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 167
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->enableFixedSize:Z

    .line 168
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method public setFpsReduction(F)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setFpsReduction(F)V

    return-void
.end method

.method public setLogName(Ljava/lang/String;)V
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setMirror(Z)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setMirror(Z)V

    return-void
.end method

.method public setRendererGatherer(Lcom/netease/lava/webrtc/RendererGatherer;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setRendererGatherer(Lcom/netease/lava/webrtc/RendererGatherer;)V

    :cond_0
    return-void
.end method

.method public setReportFpsInterval(J)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setReportFpsInterval(J)V

    :cond_0
    return-void
.end method

.method public setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V
    .locals 1

    .line 186
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 187
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    .line 188
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->requestLayout()V

    return-void
.end method

.method public setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V
    .locals 1

    .line 193
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    .line 194
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->videoLayoutMeasure:Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/webrtc/RendererCommon$VideoLayoutMeasure;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    .line 195
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->requestLayout()V

    return-void
.end method

.method public setUserId(J)V
    .locals 2

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " :"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->resourceName:Ljava/lang/String;

    .line 70
    iget-object p2, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->eglRenderer:Lcom/netease/lava/webrtc/SurfaceEglRenderer;

    if-eqz p2, :cond_0

    .line 71
    invoke-virtual {p2, p1}, Lcom/netease/lava/webrtc/SurfaceEglRenderer;->setName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 277
    invoke-static {}, Lcom/netease/lava/webrtc/ThreadUtils;->checkIsOnMainThread()V

    const/4 p1, 0x0

    .line 278
    iput p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceHeight:I

    iput p1, p0, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->surfaceWidth:I

    .line 279
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceViewRenderer;->updateSurfaceSize()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    return-void
.end method
