.class public Lcom/netease/lava/webrtc/AndroidVideoDecoder;
.super Ljava/lang/Object;
.source "AndroidVideoDecoder.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoDecoder;
.implements Lcom/netease/lava/webrtc/VideoSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;,
        Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;,
        Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;
    }
.end annotation


# static fields
.field private static final DEQUEUE_INPUT_TIMEOUT_US:I = 0x7a120

.field private static final DEQUEUE_OUTPUT_BUFFER_TIMEOUT_US:I = 0x249f0

.field private static final MEDIA_CODEC_RELEASE_TIMEOUT_MS:I = 0x1388

.field private static final MEDIA_FORMAT_KEY_CROP_BOTTOM:Ljava/lang/String; = "crop-bottom"

.field private static final MEDIA_FORMAT_KEY_CROP_LEFT:Ljava/lang/String; = "crop-left"

.field private static final MEDIA_FORMAT_KEY_CROP_RIGHT:Ljava/lang/String; = "crop-right"

.field private static final MEDIA_FORMAT_KEY_CROP_TOP:Ljava/lang/String; = "crop-top"

.field private static final MEDIA_FORMAT_KEY_SLICE_HEIGHT:Ljava/lang/String; = "slice-height"

.field private static final MEDIA_FORMAT_KEY_STRIDE:Ljava/lang/String; = "stride"

.field private static final TAG:Ljava/lang/String; = "AndroidVideoDecoder"

.field private static final TEXTURE_DECODED_WAITING_RENDER_THRESHOLD:I = 0xf


# instance fields
.field private callback:Lcom/netease/lava/webrtc/VideoDecoder$Callback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final codecName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile codecReleased:Z

.field private final codecType:Lcom/netease/lava/webrtc/VideoCodecType;

.field private colorFormat:I

.field private compatInfo:Lcom/netease/lava/webrtc/CompatVideoCodecInfo;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private decoderThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

.field private dequeOutputTimeoutUs:I

.field private final dimensionLock:Ljava/lang/Object;

.field private dropedFrameCount:I

.field private fallBackChecker:Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private fallbackResolution:I

.field private final frameInfos:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private hasDecodedFirstFrame:Z

.field private height:I

.field private initDropFrameCount:I

.field private keyFrameRequired:Z

.field private final mediaCodecWrapperFactory:Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;

.field private outputErrorCnt:I

.field private outputThread:Ljava/lang/Thread;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

.field private volatile outputThreadError:Z

.field private volatile reInit:Z

.field private renderedTextureMetadata:Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final renderedTextureMetadataLock:Ljava/lang/Object;

.field private volatile running:Z

.field private final sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile shutdownException:Ljava/lang/Exception;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private sliceHeight:I

.field private stride:I

.field private surface:Landroid/view/Surface;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private syncMode:Z

.field private textureDelayTimeMs:I

.field private textureDropCount:I

.field private width:I


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;Lcom/netease/lava/webrtc/VideoCodecType;Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/CompatVideoCodecInfo;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 1
    .param p3    # Lcom/netease/lava/webrtc/EglBase$Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 65
    iput v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDelayTimeMs:I

    const/4 v0, -0x1

    .line 66
    iput v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDropCount:I

    .line 103
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    .line 154
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    .line 167
    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->mediaCodecWrapperFactory:Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;

    .line 168
    invoke-virtual {p4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getCodecName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 169
    iput-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    .line 170
    invoke-virtual {p4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getDecoderColorFormat()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    .line 171
    iput-object p3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    .line 172
    invoke-virtual {p4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getInitDropFrameCount()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->initDropFrameCount:I

    .line 173
    new-instance p1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    .line 174
    invoke-virtual {p4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getTextureDelayTimeMs()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDelayTimeMs:I

    .line 175
    invoke-virtual {p4}, Lcom/netease/lava/webrtc/CompatVideoCodecInfo;->getDecFallbackResolution()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallbackResolution:I

    .line 176
    iput-object p5, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/webrtc/AndroidVideoDecoder;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->releaseCodecOnOutputThread()V

    return-void
.end method

.method static synthetic access$102(Lcom/netease/lava/webrtc/AndroidVideoDecoder;Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;)Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netease/lava/webrtc/AndroidVideoDecoder;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->running:Z

    return p0
.end method

.method private copyI420Buffer(Ljava/nio/ByteBuffer;IIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 18

    move-object/from16 v0, p1

    move/from16 v3, p2

    move/from16 v6, p4

    move/from16 v7, p5

    .line 770
    rem-int/lit8 v1, v3, 0x2

    if-nez v1, :cond_3

    add-int/lit8 v1, v6, 0x1

    .line 780
    div-int/lit8 v9, v1, 0x2

    .line 781
    rem-int/lit8 v10, p3, 0x2

    if-nez v10, :cond_0

    add-int/lit8 v1, v7, 0x1

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    div-int/lit8 v1, v7, 0x2

    :goto_0
    move v11, v1

    .line 783
    div-int/lit8 v12, v3, 0x2

    mul-int v1, v3, v7

    const/4 v2, 0x0

    add-int/2addr v1, v2

    mul-int v4, v3, p3

    add-int/lit8 v13, v4, 0x0

    mul-int v4, v12, v11

    add-int v8, v13, v4

    mul-int v5, v12, p3

    .line 789
    div-int/lit8 v5, v5, 0x2

    add-int v14, v13, v5

    add-int v15, v14, v4

    move-object/from16 v5, p0

    .line 792
    invoke-virtual {v5, v6, v7}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->allocateI420Buffer(II)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v16

    .line 794
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 795
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 797
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v17

    move-object/from16 v1, p0

    move/from16 v3, p2

    move/from16 v5, v17

    move/from16 v6, p4

    move/from16 v7, p5

    .line 796
    invoke-virtual/range {v1 .. v7}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    .line 799
    invoke-virtual {v0, v8}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 800
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 801
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v6

    move-object/from16 v2, p0

    move v4, v12

    move v7, v9

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    const/4 v1, 0x1

    if-ne v10, v1, :cond_1

    add-int/lit8 v2, v11, -0x1

    mul-int v2, v2, v12

    add-int/2addr v13, v2

    .line 804
    invoke-virtual {v0, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 806
    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 807
    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    mul-int v3, v3, v11

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 808
    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 811
    :cond_1
    invoke-virtual {v0, v15}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 812
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 813
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v6

    move-object/from16 v2, p0

    move v4, v12

    move v7, v9

    move v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    if-ne v10, v1, :cond_2

    add-int/lit8 v1, v11, -0x1

    mul-int v12, v12, v1

    add-int/2addr v14, v12

    .line 816
    invoke-virtual {v0, v14}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 818
    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 819
    invoke-interface/range {v16 .. v16}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v2

    mul-int v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 820
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :cond_2
    return-object v16

    .line 771
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stride is not divisible by two: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private copyNV12ToI420Buffer(Ljava/nio/ByteBuffer;IIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 8

    .line 764
    new-instance v7, Lcom/netease/lava/webrtc/NV12Buffer;

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p4

    move v2, p5

    move v3, p2

    move v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/netease/lava/webrtc/NV12Buffer;-><init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V

    .line 765
    invoke-virtual {v7}, Lcom/netease/lava/webrtc/NV12Buffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object p1

    return-object p1
.end method

.method private createOutputThread()Ljava/lang/Thread;
    .locals 2

    .line 543
    new-instance v0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$2;

    const-string v1, "AndroidVideoDecoder.outputThread"

    invoke-direct {v0, p0, v1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$2;-><init>(Lcom/netease/lava/webrtc/AndroidVideoDecoder;Ljava/lang/String;)V

    return-object v0
.end method

.method private deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 8

    .line 708
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 709
    :try_start_0
    iget v5, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->width:I

    .line 710
    iget v6, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->height:I

    .line 711
    iget v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->stride:I

    .line 712
    iget v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 713
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v2, v5, v6

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    const-string p1, "AndroidVideoDecoder"

    .line 718
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Insufficient output buffer size: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 722
    :cond_0
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int v2, v1, v6

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    if-ne v4, v6, :cond_1

    if-le v1, v5, :cond_1

    .line 727
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v2, v6, 0x3

    div-int/2addr v0, v2

    const-string v2, "AndroidVideoDecoder"

    .line 728
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "codec report an incorrect stride: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Correct it here to: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v1

    .line 731
    :goto_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    aget-object v0, v0, p1

    .line 732
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 733
    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v2, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 734
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 737
    iget v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    move-object v1, p0

    .line 738
    invoke-direct/range {v1 .. v6}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->copyI420Buffer(Ljava/nio/ByteBuffer;IIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v0

    goto :goto_1

    :cond_2
    move-object v1, p0

    .line 741
    invoke-direct/range {v1 .. v6}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->copyNV12ToI420Buffer(Ljava/nio/ByteBuffer;IIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v0

    .line 743
    :goto_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 745
    iget-wide p1, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    const-wide/16 v1, 0x3e8

    mul-long p1, p1, v1

    .line 747
    new-instance v1, Lcom/netease/lava/webrtc/VideoFrame;

    invoke-direct {v1, v0, p3, p1, p2}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 751
    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->callback:Lcom/netease/lava/webrtc/VideoDecoder$Callback;

    const/4 p2, 0x0

    invoke-interface {p1, v1, p4, p2}, Lcom/netease/lava/webrtc/VideoDecoder$Callback;->onDecodedFrame(Lcom/netease/lava/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 754
    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallBackChecker:Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->reportOutput()V

    goto :goto_2

    .line 756
    :cond_3
    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallBackChecker:Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->isFallBack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadError:Z

    .line 758
    :goto_2
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    return-void

    :catchall_0
    move-exception p1

    .line 713
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V
    .locals 9

    .line 630
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_0
    iget v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->width:I

    .line 632
    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->height:I

    .line 633
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 635
    iget-object v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    monitor-enter v3

    .line 637
    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    .line 639
    :try_start_2
    iget v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDropCount:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDropCount:I

    const/4 v6, 0x3

    if-ge v0, v6, :cond_1

    .line 642
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v0, p1, v5}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .line 648
    :cond_1
    :try_start_4
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    iget v6, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDelayTimeMs:I

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V

    .line 649
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    if-eqz v0, :cond_0

    .line 650
    iget v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDropCount:I

    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_2

    const-string v0, "AndroidVideoDecoder"

    .line 651
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Meta data wait timed out,dropped 5 texture frames, current PTS: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    :cond_2
    iget v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDropCount:I

    const/16 v6, 0xf

    if-le v0, v6, :cond_3

    .line 655
    iput-boolean v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadError:Z

    .line 657
    :cond_3
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v0, p1, v5}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 658
    :try_start_5
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    const-string v4, "AndroidVideoDecoder"

    .line 661
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "should not happen,deliverTextureFrame Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 665
    :cond_4
    iput v5, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDropCount:I

    .line 666
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 667
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0, p3}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->setFrameRotation(I)V

    .line 668
    new-instance p3, Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-direct {p3, v0, v1, p4}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;-><init>(JLjava/lang/Integer;)V

    iput-object p3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 669
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {p2, p1, v4}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->releaseOutputBuffer(IZ)V

    .line 670
    monitor-exit v3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 633
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method private initDecodeInternal(II)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 5

    .line 224
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 226
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    const-string v1, "AndroidVideoDecoder"

    if-eqz v0, :cond_0

    const-string p1, "initDecodeInternal called while the codec is already running"

    .line 227
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 231
    :cond_0
    iget v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported color format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->checkCodecInstances(Landroid/media/MediaCodecInfo$CodecCapabilities;ZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " initDecodeInternal:  currentCodecInstances: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 239
    invoke-static {v3, v4}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecInstances(ZLjava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " maxSupportedInstances: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 240
    invoke-static {v4}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getMaxSupportedInstances(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isWithinInstancesRange : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    :cond_2
    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->width:I

    .line 249
    iput p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->height:I

    .line 251
    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->stride:I

    .line 252
    iput p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 253
    iput-boolean v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    .line 257
    :try_start_0
    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->mediaCodecWrapperFactory:Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;

    iget-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    invoke-interface {v2, v4}, Lcom/netease/lava/webrtc/MediaCodecWrapperFactory;->createByCodecName(Ljava/lang/String;)Lcom/netease/lava/webrtc/MediaCodecWrapper;

    move-result-object v2

    iput-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :try_start_1
    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->addCodecInstances(ZLjava/lang/String;)V

    .line 264
    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/VideoCodecType;->mimeType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1, p2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    .line 265
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    if-nez p2, :cond_3

    const-string p2, "color-format"

    .line 266
    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-virtual {p1, p2, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 273
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Format: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    const/4 v4, 0x0

    invoke-interface {p2, p1, v2, v4, v3}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 275
    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    new-instance p1, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;

    invoke-direct {p1, p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;-><init>(Lcom/netease/lava/webrtc/AndroidVideoDecoder;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallBackChecker:Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;

    .line 284
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->running:Z

    .line 285
    iput-boolean v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecReleased:Z

    .line 286
    iput-boolean v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->reInit:Z

    .line 287
    iput-boolean v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadError:Z

    .line 288
    iget-boolean p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->syncMode:Z

    if-nez p1, :cond_4

    .line 289
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->createOutputThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 290
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 292
    :cond_4
    new-instance p1, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {p1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    .line 294
    :goto_0
    iput v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->dropedFrameCount:I

    const-string p1, "initDecodeInternal done"

    .line 295
    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "initDecode failed"

    .line 277
    invoke-static {v1, p2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 278
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->release()Lcom/netease/lava/webrtc/VideoCodecStatus;

    .line 279
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 259
    :catch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot create media decoder "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method private isSupportedColorFormat(I)Z
    .locals 5

    .line 921
    sget-object v0, Lcom/netease/lava/webrtc/MediaCodecUtils;->DECODER_COLOR_FORMATS:[I

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    if-ne v4, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private loopForDeliverDecodedFrame()V
    .locals 1

    .line 557
    :goto_0
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->syncMode:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->deliverDecodedFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private reformat(Landroid/media/MediaFormat;)V
    .locals 5

    .line 827
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "AndroidVideoDecoder"

    .line 828
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decoder format changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "crop-left"

    .line 831
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-right"

    .line 832
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-bottom"

    .line 833
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-top"

    .line 834
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "crop-right"

    .line 835
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v1, "crop-left"

    .line 836
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "crop-bottom"

    .line 837
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const-string v2, "crop-top"

    .line 838
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_0
    const-string v0, "width"

    .line 840
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    .line 841
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 845
    :goto_0
    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v2

    .line 846
    :try_start_0
    iget v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->width:I

    if-ne v0, v3, :cond_1

    iget v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->height:I

    if-eq v1, v3, :cond_4

    .line 847
    :cond_1
    iget-boolean v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    if-eqz v3, :cond_2

    .line 848
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected size change. Configured "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". New "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    .line 851
    monitor-exit v2

    return-void

    :cond_2
    if-lez v0, :cond_8

    if-gtz v1, :cond_3

    goto/16 :goto_1

    .line 857
    :cond_3
    iput v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->width:I

    .line 858
    iput v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->height:I

    .line 860
    :cond_4
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 864
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    if-nez v0, :cond_5

    const-string v0, "color-format"

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "color-format"

    .line 865
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    const-string v0, "AndroidVideoDecoder"

    .line 866
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Color: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    iget v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->isSupportedColorFormat(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 868
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported color format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    return-void

    .line 874
    :cond_5
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    const-string v1, "stride"

    .line 875
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "stride"

    .line 876
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->stride:I

    :cond_6
    const-string v1, "slice-height"

    .line 878
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "slice-height"

    .line 879
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sliceHeight:I

    :cond_7
    const-string p1, "AndroidVideoDecoder"

    .line 881
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame stride and slice height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->stride:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sliceHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->width:I

    iget v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->stride:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->stride:I

    .line 883
    iget p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->height:I

    iget v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sliceHeight:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sliceHeight:I

    .line 884
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    :goto_1
    :try_start_2
    const-string p1, "AndroidVideoDecoder"

    .line 853
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected format dimensions. Configured "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ". New "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "*"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Skip it"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    monitor-exit v2

    return-void

    :catchall_1
    move-exception p1

    .line 860
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method

.method private reinitDecode(II)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "AndroidVideoDecoder"

    const-string v1, "reinitDecode"

    .line 531
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->releaseInternal()Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object v1

    .line 533
    sget-object v2, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    if-eq v1, v2, :cond_0

    return-object v1

    .line 537
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->initDecodeInternal(II)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1

    const-string p2, "reinitDecode done"

    .line 538
    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private releaseCodecOnOutputThread()V
    .locals 3

    .line 888
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const-string v0, "AndroidVideoDecoder"

    const-string v1, "Releasing MediaCodec on output thread"

    .line 889
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Media decoder stop failed"

    .line 893
    invoke-static {v0, v2, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v1, "Releasing MediaCodec on output thread, mediacodec stopped, releasing."

    .line 895
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    :try_start_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v1}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Media decoder release failed"

    .line 899
    invoke-static {v0, v2, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 901
    iput-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 903
    :goto_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lcom/netease/lava/webrtc/MediaCodecUtils;->removeCodecInstances(ZLjava/lang/String;)V

    const/4 v1, 0x1

    .line 904
    iput-boolean v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecReleased:Z

    .line 905
    iput-boolean v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->reInit:Z

    const-string v1, "Release on output thread done"

    .line 906
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private releaseInternal()Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 7

    const-string v0, "AndroidVideoDecoder"

    const-string v1, "releaseInternal"

    .line 463
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-boolean v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->running:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecReleased:Z

    if-eqz v1, :cond_0

    const-string v1, "release: Decoder is not running."

    .line 465
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object v0

    .line 468
    :cond_0
    iget-boolean v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->syncMode:Z

    const-wide/16 v2, 0x1388

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    if-eqz v1, :cond_2

    .line 473
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    .line 474
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v1, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 475
    new-instance v5, Lcom/netease/lava/webrtc/AndroidVideoDecoder$1;

    invoke-direct {v5, p0, v1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$1;-><init>(Lcom/netease/lava/webrtc/AndroidVideoDecoder;Ljava/util/concurrent/CountDownLatch;)V

    .line 482
    new-instance v6, Ljava/lang/Thread;

    invoke-direct {v6, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 484
    invoke-static {v1, v2, v3}, Lcom/netease/lava/webrtc/ThreadUtils;->awaitUninterruptibly(Ljava/util/concurrent/CountDownLatch;J)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "sync releaseCodecOnOutputThread timeout"

    .line 485
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 486
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->TIMEOUT:Lcom/netease/lava/webrtc/VideoCodecStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 498
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    .line 499
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    return-object v0

    .line 489
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v1, :cond_2

    const-string v1, "sync releaseCodecOnOutputThread error"

    .line 490
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 491
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 492
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 498
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    .line 499
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    return-object v0

    .line 498
    :cond_2
    :goto_0
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    .line 499
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 496
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 498
    :goto_1
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    .line 499
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 500
    throw v0

    :cond_3
    const/4 v1, 0x0

    .line 504
    :try_start_3
    iput-boolean v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->running:Z

    .line 505
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    invoke-static {v1, v2, v3}, Lcom/netease/lava/webrtc/ThreadUtils;->joinUninterruptibly(Ljava/lang/Thread;J)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "Media decoder release timeout"

    .line 507
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 508
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->TIMEOUT:Lcom/netease/lava/webrtc/VideoCodecStatus;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 520
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    .line 521
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    return-object v0

    .line 510
    :cond_4
    :try_start_4
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    if-eqz v1, :cond_5

    const-string v1, "Media decoder release error"

    .line 513
    new-instance v2, Ljava/lang/RuntimeException;

    iget-object v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0, v1, v2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 514
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    .line 515
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 520
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    .line 521
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v1

    .line 518
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 520
    :cond_5
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    .line 521
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    :goto_2
    const-string v1, "releaseInternal done"

    .line 525
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget-object v0, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object v0

    .line 520
    :goto_3
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    .line 521
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThread:Ljava/lang/Thread;

    .line 522
    throw v0
.end method

.method private stopOnOutputThread(Ljava/lang/Exception;)V
    .locals 1

    .line 910
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v0, 0x0

    .line 911
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->running:Z

    .line 912
    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->shutdownException:Ljava/lang/Exception;

    const-string p1, "AndroidVideoDecoder"

    const-string v0, "stopOnOutputThread, running = false"

    .line 913
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->syncMode:Z

    if-eqz v0, :cond_0

    .line 915
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->releaseCodecOnOutputThread()V

    const-string v0, "stopOnOutputThread syncMode, releaseCodecOnOutputThread"

    .line 916
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected allocateI420Buffer(II)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 942
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/JavaI420Buffer;->allocate(II)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object p1

    return-object p1
.end method

.method protected copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
    .locals 0

    .line 948
    invoke-static/range {p1 .. p6}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    return-void
.end method

.method public synthetic createNativeVideoDecoder()J
    .locals 2

    invoke-static {p0}, Lcom/netease/lava/webrtc/VideoDecoder$-CC;->$default$createNativeVideoDecoder(Lcom/netease/lava/webrtc/VideoDecoder;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected createSurfaceTextureHelper()Lcom/netease/lava/webrtc/SurfaceTextureHelper;
    .locals 2

    .line 931
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    const-string v1, "decoder-texture-thread"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->create(Ljava/lang/String;Lcom/netease/lava/webrtc/EglBase$Context;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v0

    return-object v0
.end method

.method public decode(Lcom/netease/lava/webrtc/EncodedImage;Lcom/netease/lava/webrtc/VideoDecoder$DecodeInfo;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 8

    .line 301
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {p2}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 304
    iget-boolean p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadError:Z

    if-eqz p2, :cond_0

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode too much error ,fallback to software!"

    .line 305
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 309
    :cond_0
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    const/4 v0, 0x0

    if-eqz p2, :cond_12

    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->callback:Lcom/netease/lava/webrtc/VideoDecoder$Callback;

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 314
    :cond_1
    iget-object p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    if-nez p2, :cond_2

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - no input data"

    .line 315
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 319
    :cond_2
    iget-object p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    if-nez v4, :cond_3

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - input buffer empty"

    .line 321
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERR_PARAMETER:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 325
    :cond_3
    iget-boolean p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->syncMode:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p2}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result p2

    if-lez p2, :cond_4

    .line 327
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->loopForDeliverDecodedFrame()V

    .line 333
    :cond_4
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->dimensionLock:Ljava/lang/Object;

    monitor-enter p2

    .line 334
    :try_start_0
    iget v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->width:I

    .line 335
    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->height:I

    .line 336
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    iget p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedWidth:I

    iget v3, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedHeight:I

    mul-int p2, p2, v3

    if-lez p2, :cond_5

    iget p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedWidth:I

    if-ne p2, v1, :cond_6

    iget p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedHeight:I

    if-ne p2, v2, :cond_6

    :cond_5
    iget-boolean p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->reInit:Z

    if-eqz p2, :cond_9

    .line 341
    :cond_6
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v1, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedWidth:I

    iget v2, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedHeight:I

    iget v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallbackResolution:I

    invoke-static {p2, v1, v2, v3}, Lcom/netease/lava/webrtc/MediaCodecUtils;->checkSize(Landroid/media/MediaCodecInfo$CodecCapabilities;III)Z

    move-result p2

    if-nez p2, :cond_7

    const-string v0, "AndroidVideoDecoder"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " reinitDecode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " x "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedHeight:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " isSizeSupport: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " FALLBACK_SOFTWARE"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 348
    :cond_7
    iget p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallbackResolution:I

    if-lez p2, :cond_8

    iget p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedWidth:I

    iget v1, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedHeight:I

    mul-int p2, p2, v1

    iget v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallbackResolution:I

    if-ge p2, v1, :cond_8

    const-string p2, "AndroidVideoDecoder"

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " reinitDecode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedHeight:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fallbackResolution "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallbackResolution:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " FALLBACK_SOFTWARE"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 353
    :cond_8
    iget p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedWidth:I

    iget v1, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedHeight:I

    invoke-direct {p0, p2, v1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->reinitDecode(II)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p2

    .line 354
    sget-object v1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    if-eq p2, v1, :cond_9

    return-object p2

    .line 359
    :cond_9
    iget-boolean p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    if-eqz p2, :cond_b

    .line 361
    iget-object p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->frameType:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    sget-object v1, Lcom/netease/lava/webrtc/EncodedImage$FrameType;->VideoFrameKey:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    if-eq p2, v1, :cond_a

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - key frame required first"

    .line 362
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 365
    :cond_a
    iget-boolean p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->completeFrame:Z

    if-nez p2, :cond_b

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - complete frame required first"

    .line 366
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->NO_OUTPUT:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 373
    :cond_b
    :try_start_1
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    const-wide/32 v1, 0x7a120

    invoke-interface {p2, v1, v2}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->dequeueInputBuffer(J)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-gez v2, :cond_c

    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - no HW buffers available; decoder falling behind"

    .line 381
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 387
    :cond_c
    :try_start_2
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {p2}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p2

    aget-object p2, p2, v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz p2, :cond_11

    .line 393
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, v4, :cond_d

    goto :goto_0

    .line 398
    :cond_d
    iget-object v1, p1, Lcom/netease/lava/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 399
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 400
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 402
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    new-instance v1, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget v3, p1, Lcom/netease/lava/webrtc/EncodedImage;->rotation:I

    invoke-direct {v1, v5, v6, v3}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;-><init>(JI)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/BlockingDeque;->offer(Ljava/lang/Object;)Z

    .line 404
    :try_start_3
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    const/4 v3, 0x0

    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v5, p1, Lcom/netease/lava/webrtc/EncodedImage;->captureTimeNs:J

    .line 405
    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v5

    const/4 v7, 0x0

    .line 404
    invoke-interface/range {v1 .. v7}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->queueInputBuffer(IIIJI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 411
    iget-boolean p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    if-eqz p1, :cond_e

    .line 412
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->keyFrameRequired:Z

    .line 415
    :cond_e
    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallBackChecker:Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;

    if-eqz p1, :cond_f

    .line 416
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->reportInput()V

    .line 419
    :cond_f
    iget-boolean p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->syncMode:Z

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result p1

    if-lez p1, :cond_10

    .line 421
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->loopForDeliverDecodedFrame()V

    .line 424
    :cond_10
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->OK:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :catch_0
    move-exception p1

    const-string p2, "AndroidVideoDecoder"

    const-string v0, "queueInputBuffer failed"

    .line 407
    invoke-static {p2, v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 408
    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingDeque;->pollLast()Ljava/lang/Object;

    .line 409
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :cond_11
    :goto_0
    const-string p1, "AndroidVideoDecoder"

    const-string p2, "decode() - HW buffer too small"

    .line 394
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :catch_1
    move-exception p1

    const-string p2, "AndroidVideoDecoder"

    const-string v0, "getInputBuffers failed"

    .line 389
    invoke-static {p2, v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 390
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :catch_2
    move-exception p1

    const-string p2, "AndroidVideoDecoder"

    const-string v0, "dequeueInputBuffer failed"

    .line 375
    invoke-static {p2, v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 376
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->ERROR:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    :catchall_0
    move-exception p1

    .line 336
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1

    :cond_12
    :goto_1
    const-string p1, "AndroidVideoDecoder"

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode uninitalized, codec: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    if-eqz v1, :cond_13

    const/4 v0, 0x1

    :cond_13
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", callback: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->callback:Lcom/netease/lava/webrtc/VideoDecoder$Callback;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->UNINITIALIZED:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method protected deliverDecodedFrame()Z
    .locals 10

    const-string v0, "AndroidVideoDecoder"

    .line 563
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 565
    :try_start_0
    new-instance v3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 574
    iget-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    iget v5, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->dequeOutputTimeoutUs:I

    int-to-long v5, v5

    invoke-interface {v4, v3, v5, v6}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v4

    if-gez v4, :cond_3

    const/4 v3, -0x2

    if-ne v4, v3, :cond_0

    .line 579
    iget-object v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codec:Lcom/netease/lava/webrtc/MediaCodecWrapper;

    invoke-interface {v3}, Lcom/netease/lava/webrtc/MediaCodecWrapper;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->reformat(Landroid/media/MediaFormat;)V

    return v2

    :cond_0
    const/4 v3, -0x3

    if-ne v4, v3, :cond_1

    return v2

    :cond_1
    const/4 v3, -0x1

    if-ne v4, v3, :cond_2

    .line 585
    iget-object v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallBackChecker:Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;

    if-eqz v3, :cond_2

    .line 586
    invoke-virtual {v3}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->isFallBack()Z

    move-result v3

    iput-boolean v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadError:Z

    .line 587
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "drop rate: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallBackChecker:Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;

    invoke-virtual {v5}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->getDropRate()F

    move-result v5

    float-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double v5, v5, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, " return: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v1

    .line 594
    :cond_3
    iget-object v5, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v5}, Ljava/util/concurrent/BlockingDeque;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;

    if-eqz v5, :cond_4

    .line 598
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, v5, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;->decodeStartTimeMs:J

    sub-long/2addr v6, v8

    long-to-int v7, v6

    .line 599
    iget v5, v5, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FrameInfo;->rotation:I

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 602
    :goto_0
    iput-boolean v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->hasDecodedFirstFrame:Z

    .line 604
    iget-object v6, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    if-eqz v6, :cond_5

    .line 605
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->deliverTextureFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V

    goto :goto_1

    .line 607
    :cond_5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {p0, v4, v3, v5, v6}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->deliverByteFrame(ILandroid/media/MediaCodec$BufferInfo;ILjava/lang/Integer;)V

    .line 610
    :goto_1
    iput v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputErrorCnt:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v3

    .line 613
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    const-string v4, "deliverDecodedFrame failed."

    .line 614
    invoke-static {v0, v4, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 615
    iget v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputErrorCnt:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputErrorCnt:I

    .line 616
    rem-int/lit8 v0, v0, 0x14

    if-nez v0, :cond_6

    .line 617
    invoke-direct {p0, v3}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->stopOnOutputThread(Ljava/lang/Exception;)V

    .line 618
    iput-boolean v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->reInit:Z

    :cond_6
    return v1
.end method

.method public getImplementationName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 435
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefersLateDecoding()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initDecode(Lcom/netease/lava/webrtc/VideoDecoder$Settings;Lcom/netease/lava/webrtc/VideoDecoder$Callback;)Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 8

    const-string v0, "AndroidVideoDecoder"

    .line 183
    :try_start_0
    new-instance v1, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->decoderThreadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    .line 186
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    iget v2, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->width:I

    iget v3, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->height:I

    iget v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallbackResolution:I

    invoke-static {v1, v2, v3, v4}, Lcom/netease/lava/webrtc/MediaCodecUtils;->checkSize(Landroid/media/MediaCodecInfo$CodecCapabilities;III)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, " FALLBACK_SOFTWARE"

    const-string v3, " isSizeSupport: "

    const-string v4, " x "

    const-string v5, " initDecode: "

    if-nez v1, :cond_0

    .line 188
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->width:I

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->height:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 193
    :cond_0
    iget v6, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallbackResolution:I

    if-lez v6, :cond_1

    iget v6, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->width:I

    iget v7, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->height:I

    mul-int v6, v6, v7

    iget v7, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallbackResolution:I

    if-ge v6, v7, :cond_1

    .line 194
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->width:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->height:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fallbackResolution "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallbackResolution:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1

    .line 199
    :cond_1
    iput-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->callback:Lcom/netease/lava/webrtc/VideoDecoder$Callback;

    .line 200
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    if-eqz p2, :cond_2

    .line 201
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->createSurfaceTextureHelper()Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    .line 202
    new-instance p2, Landroid/view/Surface;

    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 203
    iget-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {p2, p0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->startListening(Lcom/netease/lava/webrtc/VideoSink;)V

    .line 206
    :cond_2
    iget-boolean p2, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->syncMode:Z

    iput-boolean p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->syncMode:Z

    .line 207
    iget-boolean p2, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->syncMode:Z

    if-eqz p2, :cond_3

    const/16 p2, 0x3e8

    goto :goto_0

    :cond_3
    const p2, 0x249f0

    :goto_0
    iput p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->dequeOutputTimeoutUs:I

    .line 208
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ctor codecName: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " codecType: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecType:Lcom/netease/lava/webrtc/VideoCodecType;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " colorFormat: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->colorFormat:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sharedContext: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->sharedContext:Lcom/netease/lava/webrtc/EglBase$Context;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", drop : "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->initDropFrameCount:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " textureDelayTimeMs: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->textureDelayTimeMs:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " width: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->width:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->height:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " syncMode: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->syncMode:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " maxSupportedInstances: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->capabilities:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 212
    invoke-static {v1}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getMaxSupportedInstances(Landroid/media/MediaCodecInfo$CodecCapabilities;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " currentCodecInstances: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->codecName:Ljava/lang/String;

    .line 213
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/MediaCodecUtils;->getCodecInstances(ZLjava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 208
    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget p2, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->width:I

    iget p1, p1, Lcom/netease/lava/webrtc/VideoDecoder$Settings;->height:I

    invoke-direct {p0, p2, p1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->initDecodeInternal(II)Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    const-string p1, "initDecode failed so fallback software"

    .line 216
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    sget-object p1, Lcom/netease/lava/webrtc/VideoCodecStatus;->FALLBACK_SOFTWARE:Lcom/netease/lava/webrtc/VideoCodecStatus;

    return-object p1
.end method

.method public onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 6

    .line 678
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    if-nez v1, :cond_0

    const-string p1, "AndroidVideoDecoder"

    const-string v1, "onTextureFrameAvailable, texture metadata is null!"

    .line 680
    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    monitor-exit v0

    return-void

    .line 684
    :cond_0
    iget-wide v1, v1, Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;->presentationTimestampUs:J

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    .line 685
    iget-object v3, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    iget-object v3, v3, Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;->decodeTimeMs:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    .line 686
    iput-object v4, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 687
    iget-object v5, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 688
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrame;

    .line 692
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v5

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result p1

    invoke-direct {v0, v5, p1, v1, v2}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 695
    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->callback:Lcom/netease/lava/webrtc/VideoDecoder$Callback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1, v4}, Lcom/netease/lava/webrtc/VideoDecoder$Callback;->onDecodedFrame(Lcom/netease/lava/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 697
    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallBackChecker:Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->reportOutput()V

    goto :goto_0

    .line 699
    :cond_1
    iget-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->fallBackChecker:Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder$FallBackChecker;->isFallBack()Z

    move-result p1

    iput-boolean p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->outputThreadError:Z

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 688
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public release()Lcom/netease/lava/webrtc/VideoCodecStatus;
    .locals 3

    const-string v0, "AndroidVideoDecoder"

    const-string v1, "release"

    .line 443
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-direct {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->releaseInternal()Lcom/netease/lava/webrtc/VideoCodecStatus;

    move-result-object v0

    .line 445
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 446
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->releaseSurface()V

    .line 447
    iput-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    .line 448
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 449
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->dispose()V

    .line 450
    iput-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surfaceTextureHelper:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    .line 452
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 453
    :try_start_0
    iput-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->renderedTextureMetadata:Lcom/netease/lava/webrtc/AndroidVideoDecoder$DecodedTextureMetadata;

    .line 454
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iput-object v2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->callback:Lcom/netease/lava/webrtc/VideoDecoder$Callback;

    .line 456
    iget-object v1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->frameInfos:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 454
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected releaseSurface()V
    .locals 1

    .line 937
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->surface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    return-void
.end method
