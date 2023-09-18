.class public abstract Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;
.super Ljava/lang/Object;
.source "BaseTransientBottomBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;,
        Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;,
        Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;,
        Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$Duration;,
        Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$ContentViewCallback;,
        Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;,
        Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$AnimationMode;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final ANIMATION_DURATION:I = 0xfa

.field static final ANIMATION_FADE_DURATION:I = 0xb4

.field private static final ANIMATION_FADE_IN_DURATION:I = 0x96

.field private static final ANIMATION_FADE_OUT_DURATION:I = 0x4b

.field public static final ANIMATION_MODE_FADE:I = 0x1

.field public static final ANIMATION_MODE_SLIDE:I = 0x0

.field private static final ANIMATION_SCALE_FROM_VALUE:F = 0.8f

.field public static final LENGTH_INDEFINITE:I = -0x2

.field public static final LENGTH_LONG:I = 0x0

.field public static final LENGTH_SHORT:I = -0x1

.field static final MSG_DISMISS:I = 0x1

.field static final MSG_SHOW:I

.field private static final TAG:Ljava/lang/String;

.field private static final USE_OFFSET_API:Z

.field static final handler:Landroid/os/Handler;


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private anchorView:Landroid/view/View;

.field private final bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;>;"
        }
    .end annotation
.end field

.field private final contentViewCallback:Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;

.field private final context:Landroid/content/Context;

.field private duration:I

.field private extraBottomMarginAnchorView:I

.field private extraBottomMarginGestureInset:I

.field private extraBottomMarginWindowInset:I

.field private extraLeftMarginWindowInset:I

.field private extraRightMarginWindowInset:I

.field private gestureInsetBottomIgnored:Z

.field managerCallback:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

.field private originalMargins:Landroid/graphics/Rect;

.field private final targetParent:Landroid/view/ViewGroup;

.field protected final view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 244
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    .line 248
    const-class v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;

    .line 251
    new-instance v0, Landroid/os/Handler;

    .line 253
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$1;

    invoke-direct {v2}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$1;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    sput-object v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->handler:Landroid/os/Handler;

    return-void
.end method

.method protected constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;)V
    .locals 4

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    new-instance v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$2;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$2;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

    .line 666
    new-instance v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$5;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$5;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->managerCallback:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    .line 371
    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    .line 372
    iput-object p3, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->contentViewCallback:Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;

    .line 373
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    .line 375
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 379
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getSnackbarBaseLayoutResId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    .line 380
    instance-of v0, p2, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    if-eqz v0, :cond_0

    .line 381
    move-object v0, p2

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;

    .line 382
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getActionTextColorAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/SnackbarContentLayout;->updateActionTextColorAlphaIfNeeded(F)V

    .line 384
    :cond_0
    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->addView(Landroid/view/View;)V

    .line 386
    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 387
    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 388
    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 389
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-direct {v0, v1, v2, v3, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->originalMargins:Landroid/graphics/Rect;

    :cond_1
    const/4 p2, 0x1

    .line 397
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityLiveRegion(Landroid/view/View;I)V

    .line 398
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 401
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 402
    new-instance p2, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$3;

    invoke-direct {p2, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$3;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 419
    new-instance p2, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$4;

    invoke-direct {p2, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$4;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    const-string p1, "accessibility"

    .line 441
    invoke-virtual {p3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-void

    .line 368
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null callback"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 365
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null content"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 362
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transient bottom bar must have non-null parent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)Landroid/content/Context;
    .locals 0

    .line 92
    iget-object p0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 92
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getScreenHeight()I

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->startFadeInAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->startSlideInAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;
    .locals 0

    .line 92
    iget-object p0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->contentViewCallback:Lnet/aihelp/ui/widget/snackbar/ContentViewCallback;

    return-object p0
.end method

.method static synthetic access$1300()Z
    .locals 1

    .line 92
    sget-boolean v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    return v0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 92
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getViewAbsoluteBottom()I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)I
    .locals 0

    .line 92
    iget p0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I

    return p0
.end method

.method static synthetic access$302(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 92
    iput p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I

    return p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 92
    sget-object v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 92
    iput p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraBottomMarginWindowInset:I

    return p1
.end method

.method static synthetic access$602(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 92
    iput p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraLeftMarginWindowInset:I

    return p1
.end method

.method static synthetic access$702(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)I
    .locals 0

    .line 92
    iput p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraRightMarginWindowInset:I

    return p1
.end method

.method static synthetic access$800(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->updateMargins()V

    return-void
.end method

.method static synthetic access$900(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->showViewImpl()V

    return-void
.end method

.method private animateViewOut(I)V
    .locals 2

    .line 803
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getAnimationMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 804
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->startFadeOutAnimation(I)V

    goto :goto_0

    .line 806
    :cond_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->startSlideOutAnimation(I)V

    :goto_0
    return-void
.end method

.method private calculateBottomMarginForAnchorView()I
    .locals 4

    .line 767
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 772
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x1

    .line 773
    aget v2, v2, v0

    new-array v1, v1, [I

    .line 776
    iget-object v3, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 777
    aget v0, v1, v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    return v0
.end method

.method private varargs getAlphaAnimator([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 841
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 842
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 843
    new-instance v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$11;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$11;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private varargs getScaleAnimator([F)Landroid/animation/ValueAnimator;
    .locals 1

    .line 854
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 855
    new-instance v0, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;

    invoke-direct {v0}, Landroidx/interpolator/view/animation/LinearOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 856
    new-instance v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$12;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$12;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private getScreenHeight()I
    .locals 2

    .line 760
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 761
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 762
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 763
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getTranslationYBottom()I
    .locals 3

    .line 953
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v0

    .line 954
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 955
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 956
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private getViewAbsoluteBottom()I
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 754
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLocationOnScreen([I)V

    const/4 v1, 0x1

    .line 755
    aget v0, v0, v1

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private isSwipeDismissable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private shouldUpdateGestureInset()Z
    .locals 1

    .line 467
    iget v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraBottomMarginGestureInset:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->gestureInsetBottomIgnored:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->isSwipeDismissable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private showViewImpl()V
    .locals 2

    .line 742
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->animateViewIn()V

    goto :goto_0

    .line 747
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 748
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->onViewShown()V

    :goto_0
    return-void
.end method

.method private startFadeInAnimation()V
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 811
    fill-array-data v1, :array_0

    invoke-direct {p0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-array v2, v0, [F

    .line 812
    fill-array-data v2, :array_1

    invoke-direct {p0, v2}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getScaleAnimator([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 814
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 815
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v0, 0x96

    .line 816
    invoke-virtual {v3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 817
    new-instance v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$9;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$9;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 824
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startFadeOutAnimation(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 828
    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getAlphaAnimator([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x4b

    .line 829
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 830
    new-instance v1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$10;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$10;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 837
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startSlideInAnimation()V
    .locals 5

    .line 869
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v0

    .line 870
    sget-boolean v1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->USE_OFFSET_API:Z

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    goto :goto_0

    .line 873
    :cond_0
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setTranslationY(F)V

    .line 876
    :goto_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    .line 877
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 878
    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    .line 879
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 880
    new-instance v2, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$13;

    invoke-direct {v2, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$13;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 893
    new-instance v2, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$14;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 911
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startSlideOutAnimation(I)V
    .locals 4

    .line 915
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 916
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getTranslationYBottom()I

    move-result v2

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 917
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v1, 0xfa

    .line 918
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 919
    new-instance v1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$15;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$15;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 931
    new-instance p1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$16;

    invoke-direct {p1, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$16;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 949
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private updateMargins()V
    .locals 3

    .line 445
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 446
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->originalMargins:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    goto :goto_1

    .line 452
    :cond_0
    iget-object v2, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget v2, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraBottomMarginAnchorView:I

    goto :goto_0

    :cond_1
    iget v2, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraBottomMarginWindowInset:I

    .line 453
    :goto_0
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 454
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 455
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->originalMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraLeftMarginWindowInset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 456
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->originalMargins:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraRightMarginWindowInset:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 457
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->requestLayout()V

    .line 459
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->shouldUpdateGestureInset()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 462
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->bottomMarginGestureInsetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 447
    :cond_3
    :goto_1
    sget-object v0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->TAG:Ljava/lang/String;

    const-string v1, "Unable to update margins because layout params are not MarginLayoutParams"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public addCallback(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 624
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v0, :cond_1

    .line 625
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    .line 627
    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method animateViewIn()V
    .locals 2

    .line 784
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$8;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$8;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x3

    .line 605
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->dispatchDismiss(I)V

    return-void
.end method

.method protected dispatchDismiss(I)V
    .locals 2

    .line 609
    invoke-static {}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->getInstance()Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->managerCallback:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->dismiss(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;I)V

    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .line 552
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    return-object v0
.end method

.method public getAnimationMode()I
    .locals 1

    .line 530
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getAnimationMode()I

    move-result v0

    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 583
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 498
    iget v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->duration:I

    return v0
.end method

.method protected getSnackbarBaseLayoutResId()I
    .locals 1

    const-string v0, "aihelp_design_layout_snackbar"

    .line 476
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 591
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    return-object v0
.end method

.method final hideView(I)V
    .locals 1

    .line 962
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->shouldAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 963
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->animateViewOut(I)V

    goto :goto_0

    .line 966
    :cond_0
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->onViewHidden(I)V

    :goto_0
    return-void
.end method

.method public isGestureInsetBottomIgnored()Z
    .locals 1

    .line 520
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->gestureInsetBottomIgnored:Z

    return v0
.end method

.method public isShown()Z
    .locals 2

    .line 655
    invoke-static {}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->getInstance()Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->managerCallback:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrent(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method public isShownOrQueued()Z
    .locals 2

    .line 663
    invoke-static {}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->getInstance()Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->managerCallback:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrentOrNext(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result v0

    return v0
.end method

.method onViewHidden(I)V
    .locals 2

    .line 984
    invoke-static {}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->getInstance()Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->managerCallback:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->onDismissed(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V

    .line 985
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 988
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 990
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 994
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 995
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 996
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method onViewShown()V
    .locals 2

    .line 971
    invoke-static {}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->getInstance()Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->managerCallback:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->onShown(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V

    .line 972
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 975
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 977
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;

    invoke-virtual {v1, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;->onShown(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeCallback(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback;)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$BaseCallback<",
            "TB;>;)TB;"
        }
    .end annotation

    if-nez p1, :cond_0

    return-object p0

    .line 643
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->callbacks:Ljava/util/List;

    if-nez v0, :cond_1

    return-object p0

    .line 647
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setAnchorView(I)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 571
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object p0

    .line 573
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find anchor view with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAnchorView(Landroid/view/View;)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TB;"
        }
    .end annotation

    .line 560
    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->anchorView:Landroid/view/View;

    return-object p0
.end method

.method public setAnimationMode(I)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 541
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setAnimationMode(I)V

    return-object p0
.end method

.method public setDuration(I)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation

    .line 487
    iput p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->duration:I

    return-object p0
.end method

.method public setGestureInsetBottomIgnored(Z)Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .line 511
    iput-boolean p1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->gestureInsetBottomIgnored:Z

    return-object p0
.end method

.method shouldAnimate()Z
    .locals 2

    .line 1005
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    const/4 v1, 0x1

    .line 1006
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1007
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public show()V
    .locals 3

    .line 598
    invoke-static {}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->getInstance()Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    move-result-object v0

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->getDuration()I

    move-result v1

    iget-object v2, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->managerCallback:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->show(ILnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V

    return-void
.end method

.method final showView()V
    .locals 2

    .line 682
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$6;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnAttachStateChangeListener(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$OnAttachStateChangeListener;)V

    .line 713
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 714
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 716
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->calculateBottomMarginForAnchorView()I

    move-result v0

    iput v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->extraBottomMarginAnchorView:I

    .line 717
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->updateMargins()V

    .line 721
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setVisibility(I)V

    .line 722
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->targetParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 725
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->showViewImpl()V

    return-void

    .line 731
    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;->view:Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;

    new-instance v1, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$7;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$7;-><init>(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$SnackbarBaseLayout;->setOnLayoutChangeListener(Lnet/aihelp/ui/widget/snackbar/BaseTransientBottomBar$OnLayoutChangeListener;)V

    return-void
.end method
