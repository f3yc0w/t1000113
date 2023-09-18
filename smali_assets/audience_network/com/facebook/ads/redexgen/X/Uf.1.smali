.class public final Lcom/facebook/ads/redexgen/X/Uf;
.super Lcom/facebook/ads/redexgen/X/eS;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final A00:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 57118
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/eS;-><init>()V

    .line 57119
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Landroid/view/View;

    .line 57120
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 57121
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Uf;->A04()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57122
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/eS;->A00()V

    .line 57123
    :cond_0
    return-void
.end method


# virtual methods
.method public final A03()V
    .locals 0

    .line 57124
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/eS;->A00()V

    .line 57125
    return-void
.end method

.method public final A04()Z
    .locals 1

    .line 57126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Uf;->A00:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/38;->A0H(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 57127
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/eS;->A00()V

    .line 57128
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 57129
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/eS;->A01()V

    .line 57130
    return-void
.end method
