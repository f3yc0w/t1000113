.class public final Lcom/facebook/ads/redexgen/X/c8;
.super Lcom/facebook/ads/redexgen/X/4D;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/4D;->A01(Lcom/facebook/ads/redexgen/X/4T;)Lcom/facebook/ads/redexgen/X/4D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4T;)V
    .locals 1

    .line 70653
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4D;-><init>(Lcom/facebook/ads/redexgen/X/4T;Lcom/facebook/ads/redexgen/X/c9;)V

    return-void
.end method


# virtual methods
.method public final A06()I
    .locals 1

    .line 70654
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0X()I

    move-result v0

    return v0
.end method

.method public final A07()I
    .locals 2

    .line 70655
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0X()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A08()I
    .locals 1

    .line 70656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0d()I

    move-result v0

    return v0
.end method

.method public final A09()I
    .locals 1

    .line 70657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0Y()I

    move-result v0

    return v0
.end method

.method public final A0A()I
    .locals 1

    .line 70658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0g()I

    move-result v0

    return v0
.end method

.method public final A0B()I
    .locals 2

    .line 70659
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0X()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0g()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    .line 70660
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4T;->A0d()I

    move-result v0

    sub-int/2addr v1, v0

    .line 70661
    return v1
.end method

.method public final A0C(Landroid/view/View;)I
    .locals 3

    .line 70662
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4U;

    .line 70663
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4U;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4T;->A0j(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4U;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0D(Landroid/view/View;)I
    .locals 3

    .line 70664
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4U;

    .line 70665
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4U;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4T;->A0l(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4U;->topMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4U;->bottomMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0E(Landroid/view/View;)I
    .locals 3

    .line 70666
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4U;

    .line 70667
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4U;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4T;->A0m(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4U;->leftMargin:I

    add-int/2addr v1, v0

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4U;->rightMargin:I

    add-int/2addr v1, v0

    return v1
.end method

.method public final A0F(Landroid/view/View;)I
    .locals 3

    .line 70668
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/4U;

    .line 70669
    .local p0, "params":Lcom/facebook/ads/redexgen/X/4U;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4T;->A0o(Landroid/view/View;)I

    move-result v1

    iget v0, v2, Lcom/facebook/ads/redexgen/X/4U;->topMargin:I

    sub-int/2addr v1, v0

    return v1
.end method

.method public final A0G(Landroid/view/View;)I
    .locals 3

    .line 70670
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4T;->A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 70671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public final A0H(Landroid/view/View;)I
    .locals 3

    .line 70672
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:Landroid/graphics/Rect;

    const/4 v0, 0x1

    invoke-virtual {v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/4T;->A1E(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 70673
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A01:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public final A0J(I)V
    .locals 1

    .line 70674
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/4D;->A02:Lcom/facebook/ads/redexgen/X/4T;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4T;->A10(I)V

    .line 70675
    return-void
.end method
