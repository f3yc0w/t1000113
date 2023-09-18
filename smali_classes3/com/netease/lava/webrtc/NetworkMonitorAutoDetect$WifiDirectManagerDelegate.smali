.class Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "WifiDirectManagerDelegate"
.end annotation


# static fields
.field private static final WIFI_P2P_NETWORK_HANDLE:I


# instance fields
.field private final context:Landroid/content/Context;

.field private final observer:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

.field private wifiP2pNetworkInfo:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V
    .locals 1

    .line 608
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 609
    iput-object p2, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->context:Landroid/content/Context;

    .line 610
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->observer:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

    .line 611
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    .line 612
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 613
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 614
    invoke-static {p2, p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->safeRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private onWifiP2pGroupChange(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 9
    .param p1    # Landroid/net/wifi/p2p/WifiP2pGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_2

    .line 645
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 651
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 658
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v8, v1, [Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;

    const/4 v1, 0x0

    .line 659
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 660
    new-instance v2, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;-><init>([B)V

    aput-object v2, v8, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 663
    :cond_1
    new-instance v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 664
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    sget-object v5, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    const-wide/16 v6, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;-><init>(Ljava/lang/String;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;J[Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;)V

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 666
    iget-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->observer:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

    invoke-interface {p1, v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;->onNetworkConnect(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    return-void

    :catch_0
    move-exception p1

    const-string v0, "NetworkMonitorAutoDetect"

    const-string v1, "Unable to get WifiP2p network interface"

    .line 653
    invoke-static {v0, v1, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private onWifiP2pStateChange(I)V
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 672
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 673
    iget-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->observer:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

    const-wide/16 v0, 0x0

    invoke-interface {p1, v0, v1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;->onNetworkDisconnect(J)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getActiveNetworkList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;",
            ">;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->wifiP2pNetworkInfo:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    if-eqz v0, :cond_0

    .line 637
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 640
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 621
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "p2pGroupInfo"

    .line 622
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 623
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->onWifiP2pGroupChange(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto :goto_0

    .line 624
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "wifi_p2p_state"

    .line 625
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 626
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->onWifiP2pStateChange(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
