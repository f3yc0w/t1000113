.class public final Lcom/facebook/ads/redexgen/X/bd;
.super Lcom/facebook/ads/redexgen/X/5E;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/MediaViewApi;
.implements Lcom/facebook/ads/internal/context/Repairable;
.implements Lcom/facebook/ads/redexgen/X/8S;


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;

.field public static final A0G:Ljava/lang/String;


# instance fields
.field public A00:Landroid/view/View;

.field public A01:Landroid/view/View;

.field public A02:Landroid/widget/ImageView;

.field public A03:Lcom/facebook/ads/MediaView;

.field public A04:Lcom/facebook/ads/MediaViewListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A05:Lcom/facebook/ads/MediaViewVideoRenderer;

.field public A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

.field public A07:Lcom/facebook/ads/redexgen/X/Xy;

.field public A08:Lcom/facebook/ads/redexgen/X/1A;

.field public A09:Lcom/facebook/ads/redexgen/X/OD;

.field public A0A:Lcom/facebook/ads/redexgen/X/A1;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0B:Lcom/facebook/ads/redexgen/X/Pi;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A0C:Z

.field public A0D:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 69740
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "5egxRyJvv3hsImr6xVPVZGZzS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "S92E58UIdGCmPOb4LYA51SRur0tU5vPU"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "gB2LJBWgacco1yi3dwEv6yCRJyLib4yq"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "IRYDxixZynQ1VjnPzR0JfxvjieAE"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Yx6PPUM30uHFy3rHO75LIsUaVykI"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "YSQgGTlHzzB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "fqdcFq1cD4m6uZ0nLvDLKOa7nCA9CaYH"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "MqJIv4BM2hfR6AMSoGkEEGT8SPZgcE8o"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bd;->A08()V

    const-class v0, Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bd;->A0G:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 69741
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5E;-><init>()V

    .line 69742
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaView;
    .locals 0

    .line 69743
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/MediaViewVideoRenderer;
    .locals 0

    .line 69744
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/redexgen/X/Xy;
    .locals 0

    .line 69745
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/bd;)Lcom/facebook/ads/redexgen/X/A1;
    .locals 0

    .line 69746
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A05()V
    .locals 3

    .line 69747
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    if-eqz v1, :cond_0

    .line 69748
    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/A1;->setVisibility(I)V

    .line 69749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    .line 69750
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/A1;->getDynamicWebViewController()Lcom/facebook/ads/redexgen/X/PA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PA;->A0O()Lcom/facebook/ads/redexgen/X/SX;

    move-result-object v2

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 69751
    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/38;->A0A(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 69752
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 69753
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    .line 69754
    :cond_0
    return-void
.end method

.method private A06()V
    .locals 4

    .line 69755
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0D:Z

    if-nez v0, :cond_2

    .line 69756
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

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
    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "HiqmuX4YAHl"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "JtgDxExoVYEb5OmxUIRsQ7gjV"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    .line 69757
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 69758
    :cond_1
    sget v2, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    .line 69759
    .local p0, "density":F
    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 69760
    .local v0, "hPadding":I
    const/high16 v0, 0x41400000    # 12.0f

    mul-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 69761
    .local v3, "vPadding":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/1A;->setChildSpacing(I)V

    .line 69762
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v2, v0, v2}, Lcom/facebook/ads/redexgen/X/1A;->setPadding(IIII)V

    .line 69763
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/1A;->setVisibility(I)V

    .line 69764
    const/4 v0, -0x1

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69765
    .local v2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69766
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    .line 69767
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69768
    return-void

    .line 69769
    .end local p0    # "density":F
    .end local v0    # "hPadding":I
    .end local v3    # "vPadding":I
    .end local v2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/4 v2, 0x0

    const/16 v1, 0x2e

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A07()V
    .locals 2

    .line 69770
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A0A:Lcom/facebook/ads/redexgen/X/Lw;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lw;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Lw;)V

    .line 69771
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A0A:Lcom/facebook/ads/redexgen/X/Lw;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lw;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Lw;)V

    .line 69772
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A0A:Lcom/facebook/ads/redexgen/X/Lw;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lw;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Lw;)V

    .line 69773
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Lw;->A0A:Lcom/facebook/ads/redexgen/X/Lw;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lw;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Lw;)V

    .line 69774
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x12d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bd;->A0E:[B

    return-void

    :array_0
    .array-data 1
        0x38t
        0x1at
        0x9t
        0x14t
        0xet
        0x8t
        0x1et
        0x17t
        0x5bt
        0x9t
        0x1et
        0x15t
        0x1ft
        0x1et
        0x9t
        0x1et
        0x9t
        0x5bt
        0x16t
        0xet
        0x8t
        0xft
        0x5bt
        0x19t
        0x1et
        0x5bt
        0x8t
        0x1et
        0xft
        0x5bt
        0x19t
        0x1et
        0x1dt
        0x14t
        0x9t
        0x1et
        0x5bt
        0x15t
        0x1at
        0xft
        0x12t
        0xdt
        0x1et
        0x3at
        0x1ft
        0x55t
        0x1at
        0x1et
        0x1dt
        0x29t
        0x38t
        0x35t
        0x39t
        0x32t
        0x3ft
        0x39t
        0x12t
        0x39t
        0x28t
        0x2bt
        0x33t
        0x2et
        0x37t
        0x40t
        0x64t
        0x68t
        0x6et
        0x6ct
        0x29t
        0x7bt
        0x6ct
        0x67t
        0x6dt
        0x6ct
        0x7bt
        0x6ct
        0x7bt
        0x29t
        0x64t
        0x7ct
        0x7at
        0x7dt
        0x29t
        0x6bt
        0x6ct
        0x29t
        0x7at
        0x6ct
        0x7dt
        0x29t
        0x6bt
        0x6ct
        0x6ft
        0x66t
        0x7bt
        0x6ct
        0x29t
        0x67t
        0x68t
        0x7dt
        0x60t
        0x7ft
        0x6ct
        0x48t
        0x6dt
        0x27t
        0x60t
        0x44t
        0x48t
        0x4et
        0x4ct
        0x9t
        0x5bt
        0x4ct
        0x47t
        0x4dt
        0x4ct
        0x5bt
        0x4ct
        0x5bt
        0x9t
        0x44t
        0x5ct
        0x5at
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x9t
        0x5at
        0x4ct
        0x5dt
        0x9t
        0x4bt
        0x4ct
        0x4ft
        0x46t
        0x5bt
        0x4ct
        0x9t
        0x47t
        0x48t
        0x5dt
        0x40t
        0x5ft
        0x4ct
        0x6bt
        0x48t
        0x47t
        0x47t
        0x4ct
        0x5bt
        0x68t
        0x4dt
        0x7t
        0x12t
        0x35t
        0x2dt
        0x3at
        0x37t
        0x32t
        0x3ft
        0x7bt
        0xdt
        0x32t
        0x3et
        0x2ct
        0x7bt
        0x38t
        0x34t
        0x35t
        0x28t
        0x2ft
        0x29t
        0x2et
        0x38t
        0x2ft
        0x34t
        0x29t
        0x7bt
        0x2bt
        0x3at
        0x29t
        0x3at
        0x36t
        0x28t
        0x7bt
        0x2ft
        0x22t
        0x2bt
        0x3et
        0x75t
        0x1t
        0x2et
        0x3bt
        0x26t
        0x39t
        0x2at
        0x6ft
        0xet
        0x2bt
        0x6ft
        0x6t
        0x2ct
        0x20t
        0x21t
        0x6ft
        0x26t
        0x3ct
        0x6ft
        0x21t
        0x3at
        0x23t
        0x23t
        0x61t
        0xbt
        0x34t
        0x39t
        0x38t
        0x32t
        0x7dt
        0x2ft
        0x38t
        0x33t
        0x39t
        0x38t
        0x2ft
        0x38t
        0x2ft
        0x7dt
        0x30t
        0x28t
        0x2et
        0x29t
        0x7dt
        0x3ft
        0x38t
        0x7dt
        0x2et
        0x38t
        0x29t
        0x7dt
        0x3ft
        0x38t
        0x3bt
        0x32t
        0x2ft
        0x38t
        0x7dt
        0x33t
        0x3ct
        0x29t
        0x34t
        0x2bt
        0x38t
        0x1ct
        0x39t
        0x73t
        0x1at
        0xbt
        0x12t
        0x60t
        0x6ct
        0x6et
        0x2dt
        0x65t
        0x62t
        0x60t
        0x66t
        0x61t
        0x6ct
        0x6ct
        0x68t
        0x2dt
        0x62t
        0x67t
        0x70t
        0x2dt
        0x6dt
        0x62t
        0x77t
        0x6at
        0x75t
        0x66t
        0x2dt
        0x60t
        0x6ft
        0x6at
        0x60t
        0x68t
        0x66t
        0x67t
        0x75t
        0x6at
        0x67t
        0x66t
        0x6ct
        0x56t
        0x71t
        0x6ft
        0x3et
    .end array-data
.end method

.method private final A09(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 69775
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5E;->A01(Z)V

    .line 69776
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69777
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5E;->A01(Z)V

    .line 69778
    return-void
.end method

.method private A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UB;)V
    .locals 5

    .line 69779
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bd;->A0B:Lcom/facebook/ads/redexgen/X/Pi;

    if-eqz v4, :cond_0

    .line 69780
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "tYahJlzELN2bWoIKGOvNb4V2q4om3tal"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "knO8IZUpKtredd0Q2IkvjJrJQGpJW1Qq"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 69781
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/UB;->A1d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 69782
    return-void

    .line 69783
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/UB;->A1C()Ljava/lang/String;

    move-result-object v4

    .line 69784
    .local p0, "mediationData":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    .line 69785
    .local p1, "context":Landroid/content/Context;
    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "LedcnhOkj71a4gNr9a9uwwPVwkpS"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "bOPNktfa058vxRDYU7HJ2aiUk3a2"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v3, :cond_3

    .line 69786
    :goto_0
    return-void

    .line 69787
    .local p1, "context":Landroid/content/Context;
    :cond_2
    if-nez v3, :cond_3

    goto :goto_0

    .line 69788
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-static {v0, v4}, Lcom/facebook/ads/redexgen/X/Ph;->A01(Lcom/facebook/ads/redexgen/X/Xy;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Pi;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "IBU68ioTGuVBWJ1dkmCJ7UK76Osi7EVF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bd;->A0B:Lcom/facebook/ads/redexgen/X/Pi;

    .line 69789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0B:Lcom/facebook/ads/redexgen/X/Pi;

    if-eqz v0, :cond_5

    .line 69790
    :goto_1
    const/4 v0, -0x1

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69791
    .local p2, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x5

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69792
    const/4 v1, 0x7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69793
    const/4 v1, 0x6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69794
    const/16 v1, 0x8

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69795
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v0, v2, :cond_4

    .line 69796
    const/16 v1, 0x10

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69797
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {v3, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 69798
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0B:Lcom/facebook/ads/redexgen/X/Pi;

    invoke-direct {p0, v0, v3}, Lcom/facebook/ads/redexgen/X/bd;->A09(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69799
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0B:Lcom/facebook/ads/redexgen/X/Pi;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 69800
    .end local p2    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_5
    return-void

    :cond_6
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/bd;->A0B:Lcom/facebook/ads/redexgen/X/Pi;

    .line 69801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0B:Lcom/facebook/ads/redexgen/X/Pi;

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0B(Landroid/widget/ImageView;)V
    .locals 4

    .line 69802
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0D:Z

    if-nez v0, :cond_2

    .line 69803
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "9onWrVOda1qlu0pAvyXYf5LKITz29A5r"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "G6pev0JETY7bhqmEZOziJsmCoQM1bBBX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 69804
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 69805
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69806
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69807
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69808
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69809
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MS;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setId(I)V

    .line 69810
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    .line 69811
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69812
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    const/16 v2, 0x6a

    const/16 v1, 0x31

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final A0C(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 69813
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    .line 69814
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0B(Landroid/widget/ImageView;)V

    .line 69815
    new-instance v0, Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/OD;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0H(Lcom/facebook/ads/redexgen/X/OD;)V

    .line 69816
    new-instance v0, Lcom/facebook/ads/redexgen/X/1A;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1A;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    .line 69817
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A06()V

    .line 69818
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 69819
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A07()V

    .line 69820
    return-void
.end method

.method private final A0D(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V
    .locals 1

    .line 69821
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    .line 69822
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0B(Landroid/widget/ImageView;)V

    .line 69823
    new-instance v0, Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/OD;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0H(Lcom/facebook/ads/redexgen/X/OD;)V

    .line 69824
    new-instance v0, Lcom/facebook/ads/redexgen/X/1A;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/1A;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    .line 69825
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A06()V

    .line 69826
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2, p3}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 69827
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A07()V

    .line 69828
    return-void
.end method

.method private final A0E(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 69829
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    .line 69830
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0B(Landroid/widget/ImageView;)V

    .line 69831
    new-instance v0, Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/OD;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0H(Lcom/facebook/ads/redexgen/X/OD;)V

    .line 69832
    new-instance v0, Lcom/facebook/ads/redexgen/X/1A;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/1A;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    .line 69833
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A06()V

    .line 69834
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 69835
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A07()V

    .line 69836
    return-void
.end method

.method private final A0F(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/MediaView;)V
    .locals 1

    .line 69837
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    .line 69838
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0B(Landroid/widget/ImageView;)V

    .line 69839
    new-instance v0, Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/OD;-><init>(Lcom/facebook/ads/redexgen/X/Xy;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->A0H(Lcom/facebook/ads/redexgen/X/OD;)V

    .line 69840
    new-instance v0, Lcom/facebook/ads/redexgen/X/1A;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/1A;-><init>(Lcom/facebook/ads/redexgen/X/Xy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    .line 69841
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A06()V

    .line 69842
    new-instance v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    invoke-direct {v0, p1}, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V

    .line 69843
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bd;->A07()V

    .line 69844
    return-void
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/UB;ZLcom/facebook/ads/redexgen/X/K5;)V
    .locals 3

    .line 69845
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    new-instance v0, Lcom/facebook/ads/redexgen/X/T3;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Landroid/widget/ImageView;Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 69846
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/T3;->A04()Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v1

    .line 69847
    .local p0, "downloadImageTask":Lcom/facebook/ads/redexgen/X/T3;
    if-eqz p2, :cond_0

    .line 69848
    new-instance v0, Lcom/facebook/ads/redexgen/X/bk;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/bk;-><init>(Lcom/facebook/ads/redexgen/X/bd;Lcom/facebook/ads/redexgen/X/UB;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A06(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/T3;

    .line 69849
    :cond_0
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/K5;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A07(Ljava/lang/String;)V

    .line 69850
    return-void
.end method

.method private A0H(Lcom/facebook/ads/redexgen/X/OD;)V
    .locals 3

    .line 69851
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0D:Z

    if-nez v0, :cond_1

    .line 69852
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    if-eqz v1, :cond_0

    .line 69853
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 69854
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/OD;->setVisibility(I)V

    .line 69855
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69856
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69857
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1, v1}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69858
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    .line 69859
    return-void

    .line 69860
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/16 v2, 0x3f

    const/16 v1, 0x2b

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0I(Lcom/facebook/ads/NativeAd;)Z
    .locals 3

    .line 69861
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5M;->A03()Ljava/util/List;

    move-result-object v0

    .line 69862
    .local p0, "carousel":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/NativeAd;>;"
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 69863
    return v2

    .line 69864
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/NativeAd;

    .line 69865
    .local v0, "childNativeAd":Lcom/facebook/ads/NativeAd;
    invoke-virtual {v0}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-nez v0, :cond_1

    .line 69866
    return v2

    .line 69867
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private A0J(Lcom/facebook/ads/NativeAd;)Z
    .locals 2

    .line 69868
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0xe

    if-lt v1, v0, :cond_0

    .line 69869
    invoke-virtual {p1}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5M;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 69870
    :goto_0
    return v0

    .line 69871
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/bd;Lcom/facebook/ads/NativeAd;)Z
    .locals 0

    .line 69872
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/bd;->A0J(Lcom/facebook/ads/NativeAd;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final A0L(Lcom/facebook/ads/NativeAd;)V
    .locals 17

    .line 69873
    move-object/from16 v5, p0

    move-object v5, v5

    .line 69874
    move-object/from16 v8, p1

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/UB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UB;->A11()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v2

    .line 69875
    .local v5, "adObjectContext":Lcom/facebook/ads/redexgen/X/Xy;
    invoke-virtual {v2, v5}, Lcom/facebook/ads/redexgen/X/Xy;->A0G(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 69876
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Xy;->A0F(Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 69877
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Xy;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Xy;->A0E(Lcom/facebook/ads/redexgen/X/0R;)V

    .line 69878
    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/facebook/ads/redexgen/X/bd;->A0D:Z

    .line 69879
    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getInternalNativeAd()Lcom/facebook/ads/internal/api/NativeAdBaseApi;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UB;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UB;

    move-result-object v4

    .line 69880
    .local v0, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UB;
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/UB;->A1Q(Lcom/facebook/ads/MediaView;)V

    .line 69881
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 69882
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 69883
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A0z()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v9

    const/16 v1, 0xd

    const/4 v0, -0x1

    const/4 v3, 0x0

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A0z()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/18;->A0r()Z

    move-result v12

    sget-object v10, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v9, 0x7

    aget-object v10, v10, v9

    const/16 v9, 0x15

    invoke-virtual {v10, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v9, 0x4c

    if-eq v10, v9, :cond_a

    sget-object v11, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v10, "CvXrj9TTP1W52m7bIbynzmDbx8Ql"

    const/4 v9, 0x4

    aput-object v10, v11, v9

    const-string v10, "OGerX4RrBYJpkLXwbXTHIjvyoHPN"

    const/4 v9, 0x3

    aput-object v10, v11, v9

    if-eqz v12, :cond_5

    .line 69884
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A0z()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/18;->A0O()Lcom/facebook/ads/redexgen/X/1B;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/1B;->A0D()Lcom/facebook/ads/redexgen/X/1E;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/1E;->A08()Ljava/lang/String;

    move-result-object v9

    .line 69885
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 69886
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A11()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Xy;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v10

    sget-object v9, Lcom/facebook/ads/redexgen/X/0c;->A06:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v10, v9}, Lcom/facebook/ads/redexgen/X/0R;->AEj(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 69887
    :goto_0
    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/bd;->A05()V

    .line 69888
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v9, v2}, Lcom/facebook/ads/redexgen/X/OD;->setVisibility(I)V

    .line 69889
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v9, v7, v7}, Lcom/facebook/ads/redexgen/X/OD;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 69890
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v9, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 69891
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 69892
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v9}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v9

    check-cast v9, Lcom/facebook/ads/redexgen/X/5L;

    .line 69893
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/5L;->A03()V

    .line 69894
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    if-eqz v9, :cond_0

    .line 69895
    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69896
    iget-object v10, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    instance-of v2, v10, Lcom/facebook/ads/redexgen/X/O4;

    if-eqz v2, :cond_3

    .line 69897
    check-cast v10, Lcom/facebook/ads/redexgen/X/O4;

    sget-object v7, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v7, v7, v2

    const/16 v2, 0x18

    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v2, 0x74

    if-eq v7, v2, :cond_2

    sget-object v9, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v7, "rVZQRbya12lyykx5Eq2uFJ3JGH4l"

    const/4 v2, 0x4

    aput-object v7, v9, v2

    const-string v7, "XRSLHysRpGcYp4QaXPRJ4K4uNDdg"

    const/4 v2, 0x3

    aput-object v7, v9, v2

    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/O4;->A04()V

    .line 69898
    :cond_0
    :goto_1
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/5E;->A01(Z)V

    .line 69899
    new-instance v12, Lcom/facebook/ads/redexgen/X/bi;

    invoke-direct {v12, v5, v4, v8}, Lcom/facebook/ads/redexgen/X/bi;-><init>(Lcom/facebook/ads/redexgen/X/bd;Lcom/facebook/ads/redexgen/X/UB;Lcom/facebook/ads/NativeAd;)V

    .line 69900
    .local v0, "nativeDSLListener":Lcom/facebook/ads/redexgen/X/Oz;
    new-instance v9, Lcom/facebook/ads/redexgen/X/A1;

    iget-object v10, v5, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    .line 69901
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/8U;->A08()Lcom/facebook/ads/redexgen/X/Jh;

    move-result-object v11

    .line 69902
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A0z()Lcom/facebook/ads/redexgen/X/18;

    move-result-object v13

    const/4 v15, 0x4

    .line 69903
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A19()Lcom/facebook/ads/redexgen/X/MK;

    move-result-object v16

    const/16 v8, 0x105

    const/16 v7, 0x1f

    const/16 v2, 0x2c

    invoke-static {v8, v7, v2}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v14

    invoke-direct/range {v9 .. v16}, Lcom/facebook/ads/redexgen/X/A1;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/Oz;Lcom/facebook/ads/redexgen/X/18;Ljava/lang/String;ILcom/facebook/ads/redexgen/X/MK;)V

    iput-object v9, v5, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    .line 69904
    iget-object v7, v5, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lw;->A0A:Lcom/facebook/ads/redexgen/X/Lw;

    invoke-static {v7, v2}, Lcom/facebook/ads/redexgen/X/Lw;->A04(Landroid/view/View;Lcom/facebook/ads/redexgen/X/Lw;)V

    .line 69905
    const/4 v7, -0x2

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v0, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69906
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69907
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v1, v0, v2}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69908
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A00:Landroid/view/View;

    .line 69909
    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/bd;->bringChildToFront(Landroid/view/View;)V

    .line 69910
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/A1;->setVisibility(I)V

    .line 69911
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A0A:Lcom/facebook/ads/redexgen/X/A1;

    invoke-direct {v5, v0, v4}, Lcom/facebook/ads/redexgen/X/bd;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UB;)V

    .line 69912
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/5E;->A01(Z)V

    .line 69913
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v0
    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-virtual {v10}, Lcom/facebook/ads/redexgen/X/O4;->A04()V

    goto :goto_1

    .line 69914
    :cond_3
    check-cast v10, Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v10, v7}, Lcom/facebook/ads/redexgen/X/F9;->setAdapter(Lcom/facebook/ads/redexgen/X/4H;)V

    goto :goto_1

    .line 69915
    :cond_4
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A11()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/Xy;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v10

    sget-object v9, Lcom/facebook/ads/redexgen/X/0c;->A05:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v10, v9}, Lcom/facebook/ads/redexgen/X/0R;->AEj(Lcom/facebook/ads/redexgen/X/0c;)V

    goto/16 :goto_0

    .line 69916
    :cond_5
    invoke-direct {v5, v8}, Lcom/facebook/ads/redexgen/X/bd;->A0I(Lcom/facebook/ads/NativeAd;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 69917
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A11()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/Xy;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v9

    sget-object v8, Lcom/facebook/ads/redexgen/X/0c;->A03:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v9, v8}, Lcom/facebook/ads/redexgen/X/0R;->AEj(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 69918
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A17()Lcom/facebook/ads/redexgen/X/K8;

    move-result-object v9

    sget-object v8, Lcom/facebook/ads/redexgen/X/K8;->A0B:Lcom/facebook/ads/redexgen/X/K8;

    if-ne v9, v8, :cond_6

    const/4 v9, 0x1

    .line 69919
    .local v0, "enableTextInNativeCarousel":Z
    :goto_3
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/JR;->A22(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    if-nez v9, :cond_7

    .line 69920
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/5E;->A01(Z)V

    .line 69921
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v8}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v9

    .line 69922
    .local v0, "width":I
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v8}, Lcom/facebook/ads/MediaView;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 69923
    .local v4, "parentView":Landroid/view/ViewGroup;
    :goto_4
    if-nez v9, :cond_9

    if-eqz v8, :cond_9

    .line 69924
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    .line 69925
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    goto :goto_4

    .line 69926
    :cond_6
    const/4 v9, 0x0

    goto :goto_3

    .line 69927
    :cond_7
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A08:Lcom/facebook/ads/redexgen/X/1A;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    .line 69928
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/1A;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/1A;->setCurrentPosition(I)V

    .line 69929
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/1A;

    .line 69930
    invoke-virtual {v0, v9}, Lcom/facebook/ads/redexgen/X/1A;->setShowTextInCarousel(Z)V

    .line 69931
    if-eqz v9, :cond_8

    .line 69932
    iget-object v9, v5, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    check-cast v6, Lcom/facebook/ads/redexgen/X/1A;

    .line 69933
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A1H()Ljava/util/List;

    move-result-object v1

    .line 69934
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A16()Lcom/facebook/ads/redexgen/X/K7;

    move-result-object v0

    new-instance v8, Lcom/facebook/ads/redexgen/X/FX;

    invoke-direct {v8, v9, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/FX;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/1A;Ljava/util/List;Lcom/facebook/ads/redexgen/X/K7;)V

    .line 69935
    .local v8, "viewAdapter":Lcom/facebook/ads/redexgen/X/dN;
    .restart local v8    # "viewAdapter":Lcom/facebook/ads/redexgen/X/dN;
    :goto_5
    new-instance v0, Lcom/facebook/ads/redexgen/X/bh;

    invoke-direct {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/bh;-><init>(Lcom/facebook/ads/redexgen/X/bd;Lcom/facebook/ads/redexgen/X/UB;)V

    invoke-virtual {v8, v0}, Lcom/facebook/ads/redexgen/X/dN;->A0G(Lcom/facebook/ads/redexgen/X/17;)V

    .line 69936
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/F9;->setAdapter(Lcom/facebook/ads/redexgen/X/4H;)V

    goto :goto_6

    .line 69937
    .end local v8    # "viewAdapter":Lcom/facebook/ads/redexgen/X/dN;
    :cond_8
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    check-cast v6, Lcom/facebook/ads/redexgen/X/1A;

    .line 69938
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A1H()Ljava/util/List;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    new-instance v8, Lcom/facebook/ads/redexgen/X/FR;

    invoke-direct {v8, v6, v1, v0}, Lcom/facebook/ads/redexgen/X/FR;-><init>(Lcom/facebook/ads/redexgen/X/1A;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Xy;)V

    goto :goto_5

    .line 69939
    :cond_9
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/MS;->A0J(Landroid/view/View;)V

    .line 69940
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v8, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 69941
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v8, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69942
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    new-instance v0, Lcom/facebook/ads/redexgen/X/O4;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/O4;-><init>(Lcom/facebook/ads/redexgen/X/Xy;)V

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    .line 69943
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    invoke-virtual {v1, v0, v8}, Lcom/facebook/ads/MediaView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69944
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    check-cast v0, Lcom/facebook/ads/redexgen/X/O4;

    invoke-virtual {v0, v4, v9}, Lcom/facebook/ads/redexgen/X/O4;->A05(Lcom/facebook/ads/redexgen/X/UB;I)V

    .line 69945
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 69946
    invoke-virtual {v5, v6}, Lcom/facebook/ads/redexgen/X/5E;->A01(Z)V

    .line 69947
    .end local v0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v0
    .end local v4    # "parentView":Landroid/view/ViewGroup;
    .end local v8
    :goto_6
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A00:Landroid/view/View;

    .line 69948
    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/bd;->A05()V

    .line 69949
    iget-object v8, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    sget-object v6, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v6, v0

    const/4 v0, 0x3

    aget-object v0, v6, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_b

    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69950
    :cond_b
    sget-object v6, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "vPdWlOkx37ezmD0GPDFfrvR6XxeFyYC2"

    const/4 v0, 0x7

    aput-object v1, v6, v0

    invoke-virtual {v8, v2}, Lcom/facebook/ads/redexgen/X/OD;->setVisibility(I)V

    .line 69951
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0, v7, v7}, Lcom/facebook/ads/redexgen/X/OD;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 69952
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 69953
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 69954
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5L;

    .line 69955
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5L;->A03()V

    .line 69956
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/bd;->bringChildToFront(Landroid/view/View;)V

    .line 69957
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 69958
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    invoke-direct {v5, v0, v4}, Lcom/facebook/ads/redexgen/X/bd;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UB;)V

    .line 69959
    .end local v0
    goto/16 :goto_2

    :cond_c
    invoke-direct {v5, v8}, Lcom/facebook/ads/redexgen/X/bd;->A0J(Lcom/facebook/ads/NativeAd;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 69960
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A11()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xy;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A09:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEj(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 69961
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A0C:Z

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/UB;->A1b(Z)V

    .line 69962
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A00:Landroid/view/View;

    .line 69963
    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/bd;->A05()V

    .line 69964
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/OD;->setVisibility(I)V

    .line 69965
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0, v7, v7}, Lcom/facebook/ads/redexgen/X/OD;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 69966
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    if-eqz v0, :cond_d

    .line 69967
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69968
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/O4;

    if-eqz v0, :cond_10

    .line 69969
    check-cast v1, Lcom/facebook/ads/redexgen/X/O4;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/O4;->A04()V

    .line 69970
    :cond_d
    :goto_7
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/bd;->bringChildToFront(Landroid/view/View;)V

    .line 69971
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v8}, Lcom/facebook/ads/MediaViewVideoRenderer;->setNativeAd(Lcom/facebook/ads/NativeAd;)V

    .line 69972
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5L;

    .line 69973
    invoke-virtual {v0, v8}, Lcom/facebook/ads/redexgen/X/5L;->A04(Lcom/facebook/ads/NativeAd;)V

    .line 69974
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 69975
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A13()Lcom/facebook/ads/redexgen/X/K5;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 69976
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    new-instance v2, Lcom/facebook/ads/redexgen/X/T3;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Landroid/view/ViewGroup;Lcom/facebook/ads/redexgen/X/Xy;)V

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    .line 69977
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A05(II)Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bg;

    invoke-direct {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/bg;-><init>(Lcom/facebook/ads/redexgen/X/bd;Lcom/facebook/ads/redexgen/X/UB;)V

    .line 69978
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A06(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v1

    .line 69979
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A13()Lcom/facebook/ads/redexgen/X/K5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K5;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A07(Ljava/lang/String;)V

    .line 69980
    :cond_e
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 69981
    sget-object v6, Lcom/facebook/ads/redexgen/X/bd;->A0G:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x124

    const/16 v1, 0x9

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getNativeAdApi()Lcom/facebook/ads/internal/api/NativeAdApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5M;->A02()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69982
    :cond_f
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-direct {v5, v0, v4}, Lcom/facebook/ads/redexgen/X/bd;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UB;)V

    goto/16 :goto_2

    .line 69983
    :cond_10
    check-cast v1, Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v1, v7}, Lcom/facebook/ads/redexgen/X/F9;->setAdapter(Lcom/facebook/ads/redexgen/X/4H;)V

    goto/16 :goto_7

    .line 69984
    :cond_11
    invoke-virtual {v8}, Lcom/facebook/ads/NativeAd;->getAdCoverImage()Lcom/facebook/ads/NativeAdBase$Image;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 69985
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A11()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Xy;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/0c;->A07:Lcom/facebook/ads/redexgen/X/0c;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->AEj(Lcom/facebook/ads/redexgen/X/0c;)V

    .line 69986
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OD;->getBodyImageView()Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A00:Landroid/view/View;

    .line 69987
    invoke-direct {v5}, Lcom/facebook/ads/redexgen/X/bd;->A05()V

    .line 69988
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 69989
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 69990
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5L;

    .line 69991
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5L;->A03()V

    .line 69992
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 69993
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 69994
    iget-object v6, v5, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    instance-of v0, v6, Lcom/facebook/ads/redexgen/X/O4;

    if-eqz v0, :cond_13

    .line 69995
    check-cast v6, Lcom/facebook/ads/redexgen/X/O4;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_15

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "yqBcm6jNekaOStoZQ6HlGjXfWvjo"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "wDgm0JyWXySbfCdb16XoSedMN32V"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/O4;->A04()V

    .line 69996
    :cond_12
    :goto_8
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/bd;->bringChildToFront(Landroid/view/View;)V

    .line 69997
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/OD;->setVisibility(I)V

    .line 69998
    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    new-instance v2, Lcom/facebook/ads/redexgen/X/T3;

    invoke-direct {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T3;-><init>(Lcom/facebook/ads/redexgen/X/OD;Lcom/facebook/ads/redexgen/X/Xy;)V

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    .line 69999
    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A05(II)Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/bf;

    invoke-direct {v0, v5, v4}, Lcom/facebook/ads/redexgen/X/bf;-><init>(Lcom/facebook/ads/redexgen/X/bd;Lcom/facebook/ads/redexgen/X/UB;)V

    .line 70000
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A06(Lcom/facebook/ads/redexgen/X/OF;)Lcom/facebook/ads/redexgen/X/T3;

    move-result-object v1

    .line 70001
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/UB;->A13()Lcom/facebook/ads/redexgen/X/K5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/K5;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/T3;->A07(Ljava/lang/String;)V

    .line 70002
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-direct {v5, v0, v4}, Lcom/facebook/ads/redexgen/X/bd;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UB;)V

    goto/16 :goto_2

    .line 70003
    :cond_13
    check-cast v6, Lcom/facebook/ads/redexgen/X/F9;

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_14

    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/F9;->setAdapter(Lcom/facebook/ads/redexgen/X/4H;)V

    goto :goto_8

    :cond_14
    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "WgZqidqfP4WcIOVybwW8feV31RK292EI"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v6, v7}, Lcom/facebook/ads/redexgen/X/F9;->setAdapter(Lcom/facebook/ads/redexgen/X/4H;)V

    goto :goto_8

    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0M(Lcom/facebook/ads/internal/api/NativeAdBaseApi;Z)V
    .locals 8

    .line 70004
    move-object v0, p1

    check-cast v0, Lcom/facebook/ads/redexgen/X/UB;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/UB;->A11()Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v3

    .line 70005
    .local p0, "adObjectContext":Lcom/facebook/ads/redexgen/X/Xy;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/Xy;->A0F(Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 70006
    invoke-virtual {v3, p0}, Lcom/facebook/ads/redexgen/X/Xy;->A0G(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 70007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0D:Z

    .line 70008
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/UB;->A0L(Lcom/facebook/ads/internal/api/NativeAdBaseApi;)Lcom/facebook/ads/redexgen/X/UB;

    move-result-object v6

    .line 70009
    .local p1, "internalNativeAd":Lcom/facebook/ads/redexgen/X/UB;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/UB;->A1P(Lcom/facebook/ads/MediaView;)V

    .line 70010
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/OD;->setVisibility(I)V

    .line 70011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/facebook/ads/redexgen/X/OD;->setImage(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 70012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 70013
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->unsetNativeAd()V

    .line 70014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/5L;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5L;->A03()V

    .line 70015
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 70016
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70017
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/O4;

    if-eqz v0, :cond_5

    .line 70018
    check-cast v1, Lcom/facebook/ads/redexgen/X/O4;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/O4;->A04()V

    .line 70019
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bd;->bringChildToFront(Landroid/view/View;)V

    .line 70021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A00:Landroid/view/View;

    .line 70022
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/UB;->A14()Lcom/facebook/ads/redexgen/X/K5;

    move-result-object v2

    .line 70023
    .local p2, "adIcon":Lcom/facebook/ads/redexgen/X/K5;
    if-eqz v2, :cond_3

    .line 70024
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/UB;->A10()Lcom/facebook/ads/redexgen/X/7U;

    move-result-object v1

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/K5;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/7U;->A0M(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 70025
    .local p1, "preloadedBitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 70026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 70027
    if-eqz p2, :cond_1

    .line 70028
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bl;

    invoke-direct {v0, p0, v6}, Lcom/facebook/ads/redexgen/X/bl;-><init>(Lcom/facebook/ads/redexgen/X/bd;Lcom/facebook/ads/redexgen/X/UB;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->post(Ljava/lang/Runnable;)Z

    .line 70029
    .end local p1    # "preloadedBitmap":Landroid/graphics/Bitmap;
    .end local v0
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v6}, Lcom/facebook/ads/redexgen/X/bd;->A0A(Landroid/view/View;Lcom/facebook/ads/redexgen/X/UB;)V

    .line 70030
    return-void

    .line 70031
    :cond_2
    invoke-direct {p0, v6, p2, v2}, Lcom/facebook/ads/redexgen/X/bd;->A0G(Lcom/facebook/ads/redexgen/X/UB;ZLcom/facebook/ads/redexgen/X/K5;)V

    goto :goto_1

    .line 70032
    :cond_3
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/UB;->A15()Lcom/facebook/ads/redexgen/X/UA;

    move-result-object v7

    .line 70033
    .local p1, "adListener":Lcom/facebook/ads/redexgen/X/UA;
    sget-object v5, Lcom/facebook/ads/internal/protocol/AdErrorType;->NATIVE_AD_IS_NOT_LOADED:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 70034
    .local v0, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Xy;->A0D()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v4

    .line 70035
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/UB;->A0x()J

    move-result-wide v2

    .line 70036
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v1

    .line 70037
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v0

    .line 70038
    invoke-interface {v4, v2, v3, v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A2a(JILjava/lang/String;)V

    .line 70039
    if-eqz v7, :cond_4

    .line 70040
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/KH;->A00(Lcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/redexgen/X/KH;

    move-result-object v0

    invoke-interface {v7, v0}, Lcom/facebook/ads/redexgen/X/Jv;->AAi(Lcom/facebook/ads/redexgen/X/KH;)V

    .line 70041
    :cond_4
    invoke-virtual {v5}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x2e

    const/16 v1, 0x11

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70042
    invoke-interface {p1}, Lcom/facebook/ads/internal/api/NativeAdBaseApi;->isAdLoaded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70043
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    .line 70044
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8U;->A06()Lcom/facebook/ads/redexgen/X/8y;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8z;->A0W:I

    const/16 v2, 0xc0

    const/16 v1, 0x17

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/90;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/90;-><init>(Ljava/lang/String;)V

    .line 70045
    const/16 v2, 0x102

    const/4 v1, 0x3

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8y;->A8y(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/90;)V

    goto :goto_1

    .line 70046
    :cond_5
    check-cast v1, Lcom/facebook/ads/redexgen/X/F9;

    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/F9;->setAdapter(Lcom/facebook/ads/redexgen/X/4H;)V

    goto/16 :goto_0
.end method

.method public final A0N()Z
    .locals 1

    .line 70047
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A5b()Lcom/facebook/ads/redexgen/X/Xy;
    .locals 1

    .line 70048
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    return-object v0
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 2

    .line 70049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A01:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A02:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 70050
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 70051
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A0B:Lcom/facebook/ads/redexgen/X/Pi;

    if-eqz v1, :cond_1

    .line 70052
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    invoke-interface {v0, v1}, Lcom/facebook/ads/internal/api/AdComponentViewParentApi;->bringChildToFront(Landroid/view/View;)V

    .line 70053
    :cond_1
    return-void
.end method

.method public final destroy()V
    .locals 2

    .line 70054
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->pause(Z)V

    .line 70055
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 70056
    return-void
.end method

.method public final getAdComponentViewApi()Lcom/facebook/ads/internal/api/AdComponentViewApi;
    .locals 0

    .line 70057
    return-object p0
.end method

.method public final getAdContentsView()Landroid/view/View;
    .locals 1

    .line 70058
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A00:Landroid/view/View;

    return-object v0
.end method

.method public final getMediaHeight()I
    .locals 4

    .line 70059
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OD;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 70060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OD;->getImageHeight()I

    move-result v0

    return v0

    .line 70061
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 70062
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    .line 70063
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 70064
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v0

    return v0

    .line 70065
    :cond_2
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "3C5Zne3gt6SFfa7y1AnuQltffgpI3Oh8"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final getMediaWidth()I
    .locals 4

    .line 70066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OD;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 70067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A09:Lcom/facebook/ads/redexgen/X/OD;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OD;->getImageWidth()I

    move-result v0

    return v0

    .line 70068
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 70069
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->getVideoView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    .line 70070
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 70071
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v0

    return v0

    .line 70072
    :cond_2
    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "pFreRfYdfw1"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "pVUprXCJsnglf8IlGtX2XFBaJ"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return v3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final initialize(Lcom/facebook/ads/internal/api/AdViewConstructorParams;Lcom/facebook/ads/MediaView;)V
    .locals 10

    .line 70073
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 70074
    .local p0, "context":Landroid/content/Context;
    instance-of v0, v1, Lcom/facebook/ads/redexgen/X/Xy;

    if-eqz v0, :cond_3

    .line 70075
    check-cast v1, Lcom/facebook/ads/redexgen/X/Xy;

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    .line 70076
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/Xy;->A0G(Lcom/facebook/ads/internal/context/Repairable;)V

    .line 70077
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getInitializationType()I

    move-result v1

    const/4 v3, 0x1

    move-object v9, p2

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    const/4 v0, 0x3

    if-ne v1, v0, :cond_4

    .line 70078
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    .line 70079
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v6

    .line 70080
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v7

    .line 70081
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleRes()I

    move-result v8

    .line 70082
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/bd;->A0C(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;IILcom/facebook/ads/MediaView;)V

    .line 70083
    :goto_1
    invoke-virtual {p0, v3}, Lcom/facebook/ads/redexgen/X/5E;->A01(Z)V

    .line 70084
    return-void

    .line 70085
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    .line 70086
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v1

    .line 70087
    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getDefStyleAttr()I

    move-result v0

    .line 70088
    invoke-direct {p0, v2, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/bd;->A0D(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;ILcom/facebook/ads/MediaView;)V

    .line 70089
    goto :goto_1

    .line 70090
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-virtual {p1}, Lcom/facebook/ads/internal/api/AdViewConstructorParams;->getAttributeSet()Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, v1, v0, v9}, Lcom/facebook/ads/redexgen/X/bd;->A0E(Lcom/facebook/ads/redexgen/X/Xy;Landroid/util/AttributeSet;Lcom/facebook/ads/MediaView;)V

    .line 70091
    goto :goto_1

    .line 70092
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-direct {p0, v0, v9}, Lcom/facebook/ads/redexgen/X/bd;->A0F(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/MediaView;)V

    .line 70093
    goto :goto_1

    .line 70094
    :cond_3
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/5G;->A02(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/Xy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    goto :goto_0

    .line 70095
    :cond_4
    const/16 v2, 0x9b

    const/16 v1, 0x25

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V
    .locals 0

    .line 70096
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/5E;->onAttachedToView(Lcom/facebook/ads/internal/api/AdComponentView;Lcom/facebook/ads/internal/api/AdComponentViewParentApi;)V

    .line 70097
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bd;->A06:Lcom/facebook/ads/internal/api/AdComponentViewParentApi;

    .line 70098
    return-void
.end method

.method public final repair(Ljava/lang/Throwable;)V
    .locals 5

    .line 70099
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getWidth()I

    move-result v1

    .line 70100
    .local p0, "currentWidth":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getHeight()I

    move-result v4

    .line 70101
    .local p1, "currentHeight":I
    if-lez v1, :cond_0

    if-lez v4, :cond_0

    .line 70102
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    .line 70103
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 70104
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v1, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "Mgb6bOJjyiN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "MTEeDXbdwkPsq4eW7ABfM3WBi"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-virtual {v3}, Lcom/facebook/ads/MediaView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 70105
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    const v0, -0x333334

    invoke-virtual {v1, v0}, Lcom/facebook/ads/MediaView;->setBackgroundColor(I)V

    .line 70106
    :goto_0
    return-void

    .line 70107
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/MediaView;->repair(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final setListener(Lcom/facebook/ads/MediaViewListener;)V
    .locals 2

    .line 70108
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bd;->A04:Lcom/facebook/ads/MediaViewListener;

    .line 70109
    if-nez p1, :cond_0

    .line 70110
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5L;

    const/4 v0, 0x0

    .line 70111
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5L;->A07(Lcom/facebook/ads/redexgen/X/My;)V

    .line 70112
    return-void

    .line 70113
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5L;

    new-instance v0, Lcom/facebook/ads/redexgen/X/be;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/be;-><init>(Lcom/facebook/ads/redexgen/X/bd;Lcom/facebook/ads/MediaViewListener;)V

    .line 70114
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5L;->A07(Lcom/facebook/ads/redexgen/X/My;)V

    .line 70115
    return-void
.end method

.method public final setVideoRenderer(Lcom/facebook/ads/MediaViewVideoRenderer;)V
    .locals 4

    .line 70116
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0D:Z

    if-nez v0, :cond_3

    .line 70117
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    sget-object v1, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x4c

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/bd;->A0F:[Ljava/lang/String;

    const-string v1, "ifAS5bhxfK6Gg4eu5Yemnhg9EBEfp9jT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "R5YDbsM1msNnvJcIFydw3DY2O0brJ9d9"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v3, :cond_0

    .line 70118
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/MediaView;->removeView(Landroid/view/View;)V

    .line 70119
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;->destroy()V

    .line 70120
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/ads/MediaViewVideoRenderer;->getMediaViewVideoRendererApi()Lcom/facebook/ads/internal/api/MediaViewVideoRendererApi;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/5L;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A07:Lcom/facebook/ads/redexgen/X/Xy;

    .line 70121
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8U;->A08()Lcom/facebook/ads/redexgen/X/Jh;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5L;->A05(Lcom/facebook/ads/redexgen/X/Jh;)V

    .line 70122
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setVisibility(I)V

    .line 70123
    const/4 v0, -0x1

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70124
    .local p0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 70125
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A03:Lcom/facebook/ads/MediaView;

    invoke-virtual {v0}, Lcom/facebook/ads/MediaView;->getMediaViewApi()Lcom/facebook/ads/internal/api/MediaViewApi;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bd;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/bd;->A09(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 70126
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    .line 70127
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A05:Lcom/facebook/ads/MediaViewVideoRenderer;

    instance-of v0, v0, Lcom/facebook/ads/DefaultMediaViewVideoRenderer;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bd;->A0C:Z

    .line 70128
    invoke-static {}, Lcom/facebook/ads/redexgen/X/MS;->A00()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/MediaViewVideoRenderer;->setId(I)V

    .line 70129
    return-void

    .line 70130
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 70131
    .end local p0    # "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_3
    const/16 v2, 0xd7

    const/16 v1, 0x2b

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bd;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
