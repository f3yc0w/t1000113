.class public final Lcom/facebook/ads/redexgen/X/Qb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/IT;->A08(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/IT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/IT;)V
    .locals 0

    .line 50362
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:Lcom/facebook/ads/redexgen/X/IT;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 50363
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:Lcom/facebook/ads/redexgen/X/IT;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IT;->A07(Lcom/facebook/ads/redexgen/X/IT;Z)V

    .line 50364
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:Lcom/facebook/ads/redexgen/X/IT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IT;->A05(Lcom/facebook/ads/redexgen/X/IT;)V

    .line 50365
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 50366
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:Lcom/facebook/ads/redexgen/X/IT;

    sget-object v0, Lcom/facebook/ads/redexgen/X/QS;->A05:Lcom/facebook/ads/redexgen/X/QS;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/IT;->A03(Lcom/facebook/ads/redexgen/X/IT;Lcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QS;

    .line 50367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:Lcom/facebook/ads/redexgen/X/IT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IT;->A02(Lcom/facebook/ads/redexgen/X/IT;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0H(Landroid/view/View;)V

    .line 50368
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Qb;->A00:Lcom/facebook/ads/redexgen/X/IT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IT;->A05(Lcom/facebook/ads/redexgen/X/IT;)V

    .line 50369
    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 50370
    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 50371
    return-void
.end method
