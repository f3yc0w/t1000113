.class public Lnet/aihelp/ui/widget/tabs/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation runtime Landroidx/viewpager/widget/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$PagerAdapterObserver;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$ViewPagerOnTabSelectedListener;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$TabIndicatorGravity;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$TabGravity;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$LabelVisibility;,
        Lnet/aihelp/ui/widget/tabs/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field public static final GRAVITY_START:I = 0x2

.field public static final INDICATOR_GRAVITY_BOTTOM:I = 0x0

.field public static final INDICATOR_GRAVITY_CENTER:I = 0x1

.field public static final INDICATOR_GRAVITY_STRETCH:I = 0x3

.field public static final INDICATOR_GRAVITY_TOP:I = 0x2

.field private static final INVALID_WIDTH:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "aihelp_tablayout"

.field private static final MIN_INDICATOR_WIDTH:I = 0x18

.field public static final MODE_AUTO:I = 0x2

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field public static final TAB_LABEL_VISIBILITY_LABELED:I = 0x1

.field public static final TAB_LABEL_VISIBILITY_UNLABELED:I = 0x0

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final tabPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapterChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;

.field private contentInsetStart:I

.field private currentVpSelectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

.field inlineLabel:Z

.field mode:I

.field private pageChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;

.field private pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private pagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final requestedTabMaxWidth:I

.field private final requestedTabMinWidth:I

.field private scrollAnimator:Landroid/animation/ValueAnimator;

.field private final scrollableTabMinWidth:I

.field private selectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

.field private final selectedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;",
            ">;"
        }
    .end annotation
.end field

.field private selectedTab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

.field private setupViewPagerImplicitly:Z

.field final slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

.field final tabBackgroundResId:I

.field tabGravity:I

.field tabIconTint:Landroid/content/res/ColorStateList;

.field tabIconTintMode:Landroid/graphics/PorterDuff$Mode;

.field tabIndicatorAnimationDuration:I

.field tabIndicatorFullWidth:Z

.field tabIndicatorGravity:I

.field tabMaxWidth:I

.field tabPaddingBottom:I

.field tabPaddingEnd:I

.field tabPaddingStart:I

.field tabPaddingTop:I

.field tabRippleColorStateList:Landroid/content/res/ColorStateList;

.field tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

.field tabTextAppearance:I

.field tabTextColors:Landroid/content/res/ColorStateList;

.field tabTextMultiLineSize:F

.field tabTextSize:F

.field private final tabViewContentBounds:Landroid/graphics/RectF;

.field private final tabViewPool:Landroidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Pools$Pool<",
            "Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final tabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field unboundedRipple:Z

.field viewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    new-instance v0, Landroidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 456
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 460
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 385
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    .line 389
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    const/16 p1, 0x1e

    .line 394
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingStart:I

    .line 396
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingEnd:I

    const p1, 0x7fffffff

    .line 412
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabMaxWidth:I

    const/4 p1, 0x0

    .line 419
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    const/16 p2, 0x12c

    .line 421
    iput p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    const/4 p3, 0x1

    .line 424
    iput p3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    .line 433
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    .line 449
    new-instance v0, Landroidx/core/util/Pools$SimplePool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Landroidx/core/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    .line 462
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 465
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 468
    new-instance v1, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-direct {v1, p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroid/content/Context;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    .line 469
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "aihelp_color_main"

    invoke-static {v3}, Lnet/aihelp/utils/ResResolver;->getColorId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    const-string v2, "aihelp_bg_tab_indicator"

    .line 470
    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setSelectedTabIndicator(I)V

    .line 471
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setSelectedTabIndicatorGravity(I)V

    .line 472
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setTabIndicatorFullWidth(Z)V

    .line 474
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v1, p1, v2}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const-string v1, "aihelp_tabLayout"

    .line 480
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getStyleable(Ljava/lang/String;)[I

    move-result-object v2

    if-eqz v2, :cond_0

    .line 483
    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const-string v2, "aihelp_tab_padding"

    .line 488
    invoke-static {v1, v2}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingBottom:I

    iput v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingEnd:I

    iput v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingTop:I

    iput v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingStart:I

    const-string v2, "aihelp_tab_padding_top"

    .line 489
    invoke-static {v1, v2}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingTop:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingTop:I

    const-string v2, "aihelp_tab_padding_bottom"

    .line 491
    invoke-static {v1, v2}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingBottom:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingBottom:I

    const-string v2, "aihelp_tab_indicator_animation_duration"

    .line 494
    invoke-static {v1, v2}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    const-string p2, "aihelp_tab_mode"

    .line 497
    invoke-static {v1, p2}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    const-string p2, "aihelp_tab_gravity"

    .line 499
    invoke-static {v1, p2}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    .line 501
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 504
    :cond_0
    iput v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->requestedTabMinWidth:I

    .line 505
    iput v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->requestedTabMaxWidth:I

    .line 506
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabBackgroundResId:I

    .line 509
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    .line 510
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41400000    # 12.0f

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabTextMultiLineSize:F

    .line 511
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41b00000    # 22.0f

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollableTabMinWidth:I

    .line 514
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->applyModeAndGravity()V

    return-void
.end method

.method static synthetic access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;
    .locals 0

    .line 157
    iget-object p0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabViewContentBounds:Landroid/graphics/RectF;

    return-object p0
.end method

.method private addTabView(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V
    .locals 3

    .line 1416
    iget-object v0, p1, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->view:Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    const/4 v1, 0x0

    .line 1417
    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setSelected(Z)V

    .line 1418
    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setActivated(Z)V

    .line 1419
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p1, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private animateToTab(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1547
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1548
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    .line 1549
    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->childrenNeedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1556
    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getScrollX()I

    move-result v0

    .line 1557
    invoke-direct {p0, p1, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->calculateScrollXForTab(IF)I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 1560
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->ensureScrollAnimator()V

    .line 1562
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v2, v4, v1

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1563
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1567
    :cond_2
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    iget v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->animateIndicatorToPosition(II)V

    return-void

    .line 1552
    :cond_3
    :goto_0
    invoke-virtual {p0, p1, v2, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setScrollPosition(IFZ)V

    return-void
.end method

.method private applyGravityForModeScrollable(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 1728
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    goto :goto_0

    :cond_1
    const-string p1, "aihelp_tablayout"

    const-string v0, "MODE_SCROLLABLE + GRAVITY_FILL is not supported, GRAVITY_START will be used instead"

    .line 1731
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    :cond_2
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    const v0, 0x800003

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    :goto_0
    return-void
.end method

.method private applyModeAndGravity()V
    .locals 4

    .line 1700
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 1702
    :cond_1
    :goto_0
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->contentInsetStart:I

    iget v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPaddingStart:I

    sub-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1704
    :goto_1
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {v3, v0, v2, v2, v2}, Landroidx/core/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1706
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_2

    .line 1709
    :cond_2
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    if-ne v0, v1, :cond_3

    const-string v0, "aihelp_tablayout"

    const-string v1, "GRAVITY_START is not supported with the current tab mode, GRAVITY_CENTER will be used instead"

    .line 1710
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1715
    :cond_3
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->setGravity(I)V

    goto :goto_2

    .line 1718
    :cond_4
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->applyGravityForModeScrollable(I)V

    .line 1722
    :goto_2
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method private calculateScrollXForTab(IF)I
    .locals 4

    .line 1677
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 1678
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 1680
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v3

    if-ge p1, v3, :cond_2

    .line 1681
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 1683
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz p1, :cond_4

    .line 1684
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1687
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v3, 0x2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p1, v0

    add-int/2addr v3, v1

    int-to-float v0, v3

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    mul-float v0, v0, p2

    float-to-int p2, v0

    .line 1691
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_5

    add-int/2addr p1, p2

    goto :goto_3

    :cond_5
    sub-int/2addr p1, p2

    :goto_3
    return p1
.end method

.method private configureTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 1406
    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->setPosition(I)V

    .line 1407
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1409
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, p1, :cond_0

    .line 1411
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    invoke-virtual {v0, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->setPosition(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    .line 2925
    sget-object v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 2930
    sget-object p1, Lnet/aihelp/ui/widget/tabs/TabLayout;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 2934
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 1424
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1426
    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0
.end method

.method private createTabView(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;
    .locals 2

    .line 1390
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 1392
    new-instance v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroid/content/Context;)V

    .line 1394
    :cond_1
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    const/4 v1, 0x1

    .line 1395
    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setFocusable(Z)V

    .line 1396
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setMinimumWidth(I)V

    .line 1397
    invoke-static {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->access$100(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1398
    invoke-static {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->access$200(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1400
    :cond_2
    invoke-static {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->access$100(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    return-object v0
.end method

.method private dispatchTabReselected(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1671
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1672
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;->onTabReselected(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabSelected(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1659
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1660
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;->onTabSelected(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dispatchTabUnselected(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V
    .locals 2

    .line 1665
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1666
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

    invoke-interface {v1, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;->onTabUnselected(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ensureScrollAnimator()V
    .locals 3

    .line 1571
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 1572
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    .line 1573
    sget-object v1, Lnet/aihelp/ui/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1574
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorAnimationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1575
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lnet/aihelp/ui/widget/tabs/TabLayout$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$1;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    return-void
.end method

.method private getDefaultHeight()I
    .locals 5

    .line 2940
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2941
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-eqz v3, :cond_0

    .line 2942
    invoke-virtual {v3}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 2947
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->inlineLabel:Z

    if-nez v0, :cond_2

    const/16 v0, 0x48

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    :goto_2
    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .line 2951
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->requestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 2956
    :cond_0
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollableTabMinWidth:I

    :goto_1
    return v0
.end method

.method private getTabScrollRange()I
    .locals 2

    .line 1339
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    .line 1340
    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 1339
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private removeTabViewAt(I)V
    .locals 2

    .line 1533
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    .line 1534
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->removeViewAt(I)V

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->reset()V

    .line 1537
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabViewPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {p1, v0}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 1539
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->requestLayout()V

    return-void
.end method

.method private setSelectedTabView(I)V
    .locals 6

    .line 1596
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 1599
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v3, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 1600
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 1601
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V
    .locals 2

    .line 1239
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_1

    .line 1241
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pageChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 1242
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1244
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->adapterChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;

    if-eqz v0, :cond_1

    .line 1245
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->removeOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1249
    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->currentVpSelectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1251
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->removeOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1252
    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->currentVpSelectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

    :cond_2
    if-eqz p1, :cond_6

    .line 1256
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 1259
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pageChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v0, :cond_3

    .line 1260
    new-instance v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pageChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;

    .line 1262
    :cond_3
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pageChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;->reset()V

    .line 1263
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pageChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 1266
    new-instance v0, Lnet/aihelp/ui/widget/tabs/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroidx/viewpager/widget/ViewPager;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->currentVpSelectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

    .line 1267
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 1269
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1273
    invoke-virtual {p0, v0, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1277
    :cond_4
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->adapterChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;

    if-nez v0, :cond_5

    .line 1278
    new-instance v0, Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->adapterChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;

    .line 1280
    :cond_5
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->adapterChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;

    invoke-virtual {v0, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;->setAutoRefresh(Z)V

    .line 1281
    iget-object p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->adapterChangeListener:Lnet/aihelp/ui/widget/tabs/TabLayout$AdapterChangeListener;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/ViewPager;->addOnAdapterChangeListener(Landroidx/viewpager/widget/ViewPager$OnAdapterChangeListener;)V

    .line 1284
    invoke-virtual {p1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 1288
    :cond_6
    iput-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 p1, 0x0

    .line 1289
    invoke-virtual {p0, v1, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    .line 1292
    :goto_0
    iput-boolean p3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->setupViewPagerImplicitly:Z

    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .line 1383
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1384
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    invoke-virtual {v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->updateView()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .line 1431
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1432
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1433
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 1435
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 1436
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 696
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 697
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;)V
    .locals 0

    .line 681
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public addTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V
    .locals 1

    .line 601
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method public addTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;I)V
    .locals 1

    .line 612
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;IZ)V

    return-void
.end method

.method public addTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;IZ)V
    .locals 1

    .line 633
    iget-object v0, p1, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    if-ne v0, p0, :cond_1

    .line 636
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->configureTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;I)V

    .line 637
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addTabView(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    if-eqz p3, :cond_0

    .line 640
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->select()V

    :cond_0
    return-void

    .line 634
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different aihelp_tablayout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;Z)V
    .locals 1

    .line 622
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;IZ)V

    return-void
.end method

.method public clearOnTabSelectedListeners()V
    .locals 1

    .line 727
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected createTabFromPool()Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 1

    .line 747
    sget-object v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0}, Landroidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-nez v0, :cond_0

    .line 749
    new-instance v0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    invoke-direct {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;-><init>()V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 156
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2965
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .line 782
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedTab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getTabAt(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 1

    if-ltz p1, :cond_1

    .line 773
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getTabCount()I
    .locals 1

    .line 765
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .line 896
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    return v0
.end method

.method public getTabIconTint()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1108
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabIndicatorGravity()I
    .locals 1

    .line 929
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorGravity:I

    return v0
.end method

.method getTabMaxWidth()I
    .locals 1

    .line 2969
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabMaxWidth:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .line 873
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    return v0
.end method

.method public getTabRippleColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1119
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTabSelectedIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1166
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1068
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public hasUnboundedRipple()Z
    .locals 1

    .line 1048
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->unboundedRipple:Z

    return v0
.end method

.method public isInlineLabel()Z
    .locals 1

    .line 1004
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->inlineLabel:Z

    return v0
.end method

.method public isTabIndicatorFullWidth()Z
    .locals 1

    .line 961
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorFullWidth:Z

    return v0
.end method

.method public newTab()Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;
    .locals 2

    .line 739
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->createTabFromPool()Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object v0

    .line 740
    iput-object p0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    .line 741
    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->createTabView(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    move-result-object v1

    iput-object v1, v0, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->view:Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1313
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 1315
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    .line 1318
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1319
    instance-of v1, v0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_0

    .line 1322
    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1329
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 1331
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->setupViewPagerImplicitly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1333
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    const/4 v0, 0x0

    .line 1334
    iput-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->setupViewPagerImplicitly:Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v0, 0x0

    .line 1455
    :goto_0
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1456
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1457
    instance-of v2, v1, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    if-eqz v2, :cond_0

    .line 1458
    check-cast v1, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    invoke-static {v1, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->access$300(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1462
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1442
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1443
    invoke-static {p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object p1

    .line 1447
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1445
    invoke-static {v1, v0, v2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIZI)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    move-result-object v0

    .line 1444
    invoke-virtual {p1, v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionInfo(Ljava/lang/Object;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1469
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getDefaultHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1470
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1479
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getPaddingTop()I

    move-result p2

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getPaddingBottom()I

    move-result p2

    add-int/2addr v0, p2

    .line 1478
    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 1472
    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getChildCount()I

    move-result v1

    if-ne v1, v5, :cond_2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 1473
    invoke-virtual {p0, v4}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1485
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1486
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v1, :cond_4

    .line 1490
    iget v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->requestedTabMaxWidth:I

    if-lez v1, :cond_3

    goto :goto_1

    .line 1492
    :cond_3
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v1, v2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    sub-int v1, v0, v1

    :goto_1
    iput v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabMaxWidth:I

    .line 1496
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 1498
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getChildCount()I

    move-result p1

    if-ne p1, v5, :cond_8

    .line 1501
    invoke-virtual {p0, v4}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1504
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    if-eqz v0, :cond_6

    if-eq v0, v5, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    goto :goto_3

    .line 1513
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getMeasuredWidth()I

    move-result v1

    if-eq v0, v1, :cond_7

    :goto_2
    const/4 v4, 0x1

    goto :goto_3

    .line 1509
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getMeasuredWidth()I

    move-result v1

    if-ge v0, v1, :cond_7

    goto :goto_2

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    .line 1522
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 1523
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1520
    invoke-static {p2, v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getChildMeasureSpec(III)I

    move-result p2

    .line 1526
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1527
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    :cond_8
    return-void
.end method

.method populateFromPagerAdapter()V
    .locals 5

    .line 1364
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->removeAllTabs()V

    .line 1366
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_1

    .line 1367
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1369
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->newTab()Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v4, v2}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1373
    :cond_0
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->viewPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 1374
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 1375
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getSelectedTabPosition()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1376
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabAt(I)Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    :cond_1
    return-void
.end method

.method protected releaseFromTabPool(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Z
    .locals 1

    .line 756
    sget-object v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabPool:Landroidx/core/util/Pools$Pool;

    invoke-interface {v0, p1}, Landroidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public removeAllTabs()V
    .locals 2

    .line 830
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 831
    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->removeTabViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 834
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 835
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    .line 836
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 837
    invoke-virtual {v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->reset()V

    .line 838
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->releaseFromTabPool(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Z

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 841
    iput-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedTab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    return-void
.end method

.method public removeOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 720
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;)V
    .locals 0

    .line 708
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->removeOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method public removeTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V
    .locals 1

    .line 792
    iget-object v0, p1, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->parent:Lnet/aihelp/ui/widget/tabs/TabLayout;

    if-ne v0, p0, :cond_0

    .line 796
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->removeTabAt(I)V

    return-void

    .line 793
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab does not belong to this aihelp_tablayout."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeTabAt(I)V
    .locals 5

    .line 806
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedTab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 807
    :goto_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->removeTabViewAt(I)V

    .line 809
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-eqz v2, :cond_1

    .line 811
    invoke-virtual {v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->reset()V

    .line 812
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->releaseFromTabPool(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)Z

    .line 815
    :cond_1
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, p1

    :goto_1
    if-ge v3, v2, :cond_2

    .line 817
    iget-object v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    invoke-virtual {v4, v3}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->setPosition(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    if-ne v0, p1, :cond_4

    .line 821
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabs:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    :goto_2
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    :cond_4
    return-void
.end method

.method public selectTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V
    .locals 1

    const/4 v0, 0x1

    .line 1613
    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;Z)V

    return-void
.end method

.method public selectTab(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;Z)V
    .locals 4

    .line 1625
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedTab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_6

    .line 1629
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->dispatchTabReselected(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    .line 1630
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->animateToTab(I)V

    goto :goto_2

    :cond_0
    const/4 v1, -0x1

    if-eqz p1, :cond_1

    .line 1633
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-eqz p2, :cond_4

    if-eqz v0, :cond_2

    .line 1635
    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;->getPosition()I

    move-result p2

    if-ne p2, v1, :cond_3

    :cond_2
    if-eq v2, v1, :cond_3

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 1638
    invoke-virtual {p0, v2, p2, v3}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_1

    .line 1640
    :cond_3
    invoke-direct {p0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->animateToTab(I)V

    :goto_1
    if-eq v2, v1, :cond_4

    .line 1643
    invoke-direct {p0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setSelectedTabView(I)V

    .line 1648
    :cond_4
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedTab:Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;

    if-eqz v0, :cond_5

    .line 1650
    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->dispatchTabUnselected(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    :cond_5
    if-eqz p1, :cond_6

    .line 1653
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->dispatchTabSelected(Lnet/aihelp/ui/widget/tabs/TabLayout$Tab;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public setInlineLabel(Z)V
    .locals 2

    .line 972
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->inlineLabel:Z

    if-eq v0, p1, :cond_2

    .line 973
    iput-boolean p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->inlineLabel:Z

    const/4 p1, 0x0

    .line 974
    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 975
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 976
    instance-of v1, v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 977
    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->updateOrientation()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 980
    :cond_1
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->applyModeAndGravity()V

    :cond_2
    return-void
.end method

.method public setInlineLabelResource(I)V
    .locals 1

    .line 993
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setInlineLabel(Z)V

    return-void
.end method

.method public setOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

    if-eqz v0, :cond_0

    .line 662
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->removeOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V

    .line 666
    :cond_0
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->selectedListener:Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;

    if-eqz p1, :cond_1

    .line 668
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->addOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V

    :cond_1
    return-void
.end method

.method public setOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 650
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setOnTabSelectedListener(Lnet/aihelp/ui/widget/tabs/TabLayout$BaseOnTabSelectedListener;)V

    return-void
.end method

.method setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V
    .locals 2

    .line 1344
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 1346
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1349
    :cond_0
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1353
    iget-object p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 1354
    new-instance p2, Lnet/aihelp/ui/widget/tabs/TabLayout$PagerAdapterObserver;

    invoke-direct {p2, p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$PagerAdapterObserver;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout;)V

    iput-object p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 1356
    :cond_1
    iget-object p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->pagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, p2}, Landroidx/viewpager/widget/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1360
    :cond_2
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method setScrollAnimatorListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1586
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->ensureScrollAnimator()V

    .line 1587
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1

    const/4 v0, 0x1

    .line 552
    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method public setScrollPosition(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 572
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_3

    .line 573
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    .line 579
    iget-object p4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {p4, p1, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPositionFromTabPosition(IF)V

    .line 583
    :cond_1
    iget-object p4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_2

    .line 584
    iget-object p4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 586
    :cond_2
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->calculateScrollXForTab(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->scrollTo(II)V

    if-eqz p3, :cond_3

    .line 590
    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setSelectedTabView(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1199
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 1198
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1201
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setSelectedTabIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1180
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 1181
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    .line 1182
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1

    .line 524
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorColor(I)V

    return-void
.end method

.method public setSelectedTabIndicatorGravity(I)V
    .locals 1

    .line 914
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorGravity:I

    if-eq v0, p1, :cond_0

    .line 915
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorGravity:I

    .line 916
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->setSelectedIndicatorHeight(I)V

    return-void
.end method

.method public setTabGravity(I)V
    .locals 1

    .line 883
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    if-eq v0, p1, :cond_0

    .line 884
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    .line 885
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabIconTint(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1087
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1088
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIconTint:Landroid/content/res/ColorStateList;

    .line 1089
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabIconTintResource(I)V
    .locals 1

    .line 1100
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setTabIconTint(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabIndicatorFullWidth(Z)V
    .locals 0

    .line 948
    iput-boolean p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorFullWidth:Z

    .line 949
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method public setTabMode(I)V
    .locals 1

    .line 860
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    if-eq p1, v0, :cond_0

    .line 861
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    .line 862
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->applyModeAndGravity()V

    :cond_0
    return-void
.end method

.method public setTabRippleColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    .line 1133
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_1

    .line 1134
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabRippleColorStateList:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 1135
    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1136
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1137
    instance-of v1, v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 1138
    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->access$000(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setTabRippleColorResource(I)V
    .locals 1

    .line 1154
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroidx/appcompat/content/res/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setTabRippleColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(II)V
    .locals 0

    .line 1078
    invoke-static {p1, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1057
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 1058
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabTextColors:Landroid/content/res/ColorStateList;

    .line 1059
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->updateAllTabs()V

    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1302
    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setPagerAdapter(Landroidx/viewpager/widget/PagerAdapter;Z)V

    return-void
.end method

.method public setUnboundedRipple(Z)V
    .locals 2

    .line 1017
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->unboundedRipple:Z

    if-eq v0, p1, :cond_1

    .line 1018
    iput-boolean p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->unboundedRipple:Z

    const/4 p1, 0x0

    .line 1019
    :goto_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 1020
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1021
    instance-of v1, v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    if-eqz v1, :cond_0

    .line 1022
    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->access$000(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;Landroid/content/Context;)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setUnboundedRippleResource(I)V
    .locals 1

    .line 1037
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setUnboundedRipple(Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V
    .locals 1

    const/4 v0, 0x1

    .line 1214
    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V

    return-void
.end method

.method public setupWithViewPager(Landroidx/viewpager/widget/ViewPager;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1234
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;ZZ)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .line 1308
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method updateTabViews(Z)V
    .locals 3

    const/4 v0, 0x0

    .line 1745
    :goto_0
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1746
    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout;->slidingTabIndicator:Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1747
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1748
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_0

    .line 1750
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
