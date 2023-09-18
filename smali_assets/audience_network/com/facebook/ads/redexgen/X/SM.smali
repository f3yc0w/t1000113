.class public final Lcom/facebook/ads/redexgen/X/SM;
.super Lcom/facebook/ads/redexgen/X/MR;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SL;->A06()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/SL;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SL;)V
    .locals 0

    .line 52245
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SL;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/MR;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 52246
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SL;->A01:Lcom/facebook/ads/redexgen/X/PR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0H(Landroid/view/View;)V

    .line 52247
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SM;->A00:Lcom/facebook/ads/redexgen/X/SL;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SL;->A00:Lcom/facebook/ads/redexgen/X/PQ;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PQ;->ABA()V

    .line 52248
    return-void
.end method
