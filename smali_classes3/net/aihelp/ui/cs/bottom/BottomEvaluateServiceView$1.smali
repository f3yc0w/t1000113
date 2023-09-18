.class Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView$1;
.super Ljava/lang/Object;
.source "BottomEvaluateServiceView.java"

# interfaces
.implements Lnet/aihelp/ui/cs/util/viewer/EvaluateViewer$OnConfirmEvaluateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterEvaluate()V
    .locals 2

    .line 50
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;

    iget-object v0, v0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;

    iget-object v0, v0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    const/16 v1, 0x66

    invoke-interface {v0, v1}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onTicketFinished(I)V

    :cond_0
    return-void
.end method

.method public onPostEvaluate()V
    .locals 2

    .line 44
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;

    iget-object v0, v0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;

    iget-object v0, v0, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    const/16 v1, 0x68

    invoke-interface {v0, v1}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onTicketFinished(I)V

    :cond_0
    return-void
.end method
