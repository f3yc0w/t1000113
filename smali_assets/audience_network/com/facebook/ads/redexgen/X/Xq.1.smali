.class public final Lcom/facebook/ads/redexgen/X/Xq;
.super Lcom/facebook/ads/redexgen/X/L8;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8t;->A0C(Lcom/facebook/ads/redexgen/X/Xx;Lcom/facebook/ads/redexgen/X/8s;Lcom/facebook/ads/redexgen/X/8r;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Xx;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xx;)V
    .locals 0

    .line 67190
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/Xx;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/L8;-><init>()V

    return-void
.end method


# virtual methods
.method public final A06()V
    .locals 6

    .line 67191
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8t;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8u;

    .line 67192
    .local v0, "event":Lcom/facebook/ads/redexgen/X/8u;
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Xq;->A00:Lcom/facebook/ads/redexgen/X/Xx;

    .line 67193
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8u;->A02()Ljava/lang/String;

    move-result-object v3

    .line 67194
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8u;->A00()I

    move-result v2

    .line 67195
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8u;->A01()Lcom/facebook/ads/redexgen/X/90;

    move-result-object v1

    const/4 v0, 0x0

    .line 67196
    invoke-static {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8t;->A0B(Lcom/facebook/ads/redexgen/X/8U;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/90;Z)V

    .line 67197
    .end local v0    # "event":Lcom/facebook/ads/redexgen/X/8u;
    goto :goto_0

    .line 67198
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8t;->A02()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 67199
    return-void
.end method
