.class Lnet/aihelp/ui/faq/FaqContentFragment$1;
.super Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;
.source "FaqContentFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/faq/FaqContentFragment;->refreshQuestionContent(Lnet/aihelp/data/model/faq/FaqContentEntity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

.field final synthetic val$faq:Lnet/aihelp/data/model/faq/FaqContentEntity;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/faq/FaqContentFragment;Lnet/aihelp/data/model/faq/FaqContentEntity;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

    iput-object p2, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->val$faq:Lnet/aihelp/data/model/faq/FaqContentEntity;

    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpEvaluateView$OnAIHelpEvaluateViewCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvaluated(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 98
    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "faq_support_moment"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-static {p1}, Lnet/aihelp/ui/faq/FaqContentFragment;->access$000(Lnet/aihelp/ui/faq/FaqContentFragment;)Lnet/aihelp/ui/widget/AIHelpServiceEntrance;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpServiceEntrance;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->this$0:Lnet/aihelp/ui/faq/FaqContentFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lnet/aihelp/ui/faq/FaqContentFragment;->access$102(Lnet/aihelp/ui/faq/FaqContentFragment;Z)Z

    .line 105
    :cond_0
    sget-object p1, Lnet/aihelp/data/localize/data/FaqHelper;->INSTANCE:Lnet/aihelp/data/localize/data/FaqHelper;

    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqContentFragment$1;->val$faq:Lnet/aihelp/data/model/faq/FaqContentEntity;

    invoke-virtual {v0}, Lnet/aihelp/data/model/faq/FaqContentEntity;->getFaqMainId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/data/localize/data/FaqHelper;->afterFaqEvaluated(Ljava/lang/String;)V

    return-void
.end method
