.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoRecv;
.super Ljava/lang/Object;
.source "LiteSDKMediaStatsVideoRecv.java"


# instance fields
.field public userId:J

.field public videoLayersRecvStats:[Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoRecv;->userId:J

    return-void
.end method


# virtual methods
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

    .line 19
    iput-wide p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoRecv;->userId:J

    return-void
.end method

.method public setVideoLayersRecvStats([Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoLayersRecvStats"
        }
    .end annotation

    .line 24
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoRecv;->videoLayersRecvStats:[Lcom/netease/yunxin/lite/model/LiteSDKMediaStatsVideoLayerRecv;

    return-void
.end method
