.class public Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;,
        Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;,
        Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;,
        Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;,
        Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;,
        Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;,
        Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;,
        Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$IPAddress;,
        Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    }
.end annotation


# static fields
.field static final INVALID_NET_ID:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "NetworkMonitorAutoDetect"


# instance fields
.field private final allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private connectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

.field private connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

.field private final context:Landroid/content/Context;

.field private final intentFilter:Landroid/content/IntentFilter;

.field private isRegistered:Z

.field private final mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final observer:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

.field private wifiDirectManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

.field private wifiManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

.field private wifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V
    .locals 2

    .line 716
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 717
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->observer:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

    .line 718
    iput-object p2, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    .line 719
    new-instance v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-direct {v0, p2}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 720
    new-instance v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-direct {v0, p2}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    .line 722
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    .line 723
    invoke-static {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 724
    invoke-direct {p0, v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getWifiSSID(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 725
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    const-string v0, "IncludeWifiDirect"

    .line 727
    invoke-static {v0}, Lcom/netease/lava/webrtc/PeerConnectionFactory;->fieldTrialsFindFullName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 728
    new-instance v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    invoke-direct {v0, p1, p2}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;-><init>(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    .line 731
    :cond_0
    invoke-direct {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->registerReceiver()V

    .line 732
    iget-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 735
    new-instance p1, Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-direct {p1}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->requestMobileNetwork(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "NetworkMonitorAutoDetect"

    const-string v0, "Unable to obtain permission to request a cellular network."

    .line 739
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, p2

    .line 742
    :goto_0
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 743
    new-instance p1, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;

    invoke-direct {p1, p0, p2}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$SimpleNetworkCallback;-><init>(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$1;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 744
    iget-object p2, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {p2, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->registerNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    .line 746
    :cond_1
    iput-object p2, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 747
    iput-object p2, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->observer:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

    return-object p0
.end method

.method static synthetic access$100(Landroid/net/Network;)J
    .locals 2

    .line 50
    invoke-static {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->networkToNetId(Landroid/net/Network;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 0

    .line 50
    invoke-static {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getUnderlyingConnectionTypeForVpn(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private connectionTypeChanged(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)V
    .locals 2

    .line 919
    invoke-static {p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 920
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getWifiSSID(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;

    move-result-object p1

    .line 921
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 924
    :cond_0
    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 925
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->wifiSSID:Ljava/lang/String;

    .line 926
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Network connectivity changed, type is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "NetworkMonitorAutoDetect"

    invoke-static {v1, p1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    iget-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->observer:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;

    invoke-interface {p1, v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;->onConnectionTypeChanged(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    return-void
.end method

.method public static getConnectionType(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 2

    .line 890
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v1

    .line 891
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkSubType()I

    move-result p0

    .line 890
    invoke-static {v0, v1, p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getConnectionType(ZII)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private static getConnectionType(ZII)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 0

    if-nez p0, :cond_0

    .line 844
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    :cond_0
    if-eqz p1, :cond_6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_5

    const/4 p0, 0x6

    if-eq p1, p0, :cond_4

    const/4 p0, 0x7

    if-eq p1, p0, :cond_3

    const/16 p0, 0x9

    if-eq p1, p0, :cond_2

    const/16 p0, 0x11

    if-eq p1, p0, :cond_1

    .line 885
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 883
    :cond_1
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_VPN:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 849
    :cond_2
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_ETHERNET:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 855
    :cond_3
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_BLUETOOTH:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 853
    :cond_4
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_4G:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 851
    :cond_5
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    :cond_6
    const/16 p0, 0x14

    if-eq p2, p0, :cond_7

    packed-switch p2, :pswitch_data_0

    .line 880
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 876
    :pswitch_0
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_4G:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 874
    :pswitch_1
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_3G:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 864
    :pswitch_2
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_2G:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 878
    :cond_7
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_5G:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private static getUnderlyingConnectionTypeForVpn(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 2

    .line 895
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->getNetworkType()I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    .line 896
    sget-object p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object p0

    .line 898
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    .line 899
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->getUnderlyingNetworkTypeForVpn()I

    move-result v1

    .line 900
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;->getUnderlyingNetworkSubtypeForVpn()I

    move-result p0

    .line 898
    invoke-static {v0, v1, p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getConnectionType(ZII)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object p0

    return-object p0
.end method

.method private getWifiSSID(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Ljava/lang/String;
    .locals 1

    .line 904
    invoke-static {p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object p1

    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    if-eq p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 906
    :cond_0
    iget-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static networkToNetId(Landroid/net/Network;)J
    .locals 2

    .line 937
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 938
    invoke-virtual {p0}, Landroid/net/Network;->getNetworkHandle()J

    move-result-wide v0

    return-wide v0

    .line 943
    :cond_0
    invoke-virtual {p0}, Landroid/net/Network;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v0, p0

    return-wide v0
.end method

.method private registerReceiver()V
    .locals 2

    .line 809
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 812
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 813
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->intentFilter:Landroid/content/IntentFilter;

    invoke-static {v0, p0, v1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->safeRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static safeRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 949
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 951
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 953
    :goto_0
    invoke-virtual {p0, p1, p2, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private unregisterReceiver()V
    .locals 1

    .line 820
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 823
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    .line 824
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->allNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 794
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v1, v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 796
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->mobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_1

    .line 797
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v1, v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->releaseCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v0, :cond_2

    .line 800
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->release()V

    .line 802
    :cond_2
    invoke-direct {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->unregisterReceiver()V

    return-void
.end method

.method getActiveNetworkList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 779
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    .line 780
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 784
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 786
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->wifiDirectManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;

    if-eqz v0, :cond_1

    .line 787
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiDirectManagerDelegate;->getActiveNetworkList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v1
.end method

.method public getCurrentNetworkState()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;
    .locals 1

    .line 828
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultNetId()J
    .locals 2

    .line 838
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->getDefaultNetId()J

    move-result-wide v0

    return-wide v0
.end method

.method isReceiverRegisteredForTesting()Z
    .locals 1

    .line 774
    iget-boolean v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->isRegistered:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 912
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object p1

    .line 913
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 914
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectionTypeChanged(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)V

    :cond_0
    return-void
.end method

.method setConnectivityManagerDelegateForTests(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;)V
    .locals 0

    .line 759
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    return-void
.end method

.method setWifiManagerDelegateForTests(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->wifiManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$WifiManagerDelegate;

    return-void
.end method

.method public supportNetworkCallback()Z
    .locals 1

    .line 752
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->connectivityManagerDelegate:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectivityManagerDelegate;->supportNetworkCallback()Z

    move-result v0

    return v0
.end method
