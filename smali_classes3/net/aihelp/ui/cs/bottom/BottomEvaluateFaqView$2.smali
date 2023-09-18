.class Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;
.super Ljava/lang/Object;
.source "BottomEvaluateFaqView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;

.field final synthetic val$btnHelpful:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;Landroid/widget/Button;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;

    iput-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;->val$btnHelpful:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 53
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;

    iget-object p1, p1, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;->val$btnHelpful:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 55
    invoke-static {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string v4, "like"

    invoke-static {p1, v2, v3, v4}, Lnet/aihelp/data/model/rpa/UserMessage;->getRequestParams(Ljava/lang/String;ZILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v1, p1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;->access$000(Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Lorg/json/JSONObject;)V

    .line 57
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView$2;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;

    iget-object p1, p1, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_0
    return-void
.end method
