.class Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;
.super Ljava/lang/Object;
.source "AIHelpFlowLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/AIHelpFlowLayout;->specifyLines(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

.field final synthetic val$line_num_now:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/AIHelpFlowLayout;I)V
    .locals 0

    .line 429
    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    iput p2, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;->val$line_num_now:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 432
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;->val$line_num_now:I

    .line 434
    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    iget-object v1, v1, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineNumList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    iget-object v0, v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineNumList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 438
    iget-object v4, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    iget-object v4, v4, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineNumList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 440
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    if-ge v1, v3, :cond_2

    .line 442
    iget-object v2, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    invoke-virtual {v2, v1}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 444
    :cond_2
    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->removeAllViews()V

    .line 445
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 446
    iget-object v2, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;->this$0:Lnet/aihelp/ui/widget/AIHelpFlowLayout;

    invoke-virtual {v2, v1}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    return-void
.end method
