.class public final Lcom/facebook/ads/redexgen/X/QV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ig;->A07(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ig;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ig;)V
    .locals 0

    .line 50284
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 50285
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A06(Lcom/facebook/ads/redexgen/X/Ig;Z)V

    .line 50286
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ig;->A01(Lcom/facebook/ads/redexgen/X/Ig;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50287
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ig;->A01(Lcom/facebook/ads/redexgen/X/Ig;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 50288
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A02(Lcom/facebook/ads/redexgen/X/Ig;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 50289
    :cond_0
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 50290
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QS;->A05:Lcom/facebook/ads/redexgen/X/QS;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A04(Lcom/facebook/ads/redexgen/X/Ig;Lcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QS;

    .line 50291
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ig;->A03(Lcom/facebook/ads/redexgen/X/Ig;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0H(Landroid/view/View;)V

    .line 50292
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ig;->A01(Lcom/facebook/ads/redexgen/X/Ig;)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50293
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ig;->A01(Lcom/facebook/ads/redexgen/X/Ig;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 50294
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/QV;->A00:Lcom/facebook/ads/redexgen/X/Ig;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Ig;->A02(Lcom/facebook/ads/redexgen/X/Ig;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 50295
    :cond_0
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 50296
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 50297
    return-void
.end method
