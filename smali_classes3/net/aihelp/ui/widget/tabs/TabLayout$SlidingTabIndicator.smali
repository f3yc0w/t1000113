.class Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;
.super Landroid/widget/LinearLayout;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/widget/tabs/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SlidingTabIndicator"
.end annotation


# instance fields
.field private animationStartLeft:I

.field private animationStartRight:I

.field private final defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

.field indicatorAnimator:Landroid/animation/ValueAnimator;

.field indicatorLeft:I

.field indicatorRight:I

.field private layoutDirection:I

.field private selectedIndicatorHeight:I

.field private final selectedIndicatorPaint:Landroid/graphics/Paint;

.field selectedPosition:I

.field selectionOffset:F

.field final synthetic this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/widget/tabs/TabLayout;Landroid/content/Context;)V
    .locals 0

    .line 2562
    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    .line 2563
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2544
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2550
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2553
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    .line 2555
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2556
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2559
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    .line 2560
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->animationStartRight:I

    const/4 p1, 0x0

    .line 2564
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->setWillNotDraw(Z)V

    .line 2565
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2566
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method static synthetic access$600(Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;)I
    .locals 0

    .line 2543
    iget p0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    return p0
.end method

.method static synthetic access$700(Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;)I
    .locals 0

    .line 2543
    iget p0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->animationStartRight:I

    return p0
.end method

.method private calculateTabViewContentBounds(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V
    .locals 3

    .line 2846
    invoke-static {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->access$800(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;)I

    move-result v0

    .line 2847
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v1, v2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    if-ge v0, v1, :cond_0

    move v0, v1

    .line 2853
    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;->getRight()I

    move-result p1

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 2854
    div-int/lit8 v0, v0, 0x2

    sub-int p1, v1, v0

    add-int/2addr v1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    const/4 v1, 0x0

    .line 2857
    invoke-virtual {p2, p1, v1, v0, v1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 7

    .line 2699
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2703
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lez v1, :cond_2

    .line 2704
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2705
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2707
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-boolean v3, v3, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v3, :cond_0

    instance-of v3, v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    if-eqz v3, :cond_0

    .line 2708
    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-static {v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2709
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-static {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    .line 2710
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-static {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    .line 2713
    :cond_0
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 2715
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2716
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 2717
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    .line 2719
    iget-object v5, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-boolean v5, v5, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v5, :cond_1

    instance-of v5, v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    if-eqz v5, :cond_1

    .line 2720
    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-static {v3}, Lnet/aihelp/ui/widget/tabs/TabLayout;->access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2721
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-static {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v3, v0

    .line 2722
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-static {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v0

    .line 2725
    :cond_1
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    int-to-float v3, v3

    mul-float v3, v3, v0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v6, v5, v0

    int-to-float v1, v1

    mul-float v6, v6, v1

    add-float/2addr v3, v6

    float-to-int v1, v3

    int-to-float v3, v4

    mul-float v3, v3, v0

    sub-float/2addr v5, v0

    int-to-float v0, v2

    mul-float v5, v5, v0

    add-float/2addr v3, v5

    float-to-int v2, v3

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    const/4 v2, -0x1

    .line 2733
    :cond_3
    :goto_0
    invoke-virtual {p0, v1, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->setIndicatorPosition(II)V

    return-void
.end method

.method private updateOrRecreateIndicatorAnimation(ZII)V
    .locals 4

    .line 2755
    invoke-virtual {p0, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2758
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void

    .line 2762
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 2763
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v2

    .line 2765
    iget-object v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-boolean v3, v3, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorFullWidth:Z

    if-nez v3, :cond_1

    instance-of v3, v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    if-eqz v3, :cond_1

    .line 2766
    check-cast v0, Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;

    iget-object v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-static {v1}, Lnet/aihelp/ui/widget/tabs/TabLayout;->access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->calculateTabViewContentBounds(Lnet/aihelp/ui/widget/tabs/TabLayout$TabView;Landroid/graphics/RectF;)V

    .line 2767
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-static {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-int v1, v0

    .line 2768
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-static {v0}, Lnet/aihelp/ui/widget/tabs/TabLayout;->access$500(Lnet/aihelp/ui/widget/tabs/TabLayout;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    float-to-int v2, v0

    .line 2776
    :cond_1
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2777
    iget v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-ne v0, v1, :cond_2

    if-ne v3, v2, :cond_2

    return-void

    :cond_2
    if-eqz p1, :cond_3

    .line 2787
    iput v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->animationStartLeft:I

    .line 2788
    iput v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->animationStartRight:I

    .line 2793
    :cond_3
    new-instance v0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$1;

    invoke-direct {v0, p0, v1, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$1;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;II)V

    if-eqz p1, :cond_4

    .line 2806
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    .line 2807
    sget-object v1, Lnet/aihelp/ui/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v1, p3

    .line 2808
    invoke-virtual {p1, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 p3, 0x2

    new-array p3, p3, [F

    .line 2809
    fill-array-data p3, :array_0

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2810
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2811
    new-instance p3, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;

    invoke-direct {p3, p0, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator$2;-><init>(Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;I)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2824
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 2827
    :cond_4
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 2828
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method animateIndicatorToPosition(II)V
    .locals 1

    .line 2746
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2747
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x1

    .line 2750
    invoke-direct {p0, v0, p1, p2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    return-void
.end method

.method childrenNeedLayout()Z
    .locals 4

    .line 2584
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2585
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2586
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-gtz v3, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 2863
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2864
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2866
    :goto_0
    iget v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-ltz v2, :cond_1

    move v0, v2

    .line 2873
    :cond_1
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget v2, v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabIndicatorGravity:I

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v3, :cond_3

    if-eq v2, v4, :cond_5

    const/4 v0, 0x3

    if-eq v2, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 2888
    :cond_2
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v0

    goto :goto_1

    .line 2879
    :cond_3
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/2addr v1, v4

    .line 2880
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    div-int/lit8 v0, v2, 0x2

    goto :goto_1

    .line 2875
    :cond_4
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2876
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getHeight()I

    move-result v0

    .line 2895
    :cond_5
    :goto_1
    iget v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ltz v2, :cond_9

    iget v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-le v3, v2, :cond_9

    .line 2899
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v2, v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget-object v2, v2, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabSelectedIndicator:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->defaultSelectionIndicator:Landroid/graphics/drawable/GradientDrawable;

    .line 2898
    :goto_2
    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2900
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 2901
    iget v3, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    iget v4, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2902
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_8

    .line 2903
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_7

    .line 2905
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    .line 2906
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2905
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_3

    .line 2908
    :cond_7
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v2, v0}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    .line 2911
    :cond_8
    :goto_3
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2915
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getIndicatorPosition()F
    .locals 2

    .line 2604
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    int-to-float v0, v0

    iget v1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 2683
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2685
    iget-object p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2690
    iget p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    const/4 p3, -0x1

    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V

    goto :goto_0

    .line 2694
    :cond_0
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .line 2623
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2625
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    .line 2634
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget v0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iget v0, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->mode:I

    if-ne v0, v1, :cond_9

    .line 2635
    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildCount()I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    .line 2640
    invoke-virtual {p0, v4}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 2641
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2

    .line 2642
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-gtz v5, :cond_4

    return-void

    .line 2651
    :cond_4
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v4, v6}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result v4

    mul-int v6, v5, v0

    .line 2654
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getMeasuredWidth()I

    move-result v7

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v7, v4

    if-gt v6, v7, :cond_8

    const/4 v1, 0x0

    :goto_1
    if-ge v3, v0, :cond_7

    .line 2658
    invoke-virtual {p0, v3}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 2659
    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    if-ne v6, v5, :cond_5

    iget v6, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_6

    .line 2660
    :cond_5
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2661
    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    move v2, v1

    goto :goto_2

    .line 2669
    :cond_8
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    iput v3, v0, Lnet/aihelp/ui/widget/tabs/TabLayout;->tabGravity:I

    .line 2670
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->this$0:Lnet/aihelp/ui/widget/tabs/TabLayout;

    invoke-virtual {v0, v3}, Lnet/aihelp/ui/widget/tabs/TabLayout;->updateTabViews(Z)V

    :goto_2
    if-eqz v2, :cond_9

    .line 2676
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_9
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 2

    .line 2609
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 2613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 2614
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    if-eq v0, p1, :cond_0

    .line 2615
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->requestLayout()V

    .line 2616
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->layoutDirection:I

    :cond_0
    return-void
.end method

.method setIndicatorPosition(II)V
    .locals 1

    .line 2737
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    if-eq p2, v0, :cond_1

    .line 2739
    :cond_0
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorLeft:I

    .line 2740
    iput p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorRight:I

    .line 2741
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method setIndicatorPositionFromTabPosition(IF)V
    .locals 1

    .line 2594
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2595
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->indicatorAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2598
    :cond_0
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedPosition:I

    .line 2599
    iput p2, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectionOffset:F

    .line 2600
    invoke-direct {p0}, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->updateIndicatorPosition()V

    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1

    .line 2570
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 2571
    iget-object v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2572
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1

    .line 2577
    iget v0, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    .line 2578
    iput p1, p0, Lnet/aihelp/ui/widget/tabs/TabLayout$SlidingTabIndicator;->selectedIndicatorHeight:I

    .line 2579
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    :cond_0
    return-void
.end method
