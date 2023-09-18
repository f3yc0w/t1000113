.class public final Lcom/facebook/ads/redexgen/X/S1;
.super Lcom/facebook/ads/redexgen/X/Qv;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/8K;->A0B(ILandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8K;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8K;)V
    .locals 0

    .line 51717
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Qv;-><init>()V

    return-void
.end method


# virtual methods
.method public final A02()V
    .locals 3

    .line 51718
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A04(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/MK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MK;->A07()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51719
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/8K;->A04(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/MK;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/8K;->A0E(Lcom/facebook/ads/redexgen/X/8K;Lcom/facebook/ads/redexgen/X/MK;)V

    .line 51720
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A08(Lcom/facebook/ads/redexgen/X/8K;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51721
    new-instance v1, Lcom/facebook/ads/redexgen/X/OG;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/OG;-><init>()V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    .line 51722
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A06(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Qw;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A03(Lcom/facebook/ads/redexgen/X/Qw;)Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    .line 51723
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A04(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/MK;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A02(Lcom/facebook/ads/redexgen/X/MK;)Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    .line 51724
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A00(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/dJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0X()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/OG;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/OG;

    move-result-object v0

    .line 51725
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OG;->A05()Ljava/util/Map;

    move-result-object v2

    .line 51726
    .local p0, "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A03(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Jh;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A08(Lcom/facebook/ads/redexgen/X/8K;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Jh;->A93(Ljava/lang/String;Ljava/util/Map;)V

    .line 51727
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A02(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xy;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2Y()V

    .line 51728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S1;->A00:Lcom/facebook/ads/redexgen/X/8K;

    .line 51729
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/8K;->A01(Lcom/facebook/ads/redexgen/X/8K;)Lcom/facebook/ads/redexgen/X/dJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0W()Ljava/lang/String;

    move-result-object v0

    .line 51730
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/29;->A00(Ljava/lang/String;)V

    .line 51731
    .end local p0    # "urlParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
