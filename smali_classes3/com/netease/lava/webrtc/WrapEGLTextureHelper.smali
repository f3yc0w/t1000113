.class public Lcom/netease/lava/webrtc/WrapEGLTextureHelper;
.super Ljava/lang/Object;
.source "WrapEGLTextureHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WrapEGLTextureHelper"


# instance fields
.field private final eglBase:Lcom/netease/lava/webrtc/EglBase;

.field private final handler:Landroid/os/Handler;

.field private final wrapYuvConverter:Lcom/netease/lava/webrtc/WrapYuvConverter;


# direct methods
.method private constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;)V
    .locals 3

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/netease/lava/webrtc/WrapYuvConverter;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/WrapYuvConverter;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->wrapYuvConverter:Lcom/netease/lava/webrtc/WrapYuvConverter;

    .line 64
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 67
    iput-object p2, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->handler:Landroid/os/Handler;

    .line 69
    sget-object v1, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PIXEL_BUFFER:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    .line 72
    :try_start_0
    invoke-interface {p1}, Lcom/netease/lava/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 73
    invoke-interface {p1}, Lcom/netease/lava/webrtc/EglBase;->makeCurrent()V

    .line 74
    invoke-interface {p1}, Lcom/netease/lava/webrtc/EglBase;->getOpenGlesVersion()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/WrapYuvConverter;->setOpenGles3(Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 77
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    .line 78
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->quit()V

    .line 79
    throw p1

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "WrapEGLTextureHelper must be created on the handler thread"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;)V

    return-void
.end method

.method public static create(Ljava/lang/String;Lcom/netease/lava/webrtc/EglBase$Context;)Lcom/netease/lava/webrtc/WrapEGLTextureHelper;
    .locals 2

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 38
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    new-instance v0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;

    invoke-direct {v0, p1, v1, p0}, Lcom/netease/lava/webrtc/WrapEGLTextureHelper$1;-><init>(Lcom/netease/lava/webrtc/EglBase$Context;Landroid/os/Handler;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;

    return-object p0
.end method

.method private release()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->wrapYuvConverter:Lcom/netease/lava/webrtc/WrapYuvConverter;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/WrapYuvConverter;->release()V

    .line 107
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    .line 108
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    :goto_0
    return-void

    .line 104
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Wrong thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/lava/webrtc/-$$Lambda$WrapEGLTextureHelper$HXUK_NA_kmI0u-F-BYzid9AYnyQ;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/-$$Lambda$WrapEGLTextureHelper$HXUK_NA_kmI0u-F-BYzid9AYnyQ;-><init>(Lcom/netease/lava/webrtc/WrapEGLTextureHelper;)V

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getWrapYuvConverter()Lcom/netease/lava/webrtc/WrapYuvConverter;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->wrapYuvConverter:Lcom/netease/lava/webrtc/WrapYuvConverter;

    return-object v0
.end method

.method public synthetic lambda$dispose$0$WrapEGLTextureHelper()V
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/netease/lava/webrtc/WrapEGLTextureHelper;->release()V

    return-void
.end method
