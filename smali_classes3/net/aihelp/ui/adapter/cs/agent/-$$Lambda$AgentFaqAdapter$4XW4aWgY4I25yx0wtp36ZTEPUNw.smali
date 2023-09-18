.class public final synthetic Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentFaqAdapter$4XW4aWgY4I25yx0wtp36ZTEPUNw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

.field public final synthetic f$1:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;


# direct methods
.method public synthetic constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentFaqAdapter$4XW4aWgY4I25yx0wtp36ZTEPUNw;->f$0:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentFaqAdapter$4XW4aWgY4I25yx0wtp36ZTEPUNw;->f$1:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentFaqAdapter$4XW4aWgY4I25yx0wtp36ZTEPUNw;->f$0:Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentFaqAdapter$4XW4aWgY4I25yx0wtp36ZTEPUNw;->f$1:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->lambda$getFaqViewer$0$AgentFaqAdapter(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Landroid/view/View;)V

    return-void
.end method
