.class Lnet/aihelp/core/net/mqtt/cli/Listener$1;
.super Ljava/lang/Thread;
.source "Listener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/cli/Listener;->execute()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

.field final synthetic val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$done:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/cli/Listener;Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$1;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$1;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$1;->val$done:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "MQTT client shutdown"

    .line 157
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/cli/Listener$1;->setName(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$1;->this$0:Lnet/aihelp/core/net/mqtt/cli/Listener;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$000(Lnet/aihelp/core/net/mqtt/cli/Listener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Disconnecting the client."

    .line 159
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Listener;->access$100(Ljava/lang/Object;)V

    .line 161
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Listener$1;->val$connection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/cli/Listener$1$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/cli/Listener$1$1;-><init>(Lnet/aihelp/core/net/mqtt/cli/Listener$1;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method
