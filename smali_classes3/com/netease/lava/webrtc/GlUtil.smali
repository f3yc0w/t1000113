.class public Lcom/netease/lava/webrtc/GlUtil;
.super Ljava/lang/Object;
.source "GlUtil.java"


# static fields
.field private static index:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SaveTexture(IIIIZ)V
    .locals 16

    move/from16 v0, p0

    move/from16 v7, p1

    move/from16 v8, p2

    const/4 v9, 0x1

    new-array v10, v9, [I

    const v1, 0x8ca6

    const/4 v11, 0x0

    .line 136
    invoke-static {v1, v10, v11}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string v1, "glGetIntegerv"

    .line 137
    invoke-static {v1}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    new-array v12, v9, [I

    .line 140
    invoke-static {v9, v12, v11}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    const-string v1, "glGenFramebuffers"

    .line 141
    invoke-static {v1}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 142
    aget v1, v12, v11

    const v13, 0x8d40

    invoke-static {v13, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const-string v14, "glBindFramebuffer"

    .line 143
    invoke-static {v14}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    const v1, 0x8ce0

    if-eqz p4, :cond_0

    const/16 v2, 0xde1

    .line 145
    invoke-static {v13, v1, v2, v0, v11}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    goto :goto_0

    :cond_0
    const v2, 0x8d65

    .line 148
    invoke-static {v13, v1, v2, v0, v11}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    :goto_0
    const-string v0, "glFramebufferTexture2D"

    .line 151
    invoke-static {v0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    mul-int v0, v7, v8

    mul-int/lit8 v0, v0, 0x4

    .line 153
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    const/16 v0, 0xd05

    .line 154
    invoke-static {v0, v9}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v4, 0x1908

    const/16 v5, 0x1401

    move/from16 v2, p1

    move/from16 v3, p2

    move-object v6, v15

    .line 155
    invoke-static/range {v0 .. v6}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v0, "glReadPixels"

    .line 156
    invoke-static {v0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 159
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/output"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 161
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v15}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 164
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 165
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :goto_1
    aget v0, v10, v11

    invoke-static {v13, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 172
    invoke-static {v14}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    .line 173
    invoke-static {v9, v12, v11}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    const-string v0, "glDeleteFramebuffers"

    .line 174
    invoke-static {v0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void
.end method

.method public static allocateTexture(IIII)V
    .locals 10

    const v0, 0x84c0

    .line 76
    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    .line 77
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0xde1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x1401

    const/4 v9, 0x0

    move v3, p1

    move v4, p2

    move v5, p3

    move v7, p1

    .line 78
    invoke-static/range {v1 .. v9}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    const/4 p0, 0x0

    .line 80
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const-string p0, "allocateTexture"

    .line 81
    invoke-static {p0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void
.end method

.method public static checkNoGLES2Error(Ljava/lang/String;)V
    .locals 3

    .line 36
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_2

    .line 38
    sget v1, Lcom/netease/lava/webrtc/GlUtil;->index:I

    const/16 v2, 0x2710

    if-le v1, v2, :cond_0

    const/4 v1, 0x0

    .line 39
    sput v1, Lcom/netease/lava/webrtc/GlUtil;->index:I

    .line 41
    :cond_0
    sget v1, Lcom/netease/lava/webrtc/GlUtil;->index:I

    div-int/lit8 v2, v1, 0x64

    if-ltz v2, :cond_1

    rem-int/lit8 v1, v1, 0x64

    if-nez v1, :cond_1

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": GLES20 error: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GlUtil"

    invoke-static {v0, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_1
    sget p0, Lcom/netease/lava/webrtc/GlUtil;->index:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/netease/lava/webrtc/GlUtil;->index:I

    :cond_2
    return-void
.end method

.method public static copyTexture(IIIII)V
    .locals 11

    const v0, 0x8d40

    .line 85
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p1, 0x8ce0

    const/16 v1, 0xde1

    const/4 v2, 0x0

    .line 86
    invoke-static {v0, p1, v1, p0, v2}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 89
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v3, 0xde1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v9, p3

    move v10, p4

    .line 92
    invoke-static/range {v3 .. v10}, Landroid/opengl/GLES20;->glCopyTexSubImage2D(IIIIIIII)V

    .line 94
    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 95
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 96
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    const-string p0, "copyTexture"

    .line 98
    invoke-static {p0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return-void
.end method

.method public static createFloatBuffer([F)Ljava/nio/FloatBuffer;
    .locals 2

    .line 51
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 54
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    const/4 p0, 0x0

    .line 55
    invoke-virtual {v0, p0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-object v0
.end method

.method public static dumpTexture(IIII)V
    .locals 11

    mul-int v0, p2, p3

    mul-int/lit8 v0, v0, 0x4

    .line 103
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 107
    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/Texture_copy.jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 110
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v2, 0x0

    :goto_0
    move-object v8, v2

    const v1, 0x8d40

    .line 113
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    const p1, 0x8ce0

    const/16 v9, 0xde1

    const/4 v10, 0x0

    .line 115
    invoke-static {v1, p1, v9, p0, v10}, Landroid/opengl/GLES20;->glFramebufferTexture2D(IIIII)V

    .line 118
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move v3, p2

    move v4, p3

    move-object v7, v0

    .line 120
    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 122
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 124
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 125
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    if-eqz v8, :cond_0

    .line 127
    sget-object p1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 p2, 0x50

    invoke-virtual {p0, p1, p2, v8}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 130
    :cond_0
    invoke-static {v9, v10}, Landroid/opengl/GLES20;->glBindTexture(II)V

    return-void
.end method

.method public static generateTexture(I)I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 64
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 65
    aget v0, v1, v2

    .line 66
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 v1, 0x2801

    const v2, 0x46180400    # 9729.0f

    .line 67
    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2800

    .line 68
    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2802

    const v2, 0x47012f00    # 33071.0f

    .line 69
    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v1, 0x2803

    .line 70
    invoke-static {p0, v1, v2}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const-string p0, "generateTexture"

    .line 71
    invoke-static {p0}, Lcom/netease/lava/webrtc/GlUtil;->checkNoGLES2Error(Ljava/lang/String;)V

    return v0
.end method
