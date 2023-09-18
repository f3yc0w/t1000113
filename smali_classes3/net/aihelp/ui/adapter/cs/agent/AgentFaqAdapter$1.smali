.class Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter$1;
.super Ljava/lang/Object;
.source "AgentFaqAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->prepareFaqFormLayout(Landroid/widget/LinearLayout;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

.field final synthetic val$faqData:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter$1;->val$faqData:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 146
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter$1;->val$faqData:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getFormUrl()Ljava/lang/String;

    move-result-object p1

    .line 147
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->access$000(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/aihelp/utils/AppInfoUtil;->isUrlStillNeedResponding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->access$100(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter$1;->this$0:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

    invoke-static {v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->access$200(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onUrlClicked(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
