.class Lcom/netease/lava/webrtc/NetworkMonitor$1;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"

# interfaces
.implements Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/NetworkMonitor;->createAutoDetect(Landroid/content/Context;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/webrtc/NetworkMonitor;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/NetworkMonitor;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitor$1;->this$0:Lcom/netease/lava/webrtc/NetworkMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor$1;->this$0:Lcom/netease/lava/webrtc/NetworkMonitor;

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/NetworkMonitor;->access$100(Lcom/netease/lava/webrtc/NetworkMonitor;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    return-void
.end method

.method public onNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor$1;->this$0:Lcom/netease/lava/webrtc/NetworkMonitor;

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/NetworkMonitor;->access$400(Lcom/netease/lava/webrtc/NetworkMonitor;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onNetworkConnect(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor$1;->this$0:Lcom/netease/lava/webrtc/NetworkMonitor;

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/NetworkMonitor;->access$200(Lcom/netease/lava/webrtc/NetworkMonitor;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    return-void
.end method

.method public onNetworkDisconnect(J)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor$1;->this$0:Lcom/netease/lava/webrtc/NetworkMonitor;

    invoke-static {v0, p1, p2}, Lcom/netease/lava/webrtc/NetworkMonitor;->access$300(Lcom/netease/lava/webrtc/NetworkMonitor;J)V

    return-void
.end method
