.class public final Lcom/facebook/ads/redexgen/X/c7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/4s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/F9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F9;)V
    .locals 0

    .line 70638
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ADL(Lcom/facebook/ads/redexgen/X/4l;Lcom/facebook/ads/redexgen/X/4O;Lcom/facebook/ads/redexgen/X/4O;)V
    .locals 1

    .line 70639
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/F9;->A1n(Lcom/facebook/ads/redexgen/X/4l;Lcom/facebook/ads/redexgen/X/4O;Lcom/facebook/ads/redexgen/X/4O;)V

    .line 70640
    return-void
.end method

.method public final ADN(Lcom/facebook/ads/redexgen/X/4l;Lcom/facebook/ads/redexgen/X/4O;Lcom/facebook/ads/redexgen/X/4O;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/4O;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4O;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 70641
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/F9;->A0r:Lcom/facebook/ads/redexgen/X/4b;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/4b;->A0c(Lcom/facebook/ads/redexgen/X/4l;)V

    .line 70642
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/F9;->A1o(Lcom/facebook/ads/redexgen/X/4l;Lcom/facebook/ads/redexgen/X/4O;Lcom/facebook/ads/redexgen/X/4O;)V

    .line 70643
    return-void
.end method

.method public final ADP(Lcom/facebook/ads/redexgen/X/4l;Lcom/facebook/ads/redexgen/X/4O;Lcom/facebook/ads/redexgen/X/4O;)V
    .locals 1
    .param p2    # Lcom/facebook/ads/redexgen/X/4O;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/ads/redexgen/X/4O;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 70644
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/4l;->A0Z(Z)V

    .line 70645
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/F9;->A0C:Z

    if-eqz v0, :cond_1

    .line 70646
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/F9;->A05:Lcom/facebook/ads/redexgen/X/4P;

    invoke-virtual {v0, p1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4P;->A0H(Lcom/facebook/ads/redexgen/X/4l;Lcom/facebook/ads/redexgen/X/4l;Lcom/facebook/ads/redexgen/X/4O;Lcom/facebook/ads/redexgen/X/4O;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70647
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A1N()V

    .line 70648
    :cond_0
    :goto_0
    return-void

    .line 70649
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/F9;->A05:Lcom/facebook/ads/redexgen/X/4P;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4P;->A0G(Lcom/facebook/ads/redexgen/X/4l;Lcom/facebook/ads/redexgen/X/4O;Lcom/facebook/ads/redexgen/X/4O;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70650
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/F9;->A1N()V

    goto :goto_0
.end method

.method public final AFJ(Lcom/facebook/ads/redexgen/X/4l;)V
    .locals 3

    .line 70651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/F9;->A06:Lcom/facebook/ads/redexgen/X/4T;

    iget-object v1, p1, Lcom/facebook/ads/redexgen/X/4l;->A0H:Landroid/view/View;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c7;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/F9;->A0r:Lcom/facebook/ads/redexgen/X/4b;

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4T;->A1D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/4b;)V

    .line 70652
    return-void
.end method
