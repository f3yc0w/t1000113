.class public final La/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/e0;
.implements La/c0;
.implements La/y;


# static fields
.field public static p:Landroid/widget/FrameLayout;


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/lang/String;

.field public final c:La/i0;

.field public final d:La/b0;

.field public e:Landroid/app/ProgressDialog;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Landroid/view/animation/AnimationSet;

.field public j:Z

.field public k:Z

.field public l:La/b;

.field public final m:La/o;

.field public final n:La/x;

.field public final o:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;La/i0;La/e0;)V
    .locals 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSender"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/v;->a:Landroid/app/Activity;

    iput-object p2, p0, La/v;->b:Ljava/lang/String;

    iput-object p3, p0, La/v;->c:La/i0;

    new-instance v3, La/b0;

    invoke-direct {v3, p1, p0}, La/b0;-><init>(Landroid/content/Context;La/c0;)V

    iput-object v3, p0, La/v;->d:La/b0;

    const/4 v0, 0x1

    iput-boolean v0, p0, La/v;->j:Z

    sget-object v1, La/v;->p:Landroid/widget/FrameLayout;

    const/4 v2, 0x4

    const/4 v8, -0x1

    if-nez v1, :cond_0

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sput-object v1, La/v;->p:Landroid/widget/FrameLayout;

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setX(F)V

    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setY(F)V

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    new-instance v9, La/o;

    sget-object v4, La/v;->p:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    if-nez p4, :cond_1

    move-object v7, p0

    goto :goto_0

    :cond_1
    move-object v7, p4

    :goto_0
    move-object v1, v9

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, La/o;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/String;La/i0;La/e0;)V

    new-instance p2, La/-$$Lambda$p1A51rU__1dIlv7lzTc6aUGIghs;

    invoke-direct {p2, p0}, La/-$$Lambda$p1A51rU__1dIlv7lzTc6aUGIghs;-><init>(La/v;)V

    invoke-virtual {v9, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v9, p0, La/v;->m:La/o;

    new-instance p2, La/x;

    invoke-direct {p2, p1}, La/x;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, p0}, La/x;->setDelegate(La/y;)V

    new-instance p3, Landroid/widget/Toolbar$LayoutParams;

    const/4 p4, -0x2

    invoke-direct {p3, v8, p4}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    iput-object p2, p0, La/v;->n:La/x;

    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    iput-object p2, p0, La/v;->o:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static final a(La/v;ZLjava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, La/v;->a(ZLjava/lang/String;)V

    return-void
.end method

.method public static final a(La/v;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p0, p0, La/v;->j:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v0, p0, La/v;->d:La/b0;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    .line 12
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 0
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p1, 0x33

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, La/v;->d:La/b0;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, La/v;->l:La/b;

    if-eqz p1, :cond_0

    int-to-float p2, p2

    .line 11
    iput p2, p1, La/b;->g:F

    :cond_0
    return-void
.end method

.method public final a(IIII)V
    .locals 4

    sget-object v0, La/i;->c:La/i$a;

    .line 7
    sget-object v0, La/i;->d:La/i;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting web container frame to {("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/i;->d(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, La/v;->d:La/b0;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object p1, p0, La/v;->d:La/b0;

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setY(F)V

    .line 10
    invoke-virtual {p0, p3, p4}, La/v;->a(II)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 3

    sget-object v0, La/i;->c:La/i$a;

    .line 3
    sget-object v0, La/i;->d:La/i;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/i;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, La/v;->j()V

    const/4 v0, 0x1

    iput-boolean v0, p0, La/v;->h:Z

    invoke-virtual {p0}, La/v;->i()V

    iget-object v0, p0, La/v;->c:La/i0;

    iget-object v1, p0, La/v;->m:La/o;

    invoke-virtual {v1}, La/o;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, La/j0;->b:La/j0;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {v0, v1, v2, p1}, La/i0;->a(Ljava/lang/String;La/j0;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, La/i;->c:La/i$a;

    .line 1
    sget-object v0, La/i;->d:La/i;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPageFinished. URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, La/i;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, La/v;->j()V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v;->h:Z

    invoke-virtual {p0}, La/v;->h()V

    new-instance v0, La/f0;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    invoke-direct {v0, v1, p2, p1}, La/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, La/v;->c:La/i0;

    iget-object p2, p0, La/v;->m:La/o;

    invoke-virtual {p2}, La/o;->getName()Ljava/lang/String;

    move-result-object p2

    sget-object v1, La/j0;->a:La/j0;

    invoke-interface {p1, p2, v1, v0}, La/i0;->a(Ljava/lang/String;La/j0;La/f0;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    sget-object v0, La/i;->c:La/i$a;

    .line 5
    sget-object v0, La/i;->d:La/i;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError. URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", error code: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", description: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, La/i;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, La/v;->j()V

    const/4 p1, 0x0

    iput-boolean p1, p0, La/v;->h:Z

    invoke-virtual {p0}, La/v;->h()V

    new-instance p1, La/f0;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, ""

    if-nez p3, :cond_0

    move-object p3, v0

    :cond_0
    invoke-direct {p1, v0, p2, p3}, La/f0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, La/v;->c:La/i0;

    iget-object p3, p0, La/v;->m:La/o;

    invoke-virtual {p3}, La/o;->getName()Ljava/lang/String;

    move-result-object p3

    sget-object v0, La/j0;->c:La/j0;

    invoke-interface {p2, p3, v0, p1}, La/i0;->a(Ljava/lang/String;La/j0;La/f0;)V

    return-void
.end method

.method public final a(ZLjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object p1, p0, La/v;->c:La/i0;

    iget-object v0, p0, La/v;->m:La/o;

    invoke-virtual {v0}, La/o;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, La/j0;->l:La/j0;

    goto :goto_0

    :cond_0
    iget-object p1, p0, La/v;->d:La/b0;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, La/v;->c:La/i0;

    iget-object v0, p0, La/v;->m:La/o;

    invoke-virtual {v0}, La/o;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, La/j0;->m:La/j0;

    :goto_0
    invoke-interface {p1, v0, v1, p2}, La/i0;->a(Ljava/lang/String;La/j0;Ljava/lang/String;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, La/v;->k:Z

    return v0
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-boolean v0, p0, La/v;->k:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, La/v;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v2, v3

    if-lez v2, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    sget-object v4, La/i;->c:La/i$a;

    .line 13
    sget-object v4, La/i;->d:La/i;

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Clicking on color: ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") @ "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, La/i;->d(Ljava/lang/String;)V

    if-nez p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    :goto_0
    return v1
.end method

.method public final a(ZZIFLjava/lang/String;)Z
    .locals 8

    const-string v0, "identifier"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La/v;->m:La/o;

    invoke-virtual {v0}, La/o;->get_webChromeClient$uniwebview_release()La/r;

    move-result-object v0

    .line 15
    iget-boolean v0, v0, La/r;->e:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 16
    sget-object p2, La/v;->p:Landroid/widget/FrameLayout;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return v2

    :cond_2
    iget-object v0, p0, La/v;->d:La/b0;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    const-string v4, "message"

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    sget-object p1, La/i;->c:La/i$a;

    .line 17
    sget-object p1, La/i;->d:La/i;

    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Showing web view is ignored since it is already visible."

    .line 19
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, La/i;->a(ILjava/lang/String;)V

    return v3

    :cond_4
    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 20
    sget-object p1, La/i;->c:La/i$a;

    .line 21
    sget-object p1, La/i;->d:La/i;

    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Hiding web view is ignored since it is already invisible."

    .line 23
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, La/i;->a(ILjava/lang/String;)V

    return v3

    .line 24
    :cond_5
    iget-object v0, p0, La/v;->i:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_6

    sget-object p1, La/i;->c:La/i$a;

    .line 25
    sget-object p1, La/i;->d:La/i;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Trying to show or hide web view but an other transition animation is not finished yet. Ignore this one."

    .line 27
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1, p2}, La/i;->a(ILjava/lang/String;)V

    return v3

    :cond_6
    if-eqz p1, :cond_7

    .line 28
    iget-object v0, p0, La/v;->d:La/b0;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-boolean v0, p0, La/v;->h:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, La/v;->i()V

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, La/v;->g()V

    invoke-virtual {p0}, La/v;->h()V

    :cond_8
    :goto_2
    iget-object v0, p0, La/v;->d:La/b0;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x5

    .line 29
    invoke-static {v0}, La/c;->b(I)[I

    move-result-object v0

    .line 30
    array-length v4, v0

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_b

    aget v6, v0, v5

    .line 31
    invoke-static {v6}, La/c;->a(I)I

    move-result v7

    if-ne v7, p3, :cond_9

    const/4 v7, 0x1

    goto :goto_4

    :cond_9
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_b
    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_c

    const/4 v6, 0x1

    :cond_c
    const/4 p3, 0x0

    if-nez p2, :cond_d

    if-eq v6, v2, :cond_e

    :cond_d
    cmpl-float v0, p4, p3

    if-lez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_1a

    .line 32
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/16 v4, 0x3e8

    int-to-float v4, v4

    mul-float p4, p4, v4

    float-to-long v4, p4

    if-nez p2, :cond_f

    const/4 p2, 0x0

    goto :goto_9

    :cond_f
    if-eqz p1, :cond_10

    const/4 p2, 0x0

    goto :goto_7

    .line 33
    :cond_10
    iget-object p2, p0, La/v;->d:La/b0;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p2

    :goto_7
    if-eqz p1, :cond_11

    iget-object p4, p0, La/v;->d:La/b0;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p4

    goto :goto_8

    :cond_11
    const/4 p4, 0x0

    :goto_8
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, p2, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v7, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v7, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object p2, v7

    :goto_9
    if-eqz p2, :cond_12

    .line 34
    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 35
    :cond_12
    iget-object p2, p0, La/v;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    new-instance p4, Landroid/graphics/Point;

    invoke-direct {p4}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p2, p4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 36
    invoke-static {v6}, La/c;->a(I)I

    move-result p2

    if-eqz p2, :cond_17

    if-eq p2, v2, :cond_16

    const/4 v6, 0x2

    if-eq p2, v6, :cond_15

    const/4 v6, 0x3

    if-eq p2, v6, :cond_14

    if-ne p2, v1, :cond_13

    iget p2, p4, Landroid/graphics/Point;->x:I

    goto :goto_b

    :cond_13
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_14
    iget p2, p4, Landroid/graphics/Point;->y:I

    goto :goto_a

    :cond_15
    iget p2, p4, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    goto :goto_b

    :cond_16
    iget p2, p4, Landroid/graphics/Point;->y:I

    neg-int p2, p2

    :goto_a
    move v3, p2

    :cond_17
    const/4 p2, 0x0

    :goto_b
    if-ne p1, v2, :cond_18

    new-instance p4, Landroid/view/animation/TranslateAnimation;

    int-to-float p2, p2

    int-to-float v1, v3

    invoke-direct {p4, p2, p3, v1, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_c

    :cond_18
    if-nez p1, :cond_19

    new-instance p4, Landroid/view/animation/TranslateAnimation;

    int-to-float p2, p2

    int-to-float v1, v3

    invoke-direct {p4, p3, p2, p3, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    :goto_c
    invoke-virtual {p4, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {p4, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 37
    invoke-virtual {v0, p4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iput-object v0, p0, La/v;->i:Landroid/view/animation/AnimationSet;

    new-instance p2, La/u;

    invoke-direct {p2, p0, p1, p5}, La/u;-><init>(La/v;ZLjava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object p1, p0, La/v;->d:La/b0;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_d

    .line 38
    :cond_19
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 39
    :cond_1a
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, La/-$$Lambda$lS9Wps7toA7L4l3id-dWr7EH1_8;

    invoke-direct {p3, p0, p1, p5}, La/-$$Lambda$lS9Wps7toA7L4l3id-dWr7EH1_8;-><init>(La/v;ZLjava/lang/String;)V

    const-wide/16 p4, 0x1

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_d
    return v2
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, La/v;->m:La/o;

    invoke-virtual {v0}, La/o;->g()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, La/v;->m:La/o;

    invoke-virtual {v0}, La/o;->h()V

    return-void
.end method

.method public final d()La/o;
    .locals 1

    iget-object v0, p0, La/v;->m:La/o;

    return-object v0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, La/v;->c:La/i0;

    iget-object v1, p0, La/v;->m:La/o;

    invoke-virtual {v1}, La/o;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, La/j0;->f:La/j0;

    const-string v3, ""

    invoke-interface {v0, v1, v2, v3}, La/i0;->a(Ljava/lang/String;La/j0;Ljava/lang/String;)V

    return-void
.end method

.method public final f()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, La/v;->d:La/b0;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, La/v;->d:La/b0;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, La/v;->d:La/b0;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    const-string v1, "bitmap"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, La/v;->a:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, La/v;->m:La/o;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, La/v;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object v0, La/i;->c:La/i$a;

    .line 1
    sget-object v0, La/i;->d:La/i;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Hide progress dialog."

    const-string v3, "message"

    .line 3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, La/i;->a(ILjava/lang/String;)V

    .line 4
    iget-object v0, p0, La/v;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 4

    iget-object v0, p0, La/v;->e:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, La/v;->a:Landroid/app/Activity;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    iput-object v0, p0, La/v;->e:Landroid/app/ProgressDialog;

    :cond_0
    iget-boolean v0, p0, La/v;->g:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, La/v;->d:La/b0;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, La/i;->c:La/i$a;

    .line 1
    sget-object v0, La/i;->d:La/i;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Show progress dialog."

    const-string v3, "message"

    .line 3
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, La/i;->a(ILjava/lang/String;)V

    .line 4
    iget-object v0, p0, La/v;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_2

    iget-object v1, p0, La/v;->f:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p0, La/v;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onevcat/uniwebview/R$string;->LOADING:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activity.resources.getString(R.string.LOADING)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v0, p0, La/v;->e:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_3
    return-void
.end method

.method public final j()V
    .locals 3

    iget-object v0, p0, La/v;->n:La/x;

    iget-object v1, p0, La/v;->m:La/o;

    .line 1
    iget-object v2, v1, La/o;->d:La/r;

    .line 2
    iget-object v2, v2, La/r;->h:La/o;

    if-nez v2, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 4
    :goto_1
    iget-object v2, p0, La/v;->m:La/o;

    invoke-virtual {v2}, La/o;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, La/x;->a(ZZ)V

    return-void
.end method
