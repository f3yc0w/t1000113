.class public Lcom/netease/lava/webrtc/SurfaceTextureHelper;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SurfaceTextureHelper"


# instance fields
.field private final eglBase:Lcom/netease/lava/webrtc/EglBase;

.field private frameRotation:I

.field private final handler:Landroid/os/Handler;

.field private hasPendingTexture:Z

.field private isQuitting:Z

.field private volatile isTextureInUse:Z

.field private listener:Lcom/netease/lava/webrtc/VideoSink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final oesTextureId:I

.field private pendingListener:Lcom/netease/lava/webrtc/VideoSink;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final setListenerRunnable:Ljava/lang/Runnable;

.field private final surfaceTexture:Landroid/graphics/SurfaceTexture;

.field private textureHeight:I

.field private textureWidth:I

.field private final timestampAligner:Lcom/netease/lava/webrtc/TimestampAligner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;


# direct methods
.method private constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;Z)V
    .locals 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Lcom/netease/lava/webrtc/YuvConverter;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/YuvConverter;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    .line 101
    new-instance v1, Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;-><init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    .line 119
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 122
    iput-object p2, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    if-eqz p3, :cond_0

    .line 123
    new-instance p3, Lcom/netease/lava/webrtc/TimestampAligner;

    invoke-direct {p3}, Lcom/netease/lava/webrtc/TimestampAligner;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-object p3, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->timestampAligner:Lcom/netease/lava/webrtc/TimestampAligner;

    .line 125
    sget-object p3, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PIXEL_BUFFER:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-static {p1, p3}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    .line 128
    :try_start_0
    invoke-interface {p1}, Lcom/netease/lava/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 129
    invoke-interface {p1}, Lcom/netease/lava/webrtc/EglBase;->makeCurrent()V

    .line 130
    invoke-interface {p1}, Lcom/netease/lava/webrtc/EglBase;->getOpenGlesVersion()I

    move-result p1

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/YuvConverter;->setOpenGles3(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const p1, 0x8d65

    .line 138
    invoke-static {p1}, Lcom/netease/lava/webrtc/GlUtil;->generateTexture(I)I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 139
    new-instance p3, Landroid/graphics/SurfaceTexture;

    invoke-direct {p3, p1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p3, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 140
    new-instance p1, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$kTlS8FxavMqxoQFkBcbaMZwKtS4;

    invoke-direct {p1, p0}, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$kTlS8FxavMqxoQFkBcbaMZwKtS4;-><init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V

    invoke-static {p3, p1, p2}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    return-void

    :catch_0
    move-exception p1

    .line 133
    iget-object p3, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {p3}, Lcom/netease/lava/webrtc/EglBase;->release()V

    .line 134
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 135
    throw p1

    .line 120
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "SurfaceTextureHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;ZLcom/netease/lava/webrtc/SurfaceTextureHelper$1;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)Lcom/netease/lava/webrtc/VideoSink;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/netease/lava/webrtc/VideoSink;

    return-object p0
.end method

.method static synthetic access$102(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Lcom/netease/lava/webrtc/VideoSink;)Lcom/netease/lava/webrtc/VideoSink;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/netease/lava/webrtc/VideoSink;

    return-object p1
.end method

.method static synthetic access$202(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Lcom/netease/lava/webrtc/VideoSink;)Lcom/netease/lava/webrtc/VideoSink;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->listener:Lcom/netease/lava/webrtc/VideoSink;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    return p0
.end method

.method static synthetic access$302(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    return p1
.end method

.method static synthetic access$400(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->updateTexImage()V

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/netease/lava/webrtc/EglBase$Context;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .locals 1

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, p1, v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lcom/netease/lava/webrtc/EglBase$Context;Z)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object p0

    return-object p0
.end method

.method public static create(Ljava/lang/String;Lcom/netease/lava/webrtc/EglBase$Context;Z)Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .locals 2

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    new-instance v0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;

    invoke-direct {v0, p1, v1, p2, p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper$1;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;ZLjava/lang/String;)V

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method public static synthetic lambda$bKBoof5KPYkywU-tz8nWYJLxahQ(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->returnTextureFrame()V

    return-void
.end method

.method private release()V
    .locals 4

    .line 324
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 327
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-eqz v0, :cond_2

    .line 330
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/YuvConverter;->release()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 331
    iget v2, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->oesTextureId:I

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 332
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 333
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    .line 334
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 335
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->timestampAligner:Lcom/netease/lava/webrtc/TimestampAligner;

    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/TimestampAligner;->dispose()V

    :cond_1
    return-void

    .line 328
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected release."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 325
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private returnTextureFrame()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$wqJdRlewtu3S9JU_u61dqaiJrvI;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$wqJdRlewtu3S9JU_u61dqaiJrvI;-><init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture;Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V
    .locals 2

    .line 153
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 154
    invoke-virtual {p0, p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0, p1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    :goto_0
    return-void
.end method

.method private tryDeliverTextureFrame()V
    .locals 13

    .line 289
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 292
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->listener:Lcom/netease/lava/webrtc/VideoSink;

    if-nez v0, :cond_0

    goto :goto_1

    .line 296
    :cond_0
    iget v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->textureWidth:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->textureHeight:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 302
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    const/4 v0, 0x0

    .line 303
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 306
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->updateTexImage()V

    const/16 v0, 0x10

    new-array v0, v0, [F

    .line 309
    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1, v0}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 310
    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v1

    .line 311
    iget-object v3, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->timestampAligner:Lcom/netease/lava/webrtc/TimestampAligner;

    if-eqz v3, :cond_2

    .line 312
    invoke-virtual {v3, v1, v2}, Lcom/netease/lava/webrtc/TimestampAligner;->translateTimestamp(J)J

    move-result-wide v1

    .line 314
    :cond_2
    new-instance v12, Lcom/netease/lava/webrtc/TextureBufferImpl;

    iget v4, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->textureWidth:I

    iget v5, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->textureHeight:I

    sget-object v6, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;->OES:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    iget v7, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->oesTextureId:I

    .line 316
    invoke-static {v0}, Lcom/netease/lava/webrtc/RendererCommon;->convertMatrixToAndroidGraphicsMatrix([F)Landroid/graphics/Matrix;

    move-result-object v8

    iget-object v9, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    new-instance v11, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$bKBoof5KPYkywU-tz8nWYJLxahQ;

    invoke-direct {v11, p0}, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$bKBoof5KPYkywU-tz8nWYJLxahQ;-><init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V

    move-object v3, v12

    invoke-direct/range {v3 .. v11}, Lcom/netease/lava/webrtc/TextureBufferImpl;-><init>(IILcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/YuvConverter;Ljava/lang/Runnable;)V

    .line 318
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrame;

    iget v3, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->frameRotation:I

    invoke-direct {v0, v12, v3, v1, v2}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 319
    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->listener:Lcom/netease/lava/webrtc/VideoSink;

    invoke-interface {v1, v0}, Lcom/netease/lava/webrtc/VideoSink;->onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V

    .line 320
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    return-void

    :cond_3
    :goto_0
    const-string v0, "SurfaceTextureHelper"

    const-string v1, "Texture size has not been set."

    .line 299
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void

    .line 290
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private updateTexImage()V
    .locals 4

    .line 278
    sget-object v0, Lcom/netease/lava/webrtc/EglBase;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "SurfaceTextureHelper"

    const-string v3, "updateTexImage failure"

    .line 282
    invoke-static {v2, v3, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 285
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public dispose()V
    .locals 2

    const-string v0, "SurfaceTextureHelper"

    const-string v1, "dispose()"

    .line 253
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$n4czDf2CdBdvlRCka_1ZwkD-ZtI;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$n4czDf2CdBdvlRCka_1ZwkD-ZtI;-><init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public isTextureInUse()Z
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    return v0
.end method

.method public synthetic lambda$dispose$5$SurfaceTextureHelper()V
    .locals 1

    const/4 v0, 0x1

    .line 255
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isQuitting:Z

    .line 257
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    if-nez v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->release()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$SurfaceTextureHelper(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 141
    iget-boolean p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    if-eqz p1, :cond_0

    const-string p1, "SurfaceTextureHelper"

    const-string v0, "A frame is already pending, dropping frame."

    .line 142
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x1

    .line 144
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->hasPendingTexture:Z

    .line 146
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method public synthetic lambda$returnTextureFrame$4$SurfaceTextureHelper()V
    .locals 1

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isTextureInUse:Z

    .line 235
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isQuitting:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->release()V

    goto :goto_0

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setFrameRotation$3$SurfaceTextureHelper(I)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->frameRotation:I

    return-void
.end method

.method public synthetic lambda$setTextureSize$2$SurfaceTextureHelper(II)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->textureWidth:I

    .line 204
    iput p2, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->textureHeight:I

    .line 205
    invoke-direct {p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->tryDeliverTextureFrame()V

    return-void
.end method

.method public synthetic lambda$stopListening$1$SurfaceTextureHelper()V
    .locals 1

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->listener:Lcom/netease/lava/webrtc/VideoSink;

    .line 185
    iput-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/netease/lava/webrtc/VideoSink;

    return-void
.end method

.method public setFrameRotation(I)V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$pT0jA04NMHDBzjIRf3vnqNPwAyw;

    invoke-direct {v1, p0, p1}, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$pT0jA04NMHDBzjIRf3vnqNPwAyw;-><init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setTextureSize(II)V
    .locals 2

    if-lez p1, :cond_1

    if-lez p2, :cond_0

    .line 201
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 202
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$6wGAcKefpsIwucBSuDqvLTsEXEQ;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$6wGAcKefpsIwucBSuDqvLTsEXEQ;-><init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 198
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Texture height must be positive, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 195
    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Texture width must be positive, but was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public startListening(Lcom/netease/lava/webrtc/VideoSink;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->listener:Lcom/netease/lava/webrtc/VideoSink;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/netease/lava/webrtc/VideoSink;

    if-nez v0, :cond_0

    .line 172
    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->pendingListener:Lcom/netease/lava/webrtc/VideoSink;

    .line 173
    iget-object p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 170
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "SurfaceTextureHelper listener has already been set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stopListening()V
    .locals 2

    const-string v0, "SurfaceTextureHelper"

    const-string v1, "stopListening()"

    .line 181
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->setListenerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$f-zpM_Jd62DX8V0RArM0wEAj-F4;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$f-zpM_Jd62DX8V0RArM0wEAj-F4;-><init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public textureToYuv(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 271
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object p1

    return-object p1
.end method
