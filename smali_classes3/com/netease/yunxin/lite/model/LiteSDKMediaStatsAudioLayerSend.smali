.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsAudioLayerSend.java"


# instance fields
.field public audioLossRate:I

.field public capVolume:I

.field public layerType:I

.field public numChannels:I

.field public rtt:J

.field public sentBitrate:I

.field public sentSampleRate:I

.field public volume:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->layerType:I

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->numChannels:I

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->sentSampleRate:I

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->sentBitrate:I

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->audioLossRate:I

    const-wide/16 v1, 0x0

    .line 13
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->rtt:J

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->volume:I

    .line 15
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->capVolume:I

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

    .line 43
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->audioLossRate:I

    return-void
.end method

.method public setCapVolume(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capVolume"
        }
    .end annotation

    .line 58
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->capVolume:I

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

    .line 23
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->layerType:I

    return-void
.end method

.method public setNumChannels(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "numChannels"
        }
    .end annotation

    .line 28
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->numChannels:I

    return-void
.end method

.method public setRtt(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rtt"
        }
    .end annotation

    .line 48
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->rtt:J

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

    .line 38
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->sentBitrate:I

    return-void
.end method

.method public setSentSampleRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sentSampleRate"
        }
    .end annotation

    .line 33
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->sentSampleRate:I

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

    .line 53
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->volume:I

    return-void
.end method
