.class public Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;
.super Ljava/lang/Object;
.source "NERtcVideoEncoderQosObserverWrapper.java"

# interfaces
.implements Lcom/netease/yunxin/lite/model/LiteSDKVideoEncoderQosObserver;


# instance fields
.field private final observer:Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;

    return-void
.end method

.method private convertCodecType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 43
    sget-object p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;->VIDEO_CODEC_TYPE_H264:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    return-object p1

    .line 45
    :cond_0
    sget-object p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;->VIDEO_CODEC_TYPE_H264:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    return-object p1
.end method

.method private convertStreamType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 35
    sget-object p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 37
    sget-object p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeSub:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    return-object p1

    .line 39
    :cond_1
    sget-object p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;->kNERtcVideoStreamTypeMain:Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    return-object p1
.end method


# virtual methods
.method public onBitrateUpdated(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitrateBps",
            "videoStreamType"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;

    invoke-direct {p0, p2}, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;->convertStreamType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;->onBitrateUpdated(ILcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    return-void
.end method

.method public onRequestSendKeyFrame(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoStreamType"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;->convertStreamType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;->onRequestSendKeyFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    return-void
.end method

.method public onVideoCodecUpdated(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "videoCodecType",
            "videoStreamType"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;

    invoke-direct {p0, p1}, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;->convertCodecType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/netease/lava/nertc/impl/wrapper/NERtcVideoEncoderQosObserverWrapper;->convertStreamType(I)Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncoderQosObserver;->onVideoCodecUpdated(Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;Lcom/netease/lava/nertc/sdk/video/NERtcVideoStreamType;)V

    return-void
.end method
