.class public interface abstract Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;
.super Ljava/lang/Object;
.source "NetworkMonitorAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract onConnectionTypeChanged(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
.end method

.method public abstract onNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
.end method

.method public abstract onNetworkConnect(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method public abstract onNetworkDisconnect(J)V
.end method
