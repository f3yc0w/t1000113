.class public Lcom/netease/lava/nertc/sdk/video/NERtcExternalVideoRendererWrapper;
.super Ljava/lang/Object;
.source "NERtcExternalVideoRendererWrapper.java"

# interfaces
.implements Lcom/netease/lava/api/IVideoRender;


# static fields
.field private static final TAG:Ljava/lang/String; = "NERtcExternalVideoRendererWrapper"


# instance fields
.field private renderer:Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderer"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcExternalVideoRendererWrapper;->renderer:Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;

    return-void
.end method

.method private bufferTypeToString(I)Ljava/lang/String;
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

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const-string p1, "Texture"

    return-object p1

    :cond_1
    const-string p1, "I420"

    return-object p1
.end method


# virtual methods
.method public clearImage()V
    .locals 0

    return-void
.end method

.method public getVideoBufferType()Lcom/netease/lava/api/IVideoRender$VideoBufferType;
    .locals 2

    .line 25
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcExternalVideoRendererWrapper;->renderer:Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;

    if-nez v0, :cond_0

    const-string v0, "NERtcExternalVideoRendererWrapper"

    const-string v1, "getVideoBufferType renderer is null"

    .line 26
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/netease/lava/api/IVideoRender$VideoBufferType;->VIDEO_BUFFER_TYPE_RAW_DATA:Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    return-object v0

    .line 30
    :cond_0
    invoke-interface {v0}, Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;->getBufferType()I

    move-result v0

    invoke-static {v0}, Lcom/netease/lava/nertc/impl/lite/LiteHelper;->getBufferType(I)Lcom/netease/lava/api/IVideoRender$VideoBufferType;

    move-result-object v0

    return-object v0
.end method

.method public isExternalRender()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isMirror()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFrame"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcExternalVideoRendererWrapper;->renderer:Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 63
    :cond_1
    new-instance v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;-><init>()V

    .line 64
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    .line 65
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    .line 66
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v1

    iput v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->rotation:I

    .line 67
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->timeStamp:J

    .line 69
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    instance-of v1, v1, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    if-eqz v1, :cond_3

    .line 70
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    .line 72
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 73
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v3

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v4

    mul-int v3, v3, v4

    .line 74
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v4

    mul-int v4, v4, v2

    .line 75
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    mul-int v2, v2, v5

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    .line 78
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v2

    iput v2, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->strideY:I

    .line 79
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v2

    iput v2, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->strideU:I

    .line 80
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v1

    iput v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->strideV:I

    .line 82
    iget-object v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length v1, v1

    if-ge v1, v3, :cond_3

    .line 83
    :cond_2
    new-array v1, v3, [B

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    :cond_3
    const/4 v1, 0x0

    .line 87
    invoke-static {p1, v1, v0}, Lcom/netease/lava/nertc/impl/VideoFrameUtils;->getNeRTCVideoFrame(Lcom/netease/lava/webrtc/VideoFrame;ZLcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcExternalVideoRendererWrapper;->renderer:Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/NERtcExternalVideoRenderer;->onRenderFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)V

    return-void
.end method

.method public synthetic setExternalRender(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/netease/lava/api/IVideoRender$-CC;->$default$setExternalRender(Lcom/netease/lava/api/IVideoRender;Z)V

    return-void
.end method

.method public setMirror(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mirror"
        }
    .end annotation

    return-void
.end method

.method public setScalingType(Lcom/netease/lava/api/IVideoRender$ScalingType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    return-void
.end method

.method public synthetic setVideoBufferType(Lcom/netease/lava/api/IVideoRender$VideoBufferType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/netease/lava/api/IVideoRender$-CC;->$default$setVideoBufferType(Lcom/netease/lava/api/IVideoRender;Lcom/netease/lava/api/IVideoRender$VideoBufferType;)V

    return-void
.end method

.method public synthetic setViewActionListener(Lcom/netease/yunxin/lite/video/VideoViewActionListener;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/netease/lava/api/IVideoRender$-CC;->$default$setViewActionListener(Lcom/netease/lava/api/IVideoRender;Lcom/netease/yunxin/lite/video/VideoViewActionListener;I)V

    return-void
.end method
