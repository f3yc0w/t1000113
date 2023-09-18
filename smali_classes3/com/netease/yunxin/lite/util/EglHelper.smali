.class Lcom/netease/yunxin/lite/util/EglHelper;
.super Ljava/lang/Object;
.source "EglHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createEglBase()Lcom/netease/lava/webrtc/EglBase;
    .locals 1

    .line 27
    sget-object v0, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PLAIN:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-static {v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v0

    return-object v0
.end method

.method private static createEglBaseWithPixelBuffer(Lcom/netease/lava/webrtc/EglBase$Context;)Lcom/netease/lava/webrtc/EglBase;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 32
    sget-object v0, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PIXEL_BUFFER:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-static {p0, v0}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object p0

    .line 33
    invoke-interface {p0}, Lcom/netease/lava/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 34
    invoke-interface {p0}, Lcom/netease/lava/webrtc/EglBase;->makeCurrent()V

    return-object p0
.end method

.method private static getEglBaseContext(Ljava/lang/Object;)Lcom/netease/lava/webrtc/EglBase$Context;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglContext"
        }
    .end annotation

    .line 15
    instance-of v0, p0, Landroid/opengl/EGLContext;

    if-eqz v0, :cond_0

    .line 16
    new-instance v0, Lcom/netease/lava/webrtc/EglBase14Impl$Context;

    check-cast p0, Landroid/opengl/EGLContext;

    invoke-direct {v0, p0}, Lcom/netease/lava/webrtc/EglBase14Impl$Context;-><init>(Landroid/opengl/EGLContext;)V

    return-object v0

    .line 17
    :cond_0
    instance-of v0, p0, Ljavax/microedition/khronos/egl/EGLContext;

    if-eqz v0, :cond_1

    .line 18
    new-instance v0, Lcom/netease/lava/webrtc/EglBase10Impl$Context;

    check-cast p0, Ljavax/microedition/khronos/egl/EGLContext;

    invoke-direct {v0, p0}, Lcom/netease/lava/webrtc/EglBase10Impl$Context;-><init>(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-object v0

    .line 19
    :cond_1
    instance-of v0, p0, Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_2

    .line 20
    check-cast p0, Lcom/netease/lava/webrtc/EglBase;

    invoke-interface {p0}, Lcom/netease/lava/webrtc/EglBase;->getEglBaseContext()Lcom/netease/lava/webrtc/EglBase$Context;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private static glFinish()V
    .locals 0

    .line 47
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    return-void
.end method

.method private static release(Lcom/netease/lava/webrtc/EglBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglBase"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 41
    invoke-interface {p0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    :cond_0
    return-void
.end method
