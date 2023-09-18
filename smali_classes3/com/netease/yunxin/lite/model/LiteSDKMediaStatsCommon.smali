.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsCommon.java"


# instance fields
.field public batteryCapacity:I

.field public batteryCurrent:I

.field public batteryIsCharging:I

.field public batteryTemperature:I

.field public batteryVoltage:I

.field public cpuAppUsage:I

.field public cpuIdleUsage:I

.field public cpuTotalUsage:I

.field public downRtt:I

.field public memoryAppKbytes:I

.field public memoryAppUsage:I

.field public memoryTotalUsage:I

.field public rxAudioBytes:J

.field public rxAudioJitter:I

.field public rxAudioKbitrate:I

.field public rxAudioPacketLossRate:I

.field public rxAudioPacketLossSum:I

.field public rxBytes:J

.field public rxVideoBytes:J

.field public rxVideoJitter:I

.field public rxVideoKbitrate:I

.field public rxVideoPacketLossRate:I

.field public rxVideoPacketLossSum:I

.field public totalDuration:I

.field public txAudioBytes:J

.field public txAudioJitter:I

.field public txAudioKbitrate:I

.field public txAudioPacketLossRate:I

.field public txAudioPacketLossSum:I

.field public txBytes:J

.field public txVideoBytes:J

.field public txVideoJitter:I

.field public txVideoKbitrate:I

.field public txVideoPacketLossRate:I

.field public txVideoPacketLossSum:I

.field public upRtt:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->cpuAppUsage:I

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->cpuIdleUsage:I

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->cpuTotalUsage:I

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->memoryAppUsage:I

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->memoryTotalUsage:I

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->memoryAppKbytes:I

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryCapacity:I

    .line 15
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryCurrent:I

    .line 16
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryVoltage:I

    .line 17
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryTemperature:I

    .line 18
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryIsCharging:I

    .line 19
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->totalDuration:I

    const-wide/16 v1, 0x0

    .line 20
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txBytes:J

    .line 21
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxBytes:J

    .line 22
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioBytes:J

    .line 23
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoBytes:J

    .line 24
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioBytes:J

    .line 25
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoBytes:J

    .line 26
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioKbitrate:I

    .line 27
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioKbitrate:I

    .line 28
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoKbitrate:I

    .line 29
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoKbitrate:I

    .line 30
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->upRtt:I

    .line 31
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->downRtt:I

    .line 32
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioPacketLossRate:I

    .line 33
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoPacketLossRate:I

    .line 34
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioPacketLossSum:I

    .line 35
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoPacketLossSum:I

    .line 36
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioJitter:I

    .line 37
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoJitter:I

    .line 38
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioPacketLossRate:I

    .line 39
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoPacketLossRate:I

    .line 40
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioPacketLossSum:I

    .line 41
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoPacketLossSum:I

    .line 42
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioJitter:I

    .line 43
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoJitter:I

    return-void
.end method


# virtual methods
.method public setBatteryCapacity(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batteryCapacity"
        }
    .end annotation

    .line 81
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryCapacity:I

    return-void
.end method

.method public setBatteryCurrent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batteryCurrent"
        }
    .end annotation

    .line 86
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryCurrent:I

    return-void
.end method

.method public setBatteryIsCharging(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batteryIsCharging"
        }
    .end annotation

    .line 101
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryIsCharging:I

    return-void
.end method

.method public setBatteryTemperature(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batteryTemperature"
        }
    .end annotation

    .line 96
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryTemperature:I

    return-void
.end method

.method public setBatteryVoltage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "batteryVoltage"
        }
    .end annotation

    .line 91
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->batteryVoltage:I

    return-void
.end method

.method public setCpuAppUsage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cpuAppUsage"
        }
    .end annotation

    .line 51
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->cpuAppUsage:I

    return-void
.end method

.method public setCpuIdleUsage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cpuIdleUsage"
        }
    .end annotation

    .line 56
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->cpuIdleUsage:I

    return-void
.end method

.method public setCpuTotalUsage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cpuTotalUsage"
        }
    .end annotation

    .line 61
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->cpuTotalUsage:I

    return-void
.end method

.method public setDownRtt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downRtt"
        }
    .end annotation

    .line 166
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->downRtt:I

    return-void
.end method

.method public setMemoryAppKbytes(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryAppKbytes"
        }
    .end annotation

    .line 76
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->memoryAppKbytes:I

    return-void
.end method

.method public setMemoryAppUsage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryAppUsage"
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->memoryAppUsage:I

    return-void
.end method

.method public setMemoryTotalUsage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "memoryTotalUsage"
        }
    .end annotation

    .line 71
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->memoryTotalUsage:I

    return-void
.end method

.method public setRxAudioBytes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxAudioBytes"
        }
    .end annotation

    .line 131
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioBytes:J

    return-void
.end method

.method public setRxAudioJitter(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxAudioJitter"
        }
    .end annotation

    .line 221
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioJitter:I

    return-void
.end method

.method public setRxAudioKbitrate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxAudioKbitrate"
        }
    .end annotation

    .line 146
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioKbitrate:I

    return-void
.end method

.method public setRxAudioPacketLossRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxAudioPacketLossRate"
        }
    .end annotation

    .line 201
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioPacketLossRate:I

    return-void
.end method

.method public setRxAudioPacketLossSum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxAudioPacketLossSum"
        }
    .end annotation

    .line 211
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxAudioPacketLossSum:I

    return-void
.end method

.method public setRxBytes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxBytes"
        }
    .end annotation

    .line 116
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxBytes:J

    return-void
.end method

.method public setRxVideoBytes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxVideoBytes"
        }
    .end annotation

    .line 136
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoBytes:J

    return-void
.end method

.method public setRxVideoJitter(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxVideoJitter"
        }
    .end annotation

    .line 226
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoJitter:I

    return-void
.end method

.method public setRxVideoKbitrate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxVideoKbitrate"
        }
    .end annotation

    .line 156
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoKbitrate:I

    return-void
.end method

.method public setRxVideoPacketLossRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxVideoPacketLossRate"
        }
    .end annotation

    .line 206
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoPacketLossRate:I

    return-void
.end method

.method public setRxVideoPacketLossSum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxVideoPacketLossSum"
        }
    .end annotation

    .line 216
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->rxVideoPacketLossSum:I

    return-void
.end method

.method public setTotalDuration(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalDuration"
        }
    .end annotation

    .line 106
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->totalDuration:I

    return-void
.end method

.method public setTxAudioBytes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txAudioBytes"
        }
    .end annotation

    .line 121
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioBytes:J

    return-void
.end method

.method public setTxAudioJitter(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txAudioJitter"
        }
    .end annotation

    .line 191
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioJitter:I

    return-void
.end method

.method public setTxAudioKbitrate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txAudioKbitrate"
        }
    .end annotation

    .line 141
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioKbitrate:I

    return-void
.end method

.method public setTxAudioPacketLossRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txAudioPacketLossRate"
        }
    .end annotation

    .line 171
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioPacketLossRate:I

    return-void
.end method

.method public setTxAudioPacketLossSum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txAudioPacketLossSum"
        }
    .end annotation

    .line 181
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txAudioPacketLossSum:I

    return-void
.end method

.method public setTxBytes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txBytes"
        }
    .end annotation

    .line 111
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txBytes:J

    return-void
.end method

.method public setTxVideoBytes(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txVideoBytes"
        }
    .end annotation

    .line 126
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoBytes:J

    return-void
.end method

.method public setTxVideoJitter(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txVideoJitter"
        }
    .end annotation

    .line 196
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoJitter:I

    return-void
.end method

.method public setTxVideoKbitrate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txVideoKbitrate"
        }
    .end annotation

    .line 151
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoKbitrate:I

    return-void
.end method

.method public setTxVideoPacketLossRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txVideoPacketLossRate"
        }
    .end annotation

    .line 176
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoPacketLossRate:I

    return-void
.end method

.method public setTxVideoPacketLossSum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txVideoPacketLossSum"
        }
    .end annotation

    .line 186
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->txVideoPacketLossSum:I

    return-void
.end method

.method public setUpRtt(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "upRtt"
        }
    .end annotation

    .line 161
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsCommon;->upRtt:I

    return-void
.end method
