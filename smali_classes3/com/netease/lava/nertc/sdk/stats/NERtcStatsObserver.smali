.class public interface abstract Lcom/netease/lava/nertc/sdk/stats/NERtcStatsObserver;
.super Ljava/lang/Object;
.source "NERtcStatsObserver.java"


# virtual methods
.method public abstract onLocalAudioStats(Lcom/netease/lava/nertc/sdk/stats/NERtcAudioSendStats;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation
.end method

.method public abstract onLocalVideoStats(Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation
.end method

.method public abstract onNetworkQuality([Lcom/netease/lava/nertc/sdk/stats/NERtcNetworkQualityInfo;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsArray"
        }
    .end annotation
.end method

.method public abstract onRemoteAudioStats([Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsArray"
        }
    .end annotation
.end method

.method public abstract onRemoteVideoStats([Lcom/netease/lava/nertc/sdk/stats/NERtcVideoRecvStats;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsArray"
        }
    .end annotation
.end method

.method public abstract onRtcStats(Lcom/netease/lava/nertc/sdk/stats/NERtcStats;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "stats"
        }
    .end annotation
.end method
