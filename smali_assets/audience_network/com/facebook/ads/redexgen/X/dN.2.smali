.class public abstract Lcom/facebook/ads/redexgen/X/dN;
.super Lcom/facebook/ads/redexgen/X/4H;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/17;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/4H<",
        "Lcom/facebook/ads/redexgen/X/Tc;",
        ">;"
    }
.end annotation


# static fields
.field public static final A05:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/17;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A01:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UB;",
            ">;"
        }
    .end annotation
.end field

.field public final A02:I

.field public final A03:Lcom/facebook/ads/redexgen/X/Xy;

.field public final A04:Lcom/facebook/ads/redexgen/X/Qv;
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 73423
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/dN;->A05:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/1A;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Xy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/1A;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/UB;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Xy;",
            ")V"
        }
    .end annotation

    .line 73424
    .local p3, "items":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/mirror/InternalNativeAd;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/4H;-><init>()V

    .line 73425
    new-instance v0, Lcom/facebook/ads/redexgen/X/dP;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/dP;-><init>(Lcom/facebook/ads/redexgen/X/dN;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/dN;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    .line 73426
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/dN;->A03:Lcom/facebook/ads/redexgen/X/Xy;

    .line 73427
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1A;->getChildSpacing()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/dN;->A02:I

    .line 73428
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/dN;->A01:Ljava/util/List;

    .line 73429
    return-void
.end method

.method private A02(I)Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 4

    .line 73430
    const/4 v1, -0x2

    const/4 v0, -0x1

    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 73431
    .local p0, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, p0, Lcom/facebook/ads/redexgen/X/dN;->A02:I

    if-nez p1, :cond_0

    mul-int/lit8 v2, v2, 0x2

    .line 73432
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dN;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/facebook/ads/redexgen/X/dN;->A02:I

    mul-int/lit8 v1, v0, 0x2

    .line 73433
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {v3, v2, v0, v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 73434
    return-object v3

    .line 73435
    :cond_1
    iget v1, p0, Lcom/facebook/ads/redexgen/X/dN;->A02:I

    goto :goto_0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/dN;)Lcom/facebook/ads/redexgen/X/17;
    .locals 0

    .line 73436
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dN;->A00:Lcom/facebook/ads/redexgen/X/17;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/dN;)Lcom/facebook/ads/redexgen/X/Qv;
    .locals 0

    .line 73437
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/dN;->A04:Lcom/facebook/ads/redexgen/X/Qv;

    return-object p0
.end method


# virtual methods
.method public final A0D()I
    .locals 1

    .line 73438
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dN;->A01:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic A0E(Lcom/facebook/ads/redexgen/X/4l;I)V
    .locals 0

    .line 73439
    check-cast p1, Lcom/facebook/ads/redexgen/X/Tc;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/dN;->A0H(Lcom/facebook/ads/redexgen/X/Tc;I)V

    return-void
.end method

.method public final A0F(Landroid/widget/ImageView;I)V
    .locals 4

    .line 73440
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/dN;->A01:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/UB;

    .line 73441
    .local p0, "childAd":Lcom/facebook/ads/redexgen/X/UB;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/UB;->A13()Lcom/facebook/ads/redexgen/X/K5;

    move-result-object v2

    .line 73442
    .local p1, "coverImage":Lcom/facebook/ads/redexgen/X/K5;
    if-eqz v2, :cond_0

    .line 73443
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/dN;->A03:Lcom/facebook/ads/redexgen/X/Xy;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T3;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 73444
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T3;->A04()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v1

    .line 73445
    .local p2, "downloadImageTask":Lcom/facebook/ads/redexgen/X/T3;
    new-instance v0, Lcom/facebook/ads/redexgen/X/dO;

    invoke-direct {v0, p0, p2, v3}, Lcom/facebook/ads/redexgen/X/dO;-><init>(Lcom/facebook/ads/redexgen/X/dN;ILcom/facebook/ads/redexgen/X/UB;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A06(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/T3;

    .line 73446
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/K5;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A07(Ljava/lang/String;)V

    .line 73447
    .end local p2    # "downloadImageTask":Lcom/facebook/ads/redexgen/X/T3;
    :cond_0
    return-void
.end method

.method public final A0G(Lcom/facebook/ads/redexgen/X/17;)V
    .locals 0

    .line 73448
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/dN;->A00:Lcom/facebook/ads/redexgen/X/17;

    .line 73449
    return-void
.end method

.method public A0H(Lcom/facebook/ads/redexgen/X/Tc;I)V
    .locals 2

    .line 73450
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tc;->A0l()Lcom/facebook/ads/internal/api/AdNativeComponentView;

    move-result-object v1

    .line 73451
    .local p0, "cardView":Lcom/facebook/ads/internal/api/AdNativeComponentView;
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/dN;->A02(I)Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/internal/api/AdNativeComponentView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73452
    return-void
.end method
