.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$11;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->kill(Lnet/aihelp/core/net/mqtt/client/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 0

    .line 675
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$11;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$11;->val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 678
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$11;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    move-result-object v0

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/client/ExtendedListener;->onDisconnected()V

    .line 679
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$11;->val$onComplete:Lnet/aihelp/core/net/mqtt/client/Callback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 680
    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method