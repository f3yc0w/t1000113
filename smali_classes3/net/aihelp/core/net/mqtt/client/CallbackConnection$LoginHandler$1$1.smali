.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1$1;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->onTransportCommand(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1$1;->this$2:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 374
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1$1;->this$2:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler$1;->this$1:Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$1500(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V

    return-void
.end method
