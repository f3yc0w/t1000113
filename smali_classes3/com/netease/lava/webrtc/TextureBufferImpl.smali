.class public Lcom/netease/lava/webrtc/TextureBufferImpl;
.super Ljava/lang/Object;
.source "TextureBufferImpl.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;


# instance fields
.field private final fenceSyncObject:J

.field private height:I

.field private id:I

.field private oriHeight:I

.field private oriWidth:I

.field private final refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

.field private final toI420Handler:Landroid/os/Handler;

.field private final transformMatrix:Landroid/graphics/Matrix;

.field private type:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

.field private final unscaledHeight:I

.field private final unscaledWidth:I

.field private width:I

.field private final yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;


# direct methods
.method private constructor <init>(IIIILcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/YuvConverter;Ljava/lang/Runnable;)V
    .locals 0
    .param p10    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledWidth:I

    .line 79
    iput p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledHeight:I

    .line 80
    iput p3, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    .line 81
    iput p4, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    .line 82
    iput p3, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->oriWidth:I

    .line 83
    iput p4, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->oriHeight:I

    .line 84
    iput-object p5, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->type:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    .line 85
    iput p6, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->id:I

    .line 86
    iput-object p7, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 87
    iput-object p8, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    .line 88
    iput-object p9, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    .line 89
    new-instance p1, Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-direct {p1, p10}, Lcom/netease/lava/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    const-wide/16 p1, 0x0

    .line 90
    iput-wide p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->fenceSyncObject:J

    return-void
.end method

.method public constructor <init>(IILcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/YuvConverter;Ljava/lang/Runnable;)V
    .locals 0
    .param p8    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledWidth:I

    .line 44
    iput p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledHeight:I

    .line 45
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    .line 46
    iput p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    .line 47
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->oriWidth:I

    .line 48
    iput p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->oriHeight:I

    .line 49
    iput-object p3, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->type:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    .line 50
    iput p4, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->id:I

    .line 51
    iput-object p5, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 52
    iput-object p6, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    .line 53
    iput-object p7, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    .line 54
    new-instance p1, Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-direct {p1, p8}, Lcom/netease/lava/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    const-wide/16 p1, 0x0

    .line 55
    iput-wide p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->fenceSyncObject:J

    return-void
.end method

.method public constructor <init>(IILcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/YuvConverter;Ljava/lang/Runnable;J)V
    .locals 0
    .param p8    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledWidth:I

    .line 61
    iput p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledHeight:I

    .line 62
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    .line 63
    iput p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    .line 64
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->oriWidth:I

    .line 65
    iput p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->oriHeight:I

    .line 66
    iput-object p3, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->type:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    .line 67
    iput p4, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->id:I

    .line 68
    iput-object p5, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    .line 69
    iput-object p6, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    .line 70
    iput-object p7, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    .line 71
    new-instance p1, Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-direct {p1, p8}, Lcom/netease/lava/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    .line 72
    iput-wide p9, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->fenceSyncObject:J

    return-void
.end method

.method private applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lcom/netease/lava/webrtc/TextureBufferImpl;
    .locals 13

    move-object v0, p0

    .line 269
    new-instance v8, Landroid/graphics/Matrix;

    iget-object v1, v0, Lcom/netease/lava/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    invoke-direct {v8, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v1, p1

    .line 270
    invoke-virtual {v8, p1}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 271
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/TextureBufferImpl;->retain()V

    .line 272
    new-instance v12, Lcom/netease/lava/webrtc/TextureBufferImpl;

    iget-object v6, v0, Lcom/netease/lava/webrtc/TextureBufferImpl;->type:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    iget v7, v0, Lcom/netease/lava/webrtc/TextureBufferImpl;->id:I

    iget-object v9, v0, Lcom/netease/lava/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/netease/lava/webrtc/TextureBufferImpl;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    new-instance v11, Lcom/netease/lava/webrtc/-$$Lambda$T6V0RsrCGDsBNszNvqGnd-_jN_A;

    invoke-direct {v11, p0}, Lcom/netease/lava/webrtc/-$$Lambda$T6V0RsrCGDsBNszNvqGnd-_jN_A;-><init>(Lcom/netease/lava/webrtc/TextureBufferImpl;)V

    move-object v1, v12

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-direct/range {v1 .. v11}, Lcom/netease/lava/webrtc/TextureBufferImpl;-><init>(IIIILcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/YuvConverter;Ljava/lang/Runnable;)V

    return-object v12
.end method

.method private generateBlackI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 13

    .line 190
    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    add-int/lit8 v1, v0, 0x1

    div-int/lit8 v1, v1, 0x2

    .line 191
    iget v2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    add-int/lit8 v3, v2, 0x1

    div-int/lit8 v11, v3, 0x2

    mul-int v3, v2, v0

    const/4 v4, 0x0

    add-int/2addr v3, v4

    mul-int v1, v1, v11

    add-int v5, v3, v1

    .line 196
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/YuvHelper;->nativeAllocateBlackI420ByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 198
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 199
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 200
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 202
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 203
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 204
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 206
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v5, v1

    .line 207
    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 208
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 210
    iget v7, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    iget v5, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    new-instance v12, Lcom/netease/lava/webrtc/-$$Lambda$TextureBufferImpl$245S_bkPICEYG8wW6Akdg5EsFwk;

    invoke-direct {v12, v0}, Lcom/netease/lava/webrtc/-$$Lambda$TextureBufferImpl$245S_bkPICEYG8wW6Akdg5EsFwk;-><init>(Ljava/nio/ByteBuffer;)V

    move v4, v7

    move v9, v11

    invoke-static/range {v4 .. v12}, Lcom/netease/lava/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$generateBlackI420$1(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 211
    invoke-static {p0}, Lcom/netease/lava/webrtc/YuvHelper;->nativeFreeBlackI420ByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public applyTransformMatrix(Landroid/graphics/Matrix;II)Lcom/netease/lava/webrtc/TextureBufferImpl;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p2

    move v5, p3

    .line 262
    invoke-direct/range {v0 .. v5}, Lcom/netease/lava/webrtc/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lcom/netease/lava/webrtc/TextureBufferImpl;

    move-result-object p1

    return-object p1
.end method

.method public cropAndScale(IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 6

    .line 227
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 230
    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    add-int/2addr p2, p4

    sub-int p2, v0, p2

    int-to-float p1, p1

    .line 231
    iget v2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p3

    .line 232
    iget p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    int-to-float p2, p4

    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 234
    iget p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledWidth:I

    mul-int p1, p1, p3

    int-to-float p1, p1

    iget p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 235
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledHeight:I

    mul-int p1, p1, p4

    int-to-float p1, p1

    iget p2, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 236
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object v0, p0

    move v4, p5

    move v5, p6

    .line 234
    invoke-direct/range {v0 .. v5}, Lcom/netease/lava/webrtc/TextureBufferImpl;->applyTransformMatrix(Landroid/graphics/Matrix;IIII)Lcom/netease/lava/webrtc/TextureBufferImpl;

    move-result-object p1

    return-object p1
.end method

.method public getBufferType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFenceSyncObject()J
    .locals 2

    .line 95
    iget-wide v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->fenceSyncObject:J

    return-wide v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 164
    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    return v0
.end method

.method public getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
    .locals 1

    .line 110
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    return-object v0
.end method

.method public getOriHeight()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->oriHeight:I

    return v0
.end method

.method public getOriWidth()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->oriWidth:I

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .line 119
    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->id:I

    return v0
.end method

.method public getTransformMatrix()Landroid/graphics/Matrix;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->transformMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getType()Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->type:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    return-object v0
.end method

.method public getUnscaledHeight()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledHeight:I

    return v0
.end method

.method public getUnscaledWidth()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->unscaledWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    return v0
.end method

.method public getYuvConverter()Lcom/netease/lava/webrtc/YuvConverter;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    return-object v0
.end method

.method public isOESTexture()Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->type:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    sget-object v1, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;->OES:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$toI420$0$TextureBufferImpl()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    invoke-virtual {v0, p0}, Lcom/netease/lava/webrtc/YuvConverter;->wrapConvert(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/RefCountDelegate;->retain()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->height:I

    return-void
.end method

.method public setTextureId(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->id:I

    return-void
.end method

.method public setType(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->type:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->width:I

    return-void
.end method

.method public toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/TextureBufferImpl;->toI420Handler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/lava/webrtc/-$$Lambda$TextureBufferImpl$9Dz01nveqDPj2UOqPhaDHyKd83Q;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/-$$Lambda$TextureBufferImpl$9Dz01nveqDPj2UOqPhaDHyKd83Q;-><init>(Lcom/netease/lava/webrtc/TextureBufferImpl;)V

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/ThreadUtils;->invokeAtFrontUninterruptibly(Landroid/os/Handler;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 185
    invoke-direct {p0}, Lcom/netease/lava/webrtc/TextureBufferImpl;->generateBlackI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method
