.class public final Lcom/facebook/ads/redexgen/X/QH;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7o;->A00(Lcom/facebook/ads/redexgen/X/Kp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7o;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7o;)V
    .locals 0

    .line 49933
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/QH;->A00:Lcom/facebook/ads/redexgen/X/7o;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 49934
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/QH;->A00:Lcom/facebook/ads/redexgen/X/7o;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7o;->A00:Lcom/facebook/ads/redexgen/X/KT;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KT;->A00(Lcom/facebook/ads/redexgen/X/KT;)Landroid/os/Handler;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/KU;

    invoke-direct {v2, p0}, Lcom/facebook/ads/redexgen/X/KU;-><init>(Lcom/facebook/ads/redexgen/X/QH;)V

    const-wide/16 v0, 0x7d0

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 49935
    return-void
.end method
