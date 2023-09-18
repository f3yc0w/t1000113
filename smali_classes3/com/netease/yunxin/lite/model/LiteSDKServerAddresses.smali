.class public Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;
.super Ljava/lang/Object;
.source "LiteSDKServerAddresses.java"


# instance fields
.field public channelServer:Ljava/lang/String;

.field public cloudProxyServer:Ljava/lang/String;

.field public compatServer:Ljava/lang/String;

.field public mediaProxyServer:Ljava/lang/String;

.field public nosLbsServer:Ljava/lang/String;

.field public nosTokenServer:Ljava/lang/String;

.field public nosUploadSever:Ljava/lang/String;

.field public quicProxyServer:Ljava/lang/String;

.field public roomServer:Ljava/lang/String;

.field public statisticsBackupServer:Ljava/lang/String;

.field public statisticsDispatchServer:Ljava/lang/String;

.field public statisticsServer:Ljava/lang/String;

.field public useIPv6:Z

.field public webSocketProxyServer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->useIPv6:Z

    return-void
.end method


# virtual methods
.method public getChannelServer()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->channelServer:Ljava/lang/String;

    return-object v0
.end method

.method public getCloudProxyServer()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->cloudProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getCompatServer()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->compatServer:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaProxyServer()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->mediaProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getNosLbsServer()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->nosLbsServer:Ljava/lang/String;

    return-object v0
.end method

.method public getNosTokenServer()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->nosTokenServer:Ljava/lang/String;

    return-object v0
.end method

.method public getNosUploadSever()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->nosUploadSever:Ljava/lang/String;

    return-object v0
.end method

.method public getQuicProxyServer()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->quicProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomServer()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->roomServer:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticsBackupServer()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->statisticsBackupServer:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticsDispatchServer()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->statisticsDispatchServer:Ljava/lang/String;

    return-object v0
.end method

.method public getStatisticsServer()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->statisticsServer:Ljava/lang/String;

    return-object v0
.end method

.method public getWebSocketProxyServer()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->webSocketProxyServer:Ljava/lang/String;

    return-object v0
.end method

.method public isUseIPv6()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKServerAddresses;->useIPv6:Z

    return v0
.end method
