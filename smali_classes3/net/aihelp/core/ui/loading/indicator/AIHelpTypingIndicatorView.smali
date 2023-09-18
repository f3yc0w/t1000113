.class public Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;
.super Landroid/widget/LinearLayout;
.source "AIHelpTypingIndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;
    }
.end annotation


# static fields
.field private static final ALPHA_DARK:I = 0xb3

.field private static final ALPHA_LIGHT:I = 0x4c


# instance fields
.field private final ANIMATION_DURATION:J

.field private final LOOP_START_DELAY:J

.field dotAnimatorSet:Landroid/animation/AnimatorSet;

.field dotAnimators:[Landroid/animation/Animator;

.field private dotDiameter:F

.field private dots:[Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;

.field private interDotPadding:I

.field private lightDotColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 v0, 0x384

    .line 47
    iput-wide v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->ANIMATION_DURATION:J

    const-wide/16 v0, 0x1c2

    .line 48
    iput-wide v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->LOOP_START_DELAY:J

    const/4 p3, 0x3

    new-array p3, p3, [Landroid/animation/Animator;

    .line 49
    iput-object p3, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimators:[Landroid/animation/Animator;

    .line 50
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    invoke-direct {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->setup()V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->LOOP_START_DELAY:J

    return-wide v0
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const-string v0, "aihelp_indicator_view"

    .line 55
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getStyleable(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const-string v1, "aihelp_dot_color"

    .line 59
    invoke-static {v0, v1}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    .line 60
    invoke-static {v2}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v2

    .line 59
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    const/16 v2, 0x4c

    .line 61
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->lightDotColor:I

    const-string v1, "aihelp_dot_padding"

    .line 62
    invoke-static {v0, v1}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x41000000    # 8.0f

    .line 63
    invoke-static {p1, v2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    .line 62
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->interDotPadding:I

    const-string v1, "aihelp_dot_diameter"

    .line 64
    invoke-static {v0, v1}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    .line 65
    invoke-static {p1, v1}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    .line 64
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotDiameter:F

    .line 66
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private setup()V
    .locals 10

    .line 121
    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->removeAllViews()V

    const/4 v0, 0x3

    new-array v1, v0, [Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;

    .line 122
    iput-object v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dots:[Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    .line 125
    iget-object v3, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dots:[Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;

    new-instance v4, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;

    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->lightDotColor:I

    invoke-direct {v4, v5, v6}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;-><init>(Landroid/content/Context;I)V

    aput-object v4, v3, v2

    .line 126
    iget v3, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->interDotPadding:I

    int-to-float v4, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float v3, v3

    div-float/2addr v3, v5

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_2

    const/4 v8, 0x1

    if-eq v2, v8, :cond_1

    const/4 v8, 0x2

    if-eq v2, v8, :cond_0

    goto :goto_1

    .line 138
    :cond_0
    iget-wide v5, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->LOOP_START_DELAY:J

    const/4 v3, 0x0

    goto :goto_1

    .line 134
    :cond_1
    iget-wide v5, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->LOOP_START_DELAY:J

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 141
    :goto_1
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotDiameter:F

    float-to-int v9, v8

    float-to-int v8, v8

    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    float-to-int v4, v4

    float-to-int v3, v3

    .line 142
    invoke-virtual {v7, v4, v1, v3, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 143
    iget-object v3, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dots:[Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;

    aget-object v3, v3, v2

    invoke-virtual {p0, v3, v7}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v3, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimators:[Landroid/animation/Animator;

    iget-object v4, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dots:[Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;

    aget-object v4, v4, v2

    invoke-virtual {p0, v5, v6, v4}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->getAnimator(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private startTypingAnimation()V
    .locals 2

    .line 81
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimatorSet:Landroid/animation/AnimatorSet;

    .line 83
    iget-object v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimators:[Landroid/animation/Animator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 84
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$1;

    invoke-direct {v1, p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$1;-><init>(Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 99
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method private stopTypingAnimation()V
    .locals 5

    .line 105
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    .line 106
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->getChildAnimations()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 107
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 109
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 110
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    const/4 v0, 0x0

    .line 111
    iput-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dotAnimatorSet:Landroid/animation/AnimatorSet;

    .line 112
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->dots:[Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;

    .line 113
    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 114
    iget v4, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->lightDotColor:I

    invoke-virtual {v3, v4}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->setDotColor(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public getAnimator(JLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/ValueAnimator;
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 150
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 151
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 152
    iget-wide p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->ANIMATION_DURATION:J

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 153
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x4c
        0xb3
        0x4c
    .end array-data
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 71
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    .line 73
    invoke-direct {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->startTypingAnimation()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-direct {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;->stopTypingAnimation()V

    :goto_0
    return-void
.end method
