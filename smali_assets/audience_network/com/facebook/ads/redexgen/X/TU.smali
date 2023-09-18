.class public final Lcom/facebook/ads/redexgen/X/TU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OT;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TO;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/Mq;Lcom/facebook/ads/redexgen/X/18;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/NI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TO;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TO;)V
    .locals 0

    .line 54577
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:Lcom/facebook/ads/redexgen/X/TO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9x()V
    .locals 2

    .line 54578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:Lcom/facebook/ads/redexgen/X/TO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TO;->A0g(Lcom/facebook/ads/redexgen/X/TO;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:Lcom/facebook/ads/redexgen/X/TO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TO;->A0T(Lcom/facebook/ads/redexgen/X/TO;)V

    .line 54580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:Lcom/facebook/ads/redexgen/X/TO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/TO;->A0V:Lcom/facebook/ads/redexgen/X/Mp;

    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mp;->setToolbarActionMessage(Ljava/lang/String;)V

    .line 54581
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:Lcom/facebook/ads/redexgen/X/TO;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/TO;->A0V:Lcom/facebook/ads/redexgen/X/Mp;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mp;->setToolbarActionMode(I)V

    .line 54582
    :cond_0
    return-void
.end method

.method public final ABP()V
    .locals 2

    .line 54583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:Lcom/facebook/ads/redexgen/X/TO;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/TO;->A0j(Lcom/facebook/ads/redexgen/X/TO;Z)Z

    .line 54584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:Lcom/facebook/ads/redexgen/X/TO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TO;->A05(Lcom/facebook/ads/redexgen/X/TO;)Lcom/facebook/ads/redexgen/X/Ll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ll;->A07()Z

    .line 54585
    return-void
.end method

.method public final ABQ()V
    .locals 2

    .line 54586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:Lcom/facebook/ads/redexgen/X/TO;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/TO;->A0j(Lcom/facebook/ads/redexgen/X/TO;Z)Z

    .line 54587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TU;->A00:Lcom/facebook/ads/redexgen/X/TO;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TO;->A05(Lcom/facebook/ads/redexgen/X/TO;)Lcom/facebook/ads/redexgen/X/Ll;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ll;->A06()Z

    .line 54588
    return-void
.end method
