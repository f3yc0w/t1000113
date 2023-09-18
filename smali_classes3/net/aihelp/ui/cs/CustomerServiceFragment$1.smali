.class Lnet/aihelp/ui/cs/CustomerServiceFragment$1;
.super Ljava/lang/Object;
.source "CustomerServiceFragment.java"

# interfaces
.implements Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/CustomerServiceFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/CustomerServiceFragment;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$1;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh()V
    .locals 2

    .line 103
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$1;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->access$100(Lnet/aihelp/ui/cs/CustomerServiceFragment;)Lnet/aihelp/core/mvp/IPresenter;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/logic/CustomerServicePresenter;

    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$1;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-static {v1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->access$000(Lnet/aihelp/ui/cs/CustomerServiceFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->getLastConversation(I)V

    return-void
.end method
