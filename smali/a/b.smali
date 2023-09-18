.class public final La/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/FrameLayout;

.field public final b:Landroid/app/Activity;

.field public final c:Landroid/view/View;

.field public d:I

.field public e:I

.field public final f:Landroid/widget/FrameLayout$LayoutParams;

.field public g:F


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/b;->a:Landroid/widget/FrameLayout;

    iput-object p2, p0, La/b;->b:Landroid/app/Activity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "mContent.getChildAt(0)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, La/b;->c:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance v0, La/-$$Lambda$twA7-YvRFm5loCyZoN8_b6NoxGU;

    invoke-direct {v0, p0}, La/-$$Lambda$twA7-YvRFm5loCyZoN8_b6NoxGU;-><init>(La/b;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iput-object p1, p0, La/b;->f:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, La/b;->a()F

    move-result p1

    invoke-virtual {p0, p1}, La/b;->a(F)V

    return-void
.end method

.method public static final a(La/b;)V
    .locals 7

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, La/b;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 2
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, La/b;->c:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v1

    .line 3
    iget v1, p0, La/b;->e:I

    if-eq v0, v1, :cond_0

    iput v0, p0, La/b;->e:I

    iput v2, p0, La/b;->d:I

    goto :goto_0

    :cond_0
    iget v0, p0, La/b;->d:I

    if-eq v2, v0, :cond_1

    iget-object v0, p0, La/b;->f:Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, La/b;->g:F

    .line 4
    iget-object v3, p0, La/b;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v3, v1

    .line 5
    iget-object v4, p0, La/b;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 6
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v6, p0, La/b;->c:Landroid/view/View;

    invoke-virtual {v6, v5}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v5

    sub-int/2addr v4, v6

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 7
    iget-object v4, p0, La/b;->c:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/4 v4, 0x0

    .line 8
    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 9
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v0, p0, La/b;->a:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iput v2, p0, La/b;->d:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget-object v0, p0, La/b;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public final a(F)V
    .locals 0

    iput p1, p0, La/b;->g:F

    return-void
.end method
