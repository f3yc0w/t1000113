.class public abstract Lcom/facebook/ads/redexgen/X/Vd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Fa;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/XH;

.field public A01:Lcom/facebook/ads/redexgen/X/B1;

.field public A02:Ljava/lang/Object;

.field public final A03:Lcom/facebook/ads/redexgen/X/Fl;

.field public final A04:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/FZ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59032
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59033
    const/4 v1, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:Ljava/util/ArrayList;

    .line 59034
    new-instance v0, Lcom/facebook/ads/redexgen/X/Fl;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Fl;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:Lcom/facebook/ads/redexgen/X/Fl;

    .line 59035
    return-void
.end method


# virtual methods
.method public final A00(Lcom/facebook/ads/redexgen/X/FY;)Lcom/facebook/ads/redexgen/X/Fl;
    .locals 4
    .param p1    # Lcom/facebook/ads/redexgen/X/FY;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59036
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:Lcom/facebook/ads/redexgen/X/Fl;

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {v3, v2, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Fl;->A02(ILcom/facebook/ads/redexgen/X/FY;J)Lcom/facebook/ads/redexgen/X/Fl;

    move-result-object v0

    return-object v0
.end method

.method public final A01(Lcom/facebook/ads/redexgen/X/B1;Ljava/lang/Object;)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 59037
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:Lcom/facebook/ads/redexgen/X/B1;

    .line 59038
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Vd;->A02:Ljava/lang/Object;

    .line 59039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/FZ;

    .line 59040
    .local p1, "listener":Lcom/facebook/ads/redexgen/X/FZ;
    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/FZ;->ACM(Lcom/facebook/ads/redexgen/X/Fa;Lcom/facebook/ads/redexgen/X/B1;Ljava/lang/Object;)V

    .line 59041
    .end local p1    # "listener":Lcom/facebook/ads/redexgen/X/FZ;
    goto :goto_0

    .line 59042
    :cond_0
    return-void
.end method

.method public abstract A02()V
.end method

.method public abstract A03(Lcom/facebook/ads/redexgen/X/XH;Z)V
.end method

.method public final A3C(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;)V
    .locals 1

    .line 59043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Fl;->A07(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Fo;)V

    .line 59044
    return-void
.end method

.method public final ADJ(Lcom/facebook/ads/redexgen/X/XH;ZLcom/facebook/ads/redexgen/X/FZ;)V
    .locals 2

    .line 59045
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A00:Lcom/facebook/ads/redexgen/X/XH;

    if-eqz v0, :cond_0

    if-ne v0, p1, :cond_3

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/IK;->A03(Z)V

    .line 59046
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A00:Lcom/facebook/ads/redexgen/X/XH;

    if-nez v0, :cond_2

    .line 59048
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A00:Lcom/facebook/ads/redexgen/X/XH;

    .line 59049
    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Vd;->A03(Lcom/facebook/ads/redexgen/X/XH;Z)V

    .line 59050
    :cond_1
    :goto_1
    return-void

    .line 59051
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:Lcom/facebook/ads/redexgen/X/B1;

    if-eqz v1, :cond_1

    .line 59052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A02:Ljava/lang/Object;

    invoke-interface {p3, p0, v1, v0}, Lcom/facebook/ads/redexgen/X/FZ;->ACM(Lcom/facebook/ads/redexgen/X/Fa;Lcom/facebook/ads/redexgen/X/B1;Ljava/lang/Object;)V

    goto :goto_1

    .line 59053
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final ADt(Lcom/facebook/ads/redexgen/X/FZ;)V
    .locals 1

    .line 59054
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 59055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A04:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59056
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A00:Lcom/facebook/ads/redexgen/X/XH;

    .line 59057
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A01:Lcom/facebook/ads/redexgen/X/B1;

    .line 59058
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A02:Ljava/lang/Object;

    .line 59059
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Vd;->A02()V

    .line 59060
    :cond_0
    return-void
.end method

.method public final ADv(Lcom/facebook/ads/redexgen/X/Fo;)V
    .locals 1

    .line 59061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vd;->A03:Lcom/facebook/ads/redexgen/X/Fl;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Fl;->A0D(Lcom/facebook/ads/redexgen/X/Fo;)V

    .line 59062
    return-void
.end method
