.class public final Lcom/facebook/ads/redexgen/X/TE;
.super Lcom/facebook/ads/redexgen/X/O6;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/O2;,
        Lcom/facebook/ads/redexgen/X/O3;,
        Lcom/facebook/ads/redexgen/X/O1;,
        Lcom/facebook/ads/redexgen/X/O0;
    }
.end annotation


# static fields
.field public static A08:Landroid/webkit/ValueCallback;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A09:Z

.field public static A0A:Z

.field public static A0B:[B

.field public static final A0C:Ljava/lang/String;

.field public static final A0D:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:J

.field public A03:J

.field public A04:Lcom/facebook/ads/redexgen/X/Xy;

.field public A05:Lcom/facebook/ads/redexgen/X/Nx;

.field public A06:Lcom/facebook/ads/redexgen/X/O0;

.field public A07:Lcom/facebook/ads/redexgen/X/O3;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 53570
    invoke-static {}, Lcom/facebook/ads/redexgen/X/TE;->A08()V

    const-class v0, Lcom/facebook/ads/redexgen/X/TE;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TE;->A0C:Ljava/lang/String;

    .line 53571
    const/4 v1, 0x2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/TE;->A0D:Ljava/util/Set;

    .line 53572
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TE;->A09:Z

    .line 53573
    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TE;->A0A:Z

    .line 53574
    sget-object v3, Lcom/facebook/ads/redexgen/X/TE;->A0D:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TE;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53575
    sget-object v3, Lcom/facebook/ads/redexgen/X/TE;->A0D:Ljava/util/Set;

    const/4 v2, 0x4

    const/4 v1, 0x5

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/TE;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53576
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xy;Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/O0;)V
    .locals 2

    .line 53577
    invoke-direct {p0, p2, p1}, Lcom/facebook/ads/redexgen/X/O6;-><init>(Landroid/app/Activity;Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 53578
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A02:J

    .line 53579
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:J

    .line 53580
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A03:J

    .line 53581
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A01:J

    .line 53582
    invoke-direct {p0, p1, p3}, Lcom/facebook/ads/redexgen/X/TE;->A0A(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/O0;)V

    .line 53583
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/O0;)V
    .locals 2

    .line 53584
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/O6;-><init>(Lcom/facebook/ads/redexgen/X/Xy;)V

    .line 53585
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A02:J

    .line 53586
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:J

    .line 53587
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A03:J

    .line 53588
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A01:J

    .line 53589
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/TE;->A0A(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/O0;)V

    .line 53590
    return-void
.end method

.method public static synthetic A01()Landroid/webkit/ValueCallback;
    .locals 1

    .line 53591
    sget-object v0, Lcom/facebook/ads/redexgen/X/TE;->A08:Landroid/webkit/ValueCallback;

    return-object v0
.end method

.method public static synthetic A03(Landroid/webkit/ValueCallback;)Landroid/webkit/ValueCallback;
    .locals 0

    .line 53592
    sput-object p0, Lcom/facebook/ads/redexgen/X/TE;->A08:Landroid/webkit/ValueCallback;

    return-object p0
.end method

.method private final A04()Lcom/facebook/ads/redexgen/X/O3;
    .locals 4

    .line 53593
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A04:Lcom/facebook/ads/redexgen/X/Xy;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A06:Lcom/facebook/ads/redexgen/X/O0;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A05:Lcom/facebook/ads/redexgen/X/Nx;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/O3;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O3;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/TE;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x5d

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06()Ljava/util/Set;
    .locals 1

    .line 53594
    sget-object v0, Lcom/facebook/ads/redexgen/X/TE;->A0D:Ljava/util/Set;

    return-object v0
.end method

.method private A07()V
    .locals 5

    .line 53595
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/TE;->A02:J

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/TE;->A01:J

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 53596
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TE;->A05:Lcom/facebook/ads/redexgen/X/Nx;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nx;->A05(Z)V

    .line 53597
    :cond_0
    return-void
.end method

.method public static A08()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TE;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x53t
        0x4ft
        0x4ft
        0x4bt
        0x31t
        0x2dt
        0x2dt
        0x29t
        0x2at
    .end array-data
.end method

.method public static A09(IILandroid/content/Intent;)V
    .locals 1

    .line 53598
    sget-object v0, Lcom/facebook/ads/redexgen/X/TE;->A08:Landroid/webkit/ValueCallback;

    if-nez v0, :cond_0

    .line 53599
    return-void

    .line 53600
    :cond_0
    const/16 v0, 0x3e9

    if-ne p0, v0, :cond_1

    .line 53601
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p0, v0, :cond_2

    .line 53602
    sget-object p0, Lcom/facebook/ads/redexgen/X/TE;->A08:Landroid/webkit/ValueCallback;

    .line 53603
    invoke-static {p1, p2}, Landroid/webkit/WebChromeClient$FileChooserParams;->parseResult(ILandroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    .line 53604
    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 53605
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/TE;->A08:Landroid/webkit/ValueCallback;

    .line 53606
    :cond_1
    return-void

    .line 53607
    :cond_2
    sget-object p0, Lcom/facebook/ads/redexgen/X/TE;->A08:Landroid/webkit/ValueCallback;

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Xy;Lcom/facebook/ads/redexgen/X/O0;)V
    .locals 3

    .line 53608
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TE;->A04:Lcom/facebook/ads/redexgen/X/Xy;

    .line 53609
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TE;->A06:Lcom/facebook/ads/redexgen/X/O0;

    .line 53610
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nx;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nx;-><init>(Lcom/facebook/ads/redexgen/X/TE;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A05:Lcom/facebook/ads/redexgen/X/Nx;

    .line 53611
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A04:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A03(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TE;->A09:Z

    .line 53612
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A04:Lcom/facebook/ads/redexgen/X/Xy;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JS;->A04(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/TE;->A0A:Z

    .line 53613
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TE;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 53614
    .local p0, "settings":Landroid/webkit/WebSettings;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 53615
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 53616
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 53617
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 53618
    invoke-virtual {v2, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 53619
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 53620
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 53621
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 53622
    invoke-virtual {v2, v0}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 53623
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TE;->A0D()Landroid/webkit/WebChromeClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/TE;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 53624
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TE;->A04()Lcom/facebook/ads/redexgen/X/O3;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A07:Lcom/facebook/ads/redexgen/X/O3;

    .line 53625
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A07:Lcom/facebook/ads/redexgen/X/O3;

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/TE;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53626
    return-void
.end method

.method public static synthetic A0B()Z
    .locals 1

    .line 53627
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/TE;->A0A:Z

    return v0
.end method

.method public static synthetic A0C()Z
    .locals 1

    .line 53628
    sget-boolean v0, Lcom/facebook/ads/redexgen/X/TE;->A09:Z

    return v0
.end method


# virtual methods
.method public final A0D()Landroid/webkit/WebChromeClient;
    .locals 4

    .line 53629
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A04:Lcom/facebook/ads/redexgen/X/Xy;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A06:Lcom/facebook/ads/redexgen/X/O0;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A05:Lcom/facebook/ads/redexgen/X/Nx;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/O2;

    invoke-direct {v0, v3, v2, v1}, Lcom/facebook/ads/redexgen/X/O2;-><init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method public final bridge synthetic A0E()Landroid/webkit/WebViewClient;
    .locals 1

    .line 53630
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TE;->A04()Lcom/facebook/ads/redexgen/X/O3;

    move-result-object v0

    return-object v0
.end method

.method public final A0F(J)V
    .locals 5

    .line 53631
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 53632
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:J

    .line 53633
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TE;->A07()V

    .line 53634
    return-void
.end method

.method public final A0G(J)V
    .locals 5

    .line 53635
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/TE;->A01:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 53636
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/TE;->A01:J

    .line 53637
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TE;->A07()V

    .line 53638
    return-void
.end method

.method public final A0H(J)V
    .locals 5

    .line 53639
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/TE;->A02:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 53640
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/TE;->A02:J

    .line 53641
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/TE;->A07()V

    .line 53642
    return-void
.end method

.method public final destroy()V
    .locals 1

    .line 53643
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A06:Lcom/facebook/ads/redexgen/X/O0;

    .line 53644
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/OC;->A03(Landroid/webkit/WebView;)V

    .line 53645
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/O6;->destroy()V

    .line 53646
    return-void
.end method

.method public getDomContentLoadedMs()J
    .locals 2

    .line 53647
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A00:J

    return-wide v0
.end method

.method public getFirstUrl()Ljava/lang/String;
    .locals 2

    .line 53648
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TE;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 53649
    .local p0, "list":Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 53650
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 53651
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TE;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLoadFinishMs()J
    .locals 2

    .line 53652
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A01:J

    return-wide v0
.end method

.method public getResponseEndMs()J
    .locals 2

    .line 53653
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A02:J

    return-wide v0
.end method

.method public getScrollReadyMs()J
    .locals 2

    .line 53654
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A03:J

    return-wide v0
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 53655
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/O6;->onDraw(Landroid/graphics/Canvas;)V

    .line 53656
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/TE;->A03:J

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TE;->computeVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/TE;->getHeight()I

    move-result v0

    if-le v1, v0, :cond_0

    .line 53657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/TE;->A03:J

    .line 53658
    :cond_0
    return-void
.end method

.method public setBrowserNavigationListener(Lcom/facebook/ads/redexgen/X/O1;)V
    .locals 2

    .line 53659
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/TE;->A07:Lcom/facebook/ads/redexgen/X/O3;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/O3;->A04(Ljava/lang/ref/WeakReference;)V

    .line 53660
    return-void
.end method
