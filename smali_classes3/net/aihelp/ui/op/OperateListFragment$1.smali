.class Lnet/aihelp/ui/op/OperateListFragment$1;
.super Ljava/lang/Object;
.source "OperateListFragment.java"

# interfaces
.implements Lnet/aihelp/ui/adapter/OperateListAdapter$OnOperationFaqClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/op/OperateListFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/op/OperateListFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/op/OperateListFragment;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lnet/aihelp/ui/op/OperateListFragment$1;->this$0:Lnet/aihelp/ui/op/OperateListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationFaqClicked(Ljava/lang/String;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lnet/aihelp/ui/op/OperateListFragment$1;->this$0:Lnet/aihelp/ui/op/OperateListFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/op/OperateListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :cond_0
    const-string v1, "faq_main_id"

    .line 54
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lnet/aihelp/ui/op/OperateListFragment$1;->this$0:Lnet/aihelp/ui/op/OperateListFragment;

    invoke-static {p1}, Lnet/aihelp/ui/op/OperateListFragment;->access$000(Lnet/aihelp/ui/op/OperateListFragment;)Lnet/aihelp/ui/faq/IFaqEventListener;

    return-void
.end method
