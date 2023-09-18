.class Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView$1;
.super Ljava/lang/Object;
.source "BottomSelfServiceView.java"

# interfaces
.implements Lnet/aihelp/ui/cs/util/viewer/SelfServiceViewer$OnSelfServiceConfirmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelected(Lnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;

    iget-object v0, v0, Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView$1;->this$0:Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;

    iget-object v0, v0, Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {v0, p1}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_0
    return-void
.end method
