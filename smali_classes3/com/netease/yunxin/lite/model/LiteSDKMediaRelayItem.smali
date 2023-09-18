.class public Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;
.super Ljava/lang/Object;
.source "LiteSDKMediaRelayItem.java"


# instance fields
.field public channelName:Ljava/lang/String;

.field public channelToken:Ljava/lang/String;

.field public userId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;->userId:J

    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;->channelToken:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKMediaRelayItem;->userId:J

    return-wide v0
.end method
