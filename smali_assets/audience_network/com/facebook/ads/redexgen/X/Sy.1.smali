.class public final Lcom/facebook/ads/redexgen/X/Sy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OF;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AB;
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
            "Lcom/facebook/ads/redexgen/X/AB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/AB;)V
    .locals 1

    .line 53216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53217
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Ljava/lang/ref/WeakReference;

    .line 53218
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/AB;Lcom/facebook/ads/redexgen/X/AH;)V
    .locals 0

    .line 53219
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sy;-><init>(Lcom/facebook/ads/redexgen/X/AB;)V

    return-void
.end method


# virtual methods
.method public final AAx(Z)V
    .locals 1

    .line 53220
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sy;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/AB;

    .line 53221
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/AB;
    if-eqz v0, :cond_0

    .line 53222
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/AB;->A09(Lcom/facebook/ads/redexgen/X/AB;Z)Z

    .line 53223
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/AB;->A07(Lcom/facebook/ads/redexgen/X/AB;)V

    .line 53224
    :cond_0
    return-void
.end method
