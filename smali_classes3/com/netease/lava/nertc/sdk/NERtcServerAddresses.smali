.class public Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;
.super Ljava/lang/Object;
.source "NERtcServerAddresses.java"


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

.field public sdkConfigServer:Ljava/lang/String;

.field public statisticsBackupServer:Ljava/lang/String;

.field public statisticsDispatchServer:Ljava/lang/String;

.field public statisticsServer:Ljava/lang/String;

.field public useIPv6:Z

.field public webSocketProxyServer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/NERtcServerAddresses;->useIPv6:Z

    return-void
.end method
