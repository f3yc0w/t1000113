.class Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$1;
.super Ljava/lang/Object;
.source "AIHelpTypingIndicatorView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->startTypingAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;


# direct methods
.method constructor <init>(Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$1;->this$0:Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$1;->this$0:Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;

    invoke-static {v0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->access$000(Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 90
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
