.class Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "UdpTransportServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->queueAccept()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 66
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer$1;->this$0:Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;->access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransportServer;)V

    return-void
.end method
