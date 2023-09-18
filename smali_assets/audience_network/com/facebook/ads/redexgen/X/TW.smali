.class public abstract Lcom/facebook/ads/redexgen/X/TW;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Mr;


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Lcom/facebook/ads/redexgen/X/Ll;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/PR;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Z

.field public A04:Z

.field public A05:Lcom/facebook/ads/redexgen/X/19;

.field public final A06:Lcom/facebook/ads/redexgen/X/MF;

.field public final A07:Lcom/facebook/ads/redexgen/X/Mq;

.field public final A08:Lcom/facebook/ads/redexgen/X/dJ;

.field public final A09:Lcom/facebook/ads/redexgen/X/Xy;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Jh;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Jp;

.field public final A0C:Lcom/facebook/ads/redexgen/X/Mp;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 54591
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "fqT9snXDZkE2N6bIU2twhbCcrvrF5wQR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "W8MK3buqarkLhDixdfnbfGeXuw3i87xB"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "M5iWaw3OwwKxChS5bTa9KUrj63pwu1Od"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "QKu8TlGQ3D7NsDDaY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "OUnrWL6BanKvWJF"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "644mHU9zQQHAcSiNB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "MqQzuM0GD0HqxOL2854PPJvoiao7nama"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "mSpdOD621tCilusEUOf234Jx9LR3KzyX"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/TW;->A0E:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/TW;->A0O()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/Mq;Lcom/facebook/ads/redexgen/X/dJ;)V
    .locals 7

    .line 54592
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 54593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A04:Z

    .line 54594
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A03:Z

    .line 54595
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TW;->A09:Lcom/facebook/ads/redexgen/X/Xy;

    .line 54596
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TW;->A0A:Lcom/facebook/ads/redexgen/X/Jh;

    .line 54597
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/TW;->A07:Lcom/facebook/ads/redexgen/X/Mq;

    .line 54598
    new-instance v0, Lcom/facebook/ads/redexgen/X/MF;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/MF;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A06:Lcom/facebook/ads/redexgen/X/MF;

    .line 54599
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54601
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0U()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TW;->A0A:Lcom/facebook/ads/redexgen/X/Jh;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Jp;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Jp;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jh;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A0B:Lcom/facebook/ads/redexgen/X/Jp;

    .line 54602
    new-instance v1, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TW;->A09:Lcom/facebook/ads/redexgen/X/Xy;

    .line 54603
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TW;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TW;->A0B:Lcom/facebook/ads/redexgen/X/Jp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54604
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0F()I

    move-result v6

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/internal/view/FullScreenAdToolbar;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Mq;Lcom/facebook/ads/redexgen/X/Jp;II)V

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/TW;->A0C:Lcom/facebook/ads/redexgen/X/Mp;

    .line 54605
    return-void
.end method

.method private A0K(I)Lcom/facebook/ads/redexgen/X/1K;
    .locals 4

    .line 54606
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 54607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A05:Lcom/facebook/ads/redexgen/X/19;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    return-object v0

    .line 54608
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TW;->A05:Lcom/facebook/ads/redexgen/X/19;

    sget-object v1, Lcom/facebook/ads/redexgen/X/TW;->A0E:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4f

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TW;->A0E:[Ljava/lang/String;

    const-string v1, "MYlveE6g4wScBr3MsnlZwbj0w3RA4Q0m"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A00()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    return-object v0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TW;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A0M()V
    .locals 0

    .line 54609
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TW;->removeAllViews()V

    .line 54610
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 54611
    return-void
.end method

.method private A0N()V
    .locals 7

    .line 54612
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54613
    .local p0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TW;->A0X()Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A02:Lcom/facebook/ads/redexgen/X/PR;

    if-nez v0, :cond_0

    .line 54614
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/ads/redexgen/X/TW;->A04:Z

    .line 54615
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/TW;->A09:Lcom/facebook/ads/redexgen/X/Xy;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54616
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0E()Lcom/facebook/ads/redexgen/X/1I;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54617
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0R()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/PP;

    invoke-direct {v1, v6, v2, v0}, Lcom/facebook/ads/redexgen/X/PP;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/1I;Lcom/facebook/ads/redexgen/X/1U;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54618
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A01()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PP;->A08(Lcom/facebook/ads/redexgen/X/1K;)Lcom/facebook/ads/redexgen/X/PP;

    move-result-object v0

    .line 54619
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PP;->A0B()Lcom/facebook/ads/redexgen/X/PR;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A02:Lcom/facebook/ads/redexgen/X/PR;

    .line 54620
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/TW;->A02:Lcom/facebook/ads/redexgen/X/PR;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TW;->A0B:Lcom/facebook/ads/redexgen/X/Jp;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Jo;->A0U:Lcom/facebook/ads/redexgen/X/Jo;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Jr;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Jp;Lcom/facebook/ads/redexgen/X/Jo;)V

    .line 54621
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A07:Lcom/facebook/ads/redexgen/X/Mq;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Mq;->A3H(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 54622
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TW;->A07:Lcom/facebook/ads/redexgen/X/Mq;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A02:Lcom/facebook/ads/redexgen/X/PR;

    invoke-interface {v1, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/Mq;->A3H(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 54623
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TW;->A02:Lcom/facebook/ads/redexgen/X/PR;

    new-instance v0, Lcom/facebook/ads/redexgen/X/TY;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/TY;-><init>(Lcom/facebook/ads/redexgen/X/TW;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/PR;->A04(Lcom/facebook/ads/redexgen/X/PQ;)V

    .line 54624
    :goto_0
    return-void

    .line 54625
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A07:Lcom/facebook/ads/redexgen/X/Mq;

    invoke-interface {v0, p0, v5, v3}, Lcom/facebook/ads/redexgen/X/Mq;->A3H(Landroid/view/View;ILandroid/widget/RelativeLayout$LayoutParams;)V

    .line 54626
    goto :goto_0
.end method

.method public static A0O()V
    .locals 1

    const/16 v0, 0x2f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TW;->A0D:[B

    return-void

    :array_0
    .array-data 1
        0x58t
        0x54t
        0x56t
        0x15t
        0x5dt
        0x5at
        0x58t
        0x5et
        0x59t
        0x54t
        0x54t
        0x50t
        0x15t
        0x5at
        0x5ft
        0x48t
        0x15t
        0x52t
        0x55t
        0x4ft
        0x5et
        0x49t
        0x48t
        0x4ft
        0x52t
        0x4ft
        0x52t
        0x5at
        0x57t
        0x15t
        0x52t
        0x56t
        0x4bt
        0x49t
        0x5et
        0x48t
        0x48t
        0x52t
        0x54t
        0x55t
        0x15t
        0x57t
        0x54t
        0x5ct
        0x5ct
        0x5et
        0x5ft
    .end array-data
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/1K;Z)V
    .locals 3

    .line 54627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A0C:Lcom/facebook/ads/redexgen/X/Mp;

    .line 54628
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->getToolbarHeight()I

    move-result v2

    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54629
    .local p0, "toolbarParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A0C:Lcom/facebook/ads/redexgen/X/Mp;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Mp;->A04(Lcom/facebook/ads/redexgen/X/1K;Z)V

    .line 54631
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A0C:Lcom/facebook/ads/redexgen/X/Mp;

    invoke-virtual {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/TW;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54632
    return-void
.end method

.method public static synthetic A0Q(Lcom/facebook/ads/redexgen/X/TW;Z)Z
    .locals 0

    .line 54633
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/TW;->A04:Z

    return p1
.end method

.method public static synthetic A0R(Lcom/facebook/ads/redexgen/X/TW;Z)Z
    .locals 0

    .line 54634
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/TW;->A03:Z

    return p1
.end method


# virtual methods
.method public final A0S()V
    .locals 1

    .line 54635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Landroid/view/View;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/Of;

    if-nez v0, :cond_1

    .line 54636
    :cond_0
    return-void

    .line 54637
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TW;->A0Y()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 54638
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Of;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Of;->A0a()V

    .line 54639
    :goto_0
    return-void

    .line 54640
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/Of;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Of;->A0Z()V

    goto :goto_0
.end method

.method public final A0T(I)V
    .locals 2

    .line 54641
    new-instance v1, Lcom/facebook/ads/redexgen/X/TX;

    invoke-direct {v1, p0, p1}, Lcom/facebook/ads/redexgen/X/TX;-><init>(Lcom/facebook/ads/redexgen/X/TW;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ll;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/Ll;-><init>(ILcom/facebook/ads/redexgen/X/Lk;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A01:Lcom/facebook/ads/redexgen/X/Ll;

    .line 54642
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A03:Z

    .line 54643
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TW;->A0S()V

    .line 54644
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A01:Lcom/facebook/ads/redexgen/X/Ll;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ll;->A07()Z

    .line 54645
    return-void
.end method

.method public final A0U(Landroid/view/View;ZI)V
    .locals 4

    .line 54646
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Landroid/view/View;

    .line 54647
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TW;->A06:Lcom/facebook/ads/redexgen/X/MF;

    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A03:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A05(Lcom/facebook/ads/redexgen/X/ME;)V

    .line 54648
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TW;->A0M()V

    .line 54649
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54650
    .local p0, "contentParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v1, v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 54651
    const/16 v0, 0xc

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 54652
    invoke-virtual {p0, p1, v2}, Lcom/facebook/ads/redexgen/X/TW;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 54653
    invoke-direct {p0, p3}, Lcom/facebook/ads/redexgen/X/TW;->A0K(I)Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v0

    .line 54654
    .local p2, "colorInfo":Lcom/facebook/ads/redexgen/X/1K;
    invoke-direct {p0, v0, p2}, Lcom/facebook/ads/redexgen/X/TW;->A0P(Lcom/facebook/ads/redexgen/X/1K;Z)V

    .line 54655
    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1K;->A07(Z)I

    move-result v0

    invoke-static {p0, v0}, Lcom/facebook/ads/redexgen/X/MS;->A0M(Landroid/view/View;I)V

    .line 54656
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A07:Lcom/facebook/ads/redexgen/X/Mq;

    if-eqz v0, :cond_2

    .line 54657
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TW;->A0N()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/TW;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54658
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A0C:Lcom/facebook/ads/redexgen/X/Mp;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mp;->getToolbarHeight()I

    move-result v0

    goto :goto_0

    .line 54659
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TW;->A0E:[Ljava/lang/String;

    const-string v1, "NsWlVTe7e8AxmZfep9MsD1WsEVvEb3lR"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz p2, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    .line 54660
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/TW;->A06:Lcom/facebook/ads/redexgen/X/MF;

    sget-object v1, Lcom/facebook/ads/redexgen/X/TW;->A0E:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6f

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/TW;->A0E:[Ljava/lang/String;

    const-string v1, "LlUUcmlOaTawHlOzciUSj9DhXPbTXBAe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sget-object v0, Lcom/facebook/ads/redexgen/X/ME;->A04:Lcom/facebook/ads/redexgen/X/ME;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/MF;->A05(Lcom/facebook/ads/redexgen/X/ME;)V

    .line 54661
    :cond_2
    return-void

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0V(Lcom/facebook/ads/redexgen/X/59;)V
    .locals 5

    .line 54662
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TW;->A06:Lcom/facebook/ads/redexgen/X/MF;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/59;->A0H()Lcom/facebook/ads/AudienceNetworkActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/AudienceNetworkActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/MF;->A04(Landroid/view/Window;)V

    .line 54663
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A05:Lcom/facebook/ads/redexgen/X/19;

    .line 54664
    const/4 v1, 0x0

    .line 54665
    .local p0, "adInfo":Lcom/facebook/ads/redexgen/X/1B;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54666
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v1

    .line 54667
    :cond_0
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/TW;->A0C:Lcom/facebook/ads/redexgen/X/Mp;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54668
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0R()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54669
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0U()Ljava/lang/String;

    move-result-object v2

    .line 54670
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/1B;->A0D()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1E;->A03()I

    move-result v1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54671
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0S()Lcom/facebook/ads/redexgen/X/1b;

    move-result-object v0

    .line 54672
    invoke-virtual {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Mp;->setPageDetails(Lcom/facebook/ads/redexgen/X/1U;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/1b;)V

    .line 54673
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TW;->A0C:Lcom/facebook/ads/redexgen/X/Mp;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ta;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Ta;-><init>(Lcom/facebook/ads/redexgen/X/TW;Lcom/facebook/ads/redexgen/X/59;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mp;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Mo;)V

    .line 54674
    return-void

    .line 54675
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final A0W(Lcom/facebook/ads/redexgen/X/59;)V
    .locals 4

    .line 54676
    move-object v3, p0

    .line 54677
    .local p0, "interstitialView":Lcom/facebook/ads/redexgen/X/TW;
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v1, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 54678
    .local p1, "fadeOut":Landroid/view/animation/Animation;
    const-wide/16 v0, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 54679
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mx;

    invoke-direct {v0, p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Mx;-><init>(Lcom/facebook/ads/redexgen/X/TW;Lcom/facebook/ads/redexgen/X/TW;Lcom/facebook/ads/redexgen/X/59;)V

    invoke-virtual {v2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 54680
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/TW;->startAnimation(Landroid/view/animation/Animation;)V

    .line 54681
    return-void
.end method

.method public final A0X()Z
    .locals 4

    .line 54682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A08:Lcom/facebook/ads/redexgen/X/dJ;

    .line 54683
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1B;->A0P()Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/TW;->A0E:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x7a

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/TW;->A0E:[Ljava/lang/String;

    const-string v1, "rwsNokIOLx9Fj0KMvDMbhHWjcozH5rOe"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 54684
    :goto_0
    return v0
.end method

.method public final A0Y()Z
    .locals 1

    .line 54685
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A03:Z

    return v0
.end method

.method public final A0Z()Z
    .locals 1

    .line 54686
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A04:Z

    return v0
.end method

.method public abstract A0a()Z
.end method

.method public ABj(Z)V
    .locals 1

    .line 54687
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A01:Lcom/facebook/ads/redexgen/X/Ll;

    if-eqz v0, :cond_0

    .line 54688
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ll;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54689
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A01:Lcom/facebook/ads/redexgen/X/Ll;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ll;->A06()Z

    .line 54690
    :cond_0
    return-void
.end method

.method public AC8(Z)V
    .locals 1

    .line 54691
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A01:Lcom/facebook/ads/redexgen/X/Ll;

    if-eqz v0, :cond_0

    .line 54692
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ll;->A04()Z

    move-result v0

    if-nez v0, :cond_0

    .line 54693
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A01:Lcom/facebook/ads/redexgen/X/Ll;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ll;->A07()Z

    .line 54694
    :cond_0
    return-void
.end method

.method public getAdEventManager()Lcom/facebook/ads/redexgen/X/Jh;
    .locals 1

    .line 54695
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A0A:Lcom/facebook/ads/redexgen/X/Jh;

    return-object v0
.end method

.method public getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Mq;
    .locals 1

    .line 54696
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A07:Lcom/facebook/ads/redexgen/X/Mq;

    return-object v0
.end method

.method public abstract getCloseButtonStyle()I
    .annotation build Lcom/facebook/ads/internal/view/ToolbarActionView$ToolbarActionMode;
    .end annotation
.end method

.method public final onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 54697
    const/4 v0, 0x0

    return v0
.end method

.method public onDestroy()V
    .locals 2

    .line 54698
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A06:Lcom/facebook/ads/redexgen/X/MF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MF;->A03()V

    .line 54699
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TW;->A0C:Lcom/facebook/ads/redexgen/X/Mp;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Mp;->setToolbarListener(Lcom/facebook/ads/redexgen/X/Mo;)V

    .line 54700
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TW;->A0M()V

    .line 54701
    return-void
.end method

.method public setImpressionRecordingFlag(Lcom/facebook/ads/redexgen/X/MK;)V
    .locals 4

    .line 54702
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/MK;->A05()V

    .line 54703
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TW;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54704
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TW;->getAudienceNetworkListener()Lcom/facebook/ads/redexgen/X/Mq;

    move-result-object v3

    .line 54705
    const/4 v2, 0x0

    const/16 v1, 0x2f

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TW;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/Mq;->A3s(Ljava/lang/String;)V

    .line 54706
    :cond_0
    return-void
.end method

.method public setListener(Lcom/facebook/ads/redexgen/X/Mq;)V
    .locals 0

    .line 54707
    return-void
.end method
