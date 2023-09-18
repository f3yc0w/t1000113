.class public final Lcom/facebook/ads/redexgen/X/Ug;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/eX;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/eX<",
        "Lcom/facebook/ads/redexgen/X/JX;",
        "Lcom/facebook/ads/redexgen/X/Jc;",
        ">;"
    }
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Ud;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ud;)V
    .locals 0

    .line 57131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57132
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:Lcom/facebook/ads/redexgen/X/Ud;

    .line 57133
    return-void
.end method


# virtual methods
.method public final A5I(Lcom/facebook/ads/redexgen/X/eU;Lcom/facebook/ads/redexgen/X/eJ;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/eU<",
            "Lcom/facebook/ads/redexgen/X/JX;",
            "Lcom/facebook/ads/redexgen/X/Jc;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/eJ;",
            ")V"
        }
    .end annotation

    .line 57134
    .local v1, "viewpointData":Lcom/facebook/ads/redexgen/X/eU;, "Lcom/instagram/common/viewpoint/core/ViewpointData<Lcom/facebook/ads/internal/impressionsecondchannel/model/Impression;Lcom/facebook/ads/internal/impressionsecondchannel/state/ImpressionState;>;"
    sget-object v1, Lcom/facebook/ads/redexgen/X/JV;->A00:[I

    invoke-interface {p2, p1}, Lcom/facebook/ads/redexgen/X/eJ;->A7o(Lcom/facebook/ads/redexgen/X/eU;)Lcom/facebook/ads/redexgen/X/eK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/eK;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 57135
    :goto_0
    return-void

    .line 57136
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ug;->A00:Lcom/facebook/ads/redexgen/X/Ud;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Ud;->A02(Lcom/facebook/ads/redexgen/X/eU;Lcom/facebook/ads/redexgen/X/eJ;)V

    .line 57137
    goto :goto_0
.end method
