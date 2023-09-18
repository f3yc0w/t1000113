.class public Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;
.super Landroid/widget/FrameLayout;
.source "NERtcTextureView.java"

# interfaces
.implements Lcom/netease/lava/api/IVideoRender;


# instance fields
.field public mVideoView:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

.field private streamType:I

.field private viewActionListener:Lcom/netease/yunxin/lite/video/VideoViewActionListener;


# direct methods
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

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->init(Landroid/content/Context;)V

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

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 30
    new-instance v0, Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    invoke-direct {v0, p1}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->mVideoView:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    .line 31
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 32
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 33
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->mVideoView:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    invoke-virtual {p0, v0, p1}, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public clearImage()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->mVideoView:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->clearImage()V

    return-void
.end method

.method public getVideoBufferType()Lcom/netease/lava/api/IVideoRender$VideoBufferType;
    .locals 1

    .line 81
    sget-object v0, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->VIDEO_BUFFER_TYPE_RAW_DATA:Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    return-object v0
.end method

.method public isExternalRender()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMirror()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->mVideoView:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->isMirror()Z

    move-result v0

    return v0
.end method

.method public onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFrame"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->mVideoView:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V

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
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->viewActionListener:Lcom/netease/yunxin/lite/video/VideoViewActionListener;

    if-eqz v0, :cond_0

    .line 103
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->streamType:I

    invoke-interface {v0, v1, p1}, Lcom/netease/yunxin/lite/video/VideoViewActionListener;->mirrorChange(IZ)V

    :cond_0
    return-void
.end method

.method public setScalingType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 53
    sget-object p1, Lcom/netease/lava/api/IVideoRender$ScalingType;->SCALE_ASPECT_FIT:Lcom/netease/lava/api/IVideoRender$ScalingType;

    goto :goto_0

    .line 49
    :cond_0
    sget-object p1, Lcom/netease/lava/api/IVideoRender$ScalingType;->SCALE_ASPECT_BALANCED:Lcom/netease/lava/api/IVideoRender$ScalingType;

    goto :goto_0

    .line 46
    :cond_1
    sget-object p1, Lcom/netease/lava/api/IVideoRender$ScalingType;->SCALE_ASPECT_FILL:Lcom/netease/lava/api/IVideoRender$ScalingType;

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->setScalingType(Lcom/netease/lava/api/IVideoRender$ScalingType;)V

    return-void
.end method

.method public setScalingType(Lcom/netease/lava/api/IVideoRender$ScalingType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->mVideoView:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->setScalingType(Lcom/netease/lava/api/IVideoRender$ScalingType;)V

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

    .line 132
    iput-object p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->viewActionListener:Lcom/netease/yunxin/lite/video/VideoViewActionListener;

    .line 133
    iput p2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->streamType:I

    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcTextureView;->mVideoView:Lcom/netease/yunxin/lite/video/render/LiteTextureView;

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/render/LiteTextureView;->setVisibility(I)V

    .line 114
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
