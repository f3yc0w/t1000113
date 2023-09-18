.class public final Lcom/facebook/ads/redexgen/X/Sb;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mr;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/Mq;

.field public final A01:Lcom/facebook/ads/redexgen/X/PA;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Mq;Lcom/facebook/ads/redexgen/X/PA;)V
    .locals 0

    .line 52441
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52442
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:Lcom/facebook/ads/redexgen/X/PA;

    .line 52443
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Mq;

    .line 52444
    return-void
.end method


# virtual methods
.method public final A8n(Landroid/content/Intent;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/59;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52445
    invoke-static {}, Lcom/facebook/ads/redexgen/X/PA;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 52446
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:Lcom/facebook/ads/redexgen/X/PA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->A0V()V

    .line 52447
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:Lcom/facebook/ads/redexgen/X/PA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->A0O()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:Lcom/facebook/ads/redexgen/X/PA;

    .line 52449
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->A0O()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52450
    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Sb;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52451
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sb;->A00:Lcom/facebook/ads/redexgen/X/Mq;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-interface {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/Mq;->A3I(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 52452
    return-void
.end method

.method public final ABj(Z)V
    .locals 0

    .line 52453
    return-void
.end method

.method public final AC8(Z)V
    .locals 0

    .line 52454
    return-void
.end method

.method public final AEI(Landroid/os/Bundle;)V
    .locals 0

    .line 52455
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 52456
    const/4 v0, 0x0

    return v0
.end method

.method public final onDestroy()V
    .locals 1

    .line 52457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:Lcom/facebook/ads/redexgen/X/PA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->A0U()V

    .line 52458
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:Lcom/facebook/ads/redexgen/X/PA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->A0N()Lcom/facebook/ads/redexgen/X/Oz;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52459
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sb;->A01:Lcom/facebook/ads/redexgen/X/PA;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->A0N()Lcom/facebook/ads/redexgen/X/Oz;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Oz;->AAt()V

    .line 52460
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/PA;->A0B()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 52461
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Mq;)V
    .locals 0

    .line 52462
    return-void
.end method
