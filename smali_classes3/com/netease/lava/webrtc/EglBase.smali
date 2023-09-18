.class public interface abstract Lcom/netease/lava/webrtc/EglBase;
.super Ljava/lang/Object;
.source "EglBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/EglBase$ConfigType;,
        Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;,
        Lcom/netease/lava/webrtc/EglBase$Context;
    }
.end annotation


# static fields
.field public static final CONFIG_PIXEL_BUFFER:[I

.field public static final CONFIG_PIXEL_BUFFER_3:[I

.field public static final CONFIG_PIXEL_RGBA_BUFFER:[I

.field public static final CONFIG_PIXEL_RGBA_BUFFER_3:[I

.field public static final CONFIG_PLAIN:[I

.field public static final CONFIG_PLAIN_3:[I

.field public static final CONFIG_RECORDABLE:[I

.field public static final CONFIG_RECORDABLE_3:[I

.field public static final CONFIG_RGBA:[I

.field public static final CONFIG_RGBA_3:[I

.field public static final EGL_OPENGL_ES2_BIT:I = 0x4

.field public static final EGL_OPENGL_ES3_BIT:I = 0x40

.field public static final EGL_RECORDABLE_ANDROID:I = 0x3142

.field public static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->lock:Ljava/lang/Object;

    .line 120
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN:[I

    .line 122
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setHasAlphaChannel(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RGBA:[I

    .line 124
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setSupportsPixelBuffer(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    .line 125
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 126
    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setHasAlphaChannel(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 127
    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setSupportsPixelBuffer(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PIXEL_RGBA_BUFFER:[I

    .line 130
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setIsRecordable(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RECORDABLE:[I

    .line 133
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    const/4 v2, 0x3

    .line 134
    invoke-virtual {v0, v2}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setOpenGlesVersion(I)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PLAIN_3:[I

    .line 136
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 137
    invoke-virtual {v0, v2}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setOpenGlesVersion(I)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setHasAlphaChannel(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 139
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RGBA_3:[I

    .line 140
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v2}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setOpenGlesVersion(I)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setSupportsPixelBuffer(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PIXEL_BUFFER_3:[I

    .line 144
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 145
    invoke-virtual {v0, v2}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setOpenGlesVersion(I)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setHasAlphaChannel(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 147
    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setSupportsPixelBuffer(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PIXEL_RGBA_BUFFER_3:[I

    .line 149
    invoke-static {}, Lcom/netease/lava/webrtc/EglBase$-CC;->configBuilder()Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 150
    invoke-virtual {v0, v2}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setOpenGlesVersion(I)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->setIsRecordable(Z)Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/EglBase$ConfigBuilder;->createConfigAttributes()[I

    move-result-object v0

    sput-object v0, Lcom/netease/lava/webrtc/EglBase;->CONFIG_RECORDABLE_3:[I

    return-void
.end method


# virtual methods
.method public abstract createDummyPbufferSurface()V
.end method

.method public abstract createPbufferSurface(II)V
.end method

.method public abstract createSurface(Landroid/graphics/SurfaceTexture;)V
.end method

.method public abstract createSurface(Landroid/view/Surface;)V
.end method

.method public abstract detachCurrent()V
.end method

.method public abstract getEglBaseContext()Lcom/netease/lava/webrtc/EglBase$Context;
.end method

.method public abstract getOpenGlesVersion()I
.end method

.method public abstract hasSurface()Z
.end method

.method public abstract makeCurrent()V
.end method

.method public abstract release()V
.end method

.method public abstract releaseSurface()V
.end method

.method public abstract surfaceHeight()I
.end method

.method public abstract surfaceWidth()I
.end method

.method public abstract swapBuffers()V
.end method

.method public abstract swapBuffers(J)V
.end method
