.class public Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;
.super Ljava/lang/Object;
.source "LiteSDKJoinParameter.java"


# instance fields
.field public channelName:Ljava/lang/String;

.field public customInfo:Ljava/lang/String;

.field public lowDelayUrl:Ljava/lang/String;

.field public permissionKey:Ljava/lang/String;

.field public token:Ljava/lang/String;

.field public userId:J

.field public userName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->userId:J

    return-void
.end method


# virtual methods
.method public getChannelName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->channelName:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomInfo()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->customInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getLowDelayUrl()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->lowDelayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissionKey()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->permissionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->userId:J

    return-wide v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKJoinParameter;->userName:Ljava/lang/String;

    return-object v0
.end method
