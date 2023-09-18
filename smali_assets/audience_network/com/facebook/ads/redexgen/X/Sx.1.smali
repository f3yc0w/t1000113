.class public final Lcom/facebook/ads/redexgen/X/Sx;
.super Lcom/facebook/ads/redexgen/X/OJ;
.source ""


# static fields
.field public static A0H:[B

.field public static A0I:[Ljava/lang/String;

.field public static final A0J:I

.field public static final A0K:I

.field public static final A0L:I

.field public static final A0M:I

.field public static final A0N:I

.field public static final A0O:I

.field public static final A0P:I

.field public static final A0Q:I


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Landroid/widget/LinearLayout;

.field public A03:Landroid/widget/TextView;

.field public A04:Landroid/widget/TextView;

.field public A05:Landroid/widget/TextView;

.field public A06:Lcom/facebook/ads/redexgen/X/1I;

.field public A07:Lcom/facebook/ads/redexgen/X/1K;

.field public A08:Lcom/facebook/ads/redexgen/X/1L;

.field public A09:Lcom/facebook/ads/redexgen/X/OY;

.field public A0A:Z

.field public A0B:Z

.field public final A0C:Landroid/widget/LinearLayout;

.field public final A0D:Landroid/widget/RelativeLayout;

.field public final A0E:Landroid/widget/RelativeLayout;

.field public final A0F:Landroid/widget/TextView;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Xy;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 53025
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ZYFZvgakVe"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Z9juamcNffZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "L6NhnuluGVbfOuIZp07EBLc1k7rVfOba"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "poGipFcmqzgO1AN9d1VwktKUuwbeuE2x"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "1MA0bi3k"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "zUZ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "l0mlyabDLiJh1QvHe0VixDkOpEP8aZzg"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "KStQaqdBmF0CfboN9Wjc4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sx;->A0I:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sx;->A07()V

    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Sx;->A0P:I

    .line 53026
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sx;->A0M:I

    .line 53027
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sx;->A0N:I

    .line 53028
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sx;->A0J:I

    .line 53029
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x43100000    # 144.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sx;->A0L:I

    .line 53030
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x42400000    # 48.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sx;->A0K:I

    .line 53031
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sx;->A0O:I

    .line 53032
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41600000    # 14.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sx;->A0Q:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xy;IZLcom/facebook/ads/redexgen/X/1K;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/Mq;Lcom/facebook/ads/redexgen/X/Qw;Lcom/facebook/ads/redexgen/X/MK;)V
    .locals 13

    .line 53033
    move-object v2, p0

    move-object v3, p0

    move/from16 v7, p5

    move-object/from16 v6, p4

    move-object v4, p1

    move v5, p2

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v10, p8

    move-object/from16 v9, p7

    move-object/from16 v8, p6

    invoke-direct/range {v3 .. v12}, Lcom/facebook/ads/redexgen/X/OJ;-><init>(Lcom/facebook/ads/redexgen/X/Xy;ILcom/facebook/ads/redexgen/X/1K;ZLjava/lang/String;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/Mq;Lcom/facebook/ads/redexgen/X/Qw;Lcom/facebook/ads/redexgen/X/MK;)V

    .line 53034
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0B:Z

    .line 53035
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A00:I

    .line 53036
    iput v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A01:I

    .line 53037
    iput-object v4, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0G:Lcom/facebook/ads/redexgen/X/Xy;

    .line 53038
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/OJ;->A04:Lcom/facebook/ads/redexgen/X/OW;

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/OW;->setFullCircleCorners(Z)V

    .line 53039
    sget v1, Lcom/facebook/ads/redexgen/X/Sx;->A0M:I

    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0J:I

    invoke-virtual {p0, v1, v1, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->setPadding(IIII)V

    .line 53040
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0D:Landroid/widget/RelativeLayout;

    .line 53041
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    .line 53042
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/widget/LinearLayout;

    .line 53043
    new-instance v7, Lcom/facebook/ads/redexgen/X/OY;

    iget-object v8, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0G:Lcom/facebook/ads/redexgen/X/Xy;

    sget v9, Lcom/facebook/ads/redexgen/X/Sx;->A0Q:I

    sget v11, Lcom/facebook/ads/redexgen/X/Sx;->A0P:I

    const/4 v10, 0x5

    const/4 v12, -0x1

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/OY;-><init>(Lcom/facebook/ads/redexgen/X/Xy;IIII)V

    iput-object v7, v2, Lcom/facebook/ads/redexgen/X/Sx;->A09:Lcom/facebook/ads/redexgen/X/OY;

    .line 53044
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0E:Landroid/widget/RelativeLayout;

    .line 53045
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    .line 53046
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A04:Landroid/widget/TextView;

    .line 53047
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A03:Landroid/widget/TextView;

    .line 53048
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/OJ;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 53049
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/OJ;->A01:Landroid/widget/RelativeLayout;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 53050
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    .line 53051
    iput-object v6, v2, Lcom/facebook/ads/redexgen/X/Sx;->A07:Lcom/facebook/ads/redexgen/X/1K;

    .line 53052
    invoke-static {p0, v4}, Lcom/facebook/ads/redexgen/X/MS;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 53053
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0G:Lcom/facebook/ads/redexgen/X/Xy;

    .line 53054
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A1l(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sx;->A0A:Z

    .line 53055
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A05()V

    .line 53056
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sx;->A0H:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x63

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A01()V
    .locals 3

    .line 53057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/T1;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/T1;->setPadding(IIII)V

    .line 53058
    sget v2, Lcom/facebook/ads/redexgen/X/Sx;->A0K:I

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53059
    .local p0, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/T1;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/T1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53060
    return-void
.end method

.method private A02()V
    .locals 7

    .line 53061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53062
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0M:I

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v5, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53063
    const/4 v4, -0x2

    const/4 v3, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53064
    .local p0, "expandableParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53065
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53067
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53068
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 53070
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Landroid/widget/TextView;

    .line 53071
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A07:Lcom/facebook/ads/redexgen/X/1K;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/1K;->A05(Z)I

    move-result v0

    .line 53072
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53073
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Landroid/widget/TextView;

    invoke-static {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/MS;->A0X(Landroid/widget/TextView;ZI)V

    .line 53074
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53075
    .local v0, "descriptionParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53076
    return-void

    .line 53077
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A03()V
    .locals 8

    .line 53078
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 53079
    const/4 v4, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53080
    .local p0, "iconAndMetaDataContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0M:I

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 53081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0D:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53082
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0D:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 53083
    iget v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:I

    iget v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A00:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53084
    .local v4, "iconParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53085
    const/16 v0, 0x9

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53086
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A04:Lcom/facebook/ads/redexgen/X/OW;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53087
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53088
    .local v0, "containerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0N:I

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 53089
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A04:Lcom/facebook/ads/redexgen/X/OW;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OW;->getId()I

    move-result v0

    const/4 v7, 0x1

    invoke-virtual {v2, v7, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53090
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53091
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0D:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53092
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0E:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 53093
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 53094
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53095
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    .line 53096
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0A:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A07:Lcom/facebook/ads/redexgen/X/1K;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/1K;->A06(Z)I

    move-result v0

    .line 53097
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53098
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    const/16 v0, 0x12

    invoke-static {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/MS;->A0X(Landroid/widget/TextView;ZI)V

    .line 53099
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 53100
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/widget/LinearLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53101
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/widget/LinearLayout;

    const/16 v6, 0x10

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 53102
    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0O:I

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 53103
    .local v1, "ratingInfoContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0N:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 53104
    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 53105
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0E:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53106
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 53107
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A09:Lcom/facebook/ads/redexgen/X/OY;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/OY;->setGravity(I)V

    .line 53108
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53109
    .local v2, "starRatingContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A09:Lcom/facebook/ads/redexgen/X/OY;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53110
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Landroid/widget/TextView;

    .line 53111
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0A:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A07:Lcom/facebook/ads/redexgen/X/1K;

    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/1K;->A06(Z)I

    move-result v0

    .line 53112
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53113
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 53114
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 53115
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Landroid/widget/TextView;

    const/16 v0, 0xe

    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/MS;->A0X(Landroid/widget/TextView;ZI)V

    .line 53116
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53117
    .local v0, "ratingCountParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0N:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 53118
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53119
    return-void

    .line 53120
    :cond_0
    const/4 v0, -0x1

    goto :goto_1

    .line 53121
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method private A04()V
    .locals 4

    .line 53122
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53123
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53124
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 53125
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    .line 53126
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0A:Z

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A07:Lcom/facebook/ads/redexgen/X/1K;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/1K;->A06(Z)I

    move-result v0

    .line 53127
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 53128
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 53129
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/MS;->A0X(Landroid/widget/TextView;ZI)V

    .line 53130
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53131
    .local p0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0M:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 53132
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53133
    return-void

    .line 53134
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private A05()V
    .locals 2

    .line 53135
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->removeAllViews()V

    .line 53136
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A01:Landroid/widget/RelativeLayout;

    sget-object v0, Lcom/facebook/ads/redexgen/X/OJ;->A05:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53137
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A03()V

    .line 53138
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A02()V

    .line 53139
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A01()V

    .line 53140
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A04()V

    .line 53141
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A06()V

    .line 53142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A01:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 53143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/T1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 53144
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 53145
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sx;->addView(Landroid/view/View;)V

    .line 53146
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/T1;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sx;->addView(Landroid/view/View;)V

    .line 53147
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sx;->addView(Landroid/view/View;)V

    .line 53148
    return-void
.end method

.method private A06()V
    .locals 5

    .line 53149
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Lcom/facebook/ads/redexgen/X/1I;

    if-nez v0, :cond_0

    .line 53150
    return-void

    .line 53151
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1I;->A06()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53152
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1I;->A01()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53153
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1I;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53154
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A08:Lcom/facebook/ads/redexgen/X/1L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1L;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53155
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/T1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0H(Landroid/view/View;)V

    .line 53156
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1I;->A04()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53157
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0H(Landroid/view/View;)V

    .line 53158
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1I;->A03()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 53159
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53160
    :cond_3
    :goto_0
    return-void

    .line 53161
    :cond_4
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A02:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 53162
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sx;->A09:Lcom/facebook/ads/redexgen/X/OY;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1I;->A03()Ljava/lang/String;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sx;->A0I:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x11

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sx;->A0I:[Ljava/lang/String;

    const-string v1, "VSVKlO90K15ihGB4A0qZPRqEppX5OU7U"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "xs76xd0mQfWREabMq0mbrfEp6FCRmbTD"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/OY;->setRating(F)V

    .line 53163
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Lcom/facebook/ads/redexgen/X/1I;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1I;->A02()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 53164
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Sx;->A04:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53165
    invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Lcom/facebook/ads/redexgen/X/1I;

    .line 53166
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1I;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    const/4 v1, 0x1

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sx;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53167
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A07()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sx;->A0H:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x6ft
        -0x14t
    .end array-data
.end method


# virtual methods
.method public final A08()V
    .locals 2

    .line 53168
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A04:Lcom/facebook/ads/redexgen/X/OW;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0H(Landroid/view/View;)V

    .line 53169
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0E:Landroid/widget/RelativeLayout;

    .line 53170
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53171
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v1, :cond_0

    .line 53172
    const/4 v0, 0x0

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 53173
    :cond_0
    return-void
.end method

.method public final A09()V
    .locals 1

    .line 53174
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0H(Landroid/view/View;)V

    .line 53175
    return-void
.end method

.method public final A0A(I)V
    .locals 4

    .line 53176
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne p1, v1, :cond_2

    const/4 v0, 0x1

    .line 53177
    .local v1, "isPortrait":Z
    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/facebook/ads/redexgen/X/Sx;->setOrientation(I)V

    .line 53178
    if-nez v0, :cond_0

    .line 53179
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sx;->setWeightSum(F)V

    .line 53180
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53181
    .local p0, "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 53182
    sget v1, Lcom/facebook/ads/redexgen/X/Sx;->A0J:I

    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0M:I

    sub-int/2addr v1, v0

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 53183
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A01:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53184
    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0K:I

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53185
    .local v3, "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0J:I

    div-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 53186
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 53187
    const/16 v0, 0x50

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 53188
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/T1;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/T1;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53189
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OJ;->A03:Lcom/facebook/ads/redexgen/X/T1;

    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0L:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T1;->setMinWidth(I)V

    .line 53190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 53191
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 53192
    .local v0, "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 53193
    sget v0, Lcom/facebook/ads/redexgen/X/Sx;->A0N:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 53194
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53195
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 53196
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 53197
    .end local p0    # "auxContainerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "ctaButtonParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v0    # "socialContextParams":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sx;->bringToFront()V

    .line 53198
    return-void

    .line 53199
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A05()V

    goto :goto_2

    .line 53200
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 53201
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getExpandableLayout()Landroid/view/View;
    .locals 1

    .line 53202
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0C:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 53203
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/OJ;->onLayout(ZIIII)V

    .line 53204
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:I

    if-nez v0, :cond_0

    .line 53205
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A03:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A00:I

    .line 53206
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A0F:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A01:I

    .line 53207
    :cond_0
    return-void
.end method

.method public setInfo(Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/1L;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/OM;)V
    .locals 0
    .param p5    # Lcom/facebook/ads/redexgen/X/OM;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 53208
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/OJ;->setInfo(Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/1L;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/OM;)V

    .line 53209
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A06:Lcom/facebook/ads/redexgen/X/1I;

    .line 53210
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Sx;->A08:Lcom/facebook/ads/redexgen/X/1L;

    .line 53211
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sx;->A06()V

    .line 53212
    return-void
.end method

.method public setTitleMaxLines(I)V
    .locals 2

    .line 53213
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 53214
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sx;->A05:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 53215
    return-void
.end method
