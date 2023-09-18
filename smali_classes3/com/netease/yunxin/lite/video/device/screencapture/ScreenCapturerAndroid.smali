.class public Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/VideoCapturer;
.implements Lcom/netease/lava/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;,
        Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;
    }
.end annotation


# static fields
.field private static final DISPLAY_FLAGS:I = 0x3

.field protected static final NANOS_PER_MS:J = 0xf4240L

.field private static final ORIENTATION_FRAMES_COUNT_THRESHOLD:I = 0x3

.field private static final SCREEN_CACHE_FRAME_COUNT:I = 0x5

.field private static final SCREEN_KEEP_ALIVE_PERIOD_MS:I = 0x1f4

.field private static final SCREEN_SEND_CACHE_FRAME_MS:I = 0x7d0

.field private static final SCREEN_SEND_CACHE_FRAM_THRESHOLD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScreenCapturerAndroid"

.field public static intentCallback:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;

.field private static final mCacheSync:Ljava/lang/Object;


# instance fields
.field private applicationContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private cacheHeight:I

.field private cacheRotation:I

.field private cacheTimeStamp:J

.field private cacheWidth:I

.field private capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private densityDpi:I

.field private final fpsMonitor:Ljava/lang/Runnable;

.field private height:I

.field private ignoredFPS:I

.field private isDisposed:Z

.field private mCacheBuffer:Ljava/nio/ByteBuffer;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private volatile mStarted:Z

.field private mediaProjection:Landroid/media/projection/MediaProjection;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

.field private numCapturedFrames:J

.field private orientationFramesCount:I

.field private final orientationLock:Ljava/lang/Object;

.field private screenHeight:I

.field private screenWidth:I

.field private statistics:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;

.field private surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private tmpOrientation:I

.field virtualDisplay:Landroid/hardware/display/VirtualDisplay;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field virtualDisplayCallback:Landroid/hardware/display/VirtualDisplay$Callback;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/media/projection/MediaProjection$Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mediaProjectionPermissionResultData",
            "mediaProjectionCallback"
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance p1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$1;

    invoke-direct {p1, p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$1;-><init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->virtualDisplayCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    .line 106
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->orientationLock:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->isDisposed:Z

    .line 115
    new-instance v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;-><init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$1;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->statistics:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;

    .line 121
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mStarted:Z

    .line 516
    new-instance p1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;

    invoke-direct {p1, p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;-><init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->fpsMonitor:Ljava/lang/Runnable;

    .line 155
    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    return-void
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->orientationFramesCount:I

    return p0
.end method

.method static synthetic access$1002(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->orientationFramesCount:I

    return p1
.end method

.method static synthetic access$102(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;Lcom/netease/lava/webrtc/SurfaceTextureHelper;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->width:I

    return p0
.end method

.method static synthetic access$1200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->height:I

    return p0
.end method

.method static synthetic access$1300(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->ignoredFPS:I

    return p0
.end method

.method static synthetic access$1400(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->statistics:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mStarted:Z

    return p0
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    return-object p0
.end method

.method static synthetic access$202(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    return-object p0
.end method

.method static synthetic access$302(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection$Callback;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method static synthetic access$502(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    return-object p1
.end method

.method static synthetic access$600(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->createVirtualDisplay()V

    return-void
.end method

.method static synthetic access$700(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Landroid/content/Context;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Ljava/lang/Object;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->orientationLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$900(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->tmpOrientation:I

    return p0
.end method

.method static synthetic access$902(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->tmpOrientation:I

    return p1
.end method

.method private bestScreenCaptureConfig(Landroid/util/DisplayMetrics;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "displayMetrics",
            "requestW",
            "requestH"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 447
    :cond_0
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->screenWidth:I

    .line 448
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->screenHeight:I

    .line 449
    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->densityDpi:I

    .line 451
    iget p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->screenWidth:I

    iget v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->screenHeight:I

    invoke-static {p1, v0, p2, p3}, Lcom/netease/yunxin/lite/util/VideoUtils;->scaleSizeWithAlignment(IIII)Lcom/netease/lava/webrtc/Size;

    move-result-object p1

    .line 453
    iget v0, p1, Lcom/netease/lava/webrtc/Size;->width:I

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->width:I

    .line 454
    iget p1, p1, Lcom/netease/lava/webrtc/Size;->height:I

    iput p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->height:I

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " best screen Capture config  W: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->width:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " H: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->height:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Screen: dpi "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->densityDpi:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " W: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->screenWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->screenHeight:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " requestW: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " requestH: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ScreenCapturerAndroid"

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private cacheFrameBuffer(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "ScreenCapturerAndroid"

    const-string v0, "input frame is null!"

    .line 342
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 346
    :cond_0
    sget-object v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheSync:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 348
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, v1, :cond_1

    const-string v2, "ScreenCapturerAndroid"

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reallocate byteBuffer from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v2}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 351
    invoke-static {v1}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 352
    :cond_1
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_2

    const-string v2, "ScreenCapturerAndroid"

    .line 353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allocate byteBuffer: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {v1}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    .line 357
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheRotation:I

    .line 358
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheTimeStamp:J

    .line 359
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheWidth:I

    .line 360
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheHeight:I

    .line 362
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v1

    .line 363
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 365
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v4

    .line 366
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v6

    .line 367
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v8

    iget-object v9, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    .line 368
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v10

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v11

    .line 364
    invoke-static/range {v3 .. v11}, Lcom/netease/lava/webrtc/YuvHelper;->I420Copy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 369
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->release()V

    .line 370
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private checkNotDisposed()V
    .locals 2

    .line 437
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->isDisposed:Z

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "capturer is disposed."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createVirtualDisplay()V
    .locals 12

    .line 422
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->width:I

    iget v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->height:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 423
    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;

    iget v5, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->width:I

    iget v6, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->height:I

    iget v7, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->densityDpi:I

    new-instance v9, Landroid/view/Surface;

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    .line 424
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iget-object v10, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->virtualDisplayCallback:Landroid/hardware/display/VirtualDisplay$Callback;

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    .line 425
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v11

    const-string v4, "NERTC_ScreenCapture"

    const/4 v8, 0x3

    .line 423
    invoke-virtual/range {v3 .. v11}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    return-void
.end method

.method private getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 3

    .line 429
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 430
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->applicationContext:Landroid/content/Context;

    const-string v2, "window"

    .line 431
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 432
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object v0
.end method

.method static synthetic lambda$deliverCachedBuffer$0()V
    .locals 2

    const-string v0, "ScreenCapturerAndroid"

    const-string v1, "trying to release cached screen buffer,cached buffer should be release when stopCapture!"

    .line 400
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private listenOrientationChange()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;-><init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)V

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setIntentCallback(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 141
    sput-object p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->intentCallback:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized changeCaptureFormat(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "width",
            "height",
            "ignoredFramerate"
        }
    .end annotation

    monitor-enter p0

    .line 292
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->checkNotDisposed()V

    .line 293
    iput p3, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->ignoredFPS:I

    .line 295
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 297
    invoke-direct {p0, p3, p1, p2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->bestScreenCaptureConfig(Landroid/util/DisplayMetrics;II)V

    .line 299
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$3;

    invoke-direct {p2, p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$3;-><init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)V

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public deliverCachedBuffer(J)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeStamp"
        }
    .end annotation

    move-object v1, p0

    .line 374
    iget-object v0, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    const-string v0, "ScreenCapturerAndroid"

    const-string v2, "Cached buffer is null!"

    .line 375
    invoke-static {v0, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 379
    :cond_0
    sget-object v2, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheSync:Ljava/lang/Object;

    monitor-enter v2

    .line 380
    :try_start_0
    iget v0, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheHeight:I

    add-int/lit8 v3, v0, 0x1

    div-int/lit8 v3, v3, 0x2

    .line 381
    iget v4, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheWidth:I

    add-int/lit8 v5, v4, 0x1

    div-int/lit8 v13, v5, 0x2

    const/4 v5, 0x0

    mul-int v4, v4, v0

    add-int/2addr v4, v5

    mul-int v3, v3, v13

    add-int v0, v4, v3

    .line 386
    iget-object v6, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 387
    iget-object v5, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 388
    iget-object v5, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 390
    iget-object v5, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 391
    iget-object v4, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 392
    iget-object v4, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 394
    iget-object v4, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 395
    iget-object v4, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    add-int/2addr v0, v3

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 396
    iget-object v0, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mCacheBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 399
    iget v9, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheWidth:I

    iget v7, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheHeight:I

    sget-object v14, Lcom/netease/yunxin/lite/video/device/screencapture/-$$Lambda$ScreenCapturerAndroid$aMx-Y-Iu-EibqnK2F1HzvW3NM4Q;->INSTANCE:Lcom/netease/yunxin/lite/video/device/screencapture/-$$Lambda$ScreenCapturerAndroid$aMx-Y-Iu-EibqnK2F1HzvW3NM4Q;

    move v6, v9

    move v11, v13

    invoke-static/range {v6 .. v14}, Lcom/netease/lava/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v0

    .line 406
    iget-wide v3, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheTimeStamp:J

    const-wide/32 v5, 0xf4240

    mul-long v5, v5, p1

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheTimeStamp:J

    .line 407
    new-instance v5, Lcom/netease/lava/webrtc/VideoFrame;

    iget v6, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheRotation:I

    invoke-direct {v5, v0, v6, v3, v4}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 408
    iget-object v0, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    invoke-interface {v0, v5}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;->onFrameCaptured(Lcom/netease/lava/webrtc/VideoFrame;)V

    .line 409
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized dispose()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 276
    :try_start_0
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->isDisposed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNumCapturedFrames()J
    .locals 2

    .line 418
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->numCapturedFrames:J

    return-wide v0
.end method

.method public declared-synchronized initialize(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Landroid/content/Context;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "surfaceTextureHelper",
            "applicationContext",
            "capturerObserver"
        }
    .end annotation

    monitor-enter p0

    .line 163
    :try_start_0
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->checkNotDisposed()V

    if-eqz p3, :cond_2

    .line 168
    iput-object p3, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    if-eqz p1, :cond_1

    .line 173
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    if-eqz p2, :cond_0

    .line 178
    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->applicationContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 176
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "applicationContext not set."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 171
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "surfaceTextureHelper not set."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "capturerObserver not set."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isScreencast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frame"
        }
    .end annotation

    .line 313
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mStarted:Z

    if-nez v0, :cond_0

    return-void

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->orientationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_0
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v1

    .line 319
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v2

    .line 320
    iget v3, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->tmpOrientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    if-le v1, v2, :cond_1

    const-string p1, "ScreenCapturerAndroid"

    .line 321
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->tmpOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    monitor-exit v0

    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    if-ge v1, v2, :cond_2

    const-string p1, "ScreenCapturerAndroid"

    .line 324
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " orientation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->tmpOrientation:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    monitor-exit v0

    return-void

    .line 327
    :cond_2
    iget v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->orientationFramesCount:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_3

    add-int/2addr v1, v4

    .line 328
    iput v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->orientationFramesCount:I

    .line 330
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->numCapturedFrames:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->numCapturedFrames:J

    .line 333
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->statistics:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;->addFrame()V

    .line 334
    iget-wide v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->numCapturedFrames:J

    const-wide/16 v2, 0x5

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-nez v5, :cond_4

    invoke-static {}, Lcom/netease/lava/webrtc/device/HardwareLevel;->level()I

    move-result v0

    if-le v0, v4, :cond_4

    .line 335
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->cacheFrameBuffer(Lcom/netease/lava/webrtc/VideoFrame;)V

    .line 337
    :cond_4
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    invoke-interface {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;->onFrameCaptured(Lcom/netease/lava/webrtc/VideoFrame;)V

    return-void

    :catchall_0
    move-exception p1

    .line 330
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized startCapture(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "width",
            "height",
            "ignoredFramerate"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "ScreenCapturerAndroid"

    const-string v1, "startCapture"

    .line 187
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->checkNotDisposed()V

    .line 190
    iput p3, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->ignoredFPS:I

    .line 191
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 192
    invoke-direct {p0, p3, p1, p2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->bestScreenCaptureConfig(Landroid/util/DisplayMetrics;II)V

    .line 193
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {p1, p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->startListening(Lcom/netease/lava/webrtc/VideoSink;)V

    .line 195
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->fpsMonitor:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1f4

    invoke-static {p1, p2, p3}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    :try_start_1
    sget-object p1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->intentCallback:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;

    invoke-interface {p1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;->onScreenCapturerNeedIntent()Landroid/media/projection/MediaProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mediaProjection:Landroid/media/projection/MediaProjection;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p1, :cond_0

    .line 200
    monitor-exit p0

    return-void

    .line 204
    :cond_0
    :try_start_2
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mediaProjectionCallback:Landroid/media/projection/MediaProjection$Callback;

    iget-object p3, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {p3}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/media/projection/MediaProjection;->registerCallback(Landroid/media/projection/MediaProjection$Callback;Landroid/os/Handler;)V

    .line 205
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->createVirtualDisplay()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    .line 210
    :try_start_3
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->orientationFramesCount:I

    .line 211
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->capturerObserver:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;->onCapturerStarted(Z)V

    .line 212
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->listenOrientationChange()V

    .line 213
    iput-boolean p2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mStarted:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 207
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 208
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stopCapture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "ScreenCapturerAndroid"

    const-string v1, "stopCapture"

    .line 220
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->checkNotDisposed()V

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mStarted:Z

    .line 223
    invoke-static {}, Lcom/netease/yunxin/lite/util/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->fpsMonitor:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;-><init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)V

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 270
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
