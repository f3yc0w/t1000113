.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsVideoLayerRecv.java"


# instance fields
.field public codecName:Ljava/lang/String;

.field public decoderFrameRate:I

.field public frozenRate:I

.field public height:I

.field public layerType:I

.field public packetLossRate:I

.field public receivedBitrate:I

.field public receivedFrameRate:I

.field public renderFrameRate:I

.field public totalFrozenTime:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->layerType:I

    .line 7
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->width:I

    .line 8
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->height:I

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->receivedBitrate:I

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->receivedFrameRate:I

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->decoderFrameRate:I

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->renderFrameRate:I

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->packetLossRate:I

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->totalFrozenTime:I

    .line 15
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->frozenRate:I

    return-void
.end method


# virtual methods
.method public setCodecName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "codecName"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->codecName:Ljava/lang/String;

    return-void
.end method

.method public setDecoderFrameRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "decoderFrameRate"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->decoderFrameRate:I

    return-void
.end method

.method public setFrozenRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frozenRate"
        }
    .end annotation

    .line 69
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->frozenRate:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 34
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->height:I

    return-void
.end method

.method public setLayerType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layerType"
        }
    .end annotation

    .line 24
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->layerType:I

    return-void
.end method

.method public setPacketLossRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packetLossRate"
        }
    .end annotation

    .line 59
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->packetLossRate:I

    return-void
.end method

.method public setReceivedBitrate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receivedBitrate"
        }
    .end annotation

    .line 39
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->receivedBitrate:I

    return-void
.end method

.method public setReceivedFrameRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "receivedFrameRate"
        }
    .end annotation

    .line 44
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->receivedFrameRate:I

    return-void
.end method

.method public setRenderFrameRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderFrameRate"
        }
    .end annotation

    .line 54
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->renderFrameRate:I

    return-void
.end method

.method public setTotalFrozenTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalFrozenTime"
        }
    .end annotation

    .line 64
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->totalFrozenTime:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "width"
        }
    .end annotation

    .line 29
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->width:I

    return-void
.end method
