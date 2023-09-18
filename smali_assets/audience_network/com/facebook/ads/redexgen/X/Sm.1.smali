.class public final Lcom/facebook/ads/redexgen/X/Sm;
.super Lcom/facebook/ads/redexgen/X/Of;
.source ""


# static fields
.field public static A0S:Lcom/facebook/ads/redexgen/X/Sm;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A0T:[B

.field public static A0U:[Ljava/lang/String;

.field public static final A0V:I

.field public static final A0W:I

.field public static final A0X:I

.field public static final A0Y:I

.field public static final A0Z:I


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:Landroid/view/View;

.field public A07:Landroid/widget/LinearLayout;

.field public A08:Landroid/widget/LinearLayout;

.field public A09:Landroid/widget/TextView;

.field public A0A:Lcom/facebook/ads/redexgen/X/18;

.field public A0B:Lcom/facebook/ads/redexgen/X/Ns;

.field public A0C:Lcom/facebook/ads/redexgen/X/Nt;

.field public A0D:Lcom/facebook/ads/redexgen/X/TE;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0E:Lcom/facebook/ads/redexgen/X/Oj;

.field public A0F:Lcom/facebook/ads/redexgen/X/Oq;

.field public A0G:Z

.field public A0H:Z

.field public A0I:Z

.field public A0J:Z

.field public A0K:Z

.field public A0L:Z

.field public final A0M:Landroid/view/View;

.field public final A0N:Lcom/facebook/ads/redexgen/X/0f;

.field public final A0O:Lcom/facebook/ads/redexgen/X/Jp;

.field public final A0P:Lcom/facebook/ads/redexgen/X/OT;

.field public final A0Q:Lcom/facebook/ads/redexgen/X/OU;

.field public final A0R:Lcom/facebook/ads/redexgen/X/Ix;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 52524
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "E7d9V"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HfiTPdnQE6JsOHdYoOA4lRNnbQ3"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7AVXCU5oRbsgBqmorHmAVCwb6r5tuTQ8"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "hoWzaZbN7yXesQFa"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "a3ZYa3"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "EXUfJIeYYGyfdCGOPOS2l0on83CPH94Z"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MYJwByDzw5bCUSkxw6qgTJ7WJbI"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "X3l5ZIwYV4"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Sm;->A0K()V

    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41d00000    # 26.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sm;->A0X:I

    .line 52525
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sm;->A0V:I

    .line 52526
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41000000    # 8.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sm;->A0Z:I

    .line 52527
    const/4 v1, -0x1

    const/16 v0, 0x4d

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/2U;->A01(II)I

    move-result v0

    sput v0, Lcom/facebook/ads/redexgen/X/Sm;->A0W:I

    .line 52528
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Sm;->A0Y:I

    .line 52529
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A0S:Lcom/facebook/ads/redexgen/X/Sm;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oj;)V
    .locals 17

    .line 52530
    const/4 v1, 0x1

    move-object/from16 v2, p0

    move-object/from16 v11, p1

    invoke-direct {v2, v11, v1}, Lcom/facebook/ads/redexgen/X/Of;-><init>(Lcom/facebook/ads/redexgen/X/Oj;Z)V

    .line 52531
    const/4 v0, 0x0

    iput v0, v2, Lcom/facebook/ads/redexgen/X/Sm;->A01:I

    .line 52532
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0G:Z

    .line 52533
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0I:Z

    .line 52534
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0K:Z

    .line 52535
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0J:Z

    .line 52536
    iput-boolean v0, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0L:Z

    .line 52537
    iput-object v11, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    .line 52538
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Oj;->A04()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0A:Lcom/facebook/ads/redexgen/X/18;

    .line 52539
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Oj;->A04()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/18;->A0U()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Oj;->A06()Lcom/facebook/ads/redexgen/X/Jh;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/Jp;

    invoke-direct {v3, v5, v4}, Lcom/facebook/ads/redexgen/X/Jp;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jh;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0O:Lcom/facebook/ads/redexgen/X/Jp;

    .line 52540
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Oj;->A0A()Lcom/facebook/ads/redexgen/X/Ix;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    .line 52541
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    if-eqz v3, :cond_0

    .line 52542
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 52543
    :cond_0
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Oj;->A03()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0M:Landroid/view/View;

    .line 52544
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v4

    .line 52545
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Oj;->A06()Lcom/facebook/ads/redexgen/X/Jh;

    move-result-object v5

    .line 52546
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Oj;->A04()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/18;->A0U()Ljava/lang/String;

    move-result-object v6

    .line 52547
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Oj;->A04()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1B;->A0F()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1L;->A05()Ljava/lang/String;

    move-result-object v3

    .line 52548
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/La;->A00(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 52549
    invoke-static/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/0g;->A01(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Jh;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Map;ZZ)Lcom/facebook/ads/redexgen/X/0f;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0N:Lcom/facebook/ads/redexgen/X/0f;

    .line 52550
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v4

    .line 52551
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Oj;->A04()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1B;->A0D()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1E;->A07()Ljava/lang/String;

    move-result-object v3

    .line 52552
    invoke-static {v4, v2, v3}, Lcom/facebook/ads/redexgen/X/Od;->A00(Lcom/facebook/ads/redexgen/X/Xy;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 52553
    invoke-direct {v2, v0}, Lcom/facebook/ads/redexgen/X/Sm;->setupLayoutConfiguration(Z)V

    .line 52554
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Sm;->A0G()V

    .line 52555
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Sm;->A0C()V

    .line 52556
    new-instance v5, Lcom/facebook/ads/redexgen/X/Ss;

    invoke-direct {v5, v2}, Lcom/facebook/ads/redexgen/X/Ss;-><init>(Lcom/facebook/ads/redexgen/X/Sm;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/Sm;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52557
    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/Sm;->A0J()V

    .line 52558
    new-instance v3, Lcom/facebook/ads/redexgen/X/Sr;

    invoke-direct {v3, v2}, Lcom/facebook/ads/redexgen/X/Sr;-><init>(Lcom/facebook/ads/redexgen/X/Sm;)V

    iput-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0P:Lcom/facebook/ads/redexgen/X/OT;

    .line 52559
    const/4 v13, 0x0

    .line 52560
    .local v1, "videoView":Lcom/facebook/ads/redexgen/X/QK;
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Oj;->A02()Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/facebook/ads/redexgen/X/QK;

    if-eqz v3, :cond_1

    .line 52561
    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Oj;->A02()Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/facebook/ads/redexgen/X/QK;

    .line 52562
    :cond_1
    new-instance v10, Lcom/facebook/ads/redexgen/X/OU;

    iget-object v12, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0A:Lcom/facebook/ads/redexgen/X/18;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    .line 52563
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Oj;->A09()Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v14

    iget-object v15, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0P:Lcom/facebook/ads/redexgen/X/OT;

    const/4 v3, 0x4

    new-array v4, v3, [Landroid/view/View;

    iget-object v3, v2, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    aput-object v3, v4, v0

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0F:Lcom/facebook/ads/redexgen/X/Oq;

    aput-object v0, v4, v1

    const/4 v1, 0x2

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    aput-object v0, v4, v1

    const/4 v1, 0x3

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0M:Landroid/view/View;

    aput-object v0, v4, v1

    move-object/from16 v16, v4

    invoke-direct/range {v10 .. v16}, Lcom/facebook/ads/redexgen/X/OU;-><init>(Lcom/facebook/ads/redexgen/X/Oj;Lcom/facebook/ads/redexgen/X/18;Lcom/facebook/ads/redexgen/X/QK;Lcom/facebook/ads/redexgen/X/Mq;Lcom/facebook/ads/redexgen/X/OT;[Landroid/view/View;)V

    iput-object v10, v2, Lcom/facebook/ads/redexgen/X/Sm;->A0Q:Lcom/facebook/ads/redexgen/X/OU;

    .line 52564
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Sm;)F
    .locals 0

    .line 52565
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:F

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Sm;F)F
    .locals 0

    .line 52566
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A00:F

    return p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Sm;)Landroid/view/View;
    .locals 0

    .line 52567
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Sm;)Lcom/facebook/ads/redexgen/X/0f;
    .locals 0

    .line 52568
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0N:Lcom/facebook/ads/redexgen/X/0f;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Sm;)Lcom/facebook/ads/redexgen/X/Jp;
    .locals 0

    .line 52569
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0O:Lcom/facebook/ads/redexgen/X/Jp;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/Sm;)Lcom/facebook/ads/redexgen/X/Ns;
    .locals 0

    .line 52570
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0B:Lcom/facebook/ads/redexgen/X/Ns;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/Sm;)Lcom/facebook/ads/redexgen/X/Nt;
    .locals 0

    .line 52571
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0C:Lcom/facebook/ads/redexgen/X/Nt;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Sm;)Lcom/facebook/ads/redexgen/X/TE;
    .locals 0

    .line 52572
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Lcom/facebook/ads/redexgen/X/TE;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Sm;)Lcom/facebook/ads/redexgen/X/Oj;
    .locals 0

    .line 52573
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Sm;)Lcom/facebook/ads/redexgen/X/Oq;
    .locals 0

    .line 52574
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0F:Lcom/facebook/ads/redexgen/X/Oq;

    return-object p0
.end method

.method public static A0A(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sm;->A0T:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0B()V
    .locals 3

    .line 52575
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52576
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/widget/LinearLayout;

    .line 52577
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->getAdContextWrapper()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/MS;->A0R(Landroid/view/View;Landroid/content/Context;)V

    .line 52578
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:I

    div-int/lit8 v2, v0, 0x4

    :goto_0
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52579
    .local p0, "descriptionOverlayParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52580
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52581
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/widget/LinearLayout;

    const/4 v0, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Sm;->addView(Landroid/view/View;I)V

    .line 52582
    return-void

    .line 52583
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:I

    div-int/lit8 v2, v0, 0x5

    goto :goto_0
.end method

.method private A0C()V
    .locals 2

    .line 52584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v1

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    .line 52586
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 52588
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0H()V

    .line 52589
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 52590
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sm;->addView(Landroid/view/View;)V

    .line 52591
    return-void
.end method

.method private A0D()V
    .locals 5

    .line 52592
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0M:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 52593
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52594
    sget v1, Lcom/facebook/ads/redexgen/X/Of;->A09:I

    sget v0, Lcom/facebook/ads/redexgen/X/Of;->A09:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52595
    .local p0, "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52596
    const/16 v0, 0xb

    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52597
    sget v3, Lcom/facebook/ads/redexgen/X/Of;->A08:I

    iget v2, p0, Lcom/facebook/ads/redexgen/X/Sm;->A05:I

    sget v1, Lcom/facebook/ads/redexgen/X/Of;->A08:I

    sget v0, Lcom/facebook/ads/redexgen/X/Of;->A08:I

    invoke-virtual {v4, v3, v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52598
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0M:Landroid/view/View;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Sm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52599
    .end local p0    # "muteParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method private A0E()V
    .locals 5

    .line 52600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    if-eqz v0, :cond_0

    .line 52601
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52602
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    sget v0, Lcom/facebook/ads/redexgen/X/Sm;->A0Y:I

    invoke-virtual {v1, v0, v0, v0, v0}, Lcom/facebook/ads/redexgen/X/Ix;->setPadding(IIII)V

    .line 52603
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    sget v0, Lcom/facebook/ads/redexgen/X/Sm;->A0W:I

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Ix;->A06(II)V

    .line 52604
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ix;->setTranslationY(F)V

    .line 52605
    sget v0, Lcom/facebook/ads/redexgen/X/Sm;->A0X:I

    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52606
    .local p0, "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0H:Z

    if-eqz v0, :cond_1

    .line 52607
    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52608
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    invoke-virtual {p0, v0, v4}, Lcom/facebook/ads/redexgen/X/Sm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52609
    .end local p0    # "progressBarLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    return-void

    .line 52610
    :cond_1
    const/16 v3, 0xc

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const-string v1, "zjul6o0OG2Ezis8Q"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "LmcEL"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0F()V
    .locals 2

    .line 52611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v1

    .line 52612
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/Mp;
    if-nez v1, :cond_0

    .line 52613
    return-void

    .line 52614
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0H:Z

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Mp;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mp;->setPageDetailsVisible(Z)V

    .line 52615
    return-void

    .line 52616
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0G()V
    .locals 5

    .line 52617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    .line 52618
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52619
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 52620
    const/4 v4, -0x2

    const/4 v2, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52621
    .local p0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xf

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52622
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, v1}, Lcom/facebook/ads/redexgen/X/Sm;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 52623
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v1

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    .line 52624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 52625
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 52626
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->getColors()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/1K;->A05(Z)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52627
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 52628
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 52629
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52630
    .local v0, "descriptionLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52631
    sget v2, Lcom/facebook/ads/redexgen/X/Sm;->A0Z:I

    div-int/lit8 v1, v2, 0x2

    .line 52632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    if-nez v0, :cond_0

    move v0, v2

    .line 52633
    :goto_0
    invoke-virtual {v3, v2, v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52634
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/Sm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 52636
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    .line 52637
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/Oj;->A04()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0F()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1L;->A04()Ljava/lang/String;

    move-result-object v3

    .line 52638
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Of;->getColors()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sq;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Sq;-><init>(Lcom/facebook/ads/redexgen/X/Sm;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oq;

    invoke-direct {v0, v4, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Oq;-><init>(Lcom/facebook/ads/redexgen/X/Oj;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/1K;Lcom/facebook/ads/redexgen/X/OM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0F:Lcom/facebook/ads/redexgen/X/Oq;

    .line 52639
    const/16 v1, 0x3e9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0F:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/MS;->A0G(ILandroid/view/View;)V

    .line 52640
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0F:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Sm;->addView(Landroid/view/View;)V

    .line 52641
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0I()V

    .line 52642
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0B()V

    .line 52643
    return-void

    .line 52644
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/Sm;->A0X:I

    goto :goto_0
.end method

.method private A0H()V
    .locals 5

    .line 52645
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:I

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v1, v0, 0x5

    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52646
    .local p0, "browserParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52647
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52648
    const/16 v0, 0xc

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52649
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const-string v1, "mOqhFUC5R4"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "x2rQdK"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52650
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 52651
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52652
    return-void

    .line 52653
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0I()V
    .locals 3

    .line 52654
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0G:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:I

    div-int/lit8 v1, v0, 0x4

    :goto_0
    const/4 v0, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52655
    .local p0, "ctaButtonLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52656
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getId()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 52657
    const/4 v0, 0x0

    invoke-virtual {v2, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 52658
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0F:Lcom/facebook/ads/redexgen/X/Oq;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Oq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52659
    return-void

    .line 52660
    :cond_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:I

    div-int/lit8 v1, v0, 0x5

    goto :goto_0
.end method

.method private A0J()V
    .locals 0

    .line 52661
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0E()V

    .line 52662
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0D()V

    .line 52663
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0F()V

    .line 52664
    return-void
.end method

.method public static A0K()V
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A0T:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x24t
    .end array-data
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Sm;)V
    .locals 0

    .line 52665
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0H()V

    return-void
.end method

.method public static synthetic A0M(Lcom/facebook/ads/redexgen/X/Sm;Ljava/lang/String;)V
    .locals 0

    .line 52666
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sm;->A0O(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic A0N(Lcom/facebook/ads/redexgen/X/Sm;Z)V
    .locals 0

    .line 52667
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sm;->A0P(Z)V

    return-void
.end method

.method private A0O(Ljava/lang/String;)V
    .locals 4

    .line 52668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Lcom/facebook/ads/redexgen/X/TE;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52669
    new-instance v3, Lcom/facebook/ads/redexgen/X/So;

    invoke-direct {v3, p0}, Lcom/facebook/ads/redexgen/X/So;-><init>(Lcom/facebook/ads/redexgen/X/Sm;)V

    .line 52670
    .local p0, "browserListener":Lcom/facebook/ads/redexgen/X/O0;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xy;->A0C()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 52671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xy;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A88()V

    .line 52672
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    .line 52673
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A02(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    .line 52674
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xy;->A0C()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    .line 52675
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {v2, v0, v3}, Lcom/facebook/ads/redexgen/X/TE;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/O0;)V

    .line 52676
    :goto_0
    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Lcom/facebook/ads/redexgen/X/TE;

    .line 52677
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sm;->setUpBrowserControls(Lcom/facebook/ads/redexgen/X/TE;)V

    .line 52678
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52679
    .local p1, "webViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3f666666    # 0.9f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52680
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Lcom/facebook/ads/redexgen/X/TE;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52681
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0D:Lcom/facebook/ads/redexgen/X/TE;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/TE;->loadUrl(Ljava/lang/String;)V

    .line 52682
    return-void

    .line 52683
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    .line 52684
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xy;->A0C()Landroid/app/Activity;

    move-result-object v0

    new-instance v2, Lcom/facebook/ads/redexgen/X/TE;

    invoke-direct {v2, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/TE;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/O0;)V

    goto :goto_0
.end method

.method private A0P(Z)V
    .locals 16

    .line 52685
    move-object/from16 v6, p0

    move/from16 v7, p1

    iput-boolean v7, v6, Lcom/facebook/ads/redexgen/X/Sm;->A0H:Z

    .line 52686
    new-instance v2, Lcom/facebook/ads/redexgen/X/Sn;

    invoke-direct {v2, v6, v7}, Lcom/facebook/ads/redexgen/X/Sn;-><init>(Lcom/facebook/ads/redexgen/X/Sm;Z)V

    const-wide/16 v0, 0xfa

    invoke-virtual {v6, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Sm;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 52687
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x27

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Sm;->A0A(III)Ljava/lang/String;

    move-result-object v10

    const/4 v15, 0x1

    const/4 v9, 0x2

    const/4 v14, 0x0

    if-eqz v7, :cond_6

    .line 52688
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Sm;->A0F:Lcom/facebook/ads/redexgen/X/Oq;

    new-array v1, v9, [F

    .line 52689
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Oq;->getY()F

    move-result v0

    aput v0, v1, v14

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Sm;->A03:I

    div-int/lit8 v0, v0, 0x5

    int-to-float v0, v0

    aput v0, v1, v15

    .line 52690
    invoke-static {v2, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 52691
    .local v8, "ctaTransAnim":Landroid/animation/ObjectAnimator;
    :goto_0
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    new-array v1, v9, [F

    .line 52692
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getY()F

    move-result v0

    aput v0, v1, v14

    .line 52693
    iget v0, v6, Lcom/facebook/ads/redexgen/X/Sm;->A03:I

    if-eqz v7, :cond_0

    div-int/lit8 v0, v0, 0x5

    :cond_0
    int-to-float v0, v0

    aput v0, v1, v15

    .line 52694
    invoke-static {v2, v10, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 52695
    .local v2, "browserTransAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v0, 0x1f4

    invoke-virtual {v3, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52696
    iget v12, v6, Lcom/facebook/ads/redexgen/X/Sm;->A03:I

    div-int/2addr v12, v9

    iget v2, v6, Lcom/facebook/ads/redexgen/X/Sm;->A01:I

    div-int/2addr v2, v9

    sub-int/2addr v12, v2

    .line 52697
    .local v10, "mediaViewTop":I
    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    new-array v4, v9, [F

    .line 52698
    invoke-virtual {v11}, Landroid/view/View;->getY()F

    move-result v2

    aput v2, v4, v14

    if-nez v7, :cond_1

    iget-boolean v2, v6, Lcom/facebook/ads/redexgen/X/Sm;->A0G:Z

    if-eqz v2, :cond_5

    :cond_1
    const/4 v2, 0x0

    :goto_1
    aput v2, v4, v15

    .line 52699
    invoke-static {v11, v10, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 52700
    .local v15, "mediaViewTransAnim":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52701
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    if-nez v0, :cond_4

    const/4 v13, 0x0

    .line 52702
    .local v9, "mediaProgressbarHeight":I
    :goto_2
    if-eqz v7, :cond_2

    .line 52703
    iget v11, v6, Lcom/facebook/ads/redexgen/X/Sm;->A02:I

    sget-object v4, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :goto_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52704
    :cond_2
    iget v12, v6, Lcom/facebook/ads/redexgen/X/Sm;->A03:I

    sget v0, Lcom/facebook/ads/redexgen/X/Sm;->A0X:I

    sub-int/2addr v12, v0

    sget v0, Lcom/facebook/ads/redexgen/X/Sm;->A0Z:I

    sub-int/2addr v12, v0

    goto :goto_4

    .line 52705
    :cond_3
    sget-object v4, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const-string v1, "g83HcTndNM"

    const/4 v0, 0x7

    aput-object v1, v4, v0

    const-string v1, "KO02it"

    const/4 v0, 0x4

    aput-object v1, v4, v0

    div-int/lit8 v12, v11, 0x5

    sub-int/2addr v12, v13

    .line 52706
    .local v14, "mediaTransAnimToY":I
    :goto_4
    iget-object v11, v6, Lcom/facebook/ads/redexgen/X/Sm;->A0R:Lcom/facebook/ads/redexgen/X/Ix;

    if-eqz v11, :cond_8

    .line 52707
    new-array v8, v9, [F

    .line 52708
    invoke-virtual {v11}, Lcom/facebook/ads/redexgen/X/Ix;->getY()F

    move-result v0

    aput v0, v8, v14

    sget-object v4, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v4, v0

    const/4 v0, 0x1

    aget-object v0, v4, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    goto :goto_3

    .line 52709
    :cond_4
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ix;->getHeight()I

    move-result v13

    goto :goto_2

    .line 52710
    :cond_5
    int-to-float v2, v12

    goto :goto_1

    .line 52711
    :cond_6
    move-object v5, v8

    goto/16 :goto_0

    :cond_7
    sget-object v4, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const-string v1, "uMAfPHErUq8gYLqYGWwvrPw2H7I5hxcd"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    int-to-float v0, v12

    aput v0, v8, v15

    .line 52712
    invoke-static {v11, v10, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 52713
    .local v6, "mediaProgressbarTransAnim":Landroid/animation/ObjectAnimator;
    :cond_8
    new-array v1, v9, [I

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    .line 52714
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, v1, v14

    .line 52715
    if-eqz v7, :cond_b

    iget v0, v6, Lcom/facebook/ads/redexgen/X/Sm;->A03:I

    div-int/lit8 v0, v0, 0x5

    :goto_5
    aput v0, v1, v15

    .line 52716
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 52717
    const-wide/16 v0, 0x1f4

    invoke-virtual {v4, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 52718
    .local v7, "mediaViewScaleAnim":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/facebook/ads/redexgen/X/Om;

    invoke-direct {v0, v6}, Lcom/facebook/ads/redexgen/X/Om;-><init>(Lcom/facebook/ads/redexgen/X/Sm;)V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52719
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 52720
    .local v1, "animatorSet":Landroid/animation/AnimatorSet;
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 52721
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object v3, v0, v14

    aput-object v2, v0, v15

    aput-object v1, v0, v9

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 52722
    if-eqz v5, :cond_a

    .line 52723
    const-wide/16 v2, 0x1f4

    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52724
    const/4 v1, 0x1

    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v5, v0, v14

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 52725
    :goto_6
    if-eqz v8, :cond_9

    .line 52726
    invoke-virtual {v8, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 52727
    new-array v0, v1, [Landroid/animation/Animator;

    aput-object v8, v0, v14

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 52728
    :cond_9
    new-instance v0, Lcom/facebook/ads/redexgen/X/On;

    invoke-direct {v0, v6, v7}, Lcom/facebook/ads/redexgen/X/On;-><init>(Lcom/facebook/ads/redexgen/X/Sm;Z)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 52729
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 52730
    return-void

    .line 52731
    :cond_a
    const-wide/16 v2, 0x1f4

    const/4 v1, 0x1

    goto :goto_6

    .line 52732
    :cond_b
    iget v0, v6, Lcom/facebook/ads/redexgen/X/Sm;->A01:I

    goto :goto_5
.end method

.method private A0Q(Z)V
    .locals 4

    .line 52733
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Sm;->setupLayoutConfiguration(Z)V

    .line 52734
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52735
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A02()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    .line 52736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 52737
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0H:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 52738
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:I

    div-int/lit8 v0, v0, 0x5

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52739
    .local p0, "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xe

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52740
    const/16 v0, 0xa

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52741
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationY(F)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 52742
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const-string v1, "FZuJEB1DgE"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "ioAK5D"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A06:Landroid/view/View;

    const/4 v0, 0x1

    invoke-virtual {p0, v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Sm;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 52743
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0B()V

    .line 52744
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0I()V

    .line 52745
    return-void

    .line 52746
    .end local p0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v0, -0x2

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52747
    .restart local p0    # "mediaLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 52748
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0C()V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0R()Z
    .locals 4

    .line 52749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0A:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0D()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1E;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0J:Z

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const-string v1, "WvW0Ef6T7c"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "9KXIlI"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0L:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0K:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0S(Lcom/facebook/ads/redexgen/X/Sm;)Z
    .locals 0

    .line 52750
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0L:Z

    return p0
.end method

.method public static synthetic A0T(Lcom/facebook/ads/redexgen/X/Sm;)Z
    .locals 0

    .line 52751
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0I:Z

    return p0
.end method

.method public static synthetic A0U(Lcom/facebook/ads/redexgen/X/Sm;Z)Z
    .locals 0

    .line 52752
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0L:Z

    return p1
.end method

.method public static synthetic A0V(Lcom/facebook/ads/redexgen/X/Sm;Z)Z
    .locals 0

    .line 52753
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0I:Z

    return p1
.end method

.method private getUrl()Ljava/lang/String;
    .locals 1

    .line 52799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A04()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0F()Lcom/facebook/ads/redexgen/X/1L;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1L;->A05()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setUpBrowserControls(Lcom/facebook/ads/redexgen/X/TE;)V
    .locals 5

    .line 52806
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0B:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52807
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ns;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/Ns;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/webkit/WebView;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0B:Lcom/facebook/ads/redexgen/X/Ns;

    .line 52808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0B:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ns;->getBrowserNavigationListener()Lcom/facebook/ads/redexgen/X/O1;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/TE;->setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/O1;)V

    .line 52809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0B:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 52810
    const/4 v4, -0x1

    const/4 v0, -0x2

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52811
    .local p0, "controlsViewParams":Landroid/widget/LinearLayout$LayoutParams;
    const v0, 0x3dcccccd    # 0.1f

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 52812
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0B:Lcom/facebook/ads/redexgen/X/Ns;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sp;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Sp;-><init>(Lcom/facebook/ads/redexgen/X/Sm;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->setListener(Lcom/facebook/ads/redexgen/X/Nr;)V

    .line 52813
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0B:Lcom/facebook/ads/redexgen/X/Ns;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ol;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ol;-><init>(Lcom/facebook/ads/redexgen/X/Sm;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Ns;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 52814
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0B:Lcom/facebook/ads/redexgen/X/Ns;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52815
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0C:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 52816
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    .line 52817
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A05()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v3

    const/4 v2, 0x0

    const v1, 0x1010078

    new-instance v0, Lcom/facebook/ads/redexgen/X/Nt;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Nt;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0C:Lcom/facebook/ads/redexgen/X/Nt;

    .line 52818
    sget v0, Lcom/facebook/ads/redexgen/X/Sm;->A0V:I

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 52819
    .local p1, "browserProgressBarParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A07:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0C:Lcom/facebook/ads/redexgen/X/Nt;

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 52820
    return-void
.end method

.method private setupLayoutConfiguration(Z)V
    .locals 3

    .line 52821
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x0

    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0G:Z

    .line 52822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A05:I

    .line 52823
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0H:Z

    .line 52824
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:I

    .line 52825
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A04:I

    .line 52826
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:I

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0G:Z

    if-eqz v0, :cond_0

    :goto_2
    add-int/2addr v1, v2

    iput v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A03:I

    .line 52827
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:I

    .line 52828
    return-void

    .line 52829
    :cond_0
    iget v2, p0, Lcom/facebook/ads/redexgen/X/Sm;->A05:I

    goto :goto_2

    .line 52830
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->getToolbarHeight()I

    move-result v0

    goto :goto_1

    .line 52831
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final A0W()V
    .locals 1

    .line 52754
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Of;->A0W()V

    .line 52755
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Sm;->A0S:Lcom/facebook/ads/redexgen/X/Sm;

    .line 52756
    return-void
.end method

.method public final A0X()V
    .locals 3

    .line 52757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v2

    .line 52758
    .local p0, "toolbar":Lcom/facebook/ads/redexgen/X/Mp;
    const/4 v1, 0x0

    if-eqz v2, :cond_0

    .line 52759
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Mp;->A05()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/Mp;->setPageDetailsVisible(Z)V

    .line 52760
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0J:Z

    .line 52761
    return-void

    .line 52762
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A0Y()V
    .locals 4

    .line 52763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 52764
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0E:Lcom/facebook/ads/redexgen/X/Oj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->A08()Lcom/facebook/ads/redexgen/X/Mp;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const-string v1, "MMiJw7TNUivh7iTB"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "GEB80"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Mp;->setPageDetailsVisible(Z)V

    .line 52765
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0J:Z

    .line 52766
    return-void
.end method

.method public final A0Z()V
    .locals 1

    .line 52767
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0K:Z

    .line 52768
    return-void
.end method

.method public final A0a()V
    .locals 1

    .line 52769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0K:Z

    .line 52770
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/1B;Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 3
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 52771
    invoke-super/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/Of;->A0b(Lcom/facebook/ads/redexgen/X/1B;Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 52772
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1B;->A0E()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1I;->A05()Ljava/lang/String;

    move-result-object v1

    .line 52773
    .local p0, "description":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 52774
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Sm;->A08:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/MS;->A0N(Landroid/view/View;I)V

    .line 52775
    :goto_0
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-lez v0, :cond_1

    .line 52776
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A04:I

    int-to-double v1, v0

    div-double/2addr v1, p3

    double-to-int v0, v1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:I

    .line 52777
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0G:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A02:I

    :goto_1
    iput v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:I

    .line 52778
    return-void

    .line 52779
    :cond_2
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A01:I

    goto :goto_1

    .line 52780
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A09:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final A0c()Z
    .locals 1

    .line 52781
    const/4 v0, 0x1

    return v0
.end method

.method public final A0d(Z)Z
    .locals 3

    .line 52782
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0e()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 52783
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/Sm;->A0P(Z)V

    .line 52784
    return v2

    .line 52785
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0R()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0Q:Lcom/facebook/ads/redexgen/X/OU;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/OU;->A07(Landroid/view/ViewGroup;)V

    .line 52787
    return v2

    .line 52788
    :cond_1
    return v1
.end method

.method public final A0e()Z
    .locals 1

    .line 52789
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0H:Z

    return v0
.end method

.method public getCloseButtonStyle()I
    .locals 4
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation

    .line 52790
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52791
    const/4 v0, 0x3

    return v0

    .line 52792
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0K:Z

    if-eqz v0, :cond_1

    .line 52793
    const/4 v0, 0x2

    return v0

    .line 52794
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0A:Lcom/facebook/ads/redexgen/X/18;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0D()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1E;->A0A()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52795
    const/4 v0, 0x1

    return v0

    .line 52796
    :cond_2
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Sm;->A0J:Z

    if-eqz v0, :cond_4

    .line 52797
    const/4 v3, 0x4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4e

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Sm;->A0U:[Ljava/lang/String;

    const-string v1, "NhzVRhgvHrOwM64xV2PIAOEbNcq"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "xEzMNY3CkayGfsMDFyAKLsf22gx"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52798
    :cond_4
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/Of;->getCloseButtonStyle()I

    move-result v0

    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 52800
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/Of;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 52801
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sm;->A0Q(Z)V

    .line 52802
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0J()V

    .line 52803
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0e()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Sm;->setupLayoutConfiguration(Z)V

    .line 52804
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Sm;->A0H()V

    .line 52805
    return-void
.end method
