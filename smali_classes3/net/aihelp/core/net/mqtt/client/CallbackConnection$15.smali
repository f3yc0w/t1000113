.class Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;
.super Ljava/lang/Object;
.source "CallbackConnection.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->toReceiver(Lnet/aihelp/core/net/mqtt/codec/PUBLISH;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field final synthetic val$publish:Lnet/aihelp/core/net/mqtt/codec/PUBLISH;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/codec/PUBLISH;)V
    .locals 0

    .line 922
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;->val$publish:Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 922
    check-cast p1, Lnet/aihelp/core/net/mqtt/client/Callback;

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;->onSuccess(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method

.method public onSuccess(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 924
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PUBREC;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBREC;-><init>()V

    .line 925
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;->val$publish:Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId()S

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/PUBREC;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/PUBREC;

    .line 926
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$2800(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;->val$publish:Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;->this$0:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBREC;->encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;-><init>(ILnet/aihelp/core/net/mqtt/codec/MQTTFrame;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-static {p1, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->access$700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)V

    return-void
.end method
