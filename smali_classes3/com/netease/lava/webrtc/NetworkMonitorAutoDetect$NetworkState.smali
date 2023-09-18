.class Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NetworkState"
.end annotation


# instance fields
.field private final connected:Z

.field private final subtype:I

.field private final type:I

.field private final underlyingNetworkSubtypeForVpn:I

.field private final underlyingNetworkTypeForVpn:I


# direct methods
.method public constructor <init>(ZIIII)V
    .locals 0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-boolean p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->connected:Z

    .line 136
    iput p2, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->type:I

    .line 137
    iput p3, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->subtype:I

    .line 138
    iput p4, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->underlyingNetworkTypeForVpn:I

    .line 139
    iput p5, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->underlyingNetworkSubtypeForVpn:I

    return-void
.end method


# virtual methods
.method public getNetworkSubType()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->subtype:I

    return v0
.end method

.method public getNetworkType()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->type:I

    return v0
.end method

.method public getUnderlyingNetworkSubtypeForVpn()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->underlyingNetworkSubtypeForVpn:I

    return v0
.end method

.method public getUnderlyingNetworkTypeForVpn()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->underlyingNetworkTypeForVpn:I

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->connected:Z

    return v0
.end method
