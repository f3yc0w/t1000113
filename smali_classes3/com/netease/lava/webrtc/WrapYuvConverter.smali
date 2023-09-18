.class public Lcom/netease/lava/webrtc/WrapYuvConverter;
.super Ljava/lang/Object;
.source "WrapYuvConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

.field private static final TAG:Ljava/lang/String; = "WrapYuvConverter"


# instance fields
.field private downloadPboIds:[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

.field private final i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

.field private isGles3:Z

.field private is_clear:Z

.field private m_FrameIndex:I

.field private final rgbDrawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

.field private final rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

.field private final shaderCallbacks:Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;

.field private srcHeight:I

.field private srcWidth:I

.field private final threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    .line 117
    new-instance v1, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    const/16 v2, 0x1908

    invoke-direct {v1, v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    .line 119
    new-instance v1, Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;-><init>(Lcom/netease/lava/webrtc/WrapYuvConverter$1;)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;

    .line 120
    new-instance v3, Lcom/netease/lava/webrtc/GlGenericDrawer;

    const-string v4, "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

    invoke-direct {v3, v4, v1}, Lcom/netease/lava/webrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;)V

    iput-object v3, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    .line 122
    new-instance v1, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-direct {v1, v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    .line 123
    new-instance v1, Lcom/netease/lava/webrtc/GlRectDrawer;

    invoke-direct {v1}, Lcom/netease/lava/webrtc/GlRectDrawer;-><init>()V

    iput-object v1, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbDrawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    .line 137
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->isGles3:Z

    .line 139
    iput v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->srcWidth:I

    .line 140
    iput v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->srcHeight:I

    .line 141
    iput v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->m_FrameIndex:I

    const/4 v0, 0x1

    .line 142
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->is_clear:Z

    return-void
.end method

.method public static getBitmapImageFromYUV([BII)Landroid/graphics/Bitmap;
    .locals 7

    .line 513
    new-instance v6, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 514
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 515
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 p1, 0x50

    invoke-virtual {v6, v0, p1, p0}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 516
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .line 517
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 518
    sget-object p2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object p2, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 519
    array-length p2, p0

    invoke-static {p0, v1, p2, p1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$rgbConvertToI420$0(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 333
    invoke-static {p0}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 334
    invoke-static {p1}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 335
    invoke-static {p2}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic lambda$rgbConvertToI420_2$1(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 497
    invoke-static {p0}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 498
    invoke-static {p1}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 499
    invoke-static {p2}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public clearPBO()V
    .locals 3

    .line 503
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->is_clear:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 504
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->is_clear:Z

    .line 506
    iput v2, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->srcWidth:I

    .line 507
    iput v2, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->srcHeight:I

    const/4 v0, 0x0

    .line 508
    iput-object v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    :cond_0
    return-void
.end method

.method public convertToI420(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 1

    .line 146
    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->isYUVTexture()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/WrapYuvConverter;->yuvConvertToRGB(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/WrapYuvConverter;->wrapConvert(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object p1

    return-object p1

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/WrapYuvConverter;->wrapConvert(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object p1

    return-object p1
.end method

.method public isOpenGles3()Z
    .locals 1

    .line 354
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->isGles3:Z

    return v0
.end method

.method public release()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 340
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlGenericDrawer;->release()V

    .line 341
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->release()V

    .line 342
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbDrawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlGenericDrawer;->release()V

    .line 343
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->release()V

    .line 344
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/WrapYuvConverter;->clearPBO()V

    .line 346
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method

.method public rgbConvertToI420(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 17

    move-object/from16 v0, p0

    .line 189
    iget-object v1, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 244
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getWidth()I

    move-result v1

    .line 245
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getHeight()I

    move-result v11

    add-int/lit8 v2, v1, 0x7

    .line 246
    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v12, v2, 0x8

    add-int/lit8 v2, v11, 0x1

    .line 247
    div-int/lit8 v13, v2, 0x2

    add-int v2, v11, v13

    mul-int v3, v12, v2

    .line 250
    invoke-static {v3}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 253
    div-int/lit8 v15, v12, 0x4

    .line 256
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 257
    invoke-virtual {v10, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 258
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v3, -0x41000000    # -0.5f

    .line 259
    invoke-virtual {v10, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 261
    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3, v15, v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 264
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    const v9, 0x8d40

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v2, "glBindFramebuffer"

    .line 265
    invoke-static {v2}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 268
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;->setPlaneY()V

    .line 269
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object v4, v10

    move v5, v1

    move v6, v11

    move v9, v15

    move-object/from16 v16, v10

    move v10, v11

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawWrapTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 274
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;->setPlaneU()V

    .line 275
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v4, v16

    move v8, v11

    move v9, v15

    move v10, v13

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawWrapTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 280
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;->setPlaneV()V

    .line 281
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    move v7, v15

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawWrapTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 285
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v6

    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move-object v10, v14

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v2, "WrapYuvConverter.rgbConvertToI420"

    .line 288
    invoke-static {v2}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/4 v2, 0x0

    const v3, 0x8d40

    .line 291
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    mul-int v3, v12, v11

    add-int/2addr v3, v2

    .line 297
    div-int/lit8 v9, v12, 0x2

    add-int v4, v3, v9

    .line 299
    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 300
    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 301
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 303
    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v5, v13, -0x1

    mul-int v5, v5, v12

    add-int/2addr v5, v9

    add-int/2addr v3, v5

    .line 306
    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 307
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 309
    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v4, v5

    .line 310
    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 311
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    mul-int v4, v12, v13

    .line 314
    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 315
    invoke-static {v4}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    move v4, v12

    move-object v5, v8

    move v6, v9

    move-object/from16 p1, v7

    move v7, v9

    move-object v2, v8

    move v8, v13

    .line 317
    invoke-static/range {v3 .. v8}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    move-object v3, v15

    move-object/from16 v5, p1

    .line 318
    invoke-static/range {v3 .. v8}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    const/4 v3, 0x0

    .line 320
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v8, p1

    .line 321
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 332
    new-instance v13, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$yp1FZUSrIziNkV44lQGiQjEztj0;

    invoke-direct {v13, v14, v2, v8}, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$yp1FZUSrIziNkV44lQGiQjEztj0;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    move-object v6, v2

    move v2, v1

    move v3, v11

    move-object v4, v10

    move v5, v12

    move-object v10, v13

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v1

    return-object v1
.end method

.method public rgbConvertToI420_2(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 23

    move-object/from16 v0, p0

    .line 363
    iget-object v1, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v1, 0x0

    .line 365
    iput-boolean v1, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->is_clear:Z

    .line 367
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getWidth()I

    move-result v11

    .line 368
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getHeight()I

    move-result v12

    add-int/lit8 v2, v11, 0x7

    .line 369
    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v13, v2, 0x8

    add-int/lit8 v2, v12, 0x1

    const/4 v14, 0x2

    .line 370
    div-int/lit8 v15, v2, 0x2

    add-int v2, v12, v15

    mul-int v3, v13, v2

    .line 373
    invoke-static {v3}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 376
    div-int/lit8 v9, v13, 0x4

    .line 379
    iget v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->srcWidth:I

    const/4 v8, 0x1

    const v7, 0x88eb

    if-ne v3, v11, :cond_1

    iget v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->srcHeight:I

    if-eq v3, v12, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    goto :goto_2

    .line 381
    :cond_1
    :goto_0
    iput v11, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->srcWidth:I

    .line 382
    iput v12, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->srcHeight:I

    .line 384
    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    if-nez v3, :cond_2

    new-array v3, v14, [I

    .line 385
    iput-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v14, :cond_2

    .line 387
    iget-object v4, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 391
    :cond_2
    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    aget v4, v3, v1

    if-eqz v4, :cond_3

    .line 392
    invoke-static {v14, v3, v1}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    .line 395
    :cond_3
    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    invoke-static {v14, v3, v1}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    mul-int v3, v9, v2

    mul-int/lit8 v3, v3, 0x4

    .line 397
    iget-object v4, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    aget v4, v4, v1

    invoke-static {v7, v4}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/4 v4, 0x0

    const v5, 0x88e1

    .line 398
    invoke-static {v7, v3, v4, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 399
    iget-object v6, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    aget v6, v6, v8

    invoke-static {v7, v6}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 400
    invoke-static {v7, v3, v4, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 401
    invoke-static {v7, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/16 v16, 0x1

    .line 404
    :goto_2
    iget v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->m_FrameIndex:I

    rem-int/lit8 v17, v3, 0x2

    add-int/lit8 v3, v17, 0x1

    .line 405
    rem-int/lit8 v18, v3, 0x2

    .line 409
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 410
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 411
    invoke-virtual {v6, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v3, -0x41000000    # -0.5f

    .line 412
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 414
    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3, v9, v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 417
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    const v5, 0x8d40

    invoke-static {v5, v2}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const-string v2, "glBindFramebuffer"

    .line 418
    invoke-static {v2}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 421
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;->setPlaneY()V

    .line 422
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v3, p1

    move-object v4, v6

    move v5, v11

    move-object/from16 v21, v6

    move v6, v12

    const v1, 0x88eb

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v19, v9

    move-object/from16 v22, v10

    move v10, v12

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawWrapTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 427
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;->setPlaneU()V

    .line 428
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    const/4 v7, 0x0

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v4, v21

    move v8, v12

    move/from16 v9, v19

    move v10, v15

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawWrapTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 433
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/WrapYuvConverter$ShaderCallbacks;->setPlaneV()V

    .line 434
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    move/from16 v7, v19

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawWrapTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 438
    iget-object v2, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0x4

    .line 440
    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    aget v3, v3, v17

    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 441
    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v6

    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v7

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES30;->glReadPixels(IIIIIII)V

    .line 443
    iget-object v3, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->downloadPboIds:[I

    aget v3, v3, v18

    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 444
    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES30;->glMapBufferRange(IIII)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    check-cast v2, Ljava/nio/ByteBuffer;

    move-object/from16 v9, v22

    if-nez v16, :cond_4

    .line 448
    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 449
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 453
    :cond_4
    invoke-static {v1}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    .line 454
    invoke-static {v1, v4}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const v1, 0x8d40

    .line 455
    invoke-static {v1, v4}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 457
    iget v1, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->m_FrameIndex:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/netease/lava/webrtc/WrapYuvConverter;->m_FrameIndex:I

    .line 459
    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    const-string v1, "WrapYuvConverter.rgbConvertToI420_2"

    .line 460
    invoke-static {v1}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    if-eqz v16, :cond_5

    .line 463
    invoke-static {v9}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 464
    invoke-virtual/range {p0 .. p1}, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbConvertToI420(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v1

    return-object v1

    :cond_5
    mul-int v1, v13, v12

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 471
    div-int/lit8 v10, v13, 0x2

    add-int v3, v1, v10

    .line 473
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 474
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 475
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 477
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v2, v15, -0x1

    mul-int v2, v2, v13

    add-int/2addr v2, v10

    add-int/2addr v1, v2

    .line 480
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 481
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 483
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v3, v2

    .line 484
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 485
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    mul-int v3, v13, v15

    .line 487
    div-int/2addr v3, v14

    invoke-static {v3}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 488
    invoke-static {v3}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v3, v1

    move v4, v13

    move-object v5, v14

    move v6, v10

    move v7, v10

    move-object v1, v8

    move v8, v15

    .line 490
    invoke-static/range {v3 .. v8}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    move-object v3, v2

    move-object v5, v1

    .line 491
    invoke-static/range {v3 .. v8}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    const/4 v2, 0x0

    .line 493
    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 494
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 496
    new-instance v15, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$0-_hCAZPW2Mm3NprL9-zYL01lbU;

    invoke-direct {v15, v9, v14, v1}, Lcom/netease/lava/webrtc/-$$Lambda$WrapYuvConverter$0-_hCAZPW2Mm3NprL9-zYL01lbU;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

    move v2, v11

    move v3, v12

    move-object/from16 v4, v16

    move v5, v13

    move-object v6, v14

    move-object v8, v1

    move v9, v10

    move-object v10, v15

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/JavaI420Buffer;->wrap(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/lang/Runnable;)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v1

    return-object v1
.end method

.method public setOpenGles3(Z)V
    .locals 0

    .line 350
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/WrapYuvConverter;->isGles3:Z

    return-void
.end method

.method public wrapConvert(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 358
    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbConvertToI420(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object p1

    return-object p1
.end method

.method public yuvConvertToRGB(Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;
    .locals 16

    move-object/from16 v11, p0

    .line 155
    iget-object v0, v11, Lcom/netease/lava/webrtc/WrapYuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 157
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getWidth()I

    move-result v10

    .line 158
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getHeight()I

    move-result v12

    .line 160
    iget-object v0, v11, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0, v10, v12}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 163
    iget-object v0, v11, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v0

    const v13, 0x8d40

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v0, "glBindFramebuffer"

    .line 164
    invoke-static {v0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 167
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 168
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 169
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v0, -0x41000000    # -0.5f

    .line 170
    invoke-virtual {v3, v0, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 172
    iget-object v1, v11, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbDrawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p1

    move v4, v10

    move v5, v12

    move v8, v10

    move v9, v12

    invoke-static/range {v1 .. v9}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawWrapTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    const-string v0, "WrapYuvConverter.yuvConvertToRGB"

    .line 177
    invoke-static {v0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 180
    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const/4 v0, 0x3

    new-array v5, v0, [I

    .line 182
    fill-array-data v5, :array_0

    .line 183
    new-instance v13, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;

    iget-object v0, v11, Lcom/netease/lava/webrtc/WrapYuvConverter;->rgbTextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getTextureId()I

    move-result v4

    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getHandler()Landroid/os/Handler;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getFenceSyncObject()J

    move-result-wide v14

    const/4 v3, 0x1

    const/4 v6, 0x0

    move-object v0, v13

    move v1, v10

    move v2, v12

    move-object/from16 v8, p0

    move-wide v9, v14

    invoke-direct/range {v0 .. v10}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;-><init>(IIII[ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/WrapYuvConverter;J)V

    return-object v13

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
