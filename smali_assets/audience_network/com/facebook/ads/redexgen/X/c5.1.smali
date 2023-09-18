.class public final Lcom/facebook/ads/redexgen/X/c5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F9;->A0f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F9;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F9;)V
    .locals 0

    .line 70553
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/3o;)V
    .locals 5

    .line 70554
    iget v1, p1, Lcom/facebook/ads/redexgen/X/3o;->A00:I

    const/4 v4, 0x1

    if-eq v1, v4, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x4

    if-eq v1, v0, :cond_1

    const/16 v0, 0x8

    if-eq v1, v0, :cond_0

    .line 70555
    :goto_0
    return-void

    .line 70556
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/F9;->A06:Lcom/facebook/ads/redexgen/X/4T;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3o;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3o;->A01:I

    invoke-virtual {v3, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/4T;->A1S(Lcom/facebook/ads/redexgen/X/F9;III)V

    goto :goto_0

    .line 70557
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/F9;->A06:Lcom/facebook/ads/redexgen/X/4T;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget v2, p1, Lcom/facebook/ads/redexgen/X/3o;->A02:I

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3o;->A01:I

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/3o;->A03:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4T;->A1T(Lcom/facebook/ads/redexgen/X/F9;IILjava/lang/Object;)V

    .line 70558
    goto :goto_0

    .line 70559
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/F9;->A06:Lcom/facebook/ads/redexgen/X/4T;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3o;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3o;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4T;->A1R(Lcom/facebook/ads/redexgen/X/F9;II)V

    .line 70560
    goto :goto_0

    .line 70561
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/F9;->A06:Lcom/facebook/ads/redexgen/X/4T;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/3o;->A02:I

    iget v0, p1, Lcom/facebook/ads/redexgen/X/3o;->A01:I

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/4T;->A1Q(Lcom/facebook/ads/redexgen/X/F9;II)V

    .line 70562
    goto :goto_0
.end method


# virtual methods
.method public final A5Q(I)Lcom/facebook/ads/redexgen/X/4l;
    .locals 4

    .line 70563
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    const/4 v0, 0x1

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/F9;->A1G(IZ)Lcom/facebook/ads/redexgen/X/4l;

    move-result-object v3

    .line 70564
    .local p0, "vh":Lcom/facebook/ads/redexgen/X/4l;
    const/4 v2, 0x0

    if-nez v3, :cond_0

    .line 70565
    return-object v2

    .line 70566
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/F9;->A01:Lcom/facebook/ads/redexgen/X/3r;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/4l;->A0H:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/3r;->A0K(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70567
    return-object v2

    .line 70568
    :cond_1
    return-object v3
.end method

.method public final A9U(IILjava/lang/Object;)V
    .locals 2

    .line 70569
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/F9;->A1f(IILjava/lang/Object;)V

    .line 70570
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/F9;->A0H:Z

    .line 70571
    return-void
.end method

.method public final A9o(II)V
    .locals 2

    .line 70572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/F9;->A1c(II)V

    .line 70573
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/F9;->A0G:Z

    .line 70574
    return-void
.end method

.method public final A9p(II)V
    .locals 2

    .line 70575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/F9;->A1d(II)V

    .line 70576
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/F9;->A0G:Z

    .line 70577
    return-void
.end method

.method public final A9q(II)V
    .locals 2

    .line 70578
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/facebook/ads/redexgen/X/F9;->A1g(IIZ)V

    .line 70579
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    iput-boolean v1, v0, Lcom/facebook/ads/redexgen/X/F9;->A0G:Z

    .line 70580
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/F9;->A0s:Lcom/facebook/ads/redexgen/X/4i;

    iget v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    add-int/2addr v0, p2

    iput v0, v1, Lcom/facebook/ads/redexgen/X/4i;->A00:I

    .line 70581
    return-void
.end method

.method public final A9r(II)V
    .locals 2

    .line 70582
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/F9;->A1g(IIZ)V

    .line 70583
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/c5;->A00:Lcom/facebook/ads/redexgen/X/F9;

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/F9;->A0G:Z

    .line 70584
    return-void
.end method

.method public final AAV(Lcom/facebook/ads/redexgen/X/3o;)V
    .locals 0

    .line 70585
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/c5;->A00(Lcom/facebook/ads/redexgen/X/3o;)V

    .line 70586
    return-void
.end method

.method public final AAX(Lcom/facebook/ads/redexgen/X/3o;)V
    .locals 0

    .line 70587
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/c5;->A00(Lcom/facebook/ads/redexgen/X/3o;)V

    .line 70588
    return-void
.end method
