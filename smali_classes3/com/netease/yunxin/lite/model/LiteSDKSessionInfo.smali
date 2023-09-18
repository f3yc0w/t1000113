.class public Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;
.super Ljava/lang/Object;
.source "LiteSDKSessionInfo.java"


# instance fields
.field private channelId:J

.field private localUserId:J

.field private serverTime1:J

.field private serverTime2:J

.field private serverTime3:J

.field private sessionId:Ljava/lang/String;

.field private statsReportPattern:I

.field private statsStoreMaxSize:I

.field private storedStatsSendInterval:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->channelId:J

    .line 11
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->localUserId:J

    const-wide/16 v0, -0x1

    .line 12
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime1:J

    .line 13
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime2:J

    .line 14
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime3:J

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->statsStoreMaxSize:I

    .line 17
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->storedStatsSendInterval:I

    .line 18
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->statsReportPattern:I

    return-void
.end method

.method public static obtain()Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;
    .locals 1

    .line 22
    new-instance v0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;

    invoke-direct {v0}, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getChannelId()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->channelId:J

    return-wide v0
.end method

.method public getLocalUserId()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->localUserId:J

    return-wide v0
.end method

.method public getServerTime1()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime1:J

    return-wide v0
.end method

.method public getServerTime2()J
    .locals 2

    .line 67
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime2:J

    return-wide v0
.end method

.method public getServerTime3()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime3:J

    return-wide v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatsReportPattern()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->statsReportPattern:I

    return v0
.end method

.method public getStatsStoreMaxSize()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->statsStoreMaxSize:I

    return v0
.end method

.method public getStoredStatsSendInterval()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->storedStatsSendInterval:I

    return v0
.end method

.method public setChannelId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelId"
        }
    .end annotation

    .line 42
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->channelId:J

    return-void
.end method

.method public setLocalUserId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localUserId"
        }
    .end annotation

    .line 52
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->localUserId:J

    return-void
.end method

.method public setServerTime1(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverTime1"
        }
    .end annotation

    .line 62
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime1:J

    return-void
.end method

.method public setServerTime2(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverTime2"
        }
    .end annotation

    .line 72
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime2:J

    return-void
.end method

.method public setServerTime3(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serverTime3"
        }
    .end annotation

    .line 82
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime3:J

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sessionId"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public setStatsReportPattern(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsReportPattern"
        }
    .end annotation

    .line 112
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->statsReportPattern:I

    return-void
.end method

.method public setStatsStoreMaxSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statsStoreMaxSize"
        }
    .end annotation

    .line 92
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->statsStoreMaxSize:I

    return-void
.end method

.method public setStoredStatsSendInterval(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "storedStatsSendInterval"
        }
    .end annotation

    .line 102
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->storedStatsSendInterval:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiteSDKSessionInfo{sessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", channelId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->channelId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->localUserId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", serverTime1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", serverTIme2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime2:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", serverTime3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->serverTime3:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", statsStoreMaxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->statsStoreMaxSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", storedStatsSendInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->storedStatsSendInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statsReportPattern="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKSessionInfo;->statsReportPattern:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
