.class public final Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;
.super Ljava/lang/Object;
.source "EGLSurfaceTexture.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;,
        Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$SecureMode;,
        Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$TextureImageListener;
    }
.end annotation


# static fields
.field private static final EGL_CONFIG_ATTRIBUTES:[I

.field private static final EGL_PROTECTED_CONTENT_EXT:I = 0x32c0

.field private static final EGL_SURFACE_HEIGHT:I = 0x1

.field private static final EGL_SURFACE_WIDTH:I = 0x1

.field public static final SECURE_MODE_NONE:I = 0x0

.field public static final SECURE_MODE_PROTECTED_PBUFFER:I = 0x2

.field public static final SECURE_MODE_SURFACELESS_CONTEXT:I = 0x1


# instance fields
.field private final callback:Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$TextureImageListener;

.field private context:Landroid/opengl/EGLContext;

.field private display:Landroid/opengl/EGLDisplay;

.field private final handler:Landroid/os/Handler;

.field private surface:Landroid/opengl/EGLSurface;

.field private texture:Landroid/graphics/SurfaceTexture;

.field private final textureIdHolder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    .line 66
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    return-void

    :array_0
    .array-data 4
        0x3040
        0x4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3025
        0x0
        0x3027
        0x3038
        0x3033
        0x4
        0x3038
    .end array-data
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$TextureImageListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$TextureImageListener;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    .line 118
    iput-object p2, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->callback:Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$TextureImageListener;

    const/4 p1, 0x1

    new-array p1, p1, [I

    .line 119
    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->textureIdHolder:[I

    return-void
.end method

.method private static chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;
    .locals 11

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    new-array v10, v0, [I

    .line 226
    sget-object v2, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->EGL_CONFIG_ATTRIBUTES:[I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v4, v9

    move-object v7, v10

    .line 227
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 236
    aget v2, v10, v1

    if-lez v2, :cond_0

    aget-object v2, v9, v1

    if-eqz v2, :cond_0

    .line 243
    aget-object p0, v9, v1

    return-object p0

    .line 237
    :cond_0
    new-instance v2, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 240
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v3, v1

    aget p0, v10, v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v0

    const/4 p0, 0x2

    aget-object v0, v9, v1

    aput-object v0, v3, p0

    const-string p0, "eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s"

    .line 238
    invoke-static {p0, v3}, Lcom/google/android/exoplr2avp/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$1;)V

    throw v2
.end method

.method private static createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x3

    new-array p2, p2, [I

    .line 250
    fill-array-data p2, :array_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    new-array p2, p2, [I

    .line 252
    fill-array-data p2, :array_1

    .line 261
    :goto_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v1, 0x0

    .line 262
    invoke-static {p0, p1, v0, p2, v1}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p0

    if-eqz p0, :cond_1

    return-object p0

    .line 265
    :cond_1
    new-instance p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;

    const/4 p1, 0x0

    const-string p2, "eglCreateContext failed"

    invoke-direct {p0, p2, p1}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$1;)V

    throw p0

    :array_0
    .array-data 4
        0x3098
        0x2
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3098
        0x2
        0x32c0
        0x1
        0x3038
    .end array-data
.end method

.method private static createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    .line 274
    sget-object p1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p3, v1, :cond_1

    const/4 p3, 0x7

    new-array p3, p3, [I

    .line 278
    fill-array-data p3, :array_0

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    new-array p3, p3, [I

    .line 289
    fill-array-data p3, :array_1

    :goto_0
    const/4 v1, 0x0

    .line 298
    invoke-static {p0, p1, p3, v1}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 305
    :goto_1
    invoke-static {p0, p1, p1, p2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    .line 307
    :cond_2
    new-instance p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;

    const-string p1, "eglMakeCurrent failed"

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$1;)V

    throw p0

    .line 300
    :cond_3
    new-instance p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;

    const-string p1, "eglCreatePbufferSurface failed"

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$1;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x32c0
        0x1
        0x3038
    .end array-data

    :array_1
    .array-data 4
        0x3057
        0x1
        0x3056
        0x1
        0x3038
    .end array-data
.end method

.method private dispatchOnFrameAvailable()V
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->callback:Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$TextureImageListener;

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$TextureImageListener;->onFrameAvailable()V

    :cond_0
    return-void
.end method

.method private static generateTextureIds([I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 313
    invoke-static {v0, p0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 314
    invoke-static {}, Lcom/google/android/exoplr2avp/util/GlUtil;->checkGlError()V

    return-void
.end method

.method private static getDefaultDisplay()Landroid/opengl/EGLDisplay;
    .locals 5

    const/4 v0, 0x0

    .line 209
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    .line 216
    invoke-static {v1, v3, v0, v3, v4}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 218
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;

    const-string v1, "eglInitialize failed"

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$1;)V

    throw v0

    .line 211
    :cond_1
    new-instance v0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;

    const-string v1, "eglGetDisplay failed"

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$GlException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture$1;)V

    throw v0
.end method


# virtual methods
.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public init(I)V
    .locals 3

    .line 128
    invoke-static {}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->getDefaultDisplay()Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 129
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->chooseEGLConfig(Landroid/opengl/EGLDisplay;)Landroid/opengl/EGLConfig;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->createEGLContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;I)Landroid/opengl/EGLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 131
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v2, v0, v1, p1}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->createEGLSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;I)Landroid/opengl/EGLSurface;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 132
    iget-object p1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->textureIdHolder:[I

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->generateTextureIds([I)V

    .line 133
    new-instance p1, Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 134
    invoke-virtual {p1, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    return-void
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public release()V
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/16 v0, 0x13

    const/4 v1, 0x0

    .line 142
    :try_start_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v2}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v2, 0x1

    .line 144
    iget-object v3, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->textureIdHolder:[I

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v2, :cond_1

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v2, v3, v4, v5}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v2, :cond_2

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v2, v3}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v2, v3}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 154
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v2, :cond_3

    .line 155
    iget-object v3, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v2}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 158
    :cond_3
    sget v2, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt v2, v0, :cond_4

    .line 159
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 161
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_5

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 166
    :cond_5
    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 167
    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 168
    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 169
    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    return-void

    :catchall_0
    move-exception v2

    .line 147
    iget-object v3, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v3, :cond_6

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 148
    iget-object v3, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v6, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v6}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    .line 151
    :cond_6
    iget-object v3, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    if-eqz v3, :cond_7

    sget-object v4, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    invoke-virtual {v3, v4}, Landroid/opengl/EGLSurface;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 152
    iget-object v3, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    invoke-static {v3, v4}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    .line 154
    :cond_7
    iget-object v3, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    if-eqz v3, :cond_8

    .line 155
    iget-object v4, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v4, v3}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    .line 158
    :cond_8
    sget v3, Lcom/google/android/exoplr2avp/util/Util;->SDK_INT:I

    if-lt v3, v0, :cond_9

    .line 159
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    .line 161
    :cond_9
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_a

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v0, v3}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    invoke-static {v0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 166
    :cond_a
    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->display:Landroid/opengl/EGLDisplay;

    .line 167
    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->context:Landroid/opengl/EGLContext;

    .line 168
    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->surface:Landroid/opengl/EGLSurface;

    .line 169
    iput-object v1, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    .line 170
    throw v2
.end method

.method public run()V
    .locals 1

    .line 192
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->dispatchOnFrameAvailable()V

    .line 193
    iget-object v0, p0, Lcom/google/android/exoplr2avp/util/EGLSurfaceTexture;->texture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
