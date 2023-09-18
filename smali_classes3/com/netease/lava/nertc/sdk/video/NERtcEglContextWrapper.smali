.class public Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;
.super Ljava/lang/Object;
.source "NERtcEglContextWrapper.java"


# instance fields
.field private eglBase:Lcom/netease/lava/webrtc/EglBase;


# direct methods
.method private constructor <init>(Lcom/netease/lava/webrtc/EglBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "eglBase"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    return-void
.end method

.method public static createEgl10Context()Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;
    .locals 2

    .line 46
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;

    sget-object v1, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN_3:[I

    invoke-static {v1}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl10([I)Lcom/netease/lava/webrtc/EglBase10;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;-><init>(Lcom/netease/lava/webrtc/EglBase;)V

    return-object v0
.end method

.method public static createEgl10Context([I)Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configAttributes"
        }
    .end annotation

    .line 60
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;

    invoke-static {p0}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl10([I)Lcom/netease/lava/webrtc/EglBase10;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;-><init>(Lcom/netease/lava/webrtc/EglBase;)V

    return-object v0
.end method

.method public static createEgl14Context()Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;
    .locals 2

    .line 53
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;

    sget-object v1, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN_3:[I

    invoke-static {v1}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl14([I)Lcom/netease/lava/webrtc/EglBase14;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;-><init>(Lcom/netease/lava/webrtc/EglBase;)V

    return-object v0
.end method

.method public static createEgl14Context([I)Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configAttributes"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;

    invoke-static {p0}, Lcom/netease/lava/webrtc/EglBase$-CC;->createEgl14([I)Lcom/netease/lava/webrtc/EglBase14;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;-><init>(Lcom/netease/lava/webrtc/EglBase;)V

    return-object v0
.end method

.method public static createEglContext()Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;
    .locals 2

    .line 39
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;

    sget-object v1, Lcom/netease/lava/webrtc/EglBase$ConfigType;->kConfigType_PLAIN:Lcom/netease/lava/webrtc/EglBase$ConfigType;

    invoke-static {v1}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$ConfigType;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;-><init>(Lcom/netease/lava/webrtc/EglBase;)V

    return-object v0
.end method


# virtual methods
.method public createDummyPbufferSurface()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->createDummyPbufferSurface()V

    :cond_0
    return-void
.end method

.method public createPbufferSurface(II)V
    .locals 1
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

    .line 118
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 119
    invoke-interface {v0, p1, p2}, Lcom/netease/lava/webrtc/EglBase;->createPbufferSurface(II)V

    :cond_0
    return-void
.end method

.method public createSurface(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surfaceTexture"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 101
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/EglBase;->createSurface(Landroid/graphics/SurfaceTexture;)V

    :cond_0
    return-void
.end method

.method public createSurface(Landroid/view/Surface;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "surface"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/EglBase;->createSurface(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public detachCurrent()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 167
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->detachCurrent()V

    :cond_0
    return-void
.end method

.method public getEglContext()Ljava/lang/Object;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->getEglBaseContext()Lcom/netease/lava/webrtc/EglBase$Context;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase$Context;->getEglContext()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public hasSurface()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->hasSurface()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEGL14Supported()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/netease/lava/webrtc/EglBase14;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeCurrent()V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->makeCurrent()V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 194
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->release()V

    :cond_0
    return-void
.end method

.method public releaseSurface()V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->releaseSurface()V

    :cond_0
    return-void
.end method

.method public surfaceHeight()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->surfaceHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public surfaceWidth()I
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->surfaceWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public swapBuffers()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {v0}, Lcom/netease/lava/webrtc/EglBase;->swapBuffers()V

    :cond_0
    return-void
.end method

.method public swapBuffers(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "presentationTimeStampNs"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcEglContextWrapper;->eglBase:Lcom/netease/lava/webrtc/EglBase;

    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0, p1, p2}, Lcom/netease/lava/webrtc/EglBase;->swapBuffers(J)V

    :cond_0
    return-void
.end method
