.class Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$2;
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

.field final synthetic val$botMsg:Lnet/aihelp/data/model/rpa/BotMessage;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;Lnet/aihelp/data/model/rpa/BotMessage;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$2;->val$botMsg:Lnet/aihelp/data/model/rpa/BotMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 115
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->access$300(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    sget-object p1, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->INSTANCE:Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$2;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->access$400(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$2;->val$botMsg:Lnet/aihelp/data/model/rpa/BotMessage;

    invoke-virtual {v1}, Lnet/aihelp/data/model/rpa/BotMessage;->getSelfService()Lnet/aihelp/data/model/rpa/bot/SelfService;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer;->getService(Landroid/content/Context;Lnet/aihelp/data/model/rpa/bot/SelfService;)V

    :cond_0
    return-void
.end method
