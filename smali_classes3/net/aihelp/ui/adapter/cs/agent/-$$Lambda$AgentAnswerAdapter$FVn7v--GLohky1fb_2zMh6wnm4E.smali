.class public final synthetic Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$FVn7v--GLohky1fb_2zMh6wnm4E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;


# direct methods
.method public synthetic constructor <init>(Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;Ljava/lang/String;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$FVn7v--GLohky1fb_2zMh6wnm4E;->f$0:Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$FVn7v--GLohky1fb_2zMh6wnm4E;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$FVn7v--GLohky1fb_2zMh6wnm4E;->f$2:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$FVn7v--GLohky1fb_2zMh6wnm4E;->f$0:Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$FVn7v--GLohky1fb_2zMh6wnm4E;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$FVn7v--GLohky1fb_2zMh6wnm4E;->f$2:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    invoke-virtual {v0, v1, v2, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->lambda$getListItem$0$AgentAnswerAdapter(Ljava/lang/String;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Landroid/view/View;)V

    return-void
.end method
