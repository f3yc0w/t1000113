.class Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;
.super Ljava/lang/Object;
.source "EvaluateViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->askAboutIssueResolvedStatus(Landroid/content/Context;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$dialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

.field final synthetic val$listener:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;

.field final synthetic val$resolveStatusListener:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lnet/aihelp/core/ui/dialog/AlertDialog;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    iput-object p2, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->val$dialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    iput-object p4, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->val$listener:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;

    iput-object p5, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->val$resolveStatusListener:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 108
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->val$dialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    iget-object v3, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->val$listener:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;

    iget-object v4, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$2;->val$resolveStatusListener:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->access$000(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Landroid/app/Dialog;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmResolveStatusListener;Z)V

    return-void
.end method
