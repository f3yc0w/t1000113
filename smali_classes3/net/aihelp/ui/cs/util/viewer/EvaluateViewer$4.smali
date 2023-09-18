.class Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;
.super Ljava/lang/Object;
.source "EvaluateViewer.java"

# interfaces
.implements Lnet/aihelp/ui/widget/AIHelpRatingBar$OnStatusChangedListener;


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

.field final synthetic val$opinionArray:Landroid/util/SparseArray;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Landroid/util/SparseArray;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    iput-object p2, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;->val$opinionArray:Landroid/util/SparseArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRateStatusChanged(I)V
    .locals 3

    .line 189
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    invoke-static {v0}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->access$100(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 190
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    invoke-static {v0, p1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->access$202(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;I)I

    .line 191
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;->this$0:Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;

    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$4;->val$opinionArray:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONArray;

    invoke-static {v0, v1, p1}, Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;->access$300(Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer;Landroid/content/Context;Lorg/json/JSONArray;)V

    return-void
.end method
