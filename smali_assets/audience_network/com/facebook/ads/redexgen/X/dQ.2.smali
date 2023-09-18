.class public abstract Lcom/facebook/ads/redexgen/X/dQ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0n;


# instance fields
.field public A00:I

.field public A01:J

.field public A02:Lcom/facebook/ads/RewardData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73462
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A00(I)V
    .locals 0

    .line 73463
    iput p1, p0, Lcom/facebook/ads/redexgen/X/dQ;->A00:I

    .line 73464
    return-void
.end method

.method public final A01(J)V
    .locals 0

    .line 73465
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/dQ;->A01:J

    .line 73466
    return-void
.end method

.method public final A02(Lcom/facebook/ads/RewardData;)V
    .locals 0

    .line 73467
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dQ;->A02:Lcom/facebook/ads/RewardData;

    .line 73468
    return-void
.end method

.method public abstract A0D()I
.end method

.method public abstract A0E()Lcom/facebook/ads/redexgen/X/18;
.end method

.method public abstract A0F()Z
.end method

.method public final A7B()Lcom/facebook/ads/internal/protocol/AdPlacementType;
    .locals 1

    .line 73469
    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->REWARDED_VIDEO:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    return-object v0
.end method
