.class public final Lcom/facebook/ads/redexgen/X/Sk;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/A3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderDownloadListener"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/A3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/A3;)V
    .locals 1

    .line 52512
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52513
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:Ljava/lang/ref/WeakReference;

    .line 52514
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/A3;Lcom/facebook/ads/redexgen/X/A8;)V
    .locals 0

    .line 52515
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sk;-><init>(Lcom/facebook/ads/redexgen/X/A3;)V

    return-void
.end method


# virtual methods
.method public final AAx(Z)V
    .locals 1

    .line 52516
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sk;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/A3;

    .line 52517
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/A3;
    if-eqz v0, :cond_0

    .line 52518
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/A3;->A05(Lcom/facebook/ads/redexgen/X/A3;Z)Z

    .line 52519
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/A3;->A03(Lcom/facebook/ads/redexgen/X/A3;)V

    .line 52520
    :cond_0
    return-void
.end method
