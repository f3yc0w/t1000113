.class Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "FutureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/FutureConnection;->receive()Lnet/aihelp/core/net/mqtt/client/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

.field final synthetic val$future:Lnet/aihelp/core/net/mqtt/client/Promise;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;Lnet/aihelp/core/net/mqtt/client/Promise;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->val$future:Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 196
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$400(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->val$future:Lnet/aihelp/core/net/mqtt/client/Promise;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$400(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Promise;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$500(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$300(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->val$future:Lnet/aihelp/core/net/mqtt/client/Promise;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 202
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->val$future:Lnet/aihelp/core/net/mqtt/client/Promise;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/FutureConnection$8;->this$0:Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;->access$500(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/net/mqtt/client/Message;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Promise;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
