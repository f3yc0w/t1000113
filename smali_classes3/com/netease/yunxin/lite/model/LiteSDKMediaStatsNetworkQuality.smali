.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsNetworkQuality.java"


# instance fields
.field public lastUpdateTime:J

.field public rxNetworkQuality:I

.field public txNetworkQuality:I

.field public userId:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->userId:J

    .line 9
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->lastUpdateTime:J

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->txNetworkQuality:I

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->rxNetworkQuality:I

    return-void
.end method


# virtual methods
.method public setLastUpdateTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lastUpdateTime"
        }
    .end annotation

    .line 25
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->lastUpdateTime:J

    return-void
.end method

.method public setRxNetworkQuality(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rxNetworkQuality"
        }
    .end annotation

    .line 35
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->rxNetworkQuality:I

    return-void
.end method

.method public setTxNetworkQuality(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "txNetworkQuality"
        }
    .end annotation

    .line 30
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->txNetworkQuality:I

    return-void
.end method

.method public setUserId(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userId"
        }
    .end annotation

    .line 20
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsNetworkQuality;->userId:J

    return-void
.end method
