.class Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleNetworkCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;


# direct methods
.method private constructor <init>(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$1;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;-><init>(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;)V

    return-void
.end method

.method private onNetworkChanged(Landroid/net/Network;)V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->access$200(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->access$300(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;Landroid/net/Network;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 211
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->access$000(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;->onNetworkConnect(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 2

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network becomes available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkMonitorAutoDetect"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 180
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    if-eqz p2, :cond_0

    .line 182
    iget-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    invoke-static {p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->access$000(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;->onNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    :cond_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    .line 190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "link properties changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NetworkMonitorAutoDetect"

    invoke-static {v0, p2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->onNetworkChanged(Landroid/net/Network;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is about to lose in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "NetworkMonitorAutoDetect"

    .line 198
    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkMonitorAutoDetect"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;->this$0:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    invoke-static {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->access$000(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

    move-result-object v0

    invoke-static {p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->access$100(Landroid/net/Network;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;->onNetworkDisconnect(J)V

    return-void
.end method
