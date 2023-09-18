.class public abstract Lcom/facebook/ads/redexgen/X/eS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/eT;
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/eT;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00()V
    .locals 1

    .line 75399
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eS;->A00:Lcom/facebook/ads/redexgen/X/eT;

    if-eqz v0, :cond_0

    .line 75400
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eT;->onStart()V

    .line 75401
    :cond_0
    return-void
.end method

.method public final A01()V
    .locals 1

    .line 75402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/eS;->A00:Lcom/facebook/ads/redexgen/X/eT;

    if-eqz v0, :cond_0

    .line 75403
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/eT;->onStop()V

    .line 75404
    :cond_0
    return-void
.end method

.method public final A02(Lcom/facebook/ads/redexgen/X/eT;)V
    .locals 0

    .line 75405
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/eS;->A00:Lcom/facebook/ads/redexgen/X/eT;

    .line 75406
    return-void
.end method
