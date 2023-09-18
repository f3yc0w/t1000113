.class public final Lcom/facebook/ads/redexgen/X/QY;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/IY;->A05(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IY;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IY;)V
    .locals 0

    .line 50319
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 50320
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IY;->A06(Lcom/facebook/ads/redexgen/X/IY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50321
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IY;->A00(Lcom/facebook/ads/redexgen/X/IY;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0L(Landroid/view/View;)V

    .line 50322
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IY;->A00(Lcom/facebook/ads/redexgen/X/IY;)Landroid/view/View;

    move-result-object v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 50323
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QS;->A03:Lcom/facebook/ads/redexgen/X/QS;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IY;->A03(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QS;

    .line 50324
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IY;->A01(Lcom/facebook/ads/redexgen/X/IY;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IY;->A01(Lcom/facebook/ads/redexgen/X/IY;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 50326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/IY;->A02(Lcom/facebook/ads/redexgen/X/IY;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 50327
    :cond_1
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 50328
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IY;->A06(Lcom/facebook/ads/redexgen/X/IY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IY;->A00(Lcom/facebook/ads/redexgen/X/IY;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0H(Landroid/view/View;)V

    .line 50330
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QS;->A05:Lcom/facebook/ads/redexgen/X/QS;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IY;->A03(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QS;

    .line 50331
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IY;->A01(Lcom/facebook/ads/redexgen/X/IY;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50332
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IY;->A01(Lcom/facebook/ads/redexgen/X/IY;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 50333
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QY;->A00:Lcom/facebook/ads/redexgen/X/IY;

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/IY;->A02(Lcom/facebook/ads/redexgen/X/IY;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 50334
    :cond_1
    return-void
.end method
