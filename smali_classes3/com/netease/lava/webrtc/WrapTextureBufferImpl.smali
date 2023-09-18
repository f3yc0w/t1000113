.class public Lcom/netease/lava/webrtc/WrapTextureBufferImpl;
.super Ljava/lang/Object;
.source "WrapTextureBufferImpl.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;


# instance fields
.field private final fenceSyncObject:J

.field private height:I

.field private id:I

.field private oriHeight:I

.field private oriWidth:I

.field private textureType:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

.field private final toI420Handler:Landroid/os/Handler;

.field private transformMatrix:Landroid/graphics/Matrix;

.field private type:I

.field private uTextureId:I

.field private vTextureId:I

.field private width:I

.field private yTextureId:I

.field private final yuvConverter:Lcom/netease/lava/webrtc/WrapYuvConverter;


# direct methods
.method public constructor <init>(IIII[ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/WrapYuvConverter;J)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->width:I

    .line 40
    iput p2, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->height:I

    .line 41
    iput p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->oriWidth:I

    .line 42
    iput p2, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->oriHeight:I

    .line 43
    iput p3, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->type:I

    const/4 p1, 0x1

    if-nez p3, :cond_0

    .line 44
    sget-object p2, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeOES:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    goto :goto_0

    :cond_0
    if-ne p3, p1, :cond_1

    sget-object p2, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeRGB:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeYUV:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    :goto_0
    iput-object p2, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->textureType:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    .line 45
    iput p4, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->id:I

    if-eqz p5, :cond_2

    .line 46
    array-length p2, p5

    const/4 p3, 0x3

    if-ne p2, p3, :cond_2

    const/4 p2, 0x0

    .line 47
    aget p2, p5, p2

    iput p2, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->yTextureId:I

    .line 48
    aget p1, p5, p1

    iput p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->uTextureId:I

    const/4 p1, 0x2

    .line 49
    aget p1, p5, p1

    iput p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->vTextureId:I

    :cond_2
    if-nez p6, :cond_3

    .line 51
    new-instance p6, Landroid/graphics/Matrix;

    invoke-direct {p6}, Landroid/graphics/Matrix;-><init>()V

    :cond_3
    iput-object p6, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 52
    iput-object p7, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    .line 53
    iput-object p8, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->yuvConverter:Lcom/netease/lava/webrtc/WrapYuvConverter;

    .line 54
    iput-wide p9, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->fenceSyncObject:J

    return-void
.end method

.method private applyTransformMatrix(Landroid/graphics/Matrix;II)Lcom/netease/lava/webrtc/WrapTextureBufferImpl;
    .locals 11

    .line 231
    new-instance v6, Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v6, v0}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 232
    invoke-virtual {v6, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 233
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->retain()V

    const/4 p1, 0x3

    new-array v5, p1, [I

    .line 234
    iget p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->yTextureId:I

    const/4 v0, 0x0

    aput p1, v5, v0

    iget p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->uTextureId:I

    const/4 v0, 0x1

    aput p1, v5, v0

    iget p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->vTextureId:I

    const/4 v0, 0x2

    aput p1, v5, v0

    .line 235
    new-instance p1, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;

    iget v3, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->type:I

    iget v4, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->id:I

    iget-object v7, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->yuvConverter:Lcom/netease/lava/webrtc/WrapYuvConverter;

    iget-wide v9, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->fenceSyncObject:J

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v10}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;-><init>(IIII[ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/WrapYuvConverter;J)V

    return-object p1
.end method

.method private generateBlackI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 13

    .line 184
    iget v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->height:I

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 185
    iget v2, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->width:I

    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v11, v3, 0x2

    mul-int v3, v2, v0

    const/4 v4, 0x0

    add-int/2addr v3, v4

    mul-int v1, v1, v11

    add-int v5, v3, v1

    .line 190
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/YuvHelper;->nativeAllocateBlackI420ByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 192
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 193
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 194
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 196
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 197
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 198
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 200
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v5, v1

    .line 201
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 202
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 204
    iget v7, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->width:I

    iget v5, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->height:I

    new-instance v12, Lcom/netease/lava/webrtc/-$$Lambda$WrapTextureBufferImpl$mTNuJTO8GwXe_2CeWdbkNjrrM0g;

    invoke-direct {v12, v0}, Lcom/netease/lava/webrtc/-$$Lambda$WrapTextureBufferImpl$mTNuJTO8GwXe_2CeWdbkNjrrM0g;-><init>(Ljava/nio/ByteBuffer;)V

    move v4, v7

    move v9, v11

    invoke-static/range {v4 .. v12}, Lcom/netease/lava/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$generateBlackI420$1(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 205
    invoke-static {p0}, Lcom/netease/lava/webrtc/YuvHelper;->nativeFreeBlackI420ByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 220
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 223
    iget v1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->height:I

    add-int/2addr p2, p4

    sub-int p2, v1, p2

    int-to-float p1, p1

    .line 224
    iget v2, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->width:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    int-to-float v1, v1

    div-float/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p3

    .line 225
    iget p2, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p4

    iget p3, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->height:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 227
    invoke-direct {p0, v0, p5, p6}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;II)Lcom/netease/lava/webrtc/WrapTextureBufferImpl;

    move-result-object p1

    return-object p1
.end method

.method public getBufferType()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public getFenceSyncObject()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->fenceSyncObject:J

    return-wide v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 168
    iget v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->height:I

    return v0
.end method

.method public getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
    .locals 1

    .line 84
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeWrapTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    return-object v0
.end method

.method public getOriHeight()I
    .locals 1

    .line 142
    iget v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->oriHeight:I

    return v0
.end method

.method public getOriWidth()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->oriWidth:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .line 98
    iget v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->id:I

    return v0
.end method

.method public getTextureIds()[I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 110
    iget v1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->yTextureId:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->uTextureId:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->vTextureId:I

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public getTextureType()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->type:I

    return v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getType()Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->textureType:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->width:I

    return v0
.end method

.method public isYUVTexture()Z
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->getType()Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    move-result-object v0

    sget-object v1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeYUV:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$toI420$0$WrapTextureBufferImpl()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->yuvConverter:Lcom/netease/lava/webrtc/WrapYuvConverter;

    invoke-virtual {v0, p0}, Lcom/netease/lava/webrtc/WrapYuvConverter;->convertToI420(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public retain()V
    .locals 0

    return-void
.end method

.method public setFlipVertical()V
    .locals 3

    .line 152
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->isYUVTexture()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 157
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 158
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x41000000    # -0.5f

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->height:I

    return-void
.end method

.method public setTextureId(II)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->type:I

    .line 104
    iput p2, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->id:I

    if-nez p1, :cond_0

    .line 105
    sget-object p1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeOES:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    sget-object p1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeRGB:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeYUV:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    :goto_0
    iput-object p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->textureType:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    return-void
.end method

.method public setTextureIds([I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 116
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 117
    aget v0, p1, v0

    iput v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->yTextureId:I

    const/4 v0, 0x1

    .line 118
    aget v0, p1, v0

    iput v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->uTextureId:I

    const/4 v0, 0x2

    .line 119
    aget p1, p1, v0

    iput p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->vTextureId:I

    .line 120
    iput v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->type:I

    .line 121
    sget-object p1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->kTextureTypeYUV:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    iput-object p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->textureType:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    :cond_0
    return-void
.end method

.method public setType(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->textureType:Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->width:I

    return-void
.end method

.method public toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/lava/webrtc/-$$Lambda$WrapTextureBufferImpl$RzxZkGadG9jP1_-NIsDkZKE2JyU;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/-$$Lambda$WrapTextureBufferImpl$RzxZkGadG9jP1_-NIsDkZKE2JyU;-><init>(Lcom/netease/lava/webrtc/WrapTextureBufferImpl;)V

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 178
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 179
    invoke-direct {p0}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->generateBlackI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method
