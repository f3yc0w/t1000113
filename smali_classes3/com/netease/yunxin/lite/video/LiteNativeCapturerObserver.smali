.class public Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;
.super Ljava/lang/Object;
.source "LiteNativeCapturerObserver.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;


# static fields
.field private static TAG:Ljava/lang/String; = "LavaNativeCapturerObserver"

.field private static sharedContext:Lcom/netease/lava/webrtc/EglBase$Context; = null

.field private static useAdaptThread:Z = false

.field private static volatile videoFrameFilter:Lcom/netease/yunxin/lite/video/IVideoFrameFilter;


# instance fields
.field adapterHandler:Landroid/os/Handler;

.field private cameraHandler:Landroid/os/Handler;

.field private final drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

.field private dstTextureId:I

.field private frameBufferId:I

.field private hasCallbacks:Z

.field private volatile isReleased:Z

.field private mEglBase:Lcom/netease/lava/webrtc/EglBase;

.field private mHeight:I

.field private mIsScreenCast:Z

.field private mWidth:I

.field private final nativeSource:J

.field private final rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

.field yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nativeSource",
            "isScreenCast"
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    const/16 v1, 0x1908

    invoke-direct {v0, v1}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    .line 48
    new-instance v0, Lcom/netease/lava/webrtc/GlRectDrawer;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/GlRectDrawer;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->hasCallbacks:Z

    .line 77
    iput-wide p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeSource:J

    .line 78
    iput-boolean p3, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mIsScreenCast:Z

    .line 79
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->isReleased:Z

    .line 81
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "AdapterThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->adapterHandler:Landroid/os/Handler;

    .line 84
    new-instance p1, Lcom/netease/lava/webrtc/YuvConverter;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/YuvConverter;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    .line 85
    sget-object p1, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->TAG:Ljava/lang/String;

    const-string p2, "ctor "

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)Lcom/netease/lava/webrtc/EglBase;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mEglBase:Lcom/netease/lava/webrtc/EglBase;

    return-object p0
.end method

.method static synthetic access$002(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;Lcom/netease/lava/webrtc/EglBase;)Lcom/netease/lava/webrtc/EglBase;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mEglBase:Lcom/netease/lava/webrtc/EglBase;

    return-object p1
.end method

.method static synthetic access$100()Lcom/netease/lava/webrtc/EglBase$Context;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->frameBufferId:I

    return p0
.end method

.method static synthetic access$202(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->frameBufferId:I

    return p1
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->dstTextureId:I

    return p0
.end method

.method static synthetic access$302(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->dstTextureId:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mWidth:I

    return p0
.end method

.method static synthetic access$502(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mWidth:I

    return p1
.end method

.method static synthetic access$600(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mHeight:I

    return p0
.end method

.method static synthetic access$602(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mHeight:I

    return p1
.end method

.method static synthetic access$700(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->isReleased:Z

    return p0
.end method

.method static synthetic access$800(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeSource:J

    return-wide v0
.end method

.method static synthetic access$900(JIIIJJJLcom/netease/lava/webrtc/VideoFrame$Buffer;)V
    .locals 0

    .line 40
    invoke-static/range {p0 .. p11}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeOnFrameCaptured(JIIIJJJLcom/netease/lava/webrtc/VideoFrame$Buffer;)V

    return-void
.end method

.method private static native nativeCapturerStarted(JZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "source",
            "success"
        }
    .end annotation
.end method

.method private static native nativeCapturerStopped(J)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation
.end method

.method private static native nativeOnFrameCaptured(JIIIJJJLcom/netease/lava/webrtc/VideoFrame$Buffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "width",
            "height",
            "rotation",
            "timestampNs",
            "externalFilterProcessTimeCostNs",
            "convertTimeCostNs",
            "frame"
        }
    .end annotation
.end method

.method public static setEGLBase(Lcom/netease/lava/webrtc/EglBase$Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglBaseContext"
        }
    .end annotation

    .line 69
    sput-object p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    .line 70
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->isUseAdaptThread()Z

    move-result p0

    sput-boolean p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->useAdaptThread:Z

    .line 72
    sget-object p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setEGLBase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " useAdaptThread "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->useAdaptThread:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setFilter(Lcom/netease/yunxin/lite/video/IVideoFrameFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameFilter"
        }
    .end annotation

    .line 65
    sput-object p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->videoFrameFilter:Lcom/netease/yunxin/lite/video/IVideoFrameFilter;

    return-void
.end method


# virtual methods
.method public convertToRGB(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputTextureBuffer"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 151
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getWidth()I

    move-result v10

    .line 152
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getHeight()I

    move-result v11

    .line 153
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    .line 154
    move-object/from16 v1, p1

    check-cast v1, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getHandler()Landroid/os/Handler;

    move-result-object v13

    .line 155
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getYuvConverter()Lcom/netease/lava/webrtc/YuvConverter;

    move-result-object v14

    .line 157
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 158
    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 159
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 160
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v1, -0x41000000    # -0.5f

    .line 161
    invoke-virtual {v3, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 163
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v1, v10, v11}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 165
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v1

    const v15, 0x8d40

    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v1, "glBindFramebuffer"

    .line 166
    invoke-static {v1}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 168
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v4, v10

    move v5, v11

    move v8, v10

    move v9, v11

    invoke-static/range {v1 .. v9}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    const-string v1, "convertToRGB"

    .line 170
    invoke-static {v1}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 172
    invoke-static {v15, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v2, 0x9117

    .line 174
    invoke-static {v2, v1}, Landroid/opengl/GLES30;->glFenceSync(II)J

    move-result-wide v15

    .line 175
    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    .line 177
    new-instance v17, Lcom/netease/lava/webrtc/TextureBufferImpl;

    sget-object v4, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;->RGB:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    iget-object v1, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getTextureId()I

    move-result v5

    const/4 v9, 0x0

    move-object/from16 v1, v17

    move v2, v10

    move v3, v11

    move-object v6, v12

    move-object v7, v13

    move-object v8, v14

    move-wide v10, v15

    invoke-direct/range {v1 .. v11}, Lcom/netease/lava/webrtc/TextureBufferImpl;-><init>(IILcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/YuvConverter;Ljava/lang/Runnable;J)V

    return-object v17
.end method

.method public doReplaceVideoFrame(Lcom/netease/lava/webrtc/VideoFrame;Z)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "frame",
            "isConverter"
        }
    .end annotation

    .line 129
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    check-cast p1, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    check-cast p1, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    if-eqz p2, :cond_3

    .line 131
    move-object p2, p1

    check-cast p2, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {p2}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getYuvConverter()Lcom/netease/lava/webrtc/YuvConverter;

    move-result-object p2

    .line 132
    invoke-virtual {p2}, Lcom/netease/lava/webrtc/YuvConverter;->isOpenGles3()Z

    move-result p2

    .line 133
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->isUseCaptureFormatSyncGPU()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 134
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object p1

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->syncGPUInterruptRefCount(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    :cond_3
    :goto_2
    return-object p1
.end method

.method public isNeedReplaceVideoFrame(Lcom/netease/lava/webrtc/VideoFrame;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 141
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    .line 142
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    move-result-object p1

    .line 143
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 144
    invoke-static {}, Lcom/netease/yunxin/lite/util/ContextUtils;->isUseCaptureFormatConvert()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mIsScreenCast:Z

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public synthetic lambda$releaseCapturerObserver$0$LiteNativeCapturerObserver()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlGenericDrawer;->release()V

    .line 95
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->release()V

    return-void
.end method

.method public synthetic lambda$releaseCapturerObserver$1$LiteNativeCapturerObserver()V
    .locals 5

    .line 104
    sget-object v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->TAG:Ljava/lang/String;

    const-string v1, "releaseCapturerObserver in handler start"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/YuvConverter;->release()V

    .line 108
    iput-object v1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mEglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    .line 112
    iput-object v1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mEglBase:Lcom/netease/lava/webrtc/EglBase;

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [I

    .line 115
    iget v3, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->dstTextureId:I

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 116
    iput v4, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->dstTextureId:I

    new-array v2, v0, [I

    .line 117
    iget v3, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->frameBufferId:I

    aput v3, v2, v4

    invoke-static {v0, v2, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 118
    iput v4, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->frameBufferId:I

    .line 120
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->adapterHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->adapterHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/LooperUtils;->quitSafely(Landroid/os/Handler;)V

    .line 122
    iput-object v1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->adapterHandler:Landroid/os/Handler;

    .line 123
    sget-object v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->TAG:Ljava/lang/String;

    const-string v1, "releaseCapturerObserver in handler end"

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCapturerStarted(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "success"
        }
    .end annotation

    .line 197
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeSource:J

    invoke-static {v0, v1, p1}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeCapturerStarted(JZ)V

    return-void
.end method

.method public onCapturerStopped()V
    .locals 2

    .line 202
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeSource:J

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeCapturerStopped(J)V

    return-void
.end method

.method public onFrameCaptured(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->cameraHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->cameraHandler:Landroid/os/Handler;

    .line 211
    :cond_0
    invoke-static {}, Lcom/netease/lava/webrtc/TimestampAligner;->getRtcTimeNanos()J

    move-result-wide v7

    .line 212
    sget-object v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->videoFrameFilter:Lcom/netease/yunxin/lite/video/IVideoFrameFilter;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->mIsScreenCast:Z

    if-nez v0, :cond_3

    .line 214
    sget-object v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->videoFrameFilter:Lcom/netease/yunxin/lite/video/IVideoFrameFilter;

    invoke-interface {v0, p1}, Lcom/netease/yunxin/lite/video/IVideoFrameFilter;->onVideoFrameFilter(Lcom/netease/lava/webrtc/VideoFrame;)Lcom/netease/lava/webrtc/VideoFrame;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 218
    invoke-static {}, Lcom/netease/lava/webrtc/TimestampAligner;->getRtcTimeNanos()J

    move-result-wide v2

    sub-long v9, v2, v7

    .line 220
    sget-boolean v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->useAdaptThread:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->isReleased:Z

    if-nez v0, :cond_1

    .line 221
    iget-wide v2, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeSource:J

    invoke-virtual {v4}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result p1

    invoke-virtual {v4}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v5

    invoke-virtual {v4}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v6

    const-wide/16 v11, 0x0

    invoke-virtual {v4}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v13

    move v4, p1

    invoke-static/range {v2 .. v13}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeOnFrameCaptured(JIIIJJJLcom/netease/lava/webrtc/VideoFrame$Buffer;)V

    return-void

    .line 225
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->adapterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 226
    invoke-virtual {v4}, Lcom/netease/lava/webrtc/VideoFrame;->retain()V

    .line 227
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->adapterHandler:Landroid/os/Handler;

    new-instance v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;

    move-object v2, v0

    move-object v3, p0

    move-wide v5, v7

    move-wide v7, v9

    invoke-direct/range {v2 .. v8}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;-><init>(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;Lcom/netease/lava/webrtc/VideoFrame;JJ)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 275
    iget-boolean p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->hasCallbacks:Z

    if-nez p1, :cond_2

    .line 276
    iput-boolean v1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->hasCallbacks:Z

    :cond_2
    return-void

    .line 283
    :cond_3
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->adapterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->hasCallbacks:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 284
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->hasCallbacks:Z

    .line 288
    :cond_4
    invoke-static {}, Lcom/netease/lava/webrtc/TimestampAligner;->getRtcTimeNanos()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    .line 291
    invoke-virtual {p0, p1}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->isNeedReplaceVideoFrame(Lcom/netease/lava/webrtc/VideoFrame;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 293
    invoke-virtual {p0, p1, v1}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->doReplaceVideoFrame(Lcom/netease/lava/webrtc/VideoFrame;Z)Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    .line 294
    new-instance v4, Lcom/netease/lava/webrtc/VideoFrame;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v5

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v9

    invoke-direct {v4, v1, v5, v9, v10}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 295
    invoke-static {}, Lcom/netease/lava/webrtc/TimestampAligner;->getRtcTimeNanos()J

    move-result-wide v5

    sub-long/2addr v5, v2

    move-object p1, v4

    move-wide v11, v5

    goto :goto_0

    :cond_5
    move-wide v11, v4

    .line 297
    :goto_0
    iget-boolean v1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->isReleased:Z

    if-nez v1, :cond_6

    .line 298
    iget-wide v2, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeSource:J

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v5

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v6

    const-wide/16 v9, 0x0

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v13

    invoke-static/range {v2 .. v13}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->nativeOnFrameCaptured(JIIIJJJLcom/netease/lava/webrtc/VideoFrame$Buffer;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 303
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    :cond_7
    return-void
.end method

.method public releaseCapturerObserver()V
    .locals 2

    .line 90
    sget-object v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->TAG:Ljava/lang/String;

    const-string v1, "releaseCapturerObserver."

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->isReleased:Z

    .line 92
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->cameraHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 93
    new-instance v1, Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$4BgXGBzcBR4Xw2ZVTsoSt9ysFLs;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$4BgXGBzcBR4Xw2ZVTsoSt9ysFLs;-><init>(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlGenericDrawer;->release()V

    .line 99
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->release()V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->adapterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 103
    new-instance v1, Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$R16BCU7bx8BhgBg3VarDPyqLkd0;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/-$$Lambda$LiteNativeCapturerObserver$R16BCU7bx8BhgBg3VarDPyqLkd0;-><init>(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public syncGPUInterruptRefCount(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputTextureBuffer"
        }
    .end annotation

    const v0, 0x9117

    const/4 v1, 0x0

    .line 182
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glFenceSync(II)J

    move-result-wide v11

    .line 183
    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    .line 186
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getWidth()I

    move-result v3

    .line 187
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getHeight()I

    move-result v4

    .line 188
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 189
    move-object v0, p1

    check-cast v0, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getHandler()Landroid/os/Handler;

    move-result-object v8

    .line 190
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getYuvConverter()Lcom/netease/lava/webrtc/YuvConverter;

    move-result-object v9

    .line 191
    new-instance v0, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getType()Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    move-result-object v5

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v6

    const/4 v10, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lcom/netease/lava/webrtc/TextureBufferImpl;-><init>(IILcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/YuvConverter;Ljava/lang/Runnable;J)V

    return-object v0
.end method
