.class public Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AIHelpCircularProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;,
        Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$ProgressDrawableSize;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x534

.field private static final ARROW_HEIGHT:I = 0x5

.field private static final ARROW_HEIGHT_LARGE:I = 0x6

.field private static final ARROW_WIDTH:I = 0xa

.field private static final ARROW_WIDTH_LARGE:I = 0xc

.field private static final CENTER_RADIUS:F = 7.5f

.field private static final CENTER_RADIUS_LARGE:F = 11.0f

.field private static final COLORS:[I

.field private static final COLOR_CHANGE_OFFSET:F = 0.75f

.field public static final DEFAULT:I = 0x1

.field private static final GROUP_FULL_ROTATION:F = 216.0f

.field public static final LARGE:I = 0x0

.field private static final LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

.field private static final MAX_PROGRESS_ARC:F = 0.8f

.field private static final MIN_PROGRESS_ARC:F = 0.01f

.field private static final RING_ROTATION:F = 0.20999998f

.field private static final SHRINK_OFFSET:F = 0.5f

.field private static final STROKE_WIDTH:F = 2.5f

.field private static final STROKE_WIDTH_LARGE:F = 3.0f


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field mFinishing:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

.field private mRotation:F

.field mRotationCount:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 34
    new-instance v0, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    sput-object v0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    aput v2, v0, v1

    .line 63
    sput-object v0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->COLORS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    .line 106
    new-instance p1, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-direct {p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;-><init>()V

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    .line 107
    sget-object v0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->COLORS:[I

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setColors([I)V

    const/high16 p1, 0x40200000    # 2.5f

    .line 109
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setStrokeWidth(F)V

    .line 110
    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setupAnimators()V

    return-void
.end method

.method private applyFinishTranslation(FLnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;)V
    .locals 4

    .line 484
    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->updateRingColor(FLnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;)V

    .line 485
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 487
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v1

    .line 488
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float v2, v2, p1

    add-float/2addr v1, v2

    .line 490
    invoke-virtual {p2, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 491
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingEndTrim()F

    move-result v1

    invoke-virtual {p2, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 492
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v1

    .line 493
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingRotation()F

    move-result v2

    sub-float/2addr v0, v2

    mul-float v0, v0, p1

    add-float/2addr v1, v0

    .line 494
    invoke-virtual {p2, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setRotation(F)V

    return-void
.end method

.method private evaluateColorChange(FII)I
    .locals 6

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 p2, p2, 0xff

    shr-int/lit8 v3, p3, 0x18

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, p3, 0x10

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v5, p3, 0x8

    and-int/lit16 v5, v5, 0xff

    and-int/lit16 p3, p3, 0xff

    sub-int/2addr v3, v0

    int-to-float v3, v3

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x18

    sub-int/2addr v4, v1

    int-to-float v3, v4

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    sub-int/2addr v5, v2

    int-to-float v1, v5

    mul-float v1, v1, p1

    float-to-int v1, v1

    add-int/2addr v2, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    sub-int/2addr p3, p2

    int-to-float p3, p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    add-int/2addr p2, p1

    or-int p1, v0, p2

    return p1
.end method

.method private getRotation()F
    .locals 1

    .line 394
    iget v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRotation:F

    return v0
.end method

.method private setRotation(F)V
    .locals 0

    .line 389
    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRotation:F

    return-void
.end method

.method private setSizeParameters(FFFF)V
    .locals 2

    .line 116
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    .line 117
    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 118
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float p2, p2, v1

    .line 120
    invoke-virtual {v0, p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setStrokeWidth(F)V

    mul-float p1, p1, v1

    .line 121
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setCenterRadius(F)V

    const/4 p1, 0x0

    .line 122
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setColorIndex(I)V

    mul-float p3, p3, v1

    mul-float p4, p4, v1

    .line 123
    invoke-virtual {v0, p3, p4}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    return-void
.end method

.method private setupAnimators()V
    .locals 3

    .line 534
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 535
    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 536
    new-instance v2, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$1;-><init>(Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v2, -0x1

    .line 545
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const/4 v2, 0x1

    .line 546
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 547
    sget-object v2, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->LINEAR_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 548
    new-instance v2, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$2;-><init>(Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 583
    iput-object v1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method applyTransformation(FLnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;Z)V
    .locals 7

    .line 502
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mFinishing:Z

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->applyFinishTranslation(FLnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;)V

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-nez v1, :cond_1

    if-eqz p3, :cond_3

    .line 507
    :cond_1
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingRotation()F

    move-result p3

    const v1, 0x3c23d70a    # 0.01f

    const v2, 0x3f4a3d71    # 0.79f

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, p1, v3

    if-gez v4, :cond_2

    div-float v0, p1, v3

    .line 512
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    .line 513
    sget-object v4, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 514
    invoke-interface {v4, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    add-float/2addr v0, v3

    goto :goto_0

    :cond_2
    sub-float v4, p1, v3

    div-float/2addr v4, v3

    .line 517
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingStartTrim()F

    move-result v3

    add-float/2addr v3, v2

    .line 518
    sget-object v5, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->MATERIAL_INTERPOLATOR:Landroid/view/animation/Interpolator;

    .line 519
    invoke-interface {v5, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    sub-float/2addr v0, v4

    mul-float v0, v0, v2

    add-float/2addr v0, v1

    sub-float v0, v3, v0

    move v6, v3

    move v3, v0

    move v0, v6

    :goto_0
    const v1, 0x3e570a3c    # 0.20999998f

    mul-float v1, v1, p1

    add-float/2addr p3, v1

    const/high16 v1, 0x43580000    # 216.0f

    .line 524
    iget v2, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRotationCount:F

    add-float/2addr p1, v2

    mul-float p1, p1, v1

    .line 526
    invoke-virtual {p2, v3}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 527
    invoke-virtual {p2, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 528
    invoke-virtual {p2, p3}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setRotation(F)V

    .line 529
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setRotation(F)V

    :cond_3
    :goto_1
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 364
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 365
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 366
    iget v1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRotation:F

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 367
    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v1, p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 368
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 379
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getArrowEnabled()Z
    .locals 1

    .line 236
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getShowArrow()Z

    move-result v0

    return v0
.end method

.method public getArrowHeight()F
    .locals 1

    .line 216
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getArrowHeight()F

    move-result v0

    return v0
.end method

.method public getArrowScale()F
    .locals 1

    .line 255
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getArrowScale()F

    move-result v0

    return v0
.end method

.method public getArrowWidth()F
    .locals 1

    .line 207
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getArrowWidth()F

    move-result v0

    return v0
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 325
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getBackgroundColor()I

    move-result v0

    return v0
.end method

.method public getCenterRadius()F
    .locals 1

    .line 167
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getCenterRadius()F

    move-result v0

    return v0
.end method

.method public getColorSchemeColors()[I
    .locals 1

    .line 347
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getColors()[I

    move-result-object v0

    return-object v0
.end method

.method public getEndTrim()F
    .locals 1

    .line 283
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getProgressRotation()F
    .locals 1

    .line 306
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getRotation()F

    move-result v0

    return v0
.end method

.method public getStartTrim()F
    .locals 1

    .line 274
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartTrim()F

    move-result v0

    return v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 1

    .line 198
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 148
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStrokeWidth()F

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 406
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public setAlpha(I)V
    .locals 1

    .line 373
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setAlpha(I)V

    .line 374
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowDimensions(FF)V
    .locals 1

    .line 226
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setArrowDimensions(FF)V

    .line 227
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowEnabled(Z)V
    .locals 1

    .line 245
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 246
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setArrowScale(F)V
    .locals 1

    .line 264
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setArrowScale(F)V

    .line 265
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .line 336
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setBackgroundColor(I)V

    .line 337
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setCenterRadius(F)V
    .locals 1

    .line 177
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setCenterRadius(F)V

    .line 178
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 384
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 385
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public varargs setColorSchemeColors([I)V
    .locals 1

    .line 357
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setColors([I)V

    .line 358
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 359
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setProgressRotation(F)V
    .locals 1

    .line 315
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setRotation(F)V

    .line 316
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStartEndTrim(FF)V
    .locals 1

    .line 295
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setStartTrim(F)V

    .line 296
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setEndTrim(F)V

    .line 297
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 188
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 1

    .line 157
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setStrokeWidth(F)V

    .line 158
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public setStyle(I)V
    .locals 3

    if-nez p1, :cond_0

    const/high16 p1, 0x41300000    # 11.0f

    const/high16 v0, 0x40400000    # 3.0f

    const/high16 v1, 0x41400000    # 12.0f

    const/high16 v2, 0x40c00000    # 6.0f

    .line 134
    invoke-direct {p0, p1, v0, v1, v2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setSizeParameters(FFFF)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40f00000    # 7.5f

    const/high16 v0, 0x40200000    # 2.5f

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 137
    invoke-direct {p0, p1, v0, v1, v2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setSizeParameters(FFFF)V

    .line 139
    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public start()V
    .locals 3

    .line 414
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 415
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->storeOriginals()V

    .line 417
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getEndTrim()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartTrim()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 418
    iput-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mFinishing:Z

    .line 419
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 420
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 422
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 423
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->resetOriginals()V

    .line 424
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 425
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 434
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 435
    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->setRotation(F)V

    .line 436
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setShowArrow(Z)V

    .line 437
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setColorIndex(I)V

    .line 438
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->mRing:Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->resetOriginals()V

    .line 439
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method updateRingColor(FLnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 469
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingColor()I

    move-result v0

    .line 470
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getNextColor()I

    move-result v1

    .line 468
    invoke-direct {p0, p1, v0, v1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable;->evaluateColorChange(FII)I

    move-result p1

    invoke-virtual {p2, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setColor(I)V

    goto :goto_0

    .line 472
    :cond_0
    invoke-virtual {p2}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->getStartingColor()I

    move-result p1

    invoke-virtual {p2, p1}, Lnet/aihelp/ui/widget/AIHelpCircularProgressDrawable$Ring;->setColor(I)V

    :goto_0
    return-void
.end method
