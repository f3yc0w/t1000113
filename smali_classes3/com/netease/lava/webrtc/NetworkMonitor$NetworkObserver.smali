.class public interface abstract Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkObserver"
.end annotation


# virtual methods
.method public abstract onConnectionTypeChanged(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
.end method

.method public abstract onNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
.end method
