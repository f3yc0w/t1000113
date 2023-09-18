.class public abstract Lcom/facebook/ads/redexgen/X/cx;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/12;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/cw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NativeAdsManagerNativeAdapterListener"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/UB;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72935
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/UB;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/UB;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 72936
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/cx;->A00:Lcom/facebook/ads/redexgen/X/UB;

    .line 72937
    return-void
.end method

.method public final ABa(Lcom/facebook/ads/redexgen/X/da;)V
    .locals 1

    .line 72938
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cx;->A00:Lcom/facebook/ads/redexgen/X/UB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UB;->A15()Lcom/facebook/ads/redexgen/X/UA;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72939
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/cx;->A00:Lcom/facebook/ads/redexgen/X/UB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UB;->A15()Lcom/facebook/ads/redexgen/X/UA;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Jv;->A9s()V

    .line 72940
    :cond_0
    return-void
.end method

.method public final ABc(Lcom/facebook/ads/redexgen/X/da;)V
    .locals 0

    .line 72941
    return-void
.end method

.method public final ABe(Lcom/facebook/ads/redexgen/X/da;Lcom/facebook/ads/redexgen/X/KH;)V
    .locals 0

    .line 72942
    return-void
.end method
