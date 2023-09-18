.class public Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;
.super Ljava/lang/Object;
.source "NERtcStatsObserverWrapper.java"

# interfaces
.implements Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsObserver;


# instance fields
.field private final observer:Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "observer"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAudioRecvStats$2$NERtcStatsObserverWrapper([Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "statsArray"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;->onRemoteAudioStats([Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;)V

    return-void
.end method

.method public synthetic lambda$onAudioSendStats$1$NERtcStatsObserverWrapper(Lcom/netease/lava/nertc/sdk/stats/NERtcAudioSendStats;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "sendStats"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;->onLocalAudioStats(Lcom/netease/lava/nertc/sdk/stats/NERtcAudioSendStats;)V

    return-void
.end method

.method public synthetic lambda$onCommonStats$0$NERtcStatsObserverWrapper(Lcom/netease/lava/nertc/sdk/stats/NERtcStats;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "stats"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;->onRtcStats(Lcom/netease/lava/nertc/sdk/stats/NERtcStats;)V

    return-void
.end method

.method public synthetic lambda$onNetworkQuality$5$NERtcStatsObserverWrapper([Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "statsArray"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;->onNetworkQuality([Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;)V

    return-void
.end method

.method public synthetic lambda$onVideoRecvStats$4$NERtcStatsObserverWrapper([Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "statsArray"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;->onRemoteVideoStats([Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;)V

    return-void
.end method

.method public synthetic lambda$onVideoSendStats$3$NERtcStatsObserverWrapper(Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "stats"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;->observer:Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;

    invoke-interface {v0, p1}, Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;->onLocalVideoStats(Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;)V

    return-void
.end method

.method public onAudioRecvStats([Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioRecv;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioRecvStats"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 102
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_3

    .line 105
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;

    const/4 v1, 0x0

    .line 106
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 107
    new-instance v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;

    invoke-direct {v2}, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;-><init>()V

    .line 108
    aget-object v3, p1, v1

    iget-wide v3, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioRecv;->userId:J

    iput-wide v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;->uid:J

    .line 109
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;->layers:Ljava/util/ArrayList;

    .line 110
    aget-object v3, p1, v1

    iget-object v3, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioRecv;->audioLayerRecvList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;

    .line 111
    new-instance v5, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerRecvStats;

    invoke-direct {v5}, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerRecvStats;-><init>()V

    .line 112
    iget v6, v4, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->layerType:I

    if-nez v6, :cond_1

    sget-object v6, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;->kNERtcAudioStreamTypeMain:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;->kNERtcAudioStreamTypeSub:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    :goto_2
    iput-object v6, v5, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerRecvStats;->streamType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    .line 113
    iget v6, v4, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->receivedBitrate:I

    iput v6, v5, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerRecvStats;->kbps:I

    .line 114
    iget v6, v4, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->audioLossRate:I

    iput v6, v5, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerRecvStats;->lossRate:I

    .line 115
    iget v6, v4, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->volume:I

    iput v6, v5, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerRecvStats;->volume:I

    .line 116
    iget v6, v4, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->totalFrozenTime:I

    int-to-long v6, v6

    iput-wide v6, v5, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerRecvStats;->totalFrozenTime:J

    .line 117
    iget v4, v4, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerRecv;->frozenRate:I

    iput v4, v5, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerRecvStats;->frozenRate:I

    .line 118
    iget-object v4, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;->layers:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 120
    :cond_2
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 122
    :cond_3
    new-instance p1, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$HMYE8Np99xgLxRkfkZmtKZNJCTg;

    invoke-direct {p1, p0, v0}, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$HMYE8Np99xgLxRkfkZmtKZNJCTg;-><init>(Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public onAudioSendStats(Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioSend;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioSendStats"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 79
    iget-object v0, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioSend;->audioLayerSendList:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_2

    .line 82
    :cond_0
    new-instance v0, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioSendStats;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioSendStats;-><init>()V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioSendStats;->audioLayers:Ljava/util/ArrayList;

    .line 84
    iget-object p1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioSend;->audioLayerSendList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;

    .line 85
    new-instance v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;

    invoke-direct {v2}, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;-><init>()V

    .line 86
    iget v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->layerType:I

    if-nez v3, :cond_1

    sget-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;->kNERtcAudioStreamTypeMain:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;->kNERtcAudioStreamTypeSub:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    :goto_1
    iput-object v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;->streamType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    .line 87
    iget v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->numChannels:I

    iput v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;->numChannels:I

    .line 88
    iget v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->capVolume:I

    iput v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;->capVolume:I

    .line 89
    iget v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->volume:I

    iput v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;->volume:I

    .line 90
    iget v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->sentBitrate:I

    iput v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;->kbps:I

    .line 91
    iget v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->sentSampleRate:I

    iput v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;->sentSampleRate:I

    .line 92
    iget v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->audioLossRate:I

    iput v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;->lossRate:I

    .line 93
    iget-wide v3, v1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsAudioLayerSend;->rtt:J

    iput-wide v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioLayerSendStats;->rtt:J

    .line 94
    iget-object v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcAudioSendStats;->audioLayers:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 97
    :cond_2
    new-instance p1, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$DvF59_-9k6SZfIXLKtIvrxxUTg0;

    invoke-direct {p1, p0, v0}, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$DvF59_-9k6SZfIXLKtIvrxxUTg0;-><init>(Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;Lcom/netease/lava/nertc/sdk/stats/NERtcAudioSendStats;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onCommonStats(Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commonStats"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 43
    :cond_0
    new-instance v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;-><init>()V

    .line 44
    iget-wide v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txBytes:J

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txBytes:J

    .line 45
    iget-wide v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxBytes:J

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxBytes:J

    .line 46
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->cpuAppUsage:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->cpuAppUsage:I

    .line 47
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->cpuTotalUsage:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->cpuTotalUsage:I

    .line 48
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->memoryAppUsage:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->memoryAppUsageRatio:I

    .line 49
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->memoryTotalUsage:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->memoryTotalUsageRatio:I

    .line 50
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->memoryAppKbytes:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->memoryAppUsageInKBytes:J

    .line 51
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->totalDuration:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->totalDuration:J

    .line 52
    iget-wide v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioBytes:J

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txAudioBytes:J

    .line 53
    iget-wide v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoBytes:J

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txVideoBytes:J

    .line 54
    iget-wide v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioBytes:J

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxAudioBytes:J

    .line 55
    iget-wide v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoBytes:J

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxVideoBytes:J

    .line 56
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioKbitrate:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxAudioKBitRate:I

    .line 57
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoKbitrate:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxVideoKBitRate:I

    .line 58
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioKbitrate:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txAudioKBitRate:I

    .line 59
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoKbitrate:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txVideoKBitRate:I

    .line 60
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->upRtt:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->upRtt:J

    .line 61
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->downRtt:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->downRtt:J

    .line 62
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioPacketLossRate:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txAudioPacketLossRate:I

    .line 63
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoPacketLossRate:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txVideoPacketLossRate:I

    .line 64
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioPacketLossSum:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txAudioPacketLossSum:I

    .line 65
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoPacketLossSum:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txVideoPacketLossSum:I

    .line 66
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioJitter:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txAudioJitter:I

    .line 67
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoJitter:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->txVideoJitter:I

    .line 68
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioPacketLossRate:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxAudioPacketLossRate:I

    .line 69
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoPacketLossRate:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxVideoPacketLossRate:I

    .line 70
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioPacketLossSum:I

    int-to-long v1, v1

    iput-wide v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxAudioPacketLossSum:J

    .line 71
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoPacketLossSum:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxVideoPacketLossSum:I

    .line 72
    iget v1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioJitter:I

    iput v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxAudioJitter:I

    .line 73
    iget p1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoJitter:I

    iput p1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcStats;->rxVideoJitter:I

    .line 74
    new-instance p1, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$ZjWjHfM55wJaEHZDT21_BL8rmRs;

    invoke-direct {p1, p0, v0}, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$ZjWjHfM55wJaEHZDT21_BL8rmRs;-><init>(Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;Lcom/netease/lava/nertc/sdk/stats/NERtcStats;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNetworkQuality([Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "networkQualityStats"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 186
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 189
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;

    const/4 v1, 0x0

    .line 190
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 191
    new-instance v2, Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;

    invoke-direct {v2}, Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;-><init>()V

    .line 192
    aget-object v3, p1, v1

    iget-wide v3, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->userId:J

    iput-wide v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;->userId:J

    .line 193
    aget-object v3, p1, v1

    iget v3, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->txNetworkQuality:I

    iput v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;->upStatus:I

    .line 194
    aget-object v3, p1, v1

    iget v3, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->rxNetworkQuality:I

    iput v3, v2, Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;->downStatus:I

    .line 195
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_1
    new-instance p1, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$88GVluNYJ-IwWE6liYlXWf7XuCc;

    invoke-direct {p1, p0, v0}, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$88GVluNYJ-IwWE6liYlXWf7XuCc;-><init>(Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;[Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onVideoRecvStats([Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoRecv;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoRecvStats"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 155
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 158
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 159
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 160
    new-instance v3, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;

    invoke-direct {v3}, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;-><init>()V

    .line 161
    aget-object v4, p1, v2

    iget-wide v4, v4, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoRecv;->userId:J

    iput-wide v4, v3, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;->uid:J

    .line 162
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;->layers:Ljava/util/ArrayList;

    .line 163
    aget-object v4, p1, v2

    iget-object v4, v4, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoRecv;->videoLayersRecvStats:[Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;

    .line 164
    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 165
    new-instance v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;

    invoke-direct {v8}, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;-><init>()V

    .line 166
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->layerType:I

    iput v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->layerType:I

    .line 167
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->width:I

    iput v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->width:I

    .line 168
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->height:I

    iput v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->height:I

    .line 169
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->receivedBitrate:I

    iput v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->receivedBitrate:I

    .line 170
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->receivedFrameRate:I

    iput v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->fps:I

    .line 171
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->packetLossRate:I

    iput v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->packetLossRate:I

    .line 172
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->decoderFrameRate:I

    iput v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->decoderOutputFrameRate:I

    .line 173
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->renderFrameRate:I

    iput v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->rendererOutputFrameRate:I

    .line 174
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->totalFrozenTime:I

    int-to-long v9, v9

    iput-wide v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->totalFrozenTime:J

    .line 175
    iget v9, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->frozenRate:I

    iput v9, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->frozenRate:I

    .line 176
    iget-object v7, v7, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;->codecName:Ljava/lang/String;

    iput-object v7, v8, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerRecvStats;->decoderName:Ljava/lang/String;

    .line 177
    iget-object v7, v3, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;->layers:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 179
    :cond_1
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_2
    new-instance p1, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$68FE_OBPgOC9Q9bvG5z51_ionxs;

    invoke-direct {p1, p0, v0}, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$68FE_OBPgOC9Q9bvG5z51_ionxs;-><init>(Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;[Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public onVideoSendStats(Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoSend;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoSendStats"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 127
    iget-object v0, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoSend;->videoLayersSendStats:[Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoSend;->videoLayersSendStats:[Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    new-instance v0, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;-><init>()V

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;->videoLayers:Ljava/util/ArrayList;

    .line 132
    iget-object p1, p1, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoSend;->videoLayersSendStats:[Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 133
    new-instance v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;

    invoke-direct {v4}, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;-><init>()V

    .line 134
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->layerType:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->layerType:I

    .line 135
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->captureWidth:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->capWidth:I

    .line 136
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->captureHeight:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->capHeight:I

    .line 137
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->width:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->width:I

    .line 138
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->height:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->height:I

    .line 139
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->sentBitrate:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->sendBitrate:I

    .line 140
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->encoderFrameRate:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->encoderOutputFrameRate:I

    .line 141
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->captureFrameRate:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->captureFrameRate:I

    .line 142
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->targetBitrate:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->targetBitrate:I

    .line 143
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->encoderBitrate:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->encoderBitrate:I

    .line 144
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->sentFrameRate:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->sentFrameRate:I

    .line 145
    iget v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->renderFrameRate:I

    iput v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->renderFrameRate:I

    .line 146
    iget-object v5, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->codecName:Ljava/lang/String;

    iput-object v5, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->encoderName:Ljava/lang/String;

    .line 147
    iget-boolean v3, v3, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerSend;->dropBwStrategyEnabled:Z

    iput-boolean v3, v4, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoLayerSendStats;->dropBwStrategyEnabled:Z

    .line 148
    iget-object v3, v0, Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;->videoLayers:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_1
    new-instance p1, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$lx8gnK-YHu_Z-p6S_JJtMSq-t_8;

    invoke-direct {p1, p0, v0}, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$lx8gnK-YHu_Z-p6S_JJtMSq-t_8;-><init>(Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;)V

    invoke-static {p1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_1
    return-void
.end method
