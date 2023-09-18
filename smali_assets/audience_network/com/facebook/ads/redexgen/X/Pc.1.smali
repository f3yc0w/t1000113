.class public final Lcom/facebook/ads/redexgen/X/Pc;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final A08:I


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Aj;

.field public A01:Lcom/facebook/ads/redexgen/X/Px;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/89;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/KS;

.field public A04:Lcom/facebook/ads/redexgen/X/7m;

.field public A05:Lcom/facebook/ads/redexgen/X/6p;

.field public final A06:Lcom/facebook/ads/redexgen/X/Xy;

.field public final A07:Lcom/facebook/ads/redexgen/X/Jp;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 49181
    sget v1, Lcom/facebook/ads/redexgen/X/Lr;->A00:F

    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lcom/facebook/ads/redexgen/X/Pc;->A08:I

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Jp;)V
    .locals 0

    .line 49182
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 49183
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Pc;->A07:Lcom/facebook/ads/redexgen/X/Jp;

    .line 49184
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A06:Lcom/facebook/ads/redexgen/X/Xy;

    .line 49185
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pc;->setUpView(Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 49186
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Pc;)Lcom/facebook/ads/redexgen/X/6p;
    .locals 0

    .line 49187
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A05:Lcom/facebook/ads/redexgen/X/6p;

    return-object p0
.end method

.method private setUpPlugins(Lcom/facebook/ads/redexgen/X/Xy;)V
    .locals 5

    .line 49212
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A0X()V

    .line 49213
    new-instance v0, Lcom/facebook/ads/redexgen/X/7m;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7m;-><init>(Lcom/facebook/ads/redexgen/X/Xy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A04:Lcom/facebook/ads/redexgen/X/7m;

    .line 49214
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A04:Lcom/facebook/ads/redexgen/X/7m;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QK;->A0c(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 49215
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A07:Lcom/facebook/ads/redexgen/X/Jp;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KS;

    invoke-direct {v0, p1, v1}, Lcom/facebook/ads/redexgen/X/KS;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Jp;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A03:Lcom/facebook/ads/redexgen/X/KS;

    .line 49216
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7u;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7u;-><init>(Lcom/facebook/ads/redexgen/X/Xy;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QK;->A0c(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 49217
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A03:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QK;->A0c(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 49218
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A07:Lcom/facebook/ads/redexgen/X/Jp;

    const/4 v4, 0x1

    new-instance v0, Lcom/facebook/ads/redexgen/X/6p;

    invoke-direct {v0, p1, v4, v1}, Lcom/facebook/ads/redexgen/X/6p;-><init>(Lcom/facebook/ads/redexgen/X/Xy;ZLcom/facebook/ads/redexgen/X/Jp;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A05:Lcom/facebook/ads/redexgen/X/6p;

    .line 49219
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QK;->A0c(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 49220
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pc;->A05:Lcom/facebook/ads/redexgen/X/6p;

    sget-object v1, Lcom/facebook/ads/redexgen/X/QJ;->A03:Lcom/facebook/ads/redexgen/X/QJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KT;

    invoke-direct {v0, v2, v1, v4, v4}, Lcom/facebook/ads/redexgen/X/KT;-><init>(Landroid/view/View;Lcom/facebook/ads/redexgen/X/QJ;ZZ)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/QK;->A0c(Lcom/facebook/ads/redexgen/X/Q7;)V

    .line 49221
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A0g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49222
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/JR;->A21(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 49223
    return-void

    .line 49224
    :cond_0
    const/4 v0, -0x2

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 49225
    .local p0, "muteButtonParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49226
    const/16 v0, 0xb

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 49227
    sget v0, Lcom/facebook/ads/redexgen/X/Pc;->A08:I

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 49228
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A03:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/KS;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49229
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A03:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Aj;->addView(Landroid/view/View;)V

    .line 49230
    return-void
.end method

.method private setUpVideo(Lcom/facebook/ads/redexgen/X/Xy;)V
    .locals 4

    .line 49231
    new-instance v0, Lcom/facebook/ads/redexgen/X/Aj;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/Aj;-><init>(Lcom/facebook/ads/redexgen/X/Xy;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    .line 49232
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    const/4 v2, -0x1

    const/4 v1, -0x2

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/QK;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 49233
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/MS;->A0K(Landroid/view/View;)V

    .line 49234
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pc;->addView(Landroid/view/View;)V

    .line 49235
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Pb;-><init>(Lcom/facebook/ads/redexgen/X/Pc;)V

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/Pc;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49236
    return-void
.end method

.method private setUpView(Lcom/facebook/ads/redexgen/X/Xy;)V
    .locals 0

    .line 49237
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pc;->setUpVideo(Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 49238
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Pc;->setUpPlugins(Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 49239
    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 49188
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    const/4 v1, 0x1

    const/16 v0, 0xa

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QK;->A0e(ZI)V

    .line 49189
    return-void
.end method

.method public final A02()V
    .locals 2

    .line 49190
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A01:Lcom/facebook/ads/redexgen/X/Px;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 49191
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Px;->A0A()V

    .line 49192
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A01:Lcom/facebook/ads/redexgen/X/Px;

    .line 49193
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A02:Lcom/facebook/ads/redexgen/X/89;

    if-eqz v0, :cond_1

    .line 49194
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/89;->A0g()V

    .line 49195
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A02:Lcom/facebook/ads/redexgen/X/89;

    .line 49196
    :cond_1
    return-void
.end method

.method public final A03(Lcom/facebook/ads/redexgen/X/9c;)V
    .locals 1

    .line 49197
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->getEventBus()Lcom/facebook/ads/redexgen/X/9b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/9b;->A05(Lcom/facebook/ads/redexgen/X/9c;)Z

    .line 49198
    return-void
.end method

.method public final A04(Lcom/facebook/ads/redexgen/X/Jh;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Jh;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 49199
    .local v5, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Pc;->A02()V

    .line 49200
    new-instance v0, Lcom/facebook/ads/redexgen/X/89;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A06:Lcom/facebook/ads/redexgen/X/Xy;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    move-object v4, p2

    move-object v5, p3

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/89;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/QK;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A02:Lcom/facebook/ads/redexgen/X/89;

    .line 49201
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A06:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JR;->A1J(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49202
    new-instance v0, Lcom/facebook/ads/redexgen/X/Px;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A06:Lcom/facebook/ads/redexgen/X/Xy;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Px;-><init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/Jh;Lcom/facebook/ads/redexgen/X/QK;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A01:Lcom/facebook/ads/redexgen/X/Px;

    .line 49203
    :goto_0
    return-void

    .line 49204
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A01:Lcom/facebook/ads/redexgen/X/Px;

    goto :goto_0
.end method

.method public final A05(Lcom/facebook/ads/redexgen/X/Q6;)V
    .locals 2

    .line 49205
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    const/16 v0, 0xd

    invoke-virtual {v1, p1, v0}, Lcom/facebook/ads/redexgen/X/QK;->A0b(Lcom/facebook/ads/redexgen/X/Q6;I)V

    .line 49206
    return-void
.end method

.method public final A06()Z
    .locals 1

    .line 49207
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->A0k()Z

    move-result v0

    return v0
.end method

.method public getSimpleVideoView()Lcom/facebook/ads/redexgen/X/QK;
    .locals 1

    .line 49208
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 49209
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QK;->getVolume()F

    move-result v0

    return v0
.end method

.method public setPlaceholderUrl(Ljava/lang/String;)V
    .locals 1

    .line 49210
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A04:Lcom/facebook/ads/redexgen/X/7m;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/7m;->setImage(Ljava/lang/String;)V

    .line 49211
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;)V
    .locals 1

    .line 49240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QK;->setVideoURI(Ljava/lang/String;)V

    .line 49241
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 49242
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A00:Lcom/facebook/ads/redexgen/X/Aj;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/QK;->setVolume(F)V

    .line 49243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Pc;->A03:Lcom/facebook/ads/redexgen/X/KS;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/KS;->A09()V

    .line 49244
    return-void
.end method
