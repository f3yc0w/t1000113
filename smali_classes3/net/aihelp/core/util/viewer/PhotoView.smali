.class public Lnet/aihelp/core/util/viewer/PhotoView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "PhotoView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/viewer/PhotoView$OTHER;,
        Lnet/aihelp/core/util/viewer/PhotoView$END;,
        Lnet/aihelp/core/util/viewer/PhotoView$START;,
        Lnet/aihelp/core/util/viewer/PhotoView$ClipCalculate;,
        Lnet/aihelp/core/util/viewer/PhotoView$Transform;,
        Lnet/aihelp/core/util/viewer/PhotoView$InterpolatorProxy;
    }
.end annotation


# static fields
.field private static final ANIMA_DURING:I = 0x154

.field private static final MAX_SCALE:F = 2.5f


# instance fields
.field private MAX_FLING_OVER_SCROLL:I

.field private MAX_OVER_RESISTANCE:I

.field private canRotate:Z

.field private forceFinished:Z

.field private hasDrawable:Z

.field private hasMultiTouch:Z

.field private hasOverTranslate:Z

.field private imgLargeHeight:Z

.field private imgLargeWidth:Z

.field private isEnableGesture:Z

.field private isKnowSize:Z

.field private isZoomUp:Z

.field private mAdjustViewBounds:Z

.field private mAnimaDuring:I

.field private mAnimaMatrix:Landroid/graphics/Matrix;

.field private mBaseMatrix:Landroid/graphics/Matrix;

.field private mBaseRect:Landroid/graphics/RectF;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mClickRunnable:Ljava/lang/Runnable;

.field private mClip:Landroid/graphics/RectF;

.field private mCommonRect:Landroid/graphics/RectF;

.field private mCompleteCallBack:Ljava/lang/Runnable;

.field private mDegrees:F

.field private mDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mHalfBaseRectHeight:F

.field private mHalfBaseRectWidth:F

.field private mImgRect:Landroid/graphics/RectF;

.field private mLongClick:Landroid/view/View$OnLongClickListener;

.field private mMaxScale:F

.field private mRotateCenter:Landroid/graphics/PointF;

.field private mRotateFlag:F

.field private mScale:F

.field private mScaleCenter:Landroid/graphics/PointF;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mScaleType:Landroid/widget/ImageView$ScaleType;

.field private mScreenCenter:Landroid/graphics/PointF;

.field private mSynthesisMatrix:Landroid/graphics/Matrix;

.field private mTmpMatrix:Landroid/graphics/Matrix;

.field private mTmpRect:Landroid/graphics/RectF;

.field private mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

.field private mTranslateX:I

.field private mTranslateY:I

.field private mWidgetRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 33
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_OVER_RESISTANCE:I

    .line 35
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isEnableGesture:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    .line 70
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    .line 72
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    .line 73
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    .line 75
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    .line 76
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    .line 77
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    .line 79
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    .line 642
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$1;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$1;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 712
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$2;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$2;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    .line 721
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$3;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$3;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 88
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 33
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_OVER_RESISTANCE:I

    .line 35
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isEnableGesture:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    .line 70
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    .line 72
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    .line 73
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    .line 75
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    .line 76
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    .line 77
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    .line 79
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    .line 642
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$1;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$1;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 712
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$2;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$2;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    .line 721
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$3;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$3;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 93
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_FLING_OVER_SCROLL:I

    .line 33
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_OVER_RESISTANCE:I

    .line 35
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 36
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    .line 37
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    .line 38
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isEnableGesture:Z

    const/high16 p1, 0x3f800000    # 1.0f

    .line 62
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    .line 69
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    .line 70
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    .line 71
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    .line 72
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    .line 73
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    .line 75
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    .line 76
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    .line 77
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    .line 79
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    .line 642
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$1;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$1;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 712
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$2;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$2;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    .line 721
    new-instance p1, Lnet/aihelp/core/util/viewer/PhotoView$3;

    invoke-direct {p1, p0}, Lnet/aihelp/core/util/viewer/PhotoView$3;-><init>(Lnet/aihelp/core/util/viewer/PhotoView;)V

    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 98
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->init()V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/util/viewer/PhotoView;)F
    .locals 0

    .line 24
    iget p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    return p0
.end method

.method static synthetic access$002(Lnet/aihelp/core/util/viewer/PhotoView;F)F
    .locals 0

    .line 24
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    return p1
.end method

.method static synthetic access$032(Lnet/aihelp/core/util/viewer/PhotoView;F)F
    .locals 1

    .line 24
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    mul-float v0, v0, p1

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    return v0
.end method

.method static synthetic access$100(Lnet/aihelp/core/util/viewer/PhotoView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isZoomUp:Z

    return p0
.end method

.method static synthetic access$1000(Lnet/aihelp/core/util/viewer/PhotoView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->canRotate:Z

    return p0
.end method

.method static synthetic access$1002(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->canRotate:Z

    return p1
.end method

.method static synthetic access$102(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isZoomUp:Z

    return p1
.end method

.method static synthetic access$1100(Lnet/aihelp/core/util/viewer/PhotoView;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1200(Lnet/aihelp/core/util/viewer/PhotoView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->imgLargeWidth:Z

    return p0
.end method

.method static synthetic access$1300(Lnet/aihelp/core/util/viewer/PhotoView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->imgLargeHeight:Z

    return p0
.end method

.method static synthetic access$1400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$1600(Lnet/aihelp/core/util/viewer/PhotoView;)F
    .locals 0

    .line 24
    iget p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mDegrees:F

    return p0
.end method

.method static synthetic access$1602(Lnet/aihelp/core/util/viewer/PhotoView;F)F
    .locals 0

    .line 24
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mDegrees:F

    return p1
.end method

.method static synthetic access$1700(Lnet/aihelp/core/util/viewer/PhotoView;Landroid/graphics/RectF;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/viewer/PhotoView;->doTranslateReset(Landroid/graphics/RectF;)V

    return-void
.end method

.method static synthetic access$1800(Lnet/aihelp/core/util/viewer/PhotoView;)I
    .locals 0

    .line 24
    iget p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    return p0
.end method

.method static synthetic access$1802(Lnet/aihelp/core/util/viewer/PhotoView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    return p1
.end method

.method static synthetic access$1812(Lnet/aihelp/core/util/viewer/PhotoView;I)I
    .locals 1

    .line 24
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    return v0
.end method

.method static synthetic access$1820(Lnet/aihelp/core/util/viewer/PhotoView;I)I
    .locals 1

    .line 24
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    return v0
.end method

.method static synthetic access$1824(Lnet/aihelp/core/util/viewer/PhotoView;F)I
    .locals 1

    .line 24
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    return p1
.end method

.method static synthetic access$1900(Lnet/aihelp/core/util/viewer/PhotoView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->checkRect()V

    return-void
.end method

.method static synthetic access$200(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2000(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$2100(Lnet/aihelp/core/util/viewer/PhotoView;FF)F
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/viewer/PhotoView;->resistanceScrollByX(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lnet/aihelp/core/util/viewer/PhotoView;)I
    .locals 0

    .line 24
    iget p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    return p0
.end method

.method static synthetic access$2202(Lnet/aihelp/core/util/viewer/PhotoView;I)I
    .locals 0

    .line 24
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    return p1
.end method

.method static synthetic access$2212(Lnet/aihelp/core/util/viewer/PhotoView;I)I
    .locals 1

    .line 24
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    add-int/2addr v0, p1

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    return v0
.end method

.method static synthetic access$2220(Lnet/aihelp/core/util/viewer/PhotoView;I)I
    .locals 1

    .line 24
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    sub-int/2addr v0, p1

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    return v0
.end method

.method static synthetic access$2224(Lnet/aihelp/core/util/viewer/PhotoView;F)I
    .locals 1

    .line 24
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    int-to-float v0, v0

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    return p1
.end method

.method static synthetic access$2300(Lnet/aihelp/core/util/viewer/PhotoView;FF)F
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/util/viewer/PhotoView;->resistanceScrollByY(FF)F

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/PointF;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    return-object p0
.end method

.method static synthetic access$2600(Lnet/aihelp/core/util/viewer/PhotoView;)F
    .locals 0

    .line 24
    iget p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mMaxScale:F

    return p0
.end method

.method static synthetic access$2700(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/Matrix;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method static synthetic access$2800(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$2900(Lnet/aihelp/core/util/viewer/PhotoView;)F
    .locals 0

    .line 24
    iget p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mHalfBaseRectWidth:F

    return p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/util/viewer/PhotoView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    return-void
.end method

.method static synthetic access$3000(Lnet/aihelp/core/util/viewer/PhotoView;)F
    .locals 0

    .line 24
    iget p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mHalfBaseRectHeight:F

    return p0
.end method

.method static synthetic access$3100(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$3300(Lnet/aihelp/core/util/viewer/PhotoView;)I
    .locals 0

    .line 24
    iget p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaDuring:I

    return p0
.end method

.method static synthetic access$3400(Lnet/aihelp/core/util/viewer/PhotoView;)I
    .locals 0

    .line 24
    iget p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_FLING_OVER_SCROLL:I

    return p0
.end method

.method static synthetic access$3500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/graphics/RectF;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClip:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$3502(Lnet/aihelp/core/util/viewer/PhotoView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 0

    .line 24
    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClip:Landroid/graphics/RectF;

    return-object p1
.end method

.method static synthetic access$3600(Lnet/aihelp/core/util/viewer/PhotoView;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mCompleteCallBack:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3602(Lnet/aihelp/core/util/viewer/PhotoView;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 24
    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mCompleteCallBack:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$400(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClickListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/core/util/viewer/PhotoView;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lnet/aihelp/core/util/viewer/PhotoView;)Lnet/aihelp/core/util/viewer/PhotoView$Transform;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    return-object p0
.end method

.method static synthetic access$700(Lnet/aihelp/core/util/viewer/PhotoView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->forceFinished:Z

    return p0
.end method

.method static synthetic access$702(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->forceFinished:Z

    return p1
.end method

.method static synthetic access$800(Lnet/aihelp/core/util/viewer/PhotoView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasOverTranslate:Z

    return p0
.end method

.method static synthetic access$802(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasOverTranslate:Z

    return p1
.end method

.method static synthetic access$900(Lnet/aihelp/core/util/viewer/PhotoView;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasMultiTouch:Z

    return p0
.end method

.method static synthetic access$902(Lnet/aihelp/core/util/viewer/PhotoView;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasMultiTouch:Z

    return p1
.end method

.method private checkRect()V
    .locals 3

    .line 707
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasOverTranslate:Z

    if-nez v0, :cond_0

    .line 708
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mCommonRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1, v2}, Lnet/aihelp/core/util/viewer/PhotoView;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_0
    return-void
.end method

.method private doTranslateReset(Landroid/graphics/RectF;)V
    .locals 5

    .line 606
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 607
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/viewer/PhotoView;->isImageCenterWidth(Landroid/graphics/RectF;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 608
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    sub-float/2addr v0, v1

    div-float/2addr v0, v2

    iget v1, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_1

    .line 610
    :cond_0
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 611
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    :goto_0
    sub-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    .line 612
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 613
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 617
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_3

    .line 618
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/viewer/PhotoView;->isImageCenterHeight(Landroid/graphics/RectF;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 619
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v3

    sub-float/2addr v1, v3

    div-float/2addr v1, v2

    iget p1, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p1

    float-to-int p1, v1

    neg-int v3, p1

    goto :goto_3

    .line 621
    :cond_3
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 622
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    :goto_2
    sub-float/2addr p1, v1

    float-to-int v3, p1

    goto :goto_3

    .line 623
    :cond_4
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 624
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    goto :goto_2

    :cond_5
    :goto_3
    if-nez v0, :cond_6

    if-eqz v3, :cond_8

    .line 629
    :cond_6
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    iget-object p1, p1, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    iget-object p1, p1, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->mFlingScroller:Landroid/widget/OverScroller;

    invoke-virtual {p1}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 630
    :cond_7
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    iget v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    iget v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    neg-int v0, v0

    neg-int v3, v3

    invoke-virtual {p1, v1, v2, v0, v3}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->withTranslate(IIII)V

    :cond_8
    return-void
.end method

.method private executeTranslate()V
    .locals 4

    .line 424
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 425
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 426
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/viewer/PhotoView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 428
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 430
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->imgLargeWidth:Z

    .line 431
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->imgLargeHeight:Z

    return-void
.end method

.method private static getDrawableHeight(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 230
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gtz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    .line 232
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getDrawableWidth(Landroid/graphics/drawable/Drawable;)I
    .locals 1

    .line 223
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_0

    .line 224
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    :cond_0
    if-gtz v0, :cond_1

    .line 225
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :cond_1
    return v0
.end method

.method private static getLocation(Landroid/view/View;[I)V
    .locals 4

    const/4 v0, 0x0

    .line 1157
    aget v1, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v1, 0x1

    .line 1158
    aget v2, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 1160
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 1161
    :goto_0
    instance-of v2, p0, Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1162
    check-cast p0, Landroid/view/View;

    .line 1164
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x1020002

    if-ne v2, v3, :cond_0

    return-void

    .line 1166
    :cond_0
    aget v2, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, p1, v0

    .line 1167
    aget v2, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v3

    sub-int/2addr v2, v3

    aput v2, p1, v1

    .line 1169
    aget v2, p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v0

    .line 1170
    aget v2, p1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, p1, v1

    .line 1172
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_0

    .line 1175
    :cond_1
    aget p0, p1, v0

    int-to-float p0, p0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p0, v2

    float-to-int p0, p0

    aput p0, p1, v0

    .line 1176
    aget p0, p1, v1

    int-to-float p0, p0

    add-float/2addr p0, v2

    float-to-int p0, p0

    aput p0, p1, v1

    return-void
.end method

.method private hasSize(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 214
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    if-gtz v0, :cond_2

    .line 215
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    if-gtz v0, :cond_2

    .line 216
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private init()V
    .locals 3

    .line 102
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 103
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-nez v0, :cond_0

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 104
    :cond_0
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mDetector:Landroid/view/GestureDetector;

    .line 105
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 106
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41f00000    # 30.0f

    mul-float v1, v1, v0

    float-to-int v1, v1

    .line 107
    iput v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_FLING_OVER_SCROLL:I

    const/high16 v1, 0x430c0000    # 140.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 108
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_OVER_RESISTANCE:I

    const/16 v0, 0x154

    .line 110
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaDuring:I

    const/high16 v0, 0x40200000    # 2.5f

    .line 111
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mMaxScale:F

    return-void
.end method

.method private initBase()V
    .locals 10

    .line 237
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasDrawable:Z

    if-nez v0, :cond_0

    return-void

    .line 238
    :cond_0
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isKnowSize:Z

    if-nez v0, :cond_1

    return-void

    .line 240
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 241
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isZoomUp:Z

    .line 245
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 247
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getWidth()I

    move-result v1

    .line 248
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getHeight()I

    move-result v2

    .line 249
    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v3

    .line 250
    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 252
    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    int-to-float v5, v3

    int-to-float v6, v0

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v7, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    sub-int v4, v1, v3

    .line 255
    div-int/lit8 v4, v4, 0x2

    sub-int v8, v2, v0

    .line 256
    div-int/lit8 v8, v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    if-le v3, v1, :cond_2

    int-to-float v1, v1

    div-float/2addr v1, v5

    goto :goto_0

    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    if-le v0, v2, :cond_3

    int-to-float v2, v2

    div-float v9, v2, v6

    .line 270
    :cond_3
    invoke-static {v1, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 272
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 273
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    int-to-float v4, v4

    int-to-float v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 274
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 275
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 277
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mHalfBaseRectWidth:F

    .line 278
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v2

    iput v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mHalfBaseRectHeight:F

    .line 280
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 281
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v1, v2}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 283
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    .line 285
    sget-object v1, Lnet/aihelp/core/util/viewer/PhotoView$4;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 305
    :pswitch_0
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initFitXY()V

    goto :goto_1

    .line 302
    :pswitch_1
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initFitEnd()V

    goto :goto_1

    .line 299
    :pswitch_2
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initFitStart()V

    goto :goto_1

    .line 296
    :pswitch_3
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initFitCenter()V

    goto :goto_1

    .line 293
    :pswitch_4
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initCenterInside()V

    goto :goto_1

    .line 290
    :pswitch_5
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initCenterCrop()V

    goto :goto_1

    .line 287
    :pswitch_6
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initCenter()V

    :goto_1
    mul-int/lit8 v3, v3, 0x3

    if-le v0, v3, :cond_4

    .line 310
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 311
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    int-to-float v0, v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    .line 312
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCenter()V
    .locals 4

    .line 317
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasDrawable:Z

    if-nez v0, :cond_0

    return-void

    .line 318
    :cond_0
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isKnowSize:Z

    if-nez v0, :cond_1

    return-void

    .line 320
    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 323
    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    int-to-float v1, v1

    .line 325
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpl-float v2, v1, v2

    if-gtz v2, :cond_2

    int-to-float v2, v0

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    .line 326
    :cond_2
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    int-to-float v0, v0

    .line 327
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v0, v2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    .line 329
    :goto_0
    iput v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    .line 331
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 333
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    .line 335
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->resetBase()V

    :cond_4
    return-void
.end method

.method private initCenterCrop()V
    .locals 4

    .line 340
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 341
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 342
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 344
    :goto_0
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    .line 346
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 348
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    .line 349
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->resetBase()V

    :cond_2
    return-void
.end method

.method private initCenterInside()V
    .locals 4

    .line 354
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 355
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 356
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 358
    :goto_0
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    .line 360
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 362
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    .line 363
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->resetBase()V

    :cond_2
    return-void
.end method

.method private initFitCenter()V
    .locals 4

    .line 368
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 369
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    .line 371
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 373
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    .line 374
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->resetBase()V

    :cond_0
    return-void
.end method

.method private initFitEnd()V
    .locals 3

    .line 389
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initFitCenter()V

    .line 391
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    .line 392
    iget v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    .line 393
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 394
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    .line 395
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->resetBase()V

    return-void
.end method

.method private initFitStart()V
    .locals 3

    .line 379
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initFitCenter()V

    .line 381
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    neg-float v0, v0

    .line 382
    iget v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    .line 383
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 384
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    .line 385
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->resetBase()V

    return-void
.end method

.method private initFitXY()V
    .locals 5

    .line 399
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    .line 400
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    .line 402
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 404
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    .line 405
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->resetBase()V

    return-void
.end method

.method private isImageCenterHeight(Landroid/graphics/RectF;)Z
    .locals 2

    .line 635
    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isImageCenterWidth(Landroid/graphics/RectF;)Z
    .locals 2

    .line 639
    iget v0, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    sub-float/2addr v1, p1

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr v1, p1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 6

    .line 687
    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/graphics/RectF;->left:F

    goto :goto_0

    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->left:F

    .line 688
    :goto_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget v2, p2, Landroid/graphics/RectF;->right:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p1, Landroid/graphics/RectF;->right:F

    goto :goto_1

    :cond_1
    iget v1, p2, Landroid/graphics/RectF;->right:F

    :goto_1
    const/4 v2, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_2

    .line 691
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    .line 695
    :cond_2
    iget v3, p1, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->top:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget v3, p1, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_3
    iget v3, p2, Landroid/graphics/RectF;->top:F

    .line 696
    :goto_2
    iget v4, p1, Landroid/graphics/RectF;->bottom:F

    iget v5, p2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_4

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_3

    :cond_4
    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    :goto_3
    cmpl-float p2, v3, p1

    if-lez p2, :cond_5

    .line 699
    invoke-virtual {p3, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void

    .line 703
    :cond_5
    invoke-virtual {p3, v0, v3, v1, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private onUp()V
    .locals 6

    .line 556
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    iget-boolean v0, v0, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 558
    :cond_0
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->canRotate:Z

    const/high16 v1, 0x42b40000    # 90.0f

    if-nez v0, :cond_1

    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mDegrees:F

    rem-float/2addr v0, v1

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 559
    :cond_1
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mDegrees:F

    div-float v2, v0, v1

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x5a

    int-to-float v2, v2

    rem-float v3, v0, v1

    const/high16 v4, 0x42340000    # 45.0f

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    add-float/2addr v2, v1

    goto :goto_0

    :cond_2
    const/high16 v4, -0x3dcc0000    # -45.0f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    sub-float/2addr v2, v1

    .line 567
    :cond_3
    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    float-to-int v0, v0

    float-to-int v3, v2

    invoke-virtual {v1, v0, v3}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->withRotate(II)V

    .line 569
    iput v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mDegrees:F

    .line 572
    :cond_4
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_5

    .line 576
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    invoke-virtual {v2, v0, v1}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->withScale(FF)V

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    .line 577
    :cond_5
    iget v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mMaxScale:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_6

    .line 579
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    invoke-virtual {v2, v0, v1}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->withScale(FF)V

    move v0, v1

    .line 582
    :cond_6
    :goto_1
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 583
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v4, v3

    add-float/2addr v2, v4

    .line 585
    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleCenter:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 586
    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mRotateCenter:Landroid/graphics/PointF;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    const/4 v3, 0x0

    .line 588
    iput v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    .line 589
    iput v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    .line 591
    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3}, Landroid/graphics/Matrix;->reset()V

    .line 592
    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    neg-float v4, v4

    iget-object v5, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 593
    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mHalfBaseRectWidth:F

    sub-float v4, v1, v4

    iget v5, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mHalfBaseRectHeight:F

    sub-float v5, v2, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 594
    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v0, v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 595
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mDegrees:F

    invoke-virtual {v0, v3, v1, v2}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 596
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 598
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTmpRect:Landroid/graphics/RectF;

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/viewer/PhotoView;->doTranslateReset(Landroid/graphics/RectF;)V

    .line 599
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    invoke-virtual {v0}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->start()V

    return-void
.end method

.method private resetBase()V
    .locals 4

    .line 409
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 410
    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 411
    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 412
    iget-object v2, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 413
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mSynthesisMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 414
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 415
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mHalfBaseRectWidth:F

    .line 416
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mBaseRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float/2addr v0, v1

    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mHalfBaseRectHeight:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 417
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    const/4 v0, 0x0

    .line 418
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    .line 419
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    .line 420
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    return-void
.end method

.method private resistanceScrollByX(FF)F
    .locals 1

    .line 671
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p2, p2, p1

    return p2
.end method

.method private resistanceScrollByY(FF)F
    .locals 1

    .line 676
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->MAX_OVER_RESISTANCE:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    mul-float p2, p2, p1

    return p2
.end method


# virtual methods
.method public canScrollHorizontally(I)Z
    .locals 1

    .line 909
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasMultiTouch:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    int-to-float p1, p1

    .line 910
    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/viewer/PhotoView;->canScrollHorizontallySelf(F)Z

    move-result p1

    return p1
.end method

.method public canScrollHorizontallySelf(F)Z
    .locals 4

    .line 890
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 891
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    return v2

    :cond_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 893
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->right:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public canScrollVertically(I)Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasMultiTouch:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    int-to-float p1, p1

    .line 916
    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/viewer/PhotoView;->canScrollVerticallySelf(F)Z

    move-result p1

    return p1
.end method

.method public canScrollVerticallySelf(F)Z
    .locals 4

    .line 899
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 900
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    iget-object v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_1

    return v2

    :cond_1
    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 902
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 540
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isEnableGesture:Z

    if-eqz v0, :cond_3

    .line 541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    iput-boolean v3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasMultiTouch:Z

    .line 544
    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 545
    iget-object v1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    if-eq v0, v3, :cond_1

    const/4 p1, 0x3

    if-ne v0, p1, :cond_2

    .line 547
    :cond_1
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->onUp()V

    :cond_2
    return v3

    .line 551
    :cond_3
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 531
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClip:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    const/4 v0, 0x0

    .line 533
    iput-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClip:Landroid/graphics/RectF;

    .line 535
    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public enableGesture(Z)V
    .locals 0

    .line 180
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isEnableGesture:Z

    return-void
.end method

.method public getAnimaDuring()I
    .locals 1

    .line 152
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaDuring:I

    return v0
.end method

.method public getDefaultAnimaDuring()I
    .locals 1

    const/16 v0, 0x154

    return v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 173
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mMaxScale:F

    return v0
.end method

.method public isPhotoNotChanged()Z
    .locals 3

    .line 1180
    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getTranslationX()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getTranslationY()F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollTop()Z
    .locals 2

    .line 1184
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mImgRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 9

    .line 436
    iget-boolean v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasDrawable:Z

    if-nez v0, :cond_0

    .line 437
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->onMeasure(II)V

    return-void

    .line 441
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 442
    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawableWidth(Landroid/graphics/drawable/Drawable;)I

    move-result v1

    .line 443
    invoke-static {v0}, Lnet/aihelp/core/util/viewer/PhotoView;->getDrawableHeight(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 445
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 446
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 448
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 449
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 454
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-nez v4, :cond_1

    .line 457
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    const/4 v5, -0x2

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 460
    :cond_1
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v6, -0x80000000

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, -0x1

    if-ne v5, v8, :cond_2

    if-nez p1, :cond_5

    goto :goto_0

    :cond_2
    if-ne p1, v7, :cond_3

    goto :goto_1

    :cond_3
    if-ne p1, v6, :cond_4

    if-le v1, v2, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v2, v1

    .line 476
    :cond_5
    :goto_1
    iget p1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v8, :cond_6

    if-nez p2, :cond_9

    goto :goto_2

    :cond_6
    if-ne p2, v7, :cond_7

    goto :goto_3

    :cond_7
    if-ne p2, v6, :cond_8

    if-le v0, v3, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    move v3, v0

    .line 492
    :cond_9
    :goto_3
    iget-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAdjustViewBounds:Z

    if-eqz p1, :cond_d

    int-to-float p1, v1

    int-to-float p2, v0

    div-float v0, p1, p2

    int-to-float v1, v2

    int-to-float v5, v3

    div-float v6, v1, v5

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_d

    div-float/2addr v5, p2

    div-float/2addr v1, p1

    cmpg-float v0, v5, v1

    if-gez v0, :cond_a

    goto :goto_4

    :cond_a
    move v5, v1

    .line 498
    :goto_4
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v0, v8, :cond_b

    goto :goto_5

    :cond_b
    mul-float p1, p1, v5

    float-to-int v2, p1

    .line 499
    :goto_5
    iget p1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, v8, :cond_c

    goto :goto_6

    :cond_c
    mul-float p2, p2, v5

    float-to-int v3, p2

    .line 502
    :cond_d
    :goto_6
    invoke-virtual {p0, v2, v3}, Lnet/aihelp/core/util/viewer/PhotoView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 513
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/appcompat/widget/AppCompatImageView;->onSizeChanged(IIII)V

    .line 515
    iget-boolean p3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isKnowSize:Z

    if-eqz p3, :cond_0

    .line 516
    iget-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClickRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/core/util/viewer/PhotoView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 520
    :cond_0
    iget-object p3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mWidgetRect:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-virtual {p3, p4, p4, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 521
    iget-object p3, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScreenCenter:Landroid/graphics/PointF;

    const/high16 p4, 0x3f000000    # 0.5f

    mul-float p1, p1, p4

    mul-float p2, p2, p4

    invoke-virtual {p3, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 523
    iget-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isKnowSize:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 524
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->isKnowSize:Z

    .line 525
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initBase()V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1188
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1189
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->executeTranslate()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1190
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScale:F

    const/4 v0, 0x0

    .line 1191
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateX:I

    .line 1192
    iput v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslateY:I

    return-void
.end method

.method public setAdjustViewBounds(Z)V
    .locals 0

    .line 507
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setAdjustViewBounds(Z)V

    .line 508
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAdjustViewBounds:Z

    return-void
.end method

.method public setAnimaDuring(I)V
    .locals 0

    .line 159
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mAnimaDuring:I

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 196
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 199
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasDrawable:Z

    return-void

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/viewer/PhotoView;->hasSize(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 206
    :cond_1
    iget-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasDrawable:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->hasDrawable:Z

    .line 210
    :cond_2
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initBase()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 1

    .line 187
    :try_start_0
    invoke-virtual {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 191
    :goto_0
    invoke-virtual {p0, p1}, Lnet/aihelp/core/util/viewer/PhotoView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mTranslate:Lnet/aihelp/core/util/viewer/PhotoView$Transform;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/viewer/PhotoView$Transform;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setMaxScale(F)V
    .locals 0

    .line 166
    iput p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mMaxScale:F

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 123
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mLongClick:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 130
    iput-object p1, p0, Lnet/aihelp/core/util/viewer/PhotoView;->mScaleType:Landroid/widget/ImageView$ScaleType;

    if-eq v0, p1, :cond_0

    .line 133
    invoke-direct {p0}, Lnet/aihelp/core/util/viewer/PhotoView;->initBase()V

    :cond_0
    return-void
.end method
