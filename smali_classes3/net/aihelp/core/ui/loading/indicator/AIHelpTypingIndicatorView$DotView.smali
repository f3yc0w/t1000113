.class public Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;
.super Landroid/view/View;
.source "AIHelpTypingIndicatorView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DotView"
.end annotation


# instance fields
.field private centerX:F

.field private centerY:F

.field private dotColor:I

.field private ovalRectF:Landroid/graphics/RectF;

.field private paint:Landroid/graphics/Paint;

.field private radius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 167
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 168
    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerX:F

    .line 169
    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerY:F

    .line 170
    iput p2, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->dotColor:I

    .line 171
    invoke-direct {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->setup()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 180
    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerX:F

    .line 181
    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerY:F

    return-void
.end method

.method private setup()V
    .locals 2

    .line 209
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->ovalRectF:Landroid/graphics/RectF;

    .line 210
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 211
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->paint:Landroid/graphics/Paint;

    iget v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->dotColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private updateOvalRectF()V
    .locals 3

    .line 202
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->ovalRectF:Landroid/graphics/RectF;

    iget v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerX:F

    iget v2, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->radius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 203
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->ovalRectF:Landroid/graphics/RectF;

    iget v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerX:F

    iget v2, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->radius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 204
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->ovalRectF:Landroid/graphics/RectF;

    iget v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerY:F

    iget v2, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->radius:F

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 205
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->ovalRectF:Landroid/graphics/RectF;

    iget v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerY:F

    iget v2, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->radius:F

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 216
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->dotColor:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iget v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->dotColor:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    iget v2, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->dotColor:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {p1, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->dotColor:I

    .line 217
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 218
    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->ovalRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 194
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 195
    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerX:F

    .line 196
    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerY:F

    .line 197
    iget p2, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->centerX:F

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->radius:F

    .line 198
    invoke-direct {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->updateOvalRectF()V

    return-void
.end method

.method public setDotColor(I)V
    .locals 0

    .line 185
    iput p1, p0, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->dotColor:I

    .line 186
    invoke-virtual {p0}, Lnet/aihelp/core/ui/loading/indicator/AIHelpTypingIndicatorView$DotView;->invalidate()V

    return-void
.end method
