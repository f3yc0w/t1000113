.class public Lcom/netease/lava/webrtc/YuvConverter;
.super Ljava/lang/Object;
.source "YuvConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER:Ljava/lang/String; = "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

.field private static final TAG:Ljava/lang/String; = "YuvConverter"


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

.field private final shaderCallbacks:Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;

.field private srcHeight:I

.field private srcWidth:I

.field private final threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance v0, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    .line 110
    new-instance v1, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    const/16 v2, 0x1908

    invoke-direct {v1, v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;-><init>(I)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    .line 112
    new-instance v1, Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;-><init>(Lcom/netease/lava/webrtc/YuvConverter$1;)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/YuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;

    .line 113
    new-instance v2, Lcom/netease/lava/webrtc/GlGenericDrawer;

    const-string v3, "uniform vec2 xUnit;\nuniform vec4 coeffs;\n\nvoid main() {\n  gl_FragColor.r = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 1.5 * xUnit).rgb);\n  gl_FragColor.g = coeffs.a + dot(coeffs.rgb,\n      sample(tc - 0.5 * xUnit).rgb);\n  gl_FragColor.b = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 0.5 * xUnit).rgb);\n  gl_FragColor.a = coeffs.a + dot(coeffs.rgb,\n      sample(tc + 1.5 * xUnit).rgb);\n}\n"

    invoke-direct {v2, v3, v1}, Lcom/netease/lava/webrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;)V

    iput-object v2, p0, Lcom/netease/lava/webrtc/YuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    .line 126
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->isGles3:Z

    .line 128
    iput v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->srcWidth:I

    .line 129
    iput v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->srcHeight:I

    .line 130
    iput v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->m_FrameIndex:I

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->is_clear:Z

    const-string v0, "YuvConverter"

    const-string v1, "create"

    .line 132
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$convert$0(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 248
    invoke-static {p0}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 249
    invoke-static {p1}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 250
    invoke-static {p2}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method static synthetic lambda$convert2$1(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 411
    invoke-static {p0}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 412
    invoke-static {p1}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 413
    invoke-static {p2}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public clearPBO()V
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->is_clear:Z

    if-nez v0, :cond_0

    const-string v0, "YuvConverter"

    const-string v1, "clearPBO"

    .line 418
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 419
    iget-object v1, p0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    const/4 v0, 0x1

    .line 420
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->is_clear:Z

    .line 421
    iput v2, p0, Lcom/netease/lava/webrtc/YuvConverter;->srcWidth:I

    .line 422
    iput v2, p0, Lcom/netease/lava/webrtc/YuvConverter;->srcHeight:I

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    :cond_0
    return-void
.end method

.method public convert(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 17

    move-object/from16 v0, p0

    .line 137
    iget-object v1, v0, Lcom/netease/lava/webrtc/YuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 166
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getWidth()I

    move-result v1

    .line 167
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getHeight()I

    move-result v11

    add-int/lit8 v2, v1, 0x7

    .line 168
    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v12, v2, 0x8

    add-int/lit8 v2, v11, 0x1

    .line 169
    div-int/lit8 v13, v2, 0x2

    add-int v2, v11, v13

    mul-int v3, v12, v2

    .line 172
    invoke-static {v3}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 175
    div-int/lit8 v15, v12, 0x4

    .line 178
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 179
    invoke-virtual {v10, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 180
    invoke-virtual {v10, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v3, -0x41000000    # -0.5f

    .line 181
    invoke-virtual {v10, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 183
    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3, v15, v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 186
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    const v9, 0x8d40

    invoke-static {v9, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v2, "glBindFramebuffer"

    .line 187
    invoke-static {v2}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 190
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;->setPlaneY()V

    .line 191
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p1

    move-object v4, v10

    move v5, v1

    move v6, v11

    move v9, v15

    move-object/from16 v16, v10

    move v10, v11

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 196
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;->setPlaneU()V

    .line 197
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    div-int/lit8 v15, v15, 0x2

    move-object/from16 v4, v16

    move v8, v11

    move v9, v15

    move v10, v13

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 202
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;->setPlaneV()V

    .line 203
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    move v7, v15

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 207
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v6

    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    move-object v10, v14

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v2, "YuvConverter.convert"

    .line 210
    invoke-static {v2}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const/4 v2, 0x0

    const v3, 0x8d40

    .line 213
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    mul-int v3, v12, v11

    add-int/2addr v3, v2

    .line 219
    div-int/lit8 v9, v12, 0x2

    add-int v4, v3, v9

    .line 221
    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 222
    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 223
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 225
    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v5, v13, -0x1

    mul-int v5, v5, v12

    add-int/2addr v5, v9

    add-int/2addr v3, v5

    .line 228
    invoke-virtual {v14, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 229
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 231
    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v4, v5

    .line 232
    invoke-virtual {v14, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 233
    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v15

    mul-int v4, v12, v13

    .line 238
    div-int/lit8 v4, v4, 0x2

    invoke-static {v4}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 239
    invoke-static {v4}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    move v4, v12

    move-object v5, v8

    move v6, v9

    move-object/from16 p1, v7

    move v7, v9

    move-object v2, v8

    move v8, v13

    .line 241
    invoke-static/range {v3 .. v8}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    move-object v3, v15

    move-object/from16 v5, p1

    .line 242
    invoke-static/range {v3 .. v8}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    const/4 v3, 0x0

    .line 244
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-object/from16 v8, p1

    .line 245
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 247
    new-instance v13, Lcom/netease/lava/webrtc/-$$Lambda$YuvConverter$rMAecQVuOJQuPg36Br05RoBI_LY;

    invoke-direct {v13, v14, v2, v8}, Lcom/netease/lava/webrtc/-$$Lambda$YuvConverter$rMAecQVuOJQuPg36Br05RoBI_LY;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

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

.method public convert2(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 23

    move-object/from16 v0, p0

    .line 277
    iget-object v1, v0, Lcom/netease/lava/webrtc/YuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    const/4 v1, 0x0

    .line 279
    iput-boolean v1, v0, Lcom/netease/lava/webrtc/YuvConverter;->is_clear:Z

    .line 281
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getWidth()I

    move-result v11

    .line 282
    invoke-interface/range {p1 .. p1}, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;->getHeight()I

    move-result v12

    add-int/lit8 v2, v11, 0x7

    .line 283
    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v13, v2, 0x8

    add-int/lit8 v2, v12, 0x1

    const/4 v14, 0x2

    .line 284
    div-int/lit8 v15, v2, 0x2

    add-int v2, v12, v15

    mul-int v3, v13, v2

    .line 287
    invoke-static {v3}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 290
    div-int/lit8 v9, v13, 0x4

    .line 293
    iget v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->srcWidth:I

    const/4 v8, 0x1

    const v7, 0x88eb

    if-ne v3, v11, :cond_1

    iget v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->srcHeight:I

    if-eq v3, v12, :cond_0

    goto :goto_0

    :cond_0
    const/16 v16, 0x0

    goto :goto_2

    .line 295
    :cond_1
    :goto_0
    iput v11, v0, Lcom/netease/lava/webrtc/YuvConverter;->srcWidth:I

    .line 296
    iput v12, v0, Lcom/netease/lava/webrtc/YuvConverter;->srcHeight:I

    .line 298
    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    if-nez v3, :cond_2

    new-array v3, v14, [I

    .line 299
    iput-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v14, :cond_2

    .line 301
    iget-object v4, v0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    aput v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 305
    :cond_2
    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    aget v4, v3, v1

    if-eqz v4, :cond_3

    .line 306
    invoke-static {v14, v3, v1}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    .line 309
    :cond_3
    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    invoke-static {v14, v3, v1}, Landroid/opengl/GLES30;->glGenBuffers(I[II)V

    mul-int v3, v9, v2

    mul-int/lit8 v3, v3, 0x4

    .line 311
    iget-object v4, v0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    aget v4, v4, v1

    invoke-static {v7, v4}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/4 v4, 0x0

    const v5, 0x88e1

    .line 312
    invoke-static {v7, v3, v4, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 313
    iget-object v6, v0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    aget v6, v6, v8

    invoke-static {v7, v6}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 314
    invoke-static {v7, v3, v4, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 315
    invoke-static {v7, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/16 v16, 0x1

    .line 318
    :goto_2
    iget v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->m_FrameIndex:I

    rem-int/lit8 v17, v3, 0x2

    add-int/lit8 v3, v17, 0x1

    .line 319
    rem-int/lit8 v18, v3, 0x2

    .line 323
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    .line 324
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 325
    invoke-virtual {v6, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    const/high16 v3, -0x41000000    # -0.5f

    .line 326
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 328
    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3, v9, v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->setSize(II)V

    .line 331
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getFrameBufferId()I

    move-result v2

    const v5, 0x8d40

    invoke-static {v5, v2}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    const-string v2, "glBindFramebuffer"

    .line 332
    invoke-static {v2}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 335
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;->setPlaneY()V

    .line 336
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

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

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 341
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;->setPlaneU()V

    .line 342
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    const/4 v7, 0x0

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v4, v21

    move v8, v12

    move/from16 v9, v19

    move v10, v15

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 347
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->shaderCallbacks:Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/YuvConverter$ShaderCallbacks;->setPlaneV()V

    .line 348
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    move/from16 v7, v19

    invoke-static/range {v2 .. v10}, Lcom/netease/lava/webrtc/VideoFrameDrawer;->drawTexture(Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;Landroid/graphics/Matrix;IIIIII)V

    .line 352
    iget-object v2, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v2

    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v3

    mul-int v2, v2, v3

    mul-int/lit8 v2, v2, 0x4

    .line 354
    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    aget v3, v3, v17

    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 355
    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getWidth()I

    move-result v6

    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->getHeight()I

    move-result v7

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Landroid/opengl/GLES30;->glReadPixels(IIIIIII)V

    .line 357
    iget-object v3, v0, Lcom/netease/lava/webrtc/YuvConverter;->downloadPboIds:[I

    aget v3, v3, v18

    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 358
    invoke-static {v1, v4, v2, v3}, Landroid/opengl/GLES30;->glMapBufferRange(IIII)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    check-cast v2, Ljava/nio/ByteBuffer;

    move-object/from16 v9, v22

    if-nez v16, :cond_4

    .line 362
    invoke-virtual {v9, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 363
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 367
    :cond_4
    invoke-static {v1}, Landroid/opengl/GLES30;->glUnmapBuffer(I)Z

    .line 368
    invoke-static {v1, v4}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    const v1, 0x8d40

    .line 369
    invoke-static {v1, v4}, Landroid/opengl/GLES30;->glBindFramebuffer(II)V

    .line 371
    iget v1, v0, Lcom/netease/lava/webrtc/YuvConverter;->m_FrameIndex:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/netease/lava/webrtc/YuvConverter;->m_FrameIndex:I

    .line 373
    invoke-static {}, Landroid/opengl/GLES30;->glFlush()V

    const-string v1, "YuvConverter.convert2"

    .line 374
    invoke-static {v1}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    if-eqz v16, :cond_5

    .line 377
    invoke-static {v9}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 378
    invoke-virtual/range {p0 .. p1}, Lcom/netease/lava/webrtc/YuvConverter;->convert(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v1

    return-object v1

    :cond_5
    mul-int v1, v13, v12

    const/4 v2, 0x0

    add-int/2addr v1, v2

    .line 385
    div-int/lit8 v10, v13, 0x2

    add-int v3, v1, v10

    .line 387
    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 388
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 389
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 391
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v2, v15, -0x1

    mul-int v2, v2, v13

    add-int/2addr v2, v10

    add-int/2addr v1, v2

    .line 394
    invoke-virtual {v9, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 395
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 397
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    add-int/2addr v3, v2

    .line 398
    invoke-virtual {v9, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 399
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v2

    mul-int v3, v13, v15

    .line 401
    div-int/2addr v3, v14

    invoke-static {v3}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v14

    .line 402
    invoke-static {v3}, Lcom/netease/lava/webrtc/JniCommon;->nativeAllocateByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v3, v1

    move v4, v13

    move-object v5, v14

    move v6, v10

    move v7, v10

    move-object v1, v8

    move v8, v15

    .line 404
    invoke-static/range {v3 .. v8}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    move-object v3, v2

    move-object v5, v1

    .line 405
    invoke-static/range {v3 .. v8}, Lcom/netease/lava/webrtc/YuvHelper;->copyPlane(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;III)V

    const/4 v2, 0x0

    .line 407
    invoke-virtual {v14, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 408
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 410
    new-instance v15, Lcom/netease/lava/webrtc/-$$Lambda$YuvConverter$D16fkEBZijgmqddKBkevaXGUuMk;

    invoke-direct {v15, v9, v14, v1}, Lcom/netease/lava/webrtc/-$$Lambda$YuvConverter$D16fkEBZijgmqddKBkevaXGUuMk;-><init>(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V

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

.method public isOpenGles3()Z
    .locals 1

    .line 268
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->isGles3:Z

    return v0
.end method

.method public release()V
    .locals 2

    const-string v0, "YuvConverter"

    const-string v1, "release"

    .line 254
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->checkIsOnValidThread()V

    .line 256
    iget-object v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->drawer:Lcom/netease/lava/webrtc/GlGenericDrawer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlGenericDrawer;->release()V

    .line 257
    iget-object v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->i420TextureFrameBuffer:Lcom/netease/lava/webrtc/GlTextureFrameBuffer;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlTextureFrameBuffer;->release()V

    .line 258
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/YuvConverter;->clearPBO()V

    .line 260
    iget-object v0, p0, Lcom/netease/lava/webrtc/YuvConverter;->threadChecker:Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;->detachThread()V

    return-void
.end method

.method public setOpenGles3(Z)V
    .locals 0

    .line 264
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/YuvConverter;->isGles3:Z

    return-void
.end method

.method public wrapConvert(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 272
    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/YuvConverter;->convert(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;)Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object p1

    return-object p1
.end method
