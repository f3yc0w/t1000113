.class public final Lcom/facebook/ads/redexgen/X/Tn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/MA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowLineProcessor"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/M7;

.field public final A01:Lcom/facebook/ads/redexgen/X/M8;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/M8;II)V
    .locals 1

    .line 55070
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55071
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/M8;

    .line 55072
    new-instance v0, Lcom/facebook/ads/redexgen/X/M7;

    invoke-direct {v0, p2, p3}, Lcom/facebook/ads/redexgen/X/M7;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    .line 55073
    return-void
.end method


# virtual methods
.method public final ADK(Ljava/lang/String;)V
    .locals 2

    .line 55074
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M7;->A04(Ljava/lang/String;)V

    .line 55075
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M7;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MA;->A09(Lcom/facebook/ads/redexgen/X/M7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55076
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/M8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M7;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->ADK(Ljava/lang/String;)V

    .line 55077
    :cond_0
    return-void
.end method

.method public final flush()V
    .locals 2

    .line 55078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M7;->A03()V

    .line 55079
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M7;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 55080
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MA;->A09(Lcom/facebook/ads/redexgen/X/M7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55081
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Tn;->A01:Lcom/facebook/ads/redexgen/X/M8;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M7;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M8;->ADK(Ljava/lang/String;)V

    .line 55082
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Tn;->A00:Lcom/facebook/ads/redexgen/X/M7;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M7;->A03()V

    goto :goto_0

    .line 55083
    :cond_1
    return-void
.end method
