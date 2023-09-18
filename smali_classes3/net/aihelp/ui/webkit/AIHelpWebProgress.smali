.class public Lnet/aihelp/ui/webkit/AIHelpWebProgress;
.super Landroid/widget/FrameLayout;
.source "AIHelpWebProgress.java"


# static fields
.field private static CURRENT_MAX_DECELERATE_SPEED_DURATION:I = 0x1c2

.field private static CURRENT_MAX_UNIFORM_SPEED_DURATION:I = 0x1f40

.field public static final DO_END_ALPHA_DURATION:I = 0x276

.field public static final DO_END_PROGRESS_DURATION:I = 0x1f4

.field public static final FINISH:I = 0x2

.field public static final MAX_DECELERATE_SPEED_DURATION:I = 0x1c2

.field public static final MAX_UNIFORM_SPEED_DURATION:I = 0x1f40

.field public static final STARTED:I = 0x1

.field public static final UN_START:I = 0x0

.field public static WEB_PROGRESS_COLOR:Ljava/lang/String; = "#2483D9"

.field public static WEB_PROGRESS_DEFAULT_HEIGHT:I = 0x3


# instance fields
.field private TAG:I

.field private isShow:Z

.field private mAnimator:Landroid/animation/Animator;

.field private mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mColor:I

.field private mCurrentProgress:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTargetHeight:I

.field private mTargetWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 101
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetWidth:I

    .line 82
    iput v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->TAG:I

    .line 86
    iput-boolean v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->isShow:Z

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    .line 246
    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpWebProgress$1;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress$1;-><init>(Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    iput-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 254
    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpWebProgress$2;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress$2;-><init>(Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    iput-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$002(Lnet/aihelp/ui/webkit/AIHelpWebProgress;F)F
    .locals 0

    .line 25
    iput p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    return p1
.end method

.method static synthetic access$100(Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->doEnd()V

    return-void
.end method

.method private dip2px(F)I
    .locals 1

    .line 299
    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private doEnd()V
    .locals 2

    .line 274
    iget v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->TAG:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 275
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setVisibility(I)V

    const/4 v0, 0x0

    .line 276
    iput v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 277
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->TAG:I

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 106
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mPaint:Landroid/graphics/Paint;

    .line 107
    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mColor:I

    .line 108
    iget-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mPaint:Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mColor:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 113
    iget-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 115
    invoke-static {p1}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetWidth:I

    .line 116
    sget p1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->WEB_PROGRESS_DEFAULT_HEIGHT:I

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->dip2px(F)I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetHeight:I

    return-void
.end method

.method private setFinish()V
    .locals 1

    const/4 v0, 0x0

    .line 191
    iput-boolean v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->isShow:Z

    const/4 v0, 0x2

    .line 192
    iput v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->TAG:I

    return-void
.end method

.method private startAnim(Z)V
    .locals 9

    const/high16 v0, 0x42c80000    # 100.0f

    const/high16 v1, 0x42be0000    # 95.0f

    if-eqz p1, :cond_0

    const/high16 v2, 0x42c80000    # 100.0f

    goto :goto_0

    :cond_0
    const/high16 v2, 0x42be0000    # 95.0f

    .line 199
    :goto_0
    iget-object v3, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/Animator;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    iget-object v3, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v3}, Landroid/animation/Animator;->cancel()V

    .line 202
    :cond_1
    iget v3, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_2

    const v3, 0x322bcc77    # 1.0E-8f

    :cond_2
    iput v3, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    const v4, 0x3d4ccccd    # 0.05f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-nez p1, :cond_3

    new-array p1, v8, [F

    aput v3, p1, v6

    aput v2, p1, v7

    .line 205
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 206
    iget v1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    div-float/2addr v1, v0

    sub-float/2addr v5, v1

    sub-float/2addr v5, v4

    .line 207
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 208
    sget v0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->CURRENT_MAX_UNIFORM_SPEED_DURATION:I

    int-to-float v0, v0

    mul-float v5, v5, v0

    float-to-long v0, v5

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 209
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 211
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimator:Landroid/animation/Animator;

    goto/16 :goto_1

    :cond_3
    const/4 p1, 0x0

    cmpg-float v2, v3, v1

    if-gez v2, :cond_4

    new-array p1, v8, [F

    aput v3, p1, v6

    aput v1, p1, v7

    .line 216
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 217
    iget v1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    div-float/2addr v1, v0

    sub-float/2addr v5, v1

    sub-float/2addr v5, v4

    .line 218
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 219
    sget v0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->CURRENT_MAX_DECELERATE_SPEED_DURATION:I

    int-to-float v0, v0

    mul-float v5, v5, v0

    float-to-long v0, v5

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 220
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 221
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_4
    new-array v0, v8, [F

    .line 224
    fill-array-data v0, :array_0

    const-string v1, "alpha"

    invoke-static {p0, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v1, 0x276

    .line 225
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-array v1, v8, [F

    .line 226
    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    .line 227
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 228
    iget-object v2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 230
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v3, v8, [Landroid/animation/Animator;

    aput-object v0, v3, v6

    aput-object v1, v3, v7

    .line 231
    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    if-eqz p1, :cond_5

    .line 234
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 235
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object v2, v0

    .line 238
    :cond_5
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimatorListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v2, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 239
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 240
    iput-object v2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimator:Landroid/animation/Animator;

    .line 243
    :goto_1
    iput v7, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->TAG:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x42be0000    # 95.0f
        0x42c80000    # 100.0f
    .end array-data
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 171
    iget v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v5, v0, v1

    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x64

    .line 335
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setWebProgress(I)V

    return-void
.end method

.method public offerLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 295
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetWidth:I

    iget v2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetHeight:I

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 263
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 267
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimator:Landroid/animation/Animator;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 150
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 153
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_0

    .line 156
    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    :cond_0
    if-ne v1, v2, :cond_1

    .line 159
    iget p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetHeight:I

    .line 161
    :cond_1
    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 176
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 177
    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetWidth:I

    .line 178
    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    .line 179
    iget p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetWidth:I

    if-lt p2, p1, :cond_0

    const/16 p1, 0x1c2

    .line 180
    sput p1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->CURRENT_MAX_DECELERATE_SPEED_DURATION:I

    const/16 p1, 0x1f40

    .line 181
    sput p1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->CURRENT_MAX_UNIFORM_SPEED_DURATION:I

    goto :goto_0

    :cond_0
    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x45fa0000    # 8000.0f

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 185
    sput p1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->CURRENT_MAX_UNIFORM_SPEED_DURATION:I

    const/high16 p1, 0x43e10000    # 450.0f

    mul-float p2, p2, p1

    float-to-int p1, p2

    .line 186
    sput p1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->CURRENT_MAX_DECELERATE_SPEED_DURATION:I

    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 283
    iput v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    .line 284
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public setColor(I)V
    .locals 1

    .line 123
    iput p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mColor:I

    .line 124
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setColor(II)V
    .locals 9

    .line 132
    new-instance v8, Landroid/graphics/LinearGradient;

    iget v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetWidth:I

    int-to-float v3, v0

    iget v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mTargetHeight:I

    int-to-float v4, v0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 133
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0

    .line 128
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setColor(I)V

    return-void
.end method

.method public setColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 143
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setColor(II)V

    return-void
.end method

.method public setProgress(F)V
    .locals 2

    .line 305
    iget v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->TAG:I

    const/16 v1, 0x8

    if-nez v0, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setVisibility(I)V

    return-void

    .line 310
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 311
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setVisibility(I)V

    :cond_1
    const/high16 v0, 0x42be0000    # 95.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    return-void

    .line 316
    :cond_2
    iget p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->TAG:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 p1, 0x1

    .line 317
    invoke-direct {p0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->startAnim(Z)V

    :cond_3
    return-void
.end method

.method public setProgress(I)V
    .locals 0

    int-to-float p1, p1

    .line 290
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setProgress(F)V

    return-void
.end method

.method public setWebProgress(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/16 v0, 0x5f

    if-ge p1, v0, :cond_1

    .line 343
    iget-boolean v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->isShow:Z

    if-nez v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->show()V

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setProgress(I)V

    goto :goto_0

    .line 349
    :cond_1
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setProgress(I)V

    .line 350
    invoke-direct {p0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setFinish()V

    :goto_0
    return-void
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    .line 325
    iput-boolean v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->isShow:Z

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setVisibility(I)V

    const/4 v1, 0x0

    .line 327
    iput v1, p0, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->mCurrentProgress:F

    .line 328
    invoke-direct {p0, v0}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->startAnim(Z)V

    return-void
.end method
