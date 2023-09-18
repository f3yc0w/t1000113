.class Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$8;
.super Ljava/lang/Object;
.source "EvaluateViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->showThanksAfterEvaluate(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$showThanksDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lnet/aihelp/core/ui/dialog/AlertDialog;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$8;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    iput-object p2, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$8;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$8;->val$showThanksDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 390
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$8;->val$context:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/utils/AppInfoUtil;->goRateApp(Landroid/content/Context;)V

    .line 391
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$8;->val$showThanksDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    return-void
.end method
