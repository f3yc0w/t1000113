.class public interface abstract Lcom/netease/lava/nertc/impl/RtcConnectionType;
.super Ljava/lang/Object;
.source "RtcConnectionType.java"


# static fields
.field public static final CONNECTION_2G:I

.field public static final CONNECTION_3G:I

.field public static final CONNECTION_4G:I

.field public static final CONNECTION_5G:I

.field public static final CONNECTION_BLUETOOTH:I

.field public static final CONNECTION_ETHERNET:I

.field public static final CONNECTION_NONE:I

.field public static final CONNECTION_UNKNOWN:I

.field public static final CONNECTION_UNKNOWN_CELLULAR:I

.field public static final CONNECTION_VPN:I

.field public static final CONNECTION_WIFI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_UNKNOWN:I

    .line 22
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_ETHERNET:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_ETHERNET:I

    .line 27
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_WIFI:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_WIFI:I

    .line 32
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_4G:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_4G:I

    .line 37
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_3G:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_3G:I

    .line 42
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_2G:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_2G:I

    .line 47
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_BLUETOOTH:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_BLUETOOTH:I

    .line 53
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_5G:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_5G:I

    .line 58
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_NONE:I

    .line 63
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN_CELLULAR:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_UNKNOWN_CELLULAR:I

    .line 68
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_VPN:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->ordinal()I

    move-result v0

    sput v0, Lcom/netease/lava/nertc/impl/RtcConnectionType;->CONNECTION_VPN:I

    return-void
.end method
