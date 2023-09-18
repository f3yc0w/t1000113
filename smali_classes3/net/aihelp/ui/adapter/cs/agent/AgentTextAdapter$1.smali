.class Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$1;
.super Ljava/lang/Object;
.source "AgentTextAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->convertElvaBotTextMsg(Landroid/view/ViewGroup;Lnet/aihelp/data/model/rpa/BotMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

.field final synthetic val$externalUrl:Lnet/aihelp/data/model/rpa/bot/ExternalUrl;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;Lnet/aihelp/data/model/rpa/bot/ExternalUrl;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$1;->val$externalUrl:Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 101
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$1;->val$externalUrl:Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/ExternalUrl;->getLink()Ljava/lang/String;

    move-result-object p1

    .line 102
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->access$000(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/aihelp/utils/AppInfoUtil;->isUrlStillNeedResponding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->access$100(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->access$200(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onUrlClicked(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
