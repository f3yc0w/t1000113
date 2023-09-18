.class public final Lcom/facebook/ads/redexgen/X/WY;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/D5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/D8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StszSampleSizeBox"
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/Ij;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WZ;)V
    .locals 2

    .line 62816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62817
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WZ;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    .line 62818
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0Y(I)V

    .line 62819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    .line 62820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    .line 62821
    return-void
.end method


# virtual methods
.method public final A7J()I
    .locals 1

    .line 62822
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A01:I

    return v0
.end method

.method public final A8U()Z
    .locals 1

    .line 62823
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADd()I
    .locals 1

    .line 62824
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A00:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WY;->A02:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0H()I

    move-result v0

    :cond_0
    return v0
.end method
