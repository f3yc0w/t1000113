.class public Lcom/netease/lava/webrtc/JavaI420Buffer;
.super Ljava/lang/Object;
.source "JavaI420Buffer.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;


# instance fields
.field private final dataU:Ljava/nio/ByteBuffer;

.field private final dataV:Ljava/nio/ByteBuffer;

.field private final dataY:Ljava/nio/ByteBuffer;

.field private height:I

.field private oriHeight:I

.field private oriWidth:I

.field private final refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

.field private final strideU:I

.field private final strideV:I

.field private final strideY:I

.field private width:I


# direct methods
.method private constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V
    .locals 0
    .param p9    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->width:I

    .line 34
    iput p2, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->height:I

    .line 35
    iput p1, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->oriWidth:I

    .line 36
    iput p2, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->oriHeight:I

    .line 37
    iput-object p3, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    .line 38
    iput-object p5, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    .line 39
    iput-object p7, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    .line 40
    iput p4, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->strideY:I

    .line 41
    iput p6, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->strideU:I

    .line 42
    iput p8, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->strideV:I

    .line 43
    new-instance p1, Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-direct {p1, p9}, Lcom/netease/lava/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    return-void
.end method

.method public static allocate(II)Lcom/netease/lava/webrtc/JavaI420Buffer;
    .locals 12

    add-int/lit8 v0, p1, 0x1

    .line 84
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, p0, 0x1

    .line 85
    div-int/lit8 v10, v1, 0x2

    mul-int v1, p0, p1

    add-int/lit8 v2, v1, 0x0

    mul-int v3, v10, v0

    add-int v4, v2, v3

    mul-int/lit8 v5, v10, 0x2

    mul-int v5, v5, v0

    add-int/2addr v1, v5

    .line 91
    invoke-static {v1}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 94
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 95
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 97
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 98
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 99
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 101
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v4, v3

    .line 102
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 103
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 105
    new-instance v1, Lcom/netease/lava/webrtc/JavaI420Buffer;

    new-instance v11, Lcom/netease/lava/webrtc/-$$Lambda$JavaI420Buffer$oZNeFpG2vlqt2o2GMfBvqvu-H1g;

    invoke-direct {v11, v0}, Lcom/netease/lava/webrtc/-$$Lambda$JavaI420Buffer$oZNeFpG2vlqt2o2GMfBvqvu-H1g;-><init>(Ljava/nio/ByteBuffer;)V

    move-object v2, v1

    move v3, p0

    move v4, p1

    move v6, p0

    move v8, v10

    invoke-direct/range {v2 .. v11}, Lcom/netease/lava/webrtc/JavaI420Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v1
.end method

.method private static checkCapacity(Ljava/nio/ByteBuffer;III)V
    .locals 1

    add-int/lit8 p2, p2, -0x1

    mul-int p3, p3, p2

    add-int/2addr p3, p1

    .line 49
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    if-lt p1, p3, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Buffer must be at least "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes, but was "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static cropAndScaleI420(Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 19

    move/from16 v8, p3

    move/from16 v9, p5

    if-ne v8, v9, :cond_1

    move/from16 v7, p4

    move/from16 v6, p6

    if-ne v7, v6, :cond_0

    .line 208
    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 209
    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 210
    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 212
    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v3

    mul-int v3, v3, p2

    add-int v3, p1, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 213
    div-int/lit8 v3, p1, 0x2

    div-int/lit8 v4, p2, 0x2

    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v5

    mul-int v5, v5, v4

    add-int/2addr v5, v3

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 214
    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    mul-int v4, v4, v5

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 216
    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->retain()V

    .line 217
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v4

    .line 218
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v7

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v11, Lcom/netease/lava/webrtc/-$$Lambda$EaO-EGEkbK4bGvhuRgqOeo8OFpg;

    move-object/from16 v12, p0

    invoke-direct {v11, v12}, Lcom/netease/lava/webrtc/-$$Lambda$EaO-EGEkbK4bGvhuRgqOeo8OFpg;-><init>(Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;)V

    move/from16 v0, p5

    move/from16 v1, p6

    move-object v2, v3

    move v3, v4

    move-object v4, v5

    move v5, v7

    move-object v6, v8

    move v7, v10

    move-object v8, v11

    .line 217
    invoke-static/range {v0 .. v8}, Lcom/netease/lava/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v12, p0

    goto :goto_0

    :cond_1
    move-object/from16 v12, p0

    move/from16 v7, p4

    move/from16 v6, p6

    .line 221
    :goto_0
    invoke-static/range {p5 .. p6}, Lcom/netease/lava/webrtc/JavaI420Buffer;->allocate(II)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v18

    .line 222
    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v1

    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 223
    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    .line 224
    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getStrideY()I

    move-result v11

    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v12

    .line 225
    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getStrideU()I

    move-result v13

    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getStrideV()I

    move-result v15

    move/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v16, p5

    move/from16 v17, p6

    .line 222
    invoke-static/range {v0 .. v17}, Lcom/netease/lava/webrtc/JavaI420Buffer;->nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    return-object v18
.end method

.method static synthetic lambda$allocate$0(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 106
    invoke-static {p0}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method private static native nativeCropAndScaleI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IIIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V
.end method

.method public static wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lcom/netease/lava/webrtc/JavaI420Buffer;
    .locals 11
    .param p8    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move v1, p0

    move v2, p1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p6, :cond_1

    .line 62
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 69
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 70
    invoke-virtual/range {p6 .. p6}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .line 72
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v4, v2, 0x1

    .line 73
    div-int/lit8 v4, v4, 0x2

    move v6, p3

    .line 74
    invoke-static {v3, p0, p1, p3}, Lcom/netease/lava/webrtc/JavaI420Buffer;->checkCapacity(Ljava/nio/ByteBuffer;III)V

    move/from16 v8, p5

    .line 75
    invoke-static {v5, v0, v4, v8}, Lcom/netease/lava/webrtc/JavaI420Buffer;->checkCapacity(Ljava/nio/ByteBuffer;III)V

    move/from16 v9, p7

    .line 76
    invoke-static {v7, v0, v4, v9}, Lcom/netease/lava/webrtc/JavaI420Buffer;->checkCapacity(Ljava/nio/ByteBuffer;III)V

    .line 78
    new-instance v10, Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-object v0, v10

    move v1, p0

    move v2, p1

    move v4, p3

    move/from16 v6, p5

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/netease/lava/webrtc/JavaI420Buffer;-><init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)V

    return-object v10

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data buffers must be direct byte buffers."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Data buffers cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 0

    .line 201
    invoke-static/range {p0 .. p6}, Lcom/netease/lava/webrtc/JavaI420Buffer;->cropAndScaleI420(Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    return-object p1
.end method

.method public getBufferType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->height:I

    return v0
.end method

.method public getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
    .locals 1

    .line 179
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeI420:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    return-object v0
.end method

.method public getOriHeight()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->oriHeight:I

    return v0
.end method

.method public getOriWidth()I
    .locals 1

    .line 121
    iget v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->oriWidth:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->strideU:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->strideV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .line 149
    iget v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->strideY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->width:I

    return v0
.end method

.method public release()V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/RefCountDelegate;->retain()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 164
    iput p1, p0, Lcom/netease/lava/webrtc/JavaI420Buffer;->width:I

    return-void
.end method

.method public toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 184
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/JavaI420Buffer;->retain()V

    return-object p0
.end method
