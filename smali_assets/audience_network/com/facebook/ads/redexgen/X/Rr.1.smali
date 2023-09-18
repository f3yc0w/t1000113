.class public final Lcom/facebook/ads/redexgen/X/Rr;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Pv;


# static fields
.field public static final A03:I

.field public static final A04:I

.field public static final A05:I

.field public static final A06:I

.field public static final A07:I


# instance fields
.field public final A00:Lcom/facebook/ads/NativeBannerAd;

.field public final A01:Lcom/facebook/ads/redexgen/X/Xy;

.field public final A02:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 51535
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x42280000    # 42.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rr;->A04:I

    .line 51536
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rr;->A03:I

    .line 51537
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x42580000    # 54.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rr;->A05:I

    .line 51538
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rr;->A07:I

    .line 51539
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Rr;->A06:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/K7;Lcom/facebook/ads/redexgen/X/K8;Lcom/facebook/ads/MediaView;Lcom/facebook/ads/AdOptionsView;)V
    .locals 14

    .line 51540
    move-object v1, p0

    move-object v9, p1

    invoke-direct {p0, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51541
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/ArrayList;

    .line 51542
    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/NativeBannerAd;

    .line 51543
    iput-object v9, v1, Lcom/facebook/ads/redexgen/X/Rr;->A01:Lcom/facebook/ads/redexgen/X/Xy;

    .line 51544
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rr;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51545
    .local v0, "commonLayout":Landroid/widget/LinearLayout;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 51546
    move-object/from16 v11, p4

    invoke-static {v11}, Lcom/facebook/ads/redexgen/X/Rr;->A00(Lcom/facebook/ads/redexgen/X/K8;)I

    move-result v2

    .line 51547
    .local v0, "iconSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rr;->A01:Lcom/facebook/ads/redexgen/X/Xy;

    new-instance v6, Lcom/facebook/ads/redexgen/X/OX;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/OX;-><init>(Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 51548
    .local v3, "iconContainer":Lcom/facebook/ads/redexgen/X/OX;
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/OX;->setFullCircleCorners(Z)V

    .line 51549
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51550
    .local v4, "iconContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v0, 0x10

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51551
    const/4 v2, -0x1

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v2, p5

    invoke-virtual {v6, v2, v0}, Lcom/facebook/ads/redexgen/X/OX;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51552
    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51553
    new-instance v8, Lcom/facebook/ads/redexgen/X/Ps;

    iget-object v10, v1, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/NativeBannerAd;

    const/16 v6, 0x10

    move-object/from16 v12, p3

    move-object/from16 v13, p6

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/Ps;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/NativeBannerAd;Lcom/facebook/ads/redexgen/X/K8;Lcom/facebook/ads/redexgen/X/K7;Lcom/facebook/ads/AdOptionsView;)V

    .line 51554
    .local v12, "contentView":Landroid/view/View;
    sget v0, Lcom/facebook/ads/redexgen/X/Rr;->A06:I

    invoke-virtual {v8, v0, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 51555
    const/4 v7, -0x2

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51556
    .local v11, "contentViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51557
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 51558
    invoke-virtual {v3, v8, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51559
    sget-object v0, Lcom/facebook/ads/redexgen/X/K8;->A0A:Lcom/facebook/ads/redexgen/X/K8;

    if-ne v11, v0, :cond_0

    .line 51560
    sget v0, Lcom/facebook/ads/redexgen/X/Rr;->A07:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Rr;->setPadding(IIII)V

    .line 51561
    invoke-virtual {v1, v4}, Lcom/facebook/ads/redexgen/X/Rr;->setOrientation(I)V

    .line 51562
    const/4 v0, -0x1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51563
    .local v1, "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v7, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51564
    .local v2, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Rr;->A07:I

    invoke-virtual {v3, v4, v4, v0, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 51565
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 51566
    invoke-virtual {v1, v3, v6}, Lcom/facebook/ads/redexgen/X/Rr;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51567
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Rr;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v4, Landroid/widget/TextView;

    invoke-direct {v4, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 51568
    .local v1, "ctaButton":Landroid/widget/TextView;
    sget v3, Lcom/facebook/ads/redexgen/X/Rr;->A06:I

    sget v0, Lcom/facebook/ads/redexgen/X/Rr;->A07:I

    invoke-virtual {v4, v3, v0, v3, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 51569
    invoke-virtual {v12, v4}, Lcom/facebook/ads/redexgen/X/K7;->A05(Landroid/widget/TextView;)V

    .line 51570
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->getAdCallToAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51571
    invoke-virtual {v1, v4, v5}, Lcom/facebook/ads/redexgen/X/Rr;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 51572
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51573
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51574
    return-void

    .line 51575
    .end local v2    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "ctaButton":Landroid/widget/TextView;
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Rr;->A06:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Rr;->setPadding(IIII)V

    .line 51576
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Rr;->setOrientation(I)V

    .line 51577
    const/4 v0, -0x1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51578
    .local v13, "commonLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v0, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 51579
    .restart local v2    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Rr;->A06:I

    invoke-virtual {v3, v4, v4, v4, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/K8;)I
    .locals 2

    .line 51580
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pt;->A00:[I

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/K8;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v0, 0x1

    if-eq v1, v0, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    .line 51581
    sget v0, Lcom/facebook/ads/redexgen/X/Rr;->A05:I

    return v0

    .line 51582
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Rr;->A03:I

    return v0

    .line 51583
    :cond_1
    sget v0, Lcom/facebook/ads/redexgen/X/Rr;->A04:I

    return v0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 0

    .line 51584
    return-object p0
.end method

.method public getViewsForInteraction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 51585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rr;->A02:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final unregisterView()V
    .locals 1

    .line 51586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rr;->A00:Lcom/facebook/ads/NativeBannerAd;

    invoke-virtual {v0}, Lcom/facebook/ads/NativeBannerAd;->unregisterView()V

    .line 51587
    return-void
.end method
