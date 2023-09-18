.class public final Lcom/facebook/ads/redexgen/X/WX;
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
    name = "Stz2SampleSizeBox"
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:Lcom/facebook/ads/redexgen/X/Ij;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WZ;)V
    .locals 2

    .line 62800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62801
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/WZ;->A00:Lcom/facebook/ads/redexgen/X/Ij;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    .line 62802
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0Y(I)V

    .line 62803
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0H()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A02:I

    .line 62804
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0H()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:I

    .line 62805
    return-void
.end method


# virtual methods
.method public final A7J()I
    .locals 1

    .line 62806
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A03:I

    return v0
.end method

.method public final A8U()Z
    .locals 1

    .line 62807
    const/4 v0, 0x0

    return v0
.end method

.method public final ADd()I
    .locals 2

    .line 62808
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A02:I

    const/16 v0, 0x8

    if-ne v1, v0, :cond_0

    .line 62809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0E()I

    move-result v0

    return v0

    .line 62810
    :cond_0
    const/16 v0, 0x10

    if-ne v1, v0, :cond_1

    .line 62811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0I()I

    move-result v0

    return v0

    .line 62812
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A01:I

    rem-int/lit8 v0, v1, 0x2

    if-nez v0, :cond_2

    .line 62813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A04:Lcom/facebook/ads/redexgen/X/Ij;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ij;->A0E()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    .line 62814
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v0, v0, 0x4

    return v0

    .line 62815
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/WX;->A00:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method
