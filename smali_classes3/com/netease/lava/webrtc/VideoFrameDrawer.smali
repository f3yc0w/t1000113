.class public Lcom/netease/lava/webrtc/VideoFrameDrawer;
.super Ljava/lang/Object;
.source "VideoFrameDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;
    }
.end annotation


# static fields
.field static final srcPoints:[F


# instance fields
.field private final dstPoints:[F

.field private lastI420Frame:Lcom/netease/lava/webrtc/VideoFrame;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private renderHeight:I

.field private final renderMatrix:Landroid/graphics/Matrix;

.field private final renderSize:Landroid/graphics/Point;

.field private renderWidth:I

.field private final yuvUploader:Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 170
    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->srcPoints:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    new-array v0, v0, [F

    .line 172
    iput-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->dstPoints:[F

    .line 173
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderSize:Landroid/graphics/Point;

    .line 201
    new-instance v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->yuvUploader:Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;

    .line 205
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    return-void
.end method

.method private calculateTransformedRenderSize(IILandroid/graphics/Matrix;)V
    .locals 7
    .param p3    # Landroid/graphics/Matrix;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-nez p3, :cond_0

    .line 183
    iput p1, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderWidth:I

    .line 184
    iput p2, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderHeight:I

    return-void

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->dstPoints:[F

    sget-object v1, Lcom/netease/lava/webrtc/VideoFrameDrawer;->srcPoints:[F

    invoke-virtual {p3, v0, v1}, Landroid/graphics/Matrix;->mapPoints([F[F)V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ge v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->dstPoints:[F

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v4, v3, 0x0

    aget v5, v1, v4

    int-to-float v6, p1

    mul-float v5, v5, v6

    aput v5, v1, v4

    add-int/2addr v3, v2

    .line 193
    aget v2, v1, v3

    int-to-float v4, p2

    mul-float v2, v2, v4

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget-object p1, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->dstPoints:[F

    aget p2, p1, p3

    aget v0, p1, v2

    const/4 v3, 0x2

    aget v3, p1, v3

    aget p1, p1, v1

    invoke-static {p2, v0, v3, p1}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->distance(FFFF)I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderWidth:I

    .line 198
    iget-object p1, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->dstPoints:[F

    aget p2, p1, p3

    aget p3, p1, v2

    const/4 v0, 0x4

    aget v0, p1, v0

    const/4 v1, 0x5

    aget p1, p1, v1

    invoke-static {p2, p3, v0, p1}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->distance(FFFF)I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderHeight:I

    return-void
.end method

.method private static distance(FFFF)I
    .locals 2

    sub-float/2addr p2, p0

    float-to-double v0, p2

    sub-float/2addr p3, p1

    float-to-double p0, p3

    .line 166
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static drawTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V
    .locals 10

    .line 34
    new-instance v0, Landroid/graphics/Matrix;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v1, p2

    .line 35
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 36
    invoke-static {v0}, Lcom/netease/lava/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v3

    .line 37
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$1;->$SwitchMap$com$netease$lava$webrtc$VideoFrame$TextureBuffer$Type:[I

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getType()Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 43
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v2

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;->drawRgb(I[FIIIIII)V

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown texture type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_1
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getTextureId()I

    move-result v2

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    :goto_0
    return-void
.end method

.method public static drawWrapTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;Landroid/graphics/Matrix;IIIIII)V
    .locals 10

    .line 54
    new-instance v0, Landroid/graphics/Matrix;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    move-object v1, p2

    .line 55
    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 56
    invoke-static {v0}, Lcom/netease/lava/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v3

    .line 57
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrameDrawer$1;->$SwitchMap$com$netease$lava$webrtc$VideoFrame$WrapTextureBuffer$TextureType:[I

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getType()Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer$TextureType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 67
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getTextureIds()[I

    move-result-object v2

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    goto :goto_0

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown texture type."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_1
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getTextureId()I

    move-result v2

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;->drawRgb(I[FIIIIII)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getTextureId()I

    move-result v2

    move-object v1, p0

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;->drawOes(I[FIIIIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public drawFrame(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, p1, p2, v0}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawFrame(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public drawFrame(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;)V
    .locals 8

    .line 214
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v6

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 213
    invoke-virtual/range {v0 .. v7}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawFrame(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V

    return-void
.end method

.method public drawFrame(Lcom/netease/lava/webrtc/VideoFrame;Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Landroid/graphics/Matrix;IIII)V
    .locals 12
    .param p3    # Landroid/graphics/Matrix;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 220
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedWidth()I

    move-result v3

    .line 221
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotatedHeight()I

    move-result v4

    .line 223
    invoke-direct {p0, v3, v4, p3}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->calculateTransformedRenderSize(IILandroid/graphics/Matrix;)V

    .line 229
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    move-result-object v3

    .line 230
    sget-object v4, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    sget-object v4, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeWrapTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    if-ne v3, v4, :cond_1

    .line 233
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v4

    check-cast v4, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;

    invoke-virtual {v4}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->isYUVTexture()Z

    move-result v4

    move v6, v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    .line 242
    :goto_0
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V

    .line 243
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v5, :cond_2

    if-eqz v6, :cond_3

    .line 245
    :cond_2
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, -0x40800000    # -1.0f

    invoke-virtual {v4, v7, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 247
    :cond_3
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v4, v7}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 248
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    const/high16 v7, -0x41000000    # -0.5f

    invoke-virtual {v4, v7, v7}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    if-eqz v2, :cond_4

    .line 250
    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v4, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    :cond_4
    const/4 v2, 0x0

    if-eqz v6, :cond_5

    .line 255
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->getTextureIds()[I

    move-result-object v4

    .line 256
    iput-object v2, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->lastI420Frame:Lcom/netease/lava/webrtc/VideoFrame;

    .line 257
    iget-object v1, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 258
    invoke-static {v1}, Lcom/netease/lava/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v5

    iget v6, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderWidth:I

    iget v7, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderHeight:I

    move-object v3, p2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    .line 257
    invoke-interface/range {v3 .. v11}, Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    goto/16 :goto_1

    :cond_5
    if-eqz v5, :cond_7

    .line 263
    iput-object v2, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->lastI420Frame:Lcom/netease/lava/webrtc/VideoFrame;

    .line 264
    sget-object v2, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeTexture:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    if-ne v3, v2, :cond_6

    .line 265
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    iget v5, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderWidth:I

    iget v6, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderHeight:I

    move-object v2, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    goto :goto_1

    .line 268
    :cond_6
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;

    iget-object v4, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    iget v5, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderWidth:I

    iget v6, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderHeight:I

    move-object v2, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawWrapTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    goto :goto_1

    .line 275
    :cond_7
    iget-object v2, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->lastI420Frame:Lcom/netease/lava/webrtc/VideoFrame;

    if-eq v1, v2, :cond_8

    .line 276
    iput-object v1, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->lastI420Frame:Lcom/netease/lava/webrtc/VideoFrame;

    .line 277
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v1

    .line 278
    iget-object v2, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->yuvUploader:Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;

    invoke-virtual {v2, v1}, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->uploadFromBuffer(Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;)[I

    .line 279
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->release()V

    .line 282
    :cond_8
    iget-object v1, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->yuvUploader:Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->getYuvTextures()[I

    move-result-object v3

    iget-object v1, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderMatrix:Landroid/graphics/Matrix;

    .line 283
    invoke-static {v1}, Lcom/netease/lava/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object v4

    iget v5, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderWidth:I

    iget v6, v0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->renderHeight:I

    move-object v2, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    .line 282
    invoke-interface/range {v2 .. v10}, Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;->drawYuv([I[FIIIIII)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->yuvUploader:Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/VideoFrameDrawer$YuvUploader;->release()V

    const/4 v0, 0x0

    .line 291
    iput-object v0, p0, Lcom/netease/lava/webrtc/VideoFrameDrawer;->lastI420Frame:Lcom/netease/lava/webrtc/VideoFrame;

    return-void
.end method
