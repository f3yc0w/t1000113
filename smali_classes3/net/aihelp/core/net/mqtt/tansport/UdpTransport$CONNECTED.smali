.class Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;
.super Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;
.source "UdpTransport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CONNECTED"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V
    .locals 1

    .line 70
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;-><init>()V

    .line 71
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getLocalSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->localAddress:Ljava/net/SocketAddress;

    .line 72
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    iput-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->remoteAddress:Ljava/net/SocketAddress;

    .line 73
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->remoteAddress:Ljava/net/SocketAddress;

    if-nez v0, :cond_0

    .line 74
    sget-object v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->ANY_ADDRESS:Ljava/net/SocketAddress;

    iput-object v0, p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->remoteAddress:Ljava/net/SocketAddress;

    :cond_0
    return-void
.end method


# virtual methods
.method createDisconnectTask()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    .locals 1

    .line 93
    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;)V

    return-object v0
.end method

.method onCanceled()V
    .locals 2

    .line 86
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    const-string v1, "CONNECTED.onCanceled"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Ljava/lang/String;)V

    .line 87
    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    .line 88
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iput-object v0, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    .line 89
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;->createDisconnectTask()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 90
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->onCanceled()V

    return-void
.end method

.method onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    const-string v1, "CONNECTED.onStop"

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Ljava/lang/String;)V

    .line 80
    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    .line 81
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;

    iput-object v0, v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    .line 82
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;->createDisconnectTask()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 83
    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;->onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method
