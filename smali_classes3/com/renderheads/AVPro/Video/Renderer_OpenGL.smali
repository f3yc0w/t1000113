.class public Lcom/renderheads/AVPro/Video/Renderer_OpenGL;
.super Ljava/lang/Object;
.source "Renderer_OpenGL.java"


# instance fields
.field private m_FragmentShaderHandle:I

.field private m_FragmentShaderSource:Ljava/lang/String;

.field private m_FrameBufferHandle:I

.field private m_FrameBufferTextureHandle:I

.field private m_FramebufferHeight:I

.field private m_FramebufferWidth:I

.field private m_HasImageData:Z

.field private m_Height:I

.field private m_ImageData:Ljava/nio/ByteBuffer;

.field private m_MatrixFloatBuffer:Ljava/nio/FloatBuffer;

.field private m_MatrixHandle:I

.field private m_ProgramHandle:I

.field private m_QuadPositions:Ljava/nio/FloatBuffer;

.field private m_QuadUVs:Ljava/nio/FloatBuffer;

.field private m_TextureHandle:I

.field private m_UseFastOesPath:Z

.field private m_VertexAttribHandle:I

.field private m_VertexShaderHandle:I

.field private m_VertexShaderSource:Ljava/lang/String;

.field private m_Width:I

.field private m_aiVertexBufferObjects:[I

.field private m_bBlendEnabled:Z

.field private m_bCanUseGLBindVertexArray:Z

.field private m_bCullFace:Z

.field private m_bDepthTest:Z

.field private m_bStencilEnabled:Z

.field private m_bTextureFormat_EOS:Z

.field private m_iCurrentProgram:I

.field private m_iFrameBufferBinding:I

.field private m_iRenderBufferBinding:I

.field private m_iVertexArrayObject:I

.field private m_uvAttribHandle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 21
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_aiVertexBufferObjects:[I

    return-void
.end method

.method private static CreateFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "values"
        }
    .end annotation

    .line 1
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 5
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method private CreateGlQuadGeometry()V
    .locals 12

    const/16 v0, 0xc

    new-array v0, v0, [F

    .line 1
    fill-array-data v0, :array_0

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 9
    fill-array-data v1, :array_1

    .line 17
    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->CreateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_QuadPositions:Ljava/nio/FloatBuffer;

    .line 18
    invoke-static {v1}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->CreateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_QuadUVs:Ljava/nio/FloatBuffer;

    .line 20
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bCanUseGLBindVertexArray:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 24
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 25
    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGenVertexArrays(ILjava/nio/IntBuffer;)V

    const/4 v2, 0x0

    .line 26
    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iVertexArrayObject:I

    .line 28
    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    const/4 v1, 0x2

    .line 30
    invoke-static {v1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v3

    .line 31
    invoke-static {v1, v3}, Landroid/opengl/GLES30;->glGenBuffers(ILjava/nio/IntBuffer;)V

    .line 32
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_aiVertexBufferObjects:[I

    invoke-virtual {v3, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v4

    aput v4, v1, v2

    .line 33
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_aiVertexBufferObjects:[I

    invoke-virtual {v3, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v3

    aput v3, v1, v0

    .line 35
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_aiVertexBufferObjects:[I

    aget v1, v1, v2

    const v3, 0x8892

    invoke-static {v3, v1}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 36
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_QuadPositions:Ljava/nio/FloatBuffer;

    const/16 v4, 0x30

    const v5, 0x88e4

    invoke-static {v3, v4, v1, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 37
    iget v6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexAttribHandle:I

    const/4 v7, 0x3

    const/16 v8, 0x1406

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 38
    iget v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexAttribHandle:I

    invoke-static {v1}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 40
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_aiVertexBufferObjects:[I

    aget v0, v1, v0

    invoke-static {v3, v0}, Landroid/opengl/GLES30;->glBindBuffer(II)V

    .line 41
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_QuadUVs:Ljava/nio/FloatBuffer;

    const/16 v1, 0x20

    invoke-static {v3, v1, v0, v5}, Landroid/opengl/GLES30;->glBufferData(IILjava/nio/Buffer;I)V

    .line 42
    iget v6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_uvAttribHandle:I

    const/4 v7, 0x2

    invoke-static/range {v6 .. v11}, Landroid/opengl/GLES30;->glVertexAttribPointer(IIIZII)V

    .line 43
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_uvAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES30;->glEnableVertexAttribArray(I)V

    .line 45
    invoke-static {v2}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private CreateGlShaderProgram()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    const v1, 0x8b31

    invoke-direct {p0, v1, v0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->LoadGlShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderHandle:I

    .line 2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    const v1, 0x8b30

    invoke-direct {p0, v1, v0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->LoadGlShader(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderHandle:I

    .line 4
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    if-lez v0, :cond_0

    .line 7
    iget v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 8
    iget v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 9
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 12
    iput v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ProgramHandle:I

    .line 15
    iget v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 16
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ProgramHandle:I

    iget v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderHandle:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glDetachShader(II)V

    .line 18
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 19
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    :cond_0
    return-void
.end method

.method private CreateGlTexture(I)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTextureFiltering"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v1

    .line 6
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_TextureHandle:I

    if-lez v1, :cond_4

    .line 13
    iget-boolean v3, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bTextureFormat_EOS:Z

    if-eqz v3, :cond_0

    const v3, 0x8d65

    goto :goto_0

    :cond_0
    const/16 v3, 0xde1

    .line 15
    :goto_0
    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 16
    iget-boolean v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_HasImageData:Z

    if-eqz v1, :cond_1

    .line 18
    iget v7, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_Width:I

    iget v8, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_Height:I

    iget-object v12, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ImageData:Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/16 v6, 0x1908

    const/4 v9, 0x0

    const/16 v10, 0x1908

    const/16 v11, 0x1401

    move v4, v3

    invoke-static/range {v4 .. v12}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    :cond_1
    const/16 v1, 0x2800

    const/16 v4, 0x2601

    const/16 v5, 0x2801

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/16 p1, 0x2600

    .line 44
    invoke-static {v3, v5, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 45
    invoke-static {v3, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto :goto_1

    .line 46
    :cond_2
    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2703

    .line 47
    invoke-static {v3, v1, p1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    goto :goto_1

    .line 54
    :cond_3
    invoke-static {v3, v5, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 55
    invoke-static {v3, v1, v4}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    :goto_1
    const/16 p1, 0x2802

    const v0, 0x812f

    .line 69
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 70
    invoke-static {v3, p1, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 72
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_4
    return-void
.end method

.method private DestroyGlTexture()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_TextureHandle:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 4
    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 5
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 8
    iput v3, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_TextureHandle:I

    :cond_0
    return-void
.end method

.method private LoadGlShader(ILjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "source"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 5
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    :cond_0
    return p1
.end method

.method private LoadGlShaders_Texture2D()V
    .locals 7

    const-string v0, "#version 100\n"

    .line 1
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "precision mediump float;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexPosition;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexUV;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uniform mat4 textureMat;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying highp vec2 out_uv;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "void main()\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "{\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tgl_Position = vec4(vertexPosition.xy, 0.0, 1.0);\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tout_uv = (textureMat * vertexUV).xy;\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uniform sampler2D texture;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tgl_FragColor = texture2D(texture, out_uv);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    return-void
.end method

.method private LoadGlShaders_TextureOES()V
    .locals 7

    const-string v0, "#version 100\n"

    .line 1
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "precision mediump float;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexPosition;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "attribute vec4 vertexUV;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "uniform mat4 textureMat;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "varying highp vec2 out_uv;\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "void main()\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "{\n"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tgl_Position = vec4(vertexPosition.xy, 0.0, 1.0);\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\tout_uv = (textureMat * vertexUV).xy;\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "}\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexShaderSource:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "uniform samplerExternalOES texture;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tgl_FragColor = texture2D(texture, out_uv);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FragmentShaderSource:Ljava/lang/String;

    return-void
.end method

.method private SetupGlShaderProgram()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ProgramHandle:I

    const-string v1, "vertexPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexAttribHandle:I

    .line 2
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ProgramHandle:I

    const-string v1, "vertexUV"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_uvAttribHandle:I

    .line 3
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ProgramHandle:I

    const-string v1, "textureMat"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_MatrixHandle:I

    return-void
.end method


# virtual methods
.method public Blit(Landroid/graphics/SurfaceTexture;[F)J
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "surfaceTexture",
            "matrix"
        }
    .end annotation

    const v0, 0x8893

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const v0, 0x8892

    .line 2
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindBuffer(II)V

    const/16 v0, 0xb90

    .line 3
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb71

    .line 4
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xb44

    .line 5
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/16 v0, 0xbe2

    .line 6
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    const/4 v2, 0x1

    .line 7
    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES20;->glColorMask(ZZZZ)V

    .line 8
    invoke-static {v1}, Landroid/opengl/GLES20;->glDepthMask(Z)V

    .line 11
    iget-boolean v3, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bTextureFormat_EOS:Z

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 13
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v3, 0x303

    .line 14
    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 18
    :cond_0
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ProgramHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 20
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bCanUseGLBindVertexArray:Z

    if-nez v0, :cond_1

    .line 22
    iget v3, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexAttribHandle:I

    iget-object v8, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_QuadPositions:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/16 v5, 0x1406

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 23
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 25
    iget v3, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_uvAttribHandle:I

    iget-object v8, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_QuadUVs:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    const/16 v7, 0x8

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 26
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_uvAttribHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 29
    :cond_1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bTextureFormat_EOS:Z

    const v3, 0x8d65

    if-eqz v0, :cond_2

    const v4, 0x8d65

    goto :goto_0

    :cond_2
    const/16 v4, 0xde1

    :goto_0
    const v5, 0x84c0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_6

    .line 36
    invoke-static {v2}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const v6, 0x8d68

    .line 37
    invoke-static {v3, v6, v0}, Landroid/opengl/GLES20;->glGetTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 39
    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    goto :goto_1

    :cond_3
    const v0, 0x84c2

    .line 42
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_4
    const v0, 0x84c1

    .line 43
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 44
    :goto_1
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 50
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to updateTexImage in Blit: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_2
    if-nez p2, :cond_6

    const/16 p2, 0x10

    new-array p2, p2, [F

    .line 62
    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    goto :goto_3

    .line 73
    :cond_5
    invoke-static {v5}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 74
    iget p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_TextureHandle:I

    invoke-static {v4, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    :cond_6
    :goto_3
    if-eqz p2, :cond_7

    .line 81
    invoke-static {p2}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->CreateFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_MatrixFloatBuffer:Ljava/nio/FloatBuffer;

    .line 82
    iget p2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_MatrixHandle:I

    invoke-static {p2, v2, v1, p1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZLjava/nio/FloatBuffer;)V

    .line 86
    :cond_7
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bCanUseGLBindVertexArray:Z

    const/4 p2, 0x4

    const/4 v0, 0x5

    if-eqz p1, :cond_8

    .line 89
    iget p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iVertexArrayObject:I

    invoke-static {p1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    .line 90
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 91
    invoke-static {v1}, Landroid/opengl/GLES30;->glBindVertexArray(I)V

    goto :goto_4

    .line 95
    :cond_8
    invoke-static {v0, v1, p2}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 99
    :goto_4
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 100
    iget p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_uvAttribHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 101
    iget p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_VertexAttribHandle:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 102
    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public CreateRenderTarget(II)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    .line 3
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 6
    iput p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FramebufferWidth:I

    .line 7
    iput p2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FramebufferHeight:I

    const/4 p1, 0x1

    .line 9
    invoke-static {p1}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object p2

    .line 12
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenFramebuffers(ILjava/nio/IntBuffer;)V

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iput v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferHandle:I

    .line 17
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 18
    invoke-virtual {p2, v0}, Ljava/nio/IntBuffer;->get(I)I

    move-result p1

    iput p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferTextureHandle:I

    .line 22
    iget p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferHandle:I

    const p2, 0x8d40

    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 25
    iget p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferTextureHandle:I

    const/16 v1, 0xde1

    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 28
    iget v5, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FramebufferWidth:I

    iget v6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FramebufferHeight:I

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/16 v4, 0x1908

    const/4 v7, 0x0

    const/16 v8, 0x1908

    const/16 v9, 0x1401

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/16 p1, 0x2801

    const/16 v2, 0x2601

    .line 29
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 30
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const v2, 0x812f

    .line 31
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 32
    invoke-static {v1, p1, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 35
    iget p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferTextureHandle:I

    const v2, 0x8ce0

    invoke-static {p2, v2, v1, p1, v0}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    const/4 p1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    invoke-static {p1, p1, p1, v2}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4500

    .line 38
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 41
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 42
    invoke-static {p2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 44
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    return-void
.end method

.method public Destroy()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->DestroyGlTexture()V

    .line 3
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->DestroyRenderTarget()V

    .line 5
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ProgramHandle:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 7
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 8
    iput v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ProgramHandle:I

    .line 11
    :cond_0
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bCanUseGLBindVertexArray:Z

    if-eqz v0, :cond_2

    .line 13
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iVertexArrayObject:I

    const/4 v2, 0x1

    if-lez v0, :cond_1

    new-array v3, v2, [I

    aput v0, v3, v1

    .line 16
    invoke-static {v2, v3, v1}, Landroid/opengl/GLES30;->glDeleteVertexArrays(I[II)V

    .line 18
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    .line 21
    iput v1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iVertexArrayObject:I

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_aiVertexBufferObjects:[I

    aget v3, v0, v1

    if-lez v3, :cond_2

    const/4 v3, 0x2

    new-array v4, v3, [I

    .line 26
    aget v5, v0, v1

    aput v5, v4, v1

    aget v0, v0, v2

    aput v0, v4, v2

    .line 27
    invoke-static {v3, v4, v1}, Landroid/opengl/GLES30;->glDeleteBuffers(I[II)V

    .line 29
    invoke-static {}, Landroid/opengl/GLES30;->glGetError()I

    .line 32
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_aiVertexBufferObjects:[I

    aput v1, v0, v1

    .line 33
    aput v1, v0, v2

    :cond_2
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_QuadPositions:Ljava/nio/FloatBuffer;

    .line 38
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_QuadUVs:Ljava/nio/FloatBuffer;

    .line 39
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_aiVertexBufferObjects:[I

    .line 40
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_MatrixFloatBuffer:Ljava/nio/FloatBuffer;

    return-void
.end method

.method public DestroyRenderTarget()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const v3, 0x8d40

    .line 4
    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8ce0

    const/16 v4, 0xde1

    .line 5
    invoke-static {v3, v0, v4, v2, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    new-array v0, v1, [I

    .line 7
    iget v4, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferHandle:I

    aput v4, v0, v2

    .line 8
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 9
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 12
    iput v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferHandle:I

    .line 14
    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 15
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 19
    :cond_0
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferTextureHandle:I

    if-eqz v0, :cond_1

    new-array v3, v1, [I

    aput v0, v3, v2

    .line 24
    invoke-static {v1, v3, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 25
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 28
    iput v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferTextureHandle:I

    :cond_1
    return-void
.end method

.method public EndRender()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferHandle:I

    if-eqz v0, :cond_4

    .line 4
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bBlendEnabled:Z

    const/16 v1, 0xbe2

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 5
    :goto_0
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bDepthTest:Z

    const/16 v1, 0xb71

    if-eqz v0, :cond_1

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 6
    :goto_1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bCullFace:Z

    const/16 v1, 0xb44

    if-eqz v0, :cond_2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_2

    :cond_2
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 7
    :goto_2
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bStencilEnabled:Z

    const/16 v1, 0xb90

    if-eqz v0, :cond_3

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    goto :goto_3

    :cond_3
    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 9
    :goto_3
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iFrameBufferBinding:I

    const v1, 0x8d40

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 10
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iRenderBufferBinding:I

    const v1, 0x8d41

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    .line 11
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iCurrentProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    :cond_4
    return-void
.end method

.method public GetGlTextureHandle(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actualTexture"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_UseFastOesPath:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferTextureHandle:I

    return p1

    .line 5
    :cond_0
    iget p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_TextureHandle:I

    return p1
.end method

.method public Setup(II[BZZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "data",
            "bTextureFormat_EOS",
            "bCanUseGLBindVertexArray",
            "useFastOesPath",
            "iTextureFiltering"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_Width:I

    .line 2
    iput p2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_Height:I

    .line 4
    iput-boolean p4, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bTextureFormat_EOS:Z

    .line 5
    iput-boolean p5, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bCanUseGLBindVertexArray:Z

    .line 6
    iput-boolean p6, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_UseFastOesPath:Z

    if-eqz p3, :cond_0

    mul-int p1, p1, p2

    mul-int/lit8 p1, p1, 0x4

    .line 10
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ImageData:Ljava/nio/ByteBuffer;

    .line 11
    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 12
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ImageData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    .line 13
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_ImageData:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_HasImageData:Z

    :cond_0
    if-nez p6, :cond_2

    .line 20
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bTextureFormat_EOS:Z

    if-eqz p1, :cond_1

    .line 22
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->LoadGlShaders_TextureOES()V

    goto :goto_0

    .line 25
    :cond_1
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->LoadGlShaders_Texture2D()V

    .line 29
    :cond_2
    :goto_0
    invoke-direct {p0, p7}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->CreateGlTexture(I)V

    if-nez p6, :cond_3

    .line 32
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->CreateGlShaderProgram()V

    .line 33
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->SetupGlShaderProgram()V

    .line 34
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->CreateGlQuadGeometry()V

    :cond_3
    return-void
.end method

.method public StartRender()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferHandle:I

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    .line 4
    invoke-static {v0}, Ljava/nio/IntBuffer;->allocate(I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/16 v1, 0xbe2

    .line 5
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bBlendEnabled:Z

    const/16 v2, 0xb71

    .line 6
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bDepthTest:Z

    const/16 v2, 0xb44

    .line 7
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bCullFace:Z

    const v2, 0x8b8d

    .line 8
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iCurrentProgram:I

    const v2, 0x8ca6

    .line 9
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iFrameBufferBinding:I

    const v2, 0x8ca7

    .line 10
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iput v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_iRenderBufferBinding:I

    const/16 v2, 0xb90

    .line 11
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glGetBooleanv(ILjava/nio/IntBuffer;)V

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    goto :goto_3

    :cond_3
    const/4 v3, 0x0

    :goto_3
    iput-boolean v3, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_bStencilEnabled:Z

    .line 14
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FrameBufferHandle:I

    const v2, 0x8d40

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const v0, 0x8d41

    .line 15
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindRenderbuffer(II)V

    const/16 v0, 0xc11

    .line 16
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 17
    iget v0, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FramebufferWidth:I

    iget v2, p0, Lcom/renderheads/AVPro/Video/Renderer_OpenGL;->m_FramebufferHeight:I

    invoke-static {v1, v1, v0, v2}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/16 v0, 0x4000

    .line 18
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    :cond_4
    return-void
.end method
