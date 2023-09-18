.class final Lcom/google/android/exoplr2avp/util/GlUtil$Api17;
.super Ljava/lang/Object;
.source "GlUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/util/GlUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api17"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createEglContext(Landroid/opengl/EGLDisplay;I[I)Landroid/opengl/EGLContext;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0x3098

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    const/16 v3, 0x3038

    aput v3, v0, v1

    .line 562
    invoke-static {p0, p2}, Lcom/google/android/exoplr2avp/util/GlUtil$Api17;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object p2

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    .line 560
    invoke-static {p0, p2, v1, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object p2

    if-nez p2, :cond_0

    .line 567
    invoke-static {p0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    .line 568
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "eglCreateContext() failed to create a valid context. The device may not support EGL version "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/GlUtil;->throwGlException(Ljava/lang/String;)V

    .line 573
    :cond_0
    invoke-static {}, Lcom/google/android/exoplr2avp/util/GlUtil;->checkGlError()V

    return-object p2
.end method

.method public static createEglDisplay()Landroid/opengl/EGLDisplay;
    .locals 5

    const/4 v0, 0x0

    .line 541
    invoke-static {v0}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v1

    .line 542
    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    invoke-virtual {v1, v2}, Landroid/opengl/EGLDisplay;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const-string v4, "No EGL display."

    invoke-static {v2, v4}, Lcom/google/android/exoplr2avp/util/GlUtil;->access$000(ZLjava/lang/String;)V

    new-array v2, v3, [I

    new-array v3, v3, [I

    .line 543
    invoke-static {v1, v2, v0, v3, v0}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Error in eglInitialize."

    .line 549
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/GlUtil;->throwGlException(Ljava/lang/String;)V

    .line 551
    :cond_0
    invoke-static {}, Lcom/google/android/exoplr2avp/util/GlUtil;->checkGlError()V

    return-object v1
.end method

.method public static createEglPbufferSurface(Landroid/opengl/EGLDisplay;[I[I)Landroid/opengl/EGLSurface;
    .locals 1

    .line 600
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/util/GlUtil$Api17;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object p1

    const/4 v0, 0x0

    .line 598
    invoke-static {p0, p1, p2, v0}, Landroid/opengl/EGL14;->eglCreatePbufferSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    const-string p1, "Error creating surface"

    .line 603
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/GlUtil;->access$100(Ljava/lang/String;)V

    return-object p0
.end method

.method public static destroyEglContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    .line 633
    :cond_0
    sget-object v0, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {p0, v0, v1, v2}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string v0, "Error releasing context"

    .line 635
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/GlUtil;->access$100(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 637
    invoke-static {p0, p1}, Landroid/opengl/EGL14;->eglDestroyContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;)Z

    const-string p1, "Error destroying context"

    .line 638
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/GlUtil;->access$100(Ljava/lang/String;)V

    .line 640
    :cond_1
    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    const-string p1, "Error releasing thread"

    .line 641
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/GlUtil;->access$100(Ljava/lang/String;)V

    .line 642
    invoke-static {p0}, Landroid/opengl/EGL14;->eglTerminate(Landroid/opengl/EGLDisplay;)Z

    const-string p0, "Error terminating display"

    .line 643
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/GlUtil;->access$100(Ljava/lang/String;)V

    return-void
.end method

.method public static focusRenderTarget(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLContext;Landroid/opengl/EGLSurface;III)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x8ca6

    const/4 v2, 0x0

    .line 616
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 617
    aget v0, v0, v2

    if-eq v0, p3, :cond_0

    const v0, 0x8d40

    .line 618
    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 620
    :cond_0
    invoke-static {}, Lcom/google/android/exoplr2avp/util/GlUtil;->checkGlError()V

    .line 621
    invoke-static {p0, p2, p2, p1}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    const-string p0, "Error making context current"

    .line 622
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/GlUtil;->access$100(Ljava/lang/String;)V

    .line 623
    invoke-static {v2, v2, p4, p5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 624
    invoke-static {}, Lcom/google/android/exoplr2avp/util/GlUtil;->checkGlError()V

    return-void
.end method

.method private static getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;
    .locals 10

    const/4 v0, 0x1

    new-array v9, v0, [Landroid/opengl/EGLConfig;

    new-array v7, v0, [I

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, v9

    .line 649
    invoke-static/range {v1 .. v8}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "eglChooseConfig failed."

    .line 658
    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/GlUtil;->throwGlException(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    .line 660
    aget-object p0, v9, p0

    return-object p0
.end method

.method public static getEglSurface(Landroid/opengl/EGLDisplay;Ljava/lang/Object;[I[I)Landroid/opengl/EGLSurface;
    .locals 1

    .line 586
    invoke-static {p0, p2}, Lcom/google/android/exoplr2avp/util/GlUtil$Api17;->getEglConfig(Landroid/opengl/EGLDisplay;[I)Landroid/opengl/EGLConfig;

    move-result-object p2

    const/4 v0, 0x0

    .line 584
    invoke-static {p0, p2, p1, p3, v0}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object p0

    const-string p1, "Error creating surface"

    .line 590
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/GlUtil;->access$100(Ljava/lang/String;)V

    return-object p0
.end method
