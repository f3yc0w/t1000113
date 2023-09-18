.class Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1$1;
.super Ljava/lang/Object;
.source "AgentVideoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 74
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;

    iget-object v0, v0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;

    iget-object v1, v1, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;->val$holder:Lnet/aihelp/core/ui/adapter/ViewHolder;

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;

    iget-object v2, v2, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;->val$mediaMessage:Lnet/aihelp/data/model/rpa/MediaMessage;

    iget-object v3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1$1;->this$1:Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;

    iget v3, v3, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter$1;->val$position:I

    invoke-static {v0, v1, v2, v3}, Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;->access$200(Lnet/aihelp/ui/adapter/cs/agent/AgentVideoAdapter;Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/MediaMessage;I)V

    return-void
.end method
