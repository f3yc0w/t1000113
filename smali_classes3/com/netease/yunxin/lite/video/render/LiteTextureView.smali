.class public Lcom/netease/yunxin/lite/video/render/LiteTextureView;
.super Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;
.source "LiteTextureView.java"

# interfaces
.implements Lcom/netease/lava/api/IVideoRender;


# static fields
.field private static final TAG:Ljava/lang/String; = "LiteTextureView"

.field private static final sMainThreadHandler:Landroid/os/Handler;


# instance fields
.field private mInitializedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->sMainThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    return-void
.end method

.method private hashCodeToHex()Ljava/lang/String;
    .locals 7

    .line 161
    invoke-virtual {p0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "(0x%08x)"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    new-array v0, v3, [Ljava/lang/Object;

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "(p: %s)"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRenderTime()I
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->getRenderTime()I

    move-result v0

    return v0
.end method

.method public getVideoBufferType()Lcom/netease/lava/api/IVideoRender$VideoBufferType;
    .locals 1

    .line 70
    sget-object v0, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->VIDEO_BUFFER_TYPE_RAW_DATA:Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    return-object v0
.end method

.method public init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sharedContext",
            "rendererEvents"
        }
    .end annotation

    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 125
    sget-object v0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteTextureView$mUFjkFk0tFF1xOWOjj2XxALoNmg;

    invoke-direct {v1, p0, p1, p2}, Lcom/netease/yunxin/lite/video/render/-$$Lambda$LiteTextureView$mUFjkFk0tFF1xOWOjj2XxALoNmg;-><init>(Lcom/netease/yunxin/lite/video/render/LiteTextureView;Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 129
    :cond_0
    iget v0, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", init, sharedContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialized count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteTextureView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 138
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", init, caught exception:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", init, caught illegalStateException:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public isExternalRender()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMirror()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$init$0$LiteTextureView(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "sharedContext",
            "rendererEvents"
        }
    .end annotation

    .line 125
    invoke-virtual {p0, p1, p2}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->init(Lcom/netease/lava/webrtc/EglBase$Context;Lcom/netease/lava/webrtc/RendererCommon$RendererEvents;)V

    return-void
.end method

.method public release()V
    .locals 3

    .line 146
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 147
    sget-object v0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->sMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netease/yunxin/lite/video/render/-$$Lambda$70r65ZmhIp81VlJ-pDMxBQqkySQ;

    invoke-direct {v1, p0}, Lcom/netease/yunxin/lite/video/render/-$$Lambda$70r65ZmhIp81VlJ-pDMxBQqkySQ;-><init>(Lcom/netease/yunxin/lite/video/render/LiteTextureView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 151
    :cond_0
    iget v0, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "release, initialized count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteTextureView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget v0, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->mInitializedCount:I

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "call release"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->release()V

    :cond_1
    return-void
.end method

.method public setExternalRender(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    return-void
.end method

.method public setMirror(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirror"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setMirror: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteTextureView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-super {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setMirror(Z)V

    return-void
.end method

.method public setScalingType(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")setScalingType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteTextureView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    invoke-super {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    goto :goto_0

    .line 91
    :cond_1
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    invoke-super {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    goto :goto_0

    .line 88
    :cond_2
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    invoke-super {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    :goto_0
    return-void
.end method

.method public setScalingType(Lcom/netease/lava/api/IVideoRender$ScalingType;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->hashCodeToHex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "setScalingType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LiteTextureView"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/netease/yunxin/lite/video/render/LiteTextureView$1;->$SwitchMap$com$netease$lava$api$IVideoRender$ScalingType:[I

    invoke-virtual {p1}, Lcom/netease/lava/api/IVideoRender$ScalingType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 57
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FIT:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    goto :goto_0

    .line 54
    :cond_0
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_BALANCED:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    goto :goto_0

    .line 51
    :cond_1
    sget-object p1, Lcom/netease/lava/webrtc/RendererCommon$ScalingType;->SCALE_ASPECT_FILL:Lcom/netease/lava/webrtc/RendererCommon$ScalingType;

    .line 60
    :goto_0
    invoke-super {p0, p1}, Lcom/netease/yunxin/lite/video/render/TextureViewRenderer;->setScalingType(Lcom/netease/lava/webrtc/RendererCommon$ScalingType;)V

    return-void
.end method

.method public setVideoBufferType(Lcom/netease/lava/api/IVideoRender$VideoBufferType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bufferType"
        }
    .end annotation

    return-void
.end method

.method public setViewActionListener(Lcom/netease/yunxin/lite/video/VideoViewActionListener;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewActionListener",
            "type"
        }
    .end annotation

    return-void
.end method
