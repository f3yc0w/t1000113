.class public Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkInformation"
.end annotation


# instance fields
.field public final handle:J

.field public final ipAddresses:[Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;

.field public final name:Ljava/lang/String;

.field public final type:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

.field public final underlyingTypeForVpn:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;J[Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->name:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->type:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 89
    iput-object p3, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->underlyingTypeForVpn:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 90
    iput-wide p4, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->handle:J

    .line 91
    iput-object p6, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->ipAddresses:[Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;

    return-void
.end method

.method private getConnectionType()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->type:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method

.method private getHandle()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->handle:J

    return-wide v0
.end method

.method private getIpAddresses()[Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->ipAddresses:[Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;

    return-object v0
.end method

.method private getName()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->name:Ljava/lang/String;

    return-object v0
.end method

.method private getUnderlyingConnectionTypeForVpn()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;->underlyingTypeForVpn:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method
