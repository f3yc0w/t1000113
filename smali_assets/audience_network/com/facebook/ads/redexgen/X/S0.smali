.class public final Lcom/facebook/ads/redexgen/X/S0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Or;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8K;->A0D(Lcom/facebook/ads/redexgen/X/SB;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8K;)V
    .locals 0

    .line 51713
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AFK(I)V
    .locals 1

    .line 51714
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/OV;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51715
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S0;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A05(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/OV;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OV;->A00(I)V

    .line 51716
    :cond_0
    return-void
.end method
