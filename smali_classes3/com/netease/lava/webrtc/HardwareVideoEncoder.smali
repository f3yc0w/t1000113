.class public Lcom/netease/lava/webrtc/HardwareVideoEncoder;
.super Ljava/lang/Object;
.source "HardwareVideoEncoder.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoEncoder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;
    }
.end annotation


# static fields
.field private static final AUTO_BR_ADJUSTER:I = -0x1

.field private static final BASE_BR_ADJUSTER:I = 0x0

.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x186a0

.field private static final DYNAMIC_BR_ADJUSTER:I = 0x1

.field private static final FRAMERATE_BR_ADJUSTER:I = 0x2

.field private static final KEY_BITRATE_MODE:Ljava/lang/String; = "bitrate-mode"

.field private static final MAX_ENCODER_Q_SIZE:I = 0x2

.field private static final MAX_VIDEO_FRAMERATE:I = 0x1e

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "HardwareVideoEncoder"

.field private static final VIDEO_AVC_LEVEL_3:I = 0x100

.field private static final VIDEO_AVC_PROFILE_HIGH:I = 0x8

.field private static final VIDEO_ControlRateConstant:I = 0x2

.field private static isScreenCast:Z


# instance fields
.field private adjustedBitrate:I

.field private automaticResizeOn:Z

.field private bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

.field private callback:Lcom/netease/lava/webrtc/VideoEncoder$Callback;

.field private capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final codecName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final codecType:Lcom/netease/lava/webrtc/VideoCodecType;

.field private configBuffer:Ljava/nio/ByteBuffer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private dequeOutputTimeoutUs:I

.field private final encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

.field private fallbackResolution:I

.field private final forcedKeyFrameNs:J

.field private height:I

.field private final kHighH264QpThreshold:I

.field private final kHighH265QpThreshold:I

.field private final kHighVp8QpThreshold:I

.field private final kLowH264QpThreshold:I

.field private final kLowH265QpThreshold:I

.field private final kLowVp8QpThreshold:I

.field private final keyFrameIntervalSec:I

.field private lastKeyFrameNs:J

.field private final mediaCodecWrapperFactory:Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;

.field private final outputBuilders:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lcom/netease/lava/webrtc/EncodedImage$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private outputThread:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile running:Z

.field private final sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

.field private volatile shutdownException:Ljava/lang/Exception;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final surfaceColorFormat:I

.field private syncMode:Z

.field private targetFPS:I

.field private targetQosBitrateBps:I

.field private final textureDrawer:Lcom/netease/lava/webrtc/GlRectDrawer;

.field private textureEglBase:Lcom/netease/lava/webrtc/EglBase14;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private textureInputSurface:Landroid/view/Surface;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private useSurfaceMode:Z

.field private final videoFrameDrawer:Lcom/netease/lava/webrtc/VideoFrameDrawer;

.field private width:I

.field private final yuvColorFormat:I

.field private final yuvFormat:Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;Lcom/netease/lava/webrtc/VideoCodecType;Ljava/util/Map;Lcom/netease/lava/webrtc/EglBase14$Context;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;",
            "Lcom/netease/lava/webrtc/VideoCodecType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/netease/lava/webrtc/EglBase14$Context;",
            "Lcom/netease/lava/webrtc/CompatVideoCodecInfo;",
            "Landroid/media/MediaCodecInfo$CodecCapabilities;",
            ")V"
        }
    .end annotation

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1d

    .line 84
    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->kLowVp8QpThreshold:I

    const/16 v0, 0x5f

    .line 85
    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->kHighVp8QpThreshold:I

    const/16 v0, 0x1e

    .line 87
    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->kLowH264QpThreshold:I

    const/16 v1, 0x25

    .line 88
    iput v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->kHighH264QpThreshold:I

    .line 90
    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->kLowH265QpThreshold:I

    const/16 v0, 0x24

    .line 91
    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->kHighH265QpThreshold:I

    .line 110
    new-instance v0, Lcom/netease/lava/webrtc/GlRectDrawer;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/GlRectDrawer;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureDrawer:Lcom/netease/lava/webrtc/GlRectDrawer;

    .line 111
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/VideoFrameDrawer;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->videoFrameDrawer:Lcom/netease/lava/webrtc/VideoFrameDrawer;

    .line 114
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    .line 116
    new-instance v0, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    .line 117
    new-instance v1, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    .line 187
    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->mediaCodecWrapperFactory:Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;

    .line 188
    invoke-virtual {p5}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 189
    iput-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    .line 190
    invoke-virtual {p5}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEnSurfaceColorFormat()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->surfaceColorFormat:I

    .line 191
    invoke-virtual {p5}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEnYUVColorFormat()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->yuvColorFormat:I

    .line 192
    invoke-static {p1}, Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;->valueOf(I)Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->yuvFormat:Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;

    .line 193
    iput-object p3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    .line 194
    invoke-virtual {p5}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getKeyFrameIntervalSec()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    .line 195
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p5}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getForceKeyFrameIntervalMs()I

    move-result p2

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    .line 196
    new-instance p1, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    .line 197
    iput-object p4, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    .line 198
    invoke-virtual {p5}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getEncFallbackResolution()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->fallbackResolution:I

    .line 199
    iput-object p6, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 202
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    const-string p1, "HardwareVideoEncoder"

    const-string p2, "ctor"

    .line 204
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/webrtc/HardwareVideoEncoder;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/lava/webrtc/HardwareVideoEncoder;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->running:Z

    return p0
.end method

.method private canUseSurface()Z
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->surfaceColorFormat:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private createBitrateAdjuster(Lcom/netease/lava/webrtc/VideoCodecType;Ljava/lang/String;IFFZ)Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;
    .locals 3

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bitrate Adjuster type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HardwareVideoEncoder"

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screen share: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x2

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    if-eq p3, v2, :cond_0

    if-eq p3, p1, :cond_0

    const/4 p3, -0x1

    :cond_0
    if-ne p3, v1, :cond_1

    xor-int/lit8 p3, p6, 0x1

    .line 265
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before setBitrateAdjusterTypeForSomeModel : "

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v0, p6}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-direct {p0, p2, p3}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->setBitrateAdjusterTypeForSomeModel(Ljava/lang/String;I)I

    move-result p3

    .line 267
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "after setBitrateAdjusterTypeForSomeModel : "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "final work bitrate Adjuster type: "

    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_4

    if-eq p3, v2, :cond_3

    if-eq p3, p1, :cond_2

    .line 284
    new-instance p1, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;-><init>()V

    goto :goto_0

    .line 281
    :cond_2
    new-instance p1, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;-><init>()V

    goto :goto_0

    .line 278
    :cond_3
    new-instance p1, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;

    invoke-direct {p1, p4, p5}, Lcom/netease/lava/webrtc/bitrate/NewDynamicBitrateAdjuster;-><init>(FF)V

    goto :goto_0

    .line 275
    :cond_4
    new-instance p1, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;-><init>()V

    :goto_0
    return-object p1
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 1

    .line 791
    new-instance v0, Lcom/netease/lava/webrtc/HardwareVideoEncoder$2;

    invoke-direct {v0, p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder$2;-><init>(Lcom/netease/lava/webrtc/HardwareVideoEncoder;)V

    return-object v0
.end method

.method private encodeByteBuffer(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/VideoFrame$Buffer;I)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 12

    const-string v0, "HardwareVideoEncoder"

    .line 657
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 659
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v1

    const-wide/16 v3, 0x1f4

    add-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long v9, v1, v3

    .line 664
    :try_start_0
    iget-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v1, v2}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->dequeueInputBuffer(J)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const/4 p1, -0x1

    if-ne v6, p1, :cond_0

    const-string p1, "Dropped frame, no input buffers available"

    .line 672
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 678
    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    aget-object p1, p1, v6

    .line 680
    invoke-virtual {p0, p1, p2}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->fillInputBuffer(Ljava/nio/ByteBuffer;Lcom/netease/lava/webrtc/VideoFrame$Buffer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 687
    :try_start_2
    iget-object v5, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    const/4 v7, 0x0

    const/4 v11, 0x0

    move v8, p3

    invoke-interface/range {v5 .. v11}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->queueInputBuffer(IIIJI)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 695
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "queueInputBuffer failed"

    .line 690
    invoke-static {v0, p2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 692
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "getInputBuffers failed"

    .line 682
    invoke-static {v0, p2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 683
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :catch_2
    move-exception p1

    const-string p2, "dequeueInputBuffer failed"

    .line 666
    invoke-static {v0, p2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method private encodeTextureBuffer(Lcom/netease/lava/webrtc/VideoFrame;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 5

    .line 638
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/16 v0, 0x4000

    .line 642
    :try_start_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 644
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrame;

    .line 645
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 646
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->videoFrameDrawer:Lcom/netease/lava/webrtc/VideoFrameDrawer;

    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureDrawer:Lcom/netease/lava/webrtc/GlRectDrawer;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawFrame(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V

    .line 647
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/netease/lava/webrtc/EglBase14;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/netease/lava/webrtc/EglBase14;->swapBuffers(J)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "HardwareVideoEncoder"

    const-string v1, "encodeTexture failed"

    .line 649
    invoke-static {v0, v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 650
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method private initEncodeInternal()Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 11

    .line 348
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-wide/16 v0, -0x1

    .line 350
    iput-wide v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    .line 353
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lcom/netease/lava/webrtc/MediaCodecUtils;->checkCodecInstances(Landroid/media/MediaCodecInfo$CodecCapabilities;ZLjava/lang/String;)Z

    move-result v0

    const-string v1, "HardwareVideoEncoder"

    if-nez v0, :cond_0

    .line 355
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " initEncodeInternal:  currentCodecInstances: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 356
    invoke-static {v2, v4}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecInstances(ZLjava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxSupportedInstances: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 357
    invoke-static {v4}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getMaxSupportedInstances(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isWithinInstancesRange: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->mediaCodecWrapperFactory:Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;

    iget-object v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-interface {v0, v3}, Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;->createByCodecName(Ljava/lang/String;)Lcom/netease/lava/webrtc/MediaCodecWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 369
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/MediaCodecUtils;->addCodecInstances(ZLjava/lang/String;)V

    .line 370
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->surfaceColorFormat:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->yuvColorFormat:I

    .line 372
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->width:I

    iget v5, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->height:I

    invoke-static {v3, v4, v5}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v3

    const-string v4, "bitrate"

    .line 373
    iget v5, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "bitrate-mode"

    const/4 v5, 0x2

    .line 374
    invoke-virtual {v3, v4, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v4, "color-format"

    .line 375
    invoke-virtual {v3, v4, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "frame-rate"

    .line 376
    iget-object v4, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    invoke-interface {v4}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->getTargetsFrameRate()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v0, "i-frame-interval"

    .line 377
    iget v4, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    invoke-virtual {v3, v0, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 379
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v0, v4, :cond_2

    const-string v0, "latency"

    .line 381
    invoke-virtual {v3, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 384
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    const/4 v5, 0x0

    if-lt v0, v4, :cond_3

    const-string v0, "priority"

    .line 385
    invoke-virtual {v3, v0, v5}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    sget-object v4, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne v0, v4, :cond_a

    .line 390
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    const-string v4, "profile-id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    iget-object v4, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    const-string v6, "level-id"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v6, "level"

    const-string v7, "profile"

    if-eqz v0, :cond_4

    if-eqz v4, :cond_4

    .line 395
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "using compat profile: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " level: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v7, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 397
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v3, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_3

    .line 399
    :cond_4
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    const-string v4, "profile-level-id"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v4, "42e01f"

    if-nez v0, :cond_5

    move-object v0, v4

    :cond_5
    const/4 v8, -0x1

    .line 403
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    const v10, 0x5bab3b7e

    if-eq v9, v10, :cond_7

    const v4, 0x5f19c386

    if-eq v9, v4, :cond_6

    goto :goto_1

    :cond_6
    const-string v4, "640c1f"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const/4 v5, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v5, -0x1

    :goto_2
    if-eqz v5, :cond_9

    if-eq v5, v2, :cond_a

    .line 411
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown profile level id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const/16 v0, 0x8

    .line 405
    invoke-virtual {v3, v7, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v0, 0x100

    .line 406
    invoke-virtual {v3, v6, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 415
    :cond_a
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Format: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4, v4, v2}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 420
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_b

    .line 422
    :try_start_4
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    sget-object v3, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RECORDABLE_3:[I

    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl14(Lcom/netease/lava/webrtc/EglBase14$Context;[I)Lcom/netease/lava/webrtc/EglBase14;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/netease/lava/webrtc/EglBase14;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 424
    :catch_0
    :try_start_5
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    sget-object v3, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl14(Lcom/netease/lava/webrtc/EglBase14$Context;[I)Lcom/netease/lava/webrtc/EglBase14;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/netease/lava/webrtc/EglBase14;

    .line 426
    :goto_4
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 427
    iget-object v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/netease/lava/webrtc/EglBase14;

    invoke-interface {v3, v0}, Lcom/netease/lava/webrtc/EglBase14;->createSurface(Landroid/view/Surface;)V

    .line 428
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/netease/lava/webrtc/EglBase14;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase14;->makeCurrent()V

    .line 431
    :cond_b
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->start()V

    .line 432
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->callback:Lcom/netease/lava/webrtc/VideoEncoder$Callback;

    iget-boolean v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    invoke-interface {v0, v3}, Lcom/netease/lava/webrtc/VideoEncoder$Callback;->onUpdateEncoderFormat(Z)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 441
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecType;->VP8:Lcom/netease/lava/webrtc/VideoCodecType;

    const/16 v3, 0x25

    const/16 v4, 0x1e

    if-ne v0, v1, :cond_c

    const/16 v4, 0x1d

    const/16 v3, 0x5f

    goto :goto_5

    .line 444
    :cond_c
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne v0, v1, :cond_d

    goto :goto_5

    .line 447
    :cond_d
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecType;->H265:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne v0, v1, :cond_e

    const/16 v3, 0x24

    .line 452
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    invoke-interface {v0, v4, v3}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->init(II)V

    .line 454
    iput-boolean v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->running:Z

    .line 455
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 456
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->syncMode:Z

    if-nez v0, :cond_f

    .line 457
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 458
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 461
    :cond_f
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object v0

    :catch_1
    move-exception v0

    const-string v2, "initEncodeInternal failed"

    .line 434
    invoke-static {v1, v2, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 435
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->release()Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 436
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object v0

    .line 366
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot create media encoder "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object v0
.end method

.method private loopForDeliverEncodedImage()V
    .locals 1

    .line 804
    :goto_0
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->syncMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->deliverEncodedImage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .line 884
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "HardwareVideoEncoder"

    const-string v1, "Releasing MediaCodec on output thread"

    .line 885
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Media encoder stop failed"

    .line 889
    invoke-static {v0, v2, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 892
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Media encoder release failed"

    .line 894
    invoke-static {v0, v2, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 896
    iput-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    :goto_1
    const/4 v1, 0x1

    .line 898
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->removeCodecInstances(ZLjava/lang/String;)V

    const/4 v1, 0x0

    .line 899
    iput-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    const-string v1, "Release on output thread done"

    .line 900
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestKeyFrame(J)V
    .locals 3

    .line 774
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 780
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    const/4 v2, 0x0

    .line 781
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 782
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v1, v0}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->setParameters(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 787
    iput-wide p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    return-void

    :catch_0
    move-exception p1

    const-string p2, "HardwareVideoEncoder"

    const-string v0, "requestKeyFrame failed"

    .line 784
    invoke-static {p2, v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private resetCodec(IIZ)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 2

    .line 756
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetCodec, usSurfaceMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HardwareVideoEncoder"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->release()Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 759
    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    if-eq v0, v1, :cond_0

    return-object v0

    .line 762
    :cond_0
    iput p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->width:I

    .line 763
    iput p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->height:I

    .line 764
    iput-boolean p3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 765
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->initEncodeInternal()Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method private setBitrateAdjusterTypeForSomeModel(Ljava/lang/String;I)I
    .locals 2

    const-string v0, "OMX.MTK."

    .line 216
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "OMX.Exynos."

    .line 218
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 219
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "MX4 Pro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 221
    :cond_1
    sget-object p1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v0, "vivo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v0, "V1938CT"

    .line 222
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 224
    :cond_2
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p1, v0, :cond_4

    goto :goto_1

    :cond_3
    const-string v0, "OMX.IMG.TOPAZ."

    .line 229
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 230
    sget-object p1, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    const-string v0, "hi6250"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p2, 0x2

    goto :goto_1

    :cond_5
    const-string v0, "OMX.hisi."

    .line 235
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    const-string v0, "OMX.k3."

    .line 237
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    const-string v0, "OMX.amlogic."

    .line 239
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    const-string v0, "OMX.rk."

    .line 241
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_0

    :cond_9
    :goto_1
    return p2
.end method

.method public static setScreenCast(Z)V
    .locals 0

    .line 211
    sput-boolean p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->isScreenCast:Z

    return-void
.end method

.method private shouldForceKeyFrame(J)Z
    .locals 5

    .line 769
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 770
    iget-wide v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-wide v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->lastKeyFrameNs:J

    add-long/2addr v2, v0

    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateBitrate()Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 3

    .line 904
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 906
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v0

    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 908
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "video-bitrate"

    .line 911
    iget v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 912
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v1, v0}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->setParameters(Landroid/os/Bundle;)V

    .line 913
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "HardwareVideoEncoder"

    const-string v2, "updateBitrate failed"

    .line 915
    invoke-static {v1, v2, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 916
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object v0
.end method


# virtual methods
.method public synthetic createNativeVideoEncoder()J
    .locals 2

    invoke-static {p0}, Lcom/netease/lava/webrtc/VideoEncoder$-CC;->$default$createNativeVideoEncoder(Lcom/netease/lava/webrtc/VideoEncoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected deliverEncodedImage()Z
    .locals 9

    const-string v0, "HardwareVideoEncoder"

    .line 813
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v1, 0x0

    .line 815
    :try_start_0
    new-instance v2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 816
    iget-object v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    iget v4, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->dequeOutputTimeoutUs:I

    int-to-long v4, v4

    invoke-interface {v3, v2, v4, v5}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v3

    const/4 v4, 0x1

    if-gez v3, :cond_2

    const/4 v0, -0x3

    if-eq v3, v0, :cond_1

    const/4 v0, -0x2

    if-ne v3, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v4

    .line 830
    :cond_2
    iget-object v5, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v5}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v5

    aget-object v5, v5, v3

    .line 832
    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 833
    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 836
    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_3

    .line 837
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config frame generated. Offset: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ". Size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 839
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto/16 :goto_4

    .line 841
    :cond_3
    iget-object v6, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    iget v7, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-interface {v6, v7}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->reportEncodedFrame(I)V

    .line 842
    iget v6, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    iget-object v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    invoke-interface {v7}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v7

    if-eq v6, v7, :cond_4

    .line 843
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->updateBitrate()Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 846
    :cond_4
    iget v6, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/2addr v6, v4

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_6

    const-string v7, "Sync frame generated"

    .line 848
    invoke-static {v0, v7}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v6, :cond_8

    .line 852
    iget-object v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    sget-object v8, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    if-eq v7, v8, :cond_7

    iget-object v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    sget-object v8, Lcom/netease/lava/webrtc/VideoCodecType;->H265:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne v7, v8, :cond_8

    .line 853
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prepending config frame of size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    .line 854
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to output buffer with offset "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", size "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 853
    invoke-static {v0, v7}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-object v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    add-int/2addr v2, v7

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 858
    iget-object v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 859
    iget-object v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->configBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 860
    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 861
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_2

    .line 863
    :cond_8
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_2
    if-eqz v6, :cond_9

    .line 866
    sget-object v5, Lcom/netease/lava/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    goto :goto_3

    :cond_9
    sget-object v5, Lcom/netease/lava/webrtc/EncodedImage$FrameType;->VideoFrameDelta:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    .line 870
    :goto_3
    iget-object v6, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v6}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/netease/lava/webrtc/EncodedImage$Builder;

    .line 871
    invoke-virtual {v6, v2}, Lcom/netease/lava/webrtc/EncodedImage$Builder;->setBuffer(Ljava/nio/ByteBuffer;)Lcom/netease/lava/webrtc/EncodedImage$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/netease/lava/webrtc/EncodedImage$Builder;->setFrameType(Lcom/netease/lava/webrtc/EncodedImage$FrameType;)Lcom/netease/lava/webrtc/EncodedImage$Builder;

    move-result-object v2

    iget v5, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    int-to-long v7, v5

    invoke-virtual {v2, v7, v8}, Lcom/netease/lava/webrtc/EncodedImage$Builder;->setTargetEncBps(J)Lcom/netease/lava/webrtc/EncodedImage$Builder;

    .line 873
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->callback:Lcom/netease/lava/webrtc/VideoEncoder$Callback;

    invoke-virtual {v6}, Lcom/netease/lava/webrtc/EncodedImage$Builder;->createEncodedImage()Lcom/netease/lava/webrtc/EncodedImage;

    move-result-object v5

    new-instance v6, Lcom/netease/lava/webrtc/VideoEncoder$CodecSpecificInfo;

    invoke-direct {v6}, Lcom/netease/lava/webrtc/VideoEncoder$CodecSpecificInfo;-><init>()V

    invoke-interface {v2, v5, v6}, Lcom/netease/lava/webrtc/VideoEncoder$Callback;->onEncodedFrame(Lcom/netease/lava/webrtc/EncodedImage;Lcom/netease/lava/webrtc/VideoEncoder$CodecSpecificInfo;)V

    .line 875
    :goto_4
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v2, v3, v1}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v2

    const-string v3, "deliverOutput failed"

    .line 878
    invoke-static {v0, v3, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public encode(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/VideoEncoder$EncodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 12

    .line 537
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 539
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    const-string v1, "HardwareVideoEncoder"

    if-nez v0, :cond_0

    const-string p1, "codec null, UNINITIALIZED"

    .line 540
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->UNINITIALIZED:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 544
    :cond_0
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v0

    .line 545
    instance-of v2, v0, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    .line 546
    instance-of v3, v0, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_2

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 550
    :goto_1
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v3

    .line 551
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v6

    invoke-interface {v6}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v6

    .line 552
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->canUseSurface()Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 554
    :goto_2
    iget v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->width:I

    if-ne v3, v7, :cond_4

    iget v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->height:I

    if-ne v6, v7, :cond_4

    iget-boolean v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eq v2, v7, :cond_7

    .line 556
    :cond_4
    iget-object v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v8, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->fallbackResolution:I

    invoke-static {v7, v3, v6, v8}, Lcom/netease/lava/webrtc/MediaCodecUtils;->checkSize(Landroid/media/MediaCodecInfo$CodecCapabilities;III)Z

    move-result v7

    const-string v8, " FALLBACK_SOFTWARE"

    const-string v9, " x "

    const-string v10, " resetCodec: "

    if-nez v7, :cond_5

    .line 558
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isSizeSupport: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 563
    :cond_5
    iget v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->fallbackResolution:I

    if-lez v7, :cond_6

    mul-int v11, v3, v6

    if-ge v11, v7, :cond_6

    .line 564
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " fallbackResolution "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->fallbackResolution:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " SDK_INT: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 569
    :cond_6
    invoke-direct {p0, v3, v6, v2}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->resetCodec(IIZ)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object v2

    .line 570
    sget-object v3, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    if-eq v2, v3, :cond_7

    .line 571
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "resetCodec faile, status: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 576
    :cond_7
    iget-boolean v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->syncMode:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 578
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->loopForDeliverEncodedImage()V

    .line 581
    :cond_8
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_9

    const-string p1, "Dropped frame, encoder queue full"

    .line 583
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 588
    :cond_9
    iget-object p2, p2, Lcom/netease/lava/webrtc/VideoEncoder$EncodeInfo;->frameTypes:[Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    array-length v2, p2

    const/4 v6, 0x0

    :goto_3
    if-ge v4, v2, :cond_b

    aget-object v7, p2, v4

    .line 589
    sget-object v8, Lcom/netease/lava/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    if-ne v7, v8, :cond_a

    const/4 v6, 0x1

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_b
    if-nez v6, :cond_c

    .line 594
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->shouldForceKeyFrame(J)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 595
    :cond_c
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->requestKeyFrame(J)V

    .line 600
    :cond_d
    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result p2

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    mul-int p2, p2, v2

    mul-int/lit8 p2, p2, 0x3

    div-int/2addr p2, v3

    .line 601
    invoke-static {}, Lcom/netease/lava/webrtc/EncodedImage;->builder()Lcom/netease/lava/webrtc/EncodedImage$Builder;

    move-result-object v2

    .line 602
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/netease/lava/webrtc/EncodedImage$Builder;->setCaptureTimeNs(J)Lcom/netease/lava/webrtc/EncodedImage$Builder;

    move-result-object v2

    .line 603
    invoke-virtual {v2, v5}, Lcom/netease/lava/webrtc/EncodedImage$Builder;->setCompleteFrame(Z)Lcom/netease/lava/webrtc/EncodedImage$Builder;

    move-result-object v2

    .line 604
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netease/lava/webrtc/EncodedImage$Builder;->setEncodedWidth(I)Lcom/netease/lava/webrtc/EncodedImage$Builder;

    move-result-object v2

    .line 605
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netease/lava/webrtc/EncodedImage$Builder;->setEncodedHeight(I)Lcom/netease/lava/webrtc/EncodedImage$Builder;

    move-result-object v2

    .line 606
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netease/lava/webrtc/EncodedImage$Builder;->setRotation(I)Lcom/netease/lava/webrtc/EncodedImage$Builder;

    move-result-object v2

    .line 608
    :try_start_0
    iget-object v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    iget-boolean v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    if-eqz v2, :cond_e

    .line 616
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeTextureBuffer(Lcom/netease/lava/webrtc/VideoFrame;)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    goto :goto_4

    .line 618
    :cond_e
    invoke-direct {p0, p1, v0, p2}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeByteBuffer(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/VideoFrame$Buffer;I)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    .line 622
    :goto_4
    sget-object p2, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    if-eq p1, p2, :cond_f

    .line 624
    iget-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p2}, Ljava/util/concurrent/BlockingDeque;->pollLast()Ljava/lang/Object;

    .line 625
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "encode error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", outputBuilders.size(): "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_f
    iget-boolean p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->syncMode:Z

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p2}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result p2

    if-lez p2, :cond_10

    .line 631
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->loopForDeliverEncodedImage()V

    :cond_10
    return-object p1

    :catch_0
    move-exception p1

    .line 610
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 611
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method protected fillInputBuffer(Ljava/nio/ByteBuffer;Lcom/netease/lava/webrtc/VideoFrame$Buffer;)V
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->yuvFormat:Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;

    invoke-virtual {v0, p1, p2}, Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;->fillBuffer(Ljava/nio/ByteBuffer;Lcom/netease/lava/webrtc/VideoFrame$Buffer;)V

    return-void
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 742
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    return-object v0
.end method

.method public getScalingSettings()Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;
    .locals 3

    .line 721
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 722
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    if-eqz v0, :cond_2

    .line 723
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecType;->VP8:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne v0, v1, :cond_0

    .line 724
    new-instance v0, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;

    const/16 v1, 0x1d

    const/16 v2, 0x5f

    invoke-direct {v0, v1, v2}, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;-><init>(II)V

    return-object v0

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecType;->H264:Lcom/netease/lava/webrtc/VideoCodecType;

    const/16 v2, 0x1e

    if-ne v0, v1, :cond_1

    .line 726
    new-instance v0, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;

    const/16 v1, 0x25

    invoke-direct {v0, v2, v1}, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;-><init>(II)V

    return-object v0

    .line 727
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecType;->H265:Lcom/netease/lava/webrtc/VideoCodecType;

    if-ne v0, v1, :cond_2

    .line 728
    new-instance v0, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;

    const/16 v1, 0x24

    invoke-direct {v0, v2, v1}, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;-><init>(II)V

    return-object v0

    .line 731
    :cond_2
    sget-object v0, Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;->OFF:Lcom/netease/lava/webrtc/VideoEncoder$ScalingSettings;

    return-object v0
.end method

.method public initEncode(Lcom/netease/lava/webrtc/VideoEncoder$Settings;Lcom/netease/lava/webrtc/VideoEncoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 12

    .line 293
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 295
    iput-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->callback:Lcom/netease/lava/webrtc/VideoEncoder$Callback;

    .line 296
    iget-boolean p2, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->automaticResizeOn:Z

    iput-boolean p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->automaticResizeOn:Z

    .line 297
    iget p2, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->width:I

    iput p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->width:I

    .line 298
    iget p2, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->height:I

    iput p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->height:I

    .line 299
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->canUseSurface()Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    .line 300
    iget-boolean p2, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->syncMode:Z

    iput-boolean p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->syncMode:Z

    .line 301
    iget-boolean p2, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->syncMode:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const p2, 0x186a0

    :goto_0
    iput p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->dequeOutputTimeoutUs:I

    .line 303
    iget-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->width:I

    iget v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->height:I

    iget v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->fallbackResolution:I

    invoke-static {p2, v0, v1, v2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->checkSize(Landroid/media/MediaCodecInfo$CodecCapabilities;III)Z

    move-result p2

    const-string v0, " FALLBACK_SOFTWARE"

    const-string v1, " isSizeSupport: "

    const-string v2, " initEncode: "

    const-string v3, " x "

    const-string v4, "HardwareVideoEncoder"

    if-nez p2, :cond_1

    .line 305
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->width:I

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->height:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 310
    :cond_1
    iget v5, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->fallbackResolution:I

    if-lez v5, :cond_2

    iget v5, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->width:I

    iget v6, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->height:I

    mul-int v5, v5, v6

    iget v6, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->fallbackResolution:I

    if-ge v5, v6, :cond_2

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " fallbackResolution "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->fallbackResolution:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " SDK_INT: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 317
    :cond_2
    iget-object v6, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    iget-object v7, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    iget v8, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->bitrateAdjusterType:I

    iget v9, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->minAdjustedBitratePct:F

    iget v10, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->maxAdjustedBitratePct:F

    iget-boolean v11, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->isScreenShare:Z

    move-object v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->createBitrateAdjuster(Lcom/netease/lava/webrtc/VideoCodecType;Ljava/lang/String;IFFZ)Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    .line 319
    iget v0, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->startBitrate:I

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->maxFramerate:I

    if-eqz v0, :cond_5

    .line 320
    iget v0, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->maxFramerate:I

    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->targetFPS:I

    .line 321
    iget v0, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->startBitrate:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->targetQosBitrateBps:I

    .line 323
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->targetFPS:I

    invoke-static {v0, v2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->checkFrameRate(Landroid/media/MediaCodecInfo$CodecCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEncode: target framerate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->targetFPS:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "is not supported by the encoder."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->targetQosBitrateBps:I

    invoke-static {v0, v2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->checkBitrate(Landroid/media/MediaCodecInfo$CodecCapabilities;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEncode: target bps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->targetQosBitrateBps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is not within the supported bitrate range."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_4
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    iget v2, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->startBitrate:I

    mul-int/lit16 v2, v2, 0x3e8

    iget v5, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->maxFramerate:I

    invoke-interface {v0, v2, v5}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->setTargets(II)V

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->getAdjustedBitrateBps()I

    move-result v0

    iput v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->adjustedBitrate:I

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initEncode, codecName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " codecType: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " surfaceColorFormat: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->surfaceColorFormat:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " yuvColorFormat: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->yuvColorFormat:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " params: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->params:Ljava/util/Map;

    .line 337
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " keyFrameIntervalSec: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->keyFrameIntervalSec:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " forcedKeyFrameNs: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->forcedKeyFrameNs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " sharedContext: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase14$Context;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->width:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->height:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ". @ "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->startBitrate:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "kbps. Fps: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->maxFramerate:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " Use surface mode: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->useSurfaceMode:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " maxSupportedInstances: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 341
    invoke-static {p2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getMaxSupportedInstances(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " currentCodecInstances: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codecName:Ljava/lang/String;

    .line 342
    invoke-static {p2, v1}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecInstances(ZLjava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " syncMode: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p1, Lcom/netease/lava/webrtc/VideoEncoder$Settings;->syncMode:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {v4, p1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->initEncodeInternal()Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public isDimensityCpu()Z
    .locals 1

    .line 752
    invoke-static {}, Lcom/netease/lava/webrtc/device/AndroidDeviceInfo;->isHardWareVendorDimensity()Z

    move-result v0

    return v0
.end method

.method public synthetic isHardwareEncoder()Z
    .locals 1

    invoke-static {p0}, Lcom/netease/lava/webrtc/VideoEncoder$-CC;->$default$isHardwareEncoder(Lcom/netease/lava/webrtc/VideoEncoder;)Z

    move-result v0

    return v0
.end method

.method public isSupportHardwareTextureEncoder()Z
    .locals 1

    .line 747
    invoke-direct {p0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->canUseSurface()Z

    move-result v0

    return v0
.end method

.method public release()Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 6

    const-string v0, "HardwareVideoEncoder"

    const-string v1, "release start."

    .line 466
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 469
    iget-boolean v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->syncMode:Z

    const-wide/16 v2, 0x1388

    if-eqz v1, :cond_3

    .line 472
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 475
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v1, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 476
    new-instance v4, Lcom/netease/lava/webrtc/HardwareVideoEncoder$1;

    invoke-direct {v4, p0, v1}, Lcom/netease/lava/webrtc/HardwareVideoEncoder$1;-><init>(Lcom/netease/lava/webrtc/HardwareVideoEncoder;Ljava/util/concurrent/CountDownLatch;)V

    .line 483
    new-instance v5, Ljava/lang/Thread;

    invoke-direct {v5, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 484
    invoke-static {v1, v2, v3}, Lcom/netease/lava/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sync releaseCodecOnOutputThread timeout"

    .line 485
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->TIMEOUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 487
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v1, :cond_1

    .line 488
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    const-string v2, "sync releaseCodecOnOutputThread exception"

    invoke-static {v0, v2, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 489
    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 491
    :cond_1
    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    goto :goto_0

    :cond_2
    const-string v1, "sync mode release, codec be null!!!"

    .line 494
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 499
    iput-boolean v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->running:Z

    .line 500
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    invoke-static {v1, v2, v3}, Lcom/netease/lava/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Media encoder release timeout"

    .line 501
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->TIMEOUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 503
    :cond_4
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v1, :cond_5

    .line 505
    iget-object v1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->shutdownException:Ljava/lang/Exception;

    const-string v2, "Media encoder release exception"

    invoke-static {v0, v2, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 506
    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    goto :goto_0

    .line 508
    :cond_5
    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 512
    :goto_0
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureDrawer:Lcom/netease/lava/webrtc/GlRectDrawer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlRectDrawer;->release()V

    .line 513
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->videoFrameDrawer:Lcom/netease/lava/webrtc/VideoFrameDrawer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->release()V

    .line 514
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/netease/lava/webrtc/EglBase14;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 515
    invoke-interface {v2}, Lcom/netease/lava/webrtc/EglBase14;->release()V

    .line 516
    iput-object v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureEglBase:Lcom/netease/lava/webrtc/EglBase14;

    .line 518
    :cond_6
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    if-eqz v2, :cond_7

    .line 519
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 520
    iput-object v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->textureInputSurface:Landroid/view/Surface;

    .line 522
    :cond_7
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputBuilders:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 524
    iput-object v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    .line 525
    iput-object v3, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->outputThread:Ljava/lang/Thread;

    .line 527
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    invoke-interface {v2}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->release()V

    .line 530
    iget-object v2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    const-string v2, "release end."

    .line 531
    invoke-static {v0, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public reportQP(I)V
    .locals 1

    .line 736
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->reportQP(I)V

    return-void
.end method

.method public setRateAllocation(Lcom/netease/lava/webrtc/VideoEncoder$BitrateAllocation;I)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->encodeThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/16 v0, 0x1e

    .line 705
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoEncoder$BitrateAllocation;->getSum()I

    move-result p1

    if-gez p1, :cond_0

    .line 708
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 712
    :cond_0
    iget p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->targetQosBitrateBps:I

    if-eq p2, p1, :cond_1

    .line 713
    iget-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->bitrateAdjuster:Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;

    iget v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->targetFPS:I

    invoke-interface {p2, p1, v0}, Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;->setTargets(II)V

    .line 714
    iput p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->targetQosBitrateBps:I

    .line 716
    :cond_1
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1
.end method
