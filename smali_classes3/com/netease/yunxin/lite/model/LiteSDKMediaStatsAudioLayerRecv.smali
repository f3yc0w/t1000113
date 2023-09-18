.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsAudioLayerRecv.java"


# instance fields
.field public audioLossRate:I

.field public frozenRate:I

.field public layerType:I

.field public receivedBitrate:I

.field public totalFrozenTime:I

.field public volume:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->layerType:I

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->receivedBitrate:I

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->totalFrozenTime:I

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->frozenRate:I

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->audioLossRate:I

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->volume:I

    return-void
.end method


# virtual methods
.method public setAudioLossRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioLossRate"
        }
    .end annotation

    .line 41
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->audioLossRate:I

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

    .line 36
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->frozenRate:I

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

    .line 21
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->layerType:I

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

    .line 26
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->receivedBitrate:I

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

    .line 31
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->totalFrozenTime:I

    return-void
.end method

.method public setVolume(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "volume"
        }
    .end annotation

    .line 46
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->volume:I

    return-void
.end method
