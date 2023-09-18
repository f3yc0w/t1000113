.class Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "ServiceBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

.field final synthetic val$onCompleted:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->val$onCompleted:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->STARTED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-ne v0, v1, :cond_0

    .line 108
    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STOPPING;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STOPPING;-><init>()V

    .line 109
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->val$onCompleted:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STOPPING;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 110
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    iput-object v0, v1, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    .line 111
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    new-instance v2, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3$1;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3$1;-><init>(Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STOPPING;)V

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_0

    .line 117
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    instance-of v0, v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STOPPING;

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    check-cast v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STOPPING;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->val$onCompleted:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$STOPPING;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_0

    .line 119
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->STOPPED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-ne v0, v1, :cond_2

    .line 120
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->val$onCompleted:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v0, :cond_4

    .line 121
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    goto :goto_0

    .line 124
    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->val$onCompleted:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v0, :cond_3

    .line 125
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    .line 127
    :cond_3
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stop should not be called from state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$3;->this$0:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->_serviceState:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;->access$000(Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
