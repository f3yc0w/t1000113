.class public final synthetic Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

.field public final synthetic f$1:Lnet/aihelp/core/ui/adapter/ViewHolder;

.field public final synthetic f$2:Landroid/widget/TextView;

.field public final synthetic f$3:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;


# direct methods
.method public synthetic constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;->f$0:Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;->f$1:Lnet/aihelp/core/ui/adapter/ViewHolder;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;->f$3:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;->f$0:Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;->f$1:Lnet/aihelp/core/ui/adapter/ViewHolder;

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;->f$2:Landroid/widget/TextView;

    iget-object v3, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;->f$3:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    invoke-virtual {v0, v1, v2, v3, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->lambda$prepareEvaluateLayout$1$AgentAnswerAdapter(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Landroid/view/View;)V

    return-void
.end method
