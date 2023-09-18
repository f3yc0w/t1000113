.class public Lcom/netease/lava/webrtc/GlGenericDrawer;
.super Ljava/lang/Object;
.source "GlGenericDrawer.java"

# interfaces
.implements Lcom/netease/lava/webrtc/RendererCommon$GlDrawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;,
        Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;
    }
.end annotation


# static fields
.field private static final DEFAULT_VERTEX_SHADER_STRING:Ljava/lang/String; = "varying vec2 tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\nuniform mat4 tex_mat;\nvoid main() {\n  gl_Position = in_pos;\n  tc = (tex_mat * in_tc).xy;\n}\n"

.field private static final FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

.field private static final FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

.field private static final INPUT_TEXTURE_COORDINATE_NAME:Ljava/lang/String; = "in_tc"

.field private static final INPUT_VERTEX_COORDINATE_NAME:Ljava/lang/String; = "in_pos"

.field private static final TEXTURE_MATRIX_NAME:Ljava/lang/String; = "tex_mat"


# instance fields
.field private currentShader:Lcom/netease/lava/webrtc/GlShader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private currentShaderType:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final genericFragmentSource:Ljava/lang/String;

.field private inPosLocation:I

.field private inTcLocation:I

.field private final shaderCallbacks:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;

.field private texMatrixLocation:I

.field private final vertexShader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 76
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/netease/lava/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v1

    sput-object v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    new-array v0, v0, [F

    .line 84
    fill-array-data v0, :array_1

    .line 85
    invoke-static {v0}, Lcom/netease/lava/webrtc/GlUtil;->createFloatBuffer([F)Ljava/nio/FloatBuffer;

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/GlGenericDrawer;->FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;)V
    .locals 1

    const-string v0, "varying vec2 tc;\nattribute vec4 in_pos;\nattribute vec4 in_tc;\nuniform mat4 tex_mat;\nvoid main() {\n  gl_Position = in_pos;\n  tc = (tex_mat * in_tc).xy;\n}\n"

    .line 137
    invoke-direct {p0, v0, p1, p2}, Lcom/netease/lava/webrtc/GlGenericDrawer;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/netease/lava/webrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/netease/lava/webrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    .line 144
    iput-object p3, p0, Lcom/netease/lava/webrtc/GlGenericDrawer;->shaderCallbacks:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;

    return-void
.end method

.method static createFragmentShaderString(Ljava/lang/String;Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;)Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    sget-object v1, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;->OES:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    if-ne p1, v1, :cond_0

    const-string v1, "#extension GL_OES_EGL_image_external : require\n"

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, "precision mediump float;\n"

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "varying vec2 tc;\n"

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v1, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;->YUV:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    if-ne p1, v1, :cond_1

    const-string p1, "uniform sampler2D y_tex;\n"

    .line 101
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "uniform sampler2D u_tex;\n"

    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "uniform sampler2D v_tex;\n"

    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "vec4 sample(vec2 p) {\n"

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  float y = texture2D(y_tex, p).r * 1.16438;\n"

    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  float u = texture2D(u_tex, p).r;\n"

    .line 109
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  float v = texture2D(v_tex, p).r;\n"

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "  return vec4(y + 1.59603 * v - 0.874202,\n"

    .line 111
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    y - 0.391762 * u - 0.812968 * v + 0.531668,\n"

    .line 112
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "    y + 2.01723 * u - 1.08563, 1);\n"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}\n"

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :cond_1
    sget-object v1, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;->OES:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    if-ne p1, v1, :cond_2

    const-string p1, "samplerExternalOES"

    goto :goto_0

    :cond_2
    const-string p1, "sampler2D"

    :goto_0
    const-string v1, "uniform "

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tex;\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "sample("

    const-string v1, "texture2D(tex, "

    .line 121
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private prepareShader(Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;[FIIII)V
    .locals 13

    move-object v1, p0

    move-object v0, p1

    .line 219
    :try_start_0
    iget-object v2, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->currentShaderType:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    invoke-virtual {p1, v2}, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 221
    iget-object v0, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->currentShader:Lcom/netease/lava/webrtc/GlShader;

    move-object v6, v0

    goto :goto_1

    .line 224
    :cond_0
    iput-object v0, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->currentShaderType:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    .line 225
    iget-object v2, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->currentShader:Lcom/netease/lava/webrtc/GlShader;

    if-eqz v2, :cond_1

    .line 226
    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlShader;->release()V

    .line 228
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/GlGenericDrawer;->createShader(Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;)Lcom/netease/lava/webrtc/GlShader;

    move-result-object v2

    .line 229
    iput-object v2, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->currentShader:Lcom/netease/lava/webrtc/GlShader;

    .line 231
    invoke-virtual {v2}, Lcom/netease/lava/webrtc/GlShader;->useProgram()V

    .line 233
    sget-object v5, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;->YUV:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    if-ne v0, v5, :cond_2

    const-string v0, "y_tex"

    .line 234
    invoke-virtual {v2, v0}, Lcom/netease/lava/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v0, "u_tex"

    .line 235
    invoke-virtual {v2, v0}, Lcom/netease/lava/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const-string v0, "v_tex"

    .line 236
    invoke-virtual {v2, v0}, Lcom/netease/lava/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    const/4 v5, 0x2

    invoke-static {v0, v5}, Landroid/opengl/GLES20;->glUniform1i(II)V

    goto :goto_0

    :cond_2
    const-string v0, "tex"

    .line 238
    invoke-virtual {v2, v0}, Lcom/netease/lava/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0, v4}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :goto_0
    const-string v0, "Create shader"

    .line 241
    invoke-static {v0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 242
    iget-object v0, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->shaderCallbacks:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;

    invoke-interface {v0, v2}, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;->onNewShader(Lcom/netease/lava/webrtc/GlShader;)V

    const-string v0, "tex_mat"

    .line 243
    invoke-virtual {v2, v0}, Lcom/netease/lava/webrtc/GlShader;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->texMatrixLocation:I

    const-string v0, "in_pos"

    .line 244
    invoke-virtual {v2, v0}, Lcom/netease/lava/webrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->inPosLocation:I

    const-string v0, "in_tc"

    .line 245
    invoke-virtual {v2, v0}, Lcom/netease/lava/webrtc/GlShader;->getAttribLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->inTcLocation:I

    move-object v6, v2

    .line 248
    :goto_1
    invoke-virtual {v6}, Lcom/netease/lava/webrtc/GlShader;->useProgram()V

    .line 251
    iget v0, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->inPosLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 252
    iget v7, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->inPosLocation:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/netease/lava/webrtc/GlGenericDrawer;->FULL_RECTANGLE_BUFFER:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 257
    iget v0, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->inTcLocation:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 258
    iget v7, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->inTcLocation:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lcom/netease/lava/webrtc/GlGenericDrawer;->FULL_RECTANGLE_TEXTURE_BUFFER:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 263
    iget v0, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->texMatrixLocation:I

    move-object v2, p2

    invoke-static {v0, v3, v4, p2, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 267
    iget-object v5, v1, Lcom/netease/lava/webrtc/GlGenericDrawer;->shaderCallbacks:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;

    move-object v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    invoke-interface/range {v5 .. v11}, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderCallbacks;->onPrepareShader(Lcom/netease/lava/webrtc/GlShader;[FIIII)V

    const-string v0, "Prepare shader"

    .line 269
    invoke-static {v0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GlGenericDrawer prepareShader exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GlGenericDrawer"

    .line 272
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method createShader(Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;)Lcom/netease/lava/webrtc/GlShader;
    .locals 3

    .line 149
    new-instance v0, Lcom/netease/lava/webrtc/GlShader;

    iget-object v1, p0, Lcom/netease/lava/webrtc/GlGenericDrawer;->vertexShader:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/lava/webrtc/GlGenericDrawer;->genericFragmentSource:Ljava/lang/String;

    .line 150
    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/GlGenericDrawer;->createFragmentShaderString(Ljava/lang/String;Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/netease/lava/webrtc/GlShader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public drawOes(I[FIIIIII)V
    .locals 7

    .line 160
    sget-object v1, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;->OES:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/netease/lava/webrtc/GlGenericDrawer;->prepareShader(Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;[FIIII)V

    const p2, 0x84c0

    .line 163
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const p2, 0x8d65

    .line 164
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 166
    invoke-static {p5, p6, p7, p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x5

    const/4 p3, 0x0

    const/4 p4, 0x4

    .line 167
    invoke-static {p1, p3, p4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 169
    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawRgb(I[FIIIIII)V
    .locals 7

    .line 179
    sget-object v1, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;->RGB:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/netease/lava/webrtc/GlGenericDrawer;->prepareShader(Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;[FIIII)V

    const p2, 0x84c0

    .line 182
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p2, 0xde1

    .line 183
    invoke-static {p2, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 185
    invoke-static {p5, p6, p7, p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x5

    const/4 p3, 0x0

    const/4 p4, 0x4

    .line 186
    invoke-static {p1, p3, p4}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 188
    invoke-static {p2, p3}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public drawYuv([I[FIIIIII)V
    .locals 7

    .line 198
    sget-object v1, Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;->YUV:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p7

    move v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/netease/lava/webrtc/GlGenericDrawer;->prepareShader(Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;[FIIII)V

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    const/16 p4, 0xde1

    const v0, 0x84c0

    const/4 v1, 0x3

    if-ge p3, v1, :cond_0

    add-int/2addr v0, p3

    .line 202
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 203
    aget v0, p1, p3

    invoke-static {p4, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 206
    :cond_0
    invoke-static {p5, p6, p7, p8}, Landroid/opengl/GLES20;->glViewport(IIII)V

    const/4 p1, 0x5

    const/4 p3, 0x4

    .line 207
    invoke-static {p1, p2, p3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    const/4 p1, 0x0

    :goto_1
    if-ge p1, v1, :cond_1

    add-int p3, p1, v0

    .line 210
    invoke-static {p3}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 211
    invoke-static {p4, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/netease/lava/webrtc/GlGenericDrawer;->currentShader:Lcom/netease/lava/webrtc/GlShader;

    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/GlShader;->release()V

    const/4 v0, 0x0

    .line 283
    iput-object v0, p0, Lcom/netease/lava/webrtc/GlGenericDrawer;->currentShader:Lcom/netease/lava/webrtc/GlShader;

    .line 284
    iput-object v0, p0, Lcom/netease/lava/webrtc/GlGenericDrawer;->currentShaderType:Lcom/netease/lava/webrtc/GlGenericDrawer$ShaderType;

    :cond_0
    return-void
.end method
