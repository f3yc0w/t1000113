.class Lnet/aihelp/ui/widget/AIHelpFlowLayout$1;
.super Ljava/lang/Object;
.source "AIHelpFlowLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpFlowLayout;->update(Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

.field final synthetic val$action:Lnet/aihelp/data/model/rpa/RPAStep$Action;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpFlowLayout;Lnet/aihelp/data/model/rpa/RPAStep$Action;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$1;->val$action:Lnet/aihelp/data/model/rpa/RPAStep$Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->access$000(Lnet/aihelp/ui/widget/AIHelpFlowLayout;)Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$1;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    invoke-static {p1}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->access$000(Lnet/aihelp/ui/widget/AIHelpFlowLayout;)Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$1;->val$action:Lnet/aihelp/data/model/rpa/RPAStep$Action;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;->onLabelClicked(Lnet/aihelp/data/model/rpa/RPAStep$Action;)V

    :cond_0
    return-void
.end method
