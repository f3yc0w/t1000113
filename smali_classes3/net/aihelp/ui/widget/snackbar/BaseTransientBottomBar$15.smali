.class Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$15;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->startSlideOutAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)V
    .locals 0

    .line 920
    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$15;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iput p2, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$15;->val$event:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 928
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$15;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    iget v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$15;->val$event:I

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 923
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$15;->this$0:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-static {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->access$1200(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;

    move-result-object p1

    const/4 v0, 0x0

    const/16 v1, 0xb4

    invoke-interface {p1, v0, v1}, Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;->animateContentOut(II)V

    return-void
.end method
