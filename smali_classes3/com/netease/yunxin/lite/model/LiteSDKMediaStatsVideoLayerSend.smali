.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsVideoLayerSend.java"


# instance fields
.field public captureFrameRate:I

.field public captureHeight:I

.field public captureWidth:I

.field public codecName:Ljava/lang/String;

.field public dropBwStrategyEnabled:Z

.field public encoderBitrate:I

.field public encoderFrameRate:I

.field public height:I

.field public layerType:I

.field public renderFrameRate:I

.field public sentBitrate:I

.field public sentFrameRate:I

.field public targetBitrate:I

.field public width:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->layerType:I

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->width:I

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->height:I

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->captureWidth:I

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->captureHeight:I

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->captureFrameRate:I

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->renderFrameRate:I

    .line 15
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->encoderFrameRate:I

    .line 16
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->sentFrameRate:I

    .line 17
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->sentBitrate:I

    .line 18
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->targetBitrate:I

    .line 19
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->encoderBitrate:I

    return-void
.end method


# virtual methods
.method public setCaptureFrameRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureFrameRate"
        }
    .end annotation

    .line 54
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->captureFrameRate:I

    return-void
.end method

.method public setCaptureHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureHeight"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->captureHeight:I

    return-void
.end method

.method public setCaptureWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "captureWidth"
        }
    .end annotation

    .line 44
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->captureWidth:I

    return-void
.end method

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

    .line 89
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->codecName:Ljava/lang/String;

    return-void
.end method

.method public setDropBwStrategyEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dropBwStrategyEnabled"
        }
    .end annotation

    .line 94
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->dropBwStrategyEnabled:Z

    return-void
.end method

.method public setEncoderBitrate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoderBitrate"
        }
    .end annotation

    .line 84
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->encoderBitrate:I

    return-void
.end method

.method public setEncoderFrameRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoderFrameRate"
        }
    .end annotation

    .line 64
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->encoderFrameRate:I

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

    .line 39
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->height:I

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

    .line 29
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->layerType:I

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

    .line 59
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->renderFrameRate:I

    return-void
.end method

.method public setSentBitrate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sentBitrate"
        }
    .end annotation

    .line 74
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->sentBitrate:I

    return-void
.end method

.method public setSentFrameRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sentFrameRate"
        }
    .end annotation

    .line 69
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->sentFrameRate:I

    return-void
.end method

.method public setTargetBitrate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetBitrate"
        }
    .end annotation

    .line 79
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->targetBitrate:I

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

    .line 34
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->width:I

    return-void
.end method
