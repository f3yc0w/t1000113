.class Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;
.super Ljava/lang/Object;
.source "EvaluateViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->showRateSupport(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$listener:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    iput-object p2, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;->val$listener:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 201
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->access$200(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v0, v1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->access$400(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Z)V

    .line 203
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    invoke-static {p1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->access$500(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;)Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    .line 204
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$5;->val$listener:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;

    invoke-static {p1, v0, v1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->access$600(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;)V

    :cond_1
    return-void
.end method
