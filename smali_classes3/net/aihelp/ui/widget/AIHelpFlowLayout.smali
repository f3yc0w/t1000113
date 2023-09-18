.class public Lnet/aihelp/ui/widget/AIHelpFlowLayout;
.super Landroid/view/ViewGroup;
.source "AIHelpFlowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;,
        Lnet/aihelp/ui/widget/AIHelpFlowLayout$BlankView;
    }
.end annotation


# instance fields
.field childList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field lineNumList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private lineSpacing:I

.field private final mContext:Landroid/content/Context;

.field private mListener:Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;

.field private usefulWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 25
    iput p2, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineSpacing:I

    .line 26
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->childList:Ljava/util/List;

    .line 27
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineNumList:Ljava/util/List;

    .line 40
    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->mContext:Landroid/content/Context;

    const-string p2, "aihelp_flow_layout"

    .line 41
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getStyleable(Ljava/lang/String;)[I

    move-result-object p3

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p3

    const-string v0, "aihelp_flow_layout_lineSpacing"

    .line 45
    invoke-static {p2, v0}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/high16 v0, 0x41400000    # 12.0f

    .line 46
    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    .line 45
    invoke-virtual {p3, p2, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineSpacing:I

    .line 47
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/widget/AIHelpFlowLayout;)Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->mListener:Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/widget/AIHelpFlowLayout;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->compress()V

    return-void
.end method

.method static synthetic access$200(Lnet/aihelp/ui/widget/AIHelpFlowLayout;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->align()V

    return-void
.end method

.method private align()V
    .locals 11

    .line 340
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 347
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 348
    instance-of v4, v4, Lnet/aihelp/ui/widget/AIHelpFlowLayout$BlankView;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    :cond_2
    new-array v2, v3, [Landroid/view/View;

    .line 355
    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v0, :cond_5

    .line 358
    invoke-virtual {p0, v5}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 359
    instance-of v8, v7, Lnet/aihelp/ui/widget/AIHelpFlowLayout$BlankView;

    if-eqz v8, :cond_3

    goto :goto_4

    .line 363
    :cond_3
    aput-object v7, v2, v6

    .line 364
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 365
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 366
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_4

    .line 367
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 368
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v7

    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v7

    aput v9, v4, v6

    goto :goto_3

    .line 370
    :cond_4
    aput v7, v4, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 376
    :cond_5
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->removeAllViews()V

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_5
    if-ge v0, v3, :cond_9

    .line 378
    aget v7, v4, v0

    add-int/2addr v7, v6

    iget v8, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->usefulWidth:I

    if-le v7, v8, :cond_8

    sub-int/2addr v8, v6

    add-int/lit8 v6, v0, -0x1

    sub-int v7, v6, v5

    if-ltz v7, :cond_7

    if-lez v7, :cond_6

    .line 384
    div-int/2addr v8, v7

    .line 385
    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v8, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    :goto_6
    if-ge v5, v6, :cond_6

    .line 387
    aget-object v8, v2, v5

    invoke-virtual {p0, v8}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->addView(Landroid/view/View;)V

    .line 388
    new-instance v8, Lnet/aihelp/ui/widget/AIHelpFlowLayout$BlankView;

    iget-object v9, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lnet/aihelp/ui/widget/AIHelpFlowLayout$BlankView;-><init>(Landroid/content/Context;)V

    .line 389
    invoke-virtual {p0, v8, v7}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 392
    :cond_6
    aget-object v5, v2, v6

    invoke-virtual {p0, v5}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v0, -0x1

    goto :goto_7

    .line 397
    :cond_7
    aget-object v5, v2, v0

    invoke-virtual {p0, v5}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v0, 0x1

    move v10, v5

    move v5, v0

    move v0, v10

    :goto_7
    const/4 v6, 0x0

    move v10, v5

    move v5, v0

    move v0, v10

    goto :goto_8

    .line 402
    :cond_8
    aget v7, v4, v0

    add-int/2addr v6, v7

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    :goto_9
    if-ge v5, v3, :cond_a

    .line 406
    aget-object v0, v2, v5

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_a
    return-void
.end method

.method private compress()V
    .locals 10

    .line 228
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 235
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 236
    instance-of v4, v4, Lnet/aihelp/ui/widget/AIHelpFlowLayout$BlankView;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    :cond_2
    new-array v2, v3, [Landroid/view/View;

    .line 243
    new-array v4, v3, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v5, v0, :cond_5

    .line 246
    invoke-virtual {p0, v5}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 247
    instance-of v8, v7, Lnet/aihelp/ui/widget/AIHelpFlowLayout$BlankView;

    if-eqz v8, :cond_3

    goto :goto_4

    .line 251
    :cond_3
    aput-object v7, v2, v6

    .line 252
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    .line 253
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 254
    instance-of v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_4

    .line 255
    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 256
    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v9, v7

    iget v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v9, v7

    aput v9, v4, v6

    goto :goto_3

    .line 258
    :cond_4
    aput v7, v4, v6

    :goto_3
    add-int/lit8 v6, v6, 0x1

    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 262
    :cond_5
    new-array v0, v3, [I

    :goto_5
    if-ge v1, v3, :cond_6

    .line 264
    aget v5, v4, v1

    iget v6, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->usefulWidth:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    aput v5, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 266
    :cond_6
    invoke-direct {p0, v2, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->sortToCompress([Landroid/view/View;[I)V

    .line 267
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->removeAllViews()V

    .line 268
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->childList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 269
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 271
    :cond_7
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->childList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private sortToCompress([Landroid/view/View;[I)V
    .locals 12

    .line 275
    array-length v0, p1

    add-int/lit8 v1, v0, 0x1

    .line 276
    iget v2, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->usefulWidth:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v3

    const/4 v2, 0x0

    aput v1, v4, v2

    const-class v5, I

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_1

    const/4 v6, 0x0

    .line 278
    :goto_1
    iget v7, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->usefulWidth:I

    if-ge v6, v7, :cond_0

    .line 279
    aget-object v7, v4, v5

    aput v2, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 282
    :cond_1
    new-array v1, v0, [Z

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    .line 284
    aput-boolean v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x1

    :goto_3
    if-gt v5, v0, :cond_4

    add-int/lit8 v6, v5, -0x1

    .line 287
    aget v7, p2, v6

    :goto_4
    iget v8, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->usefulWidth:I

    if-gt v7, v8, :cond_3

    .line 288
    aget-object v8, v4, v5

    aget-object v9, v4, v6

    aget v9, v9, v7

    aget-object v10, v4, v6

    aget v11, p2, v6

    sub-int v11, v7, v11

    aget v10, v10, v11

    aget v11, p2, v6

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    aput v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 291
    :cond_4
    iget v5, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->usefulWidth:I

    move v6, v0

    :goto_5
    if-lez v6, :cond_6

    add-int/lit8 v7, v6, -0x1

    .line 292
    aget v8, p2, v7

    if-lt v5, v8, :cond_6

    .line 293
    aget-object v8, v4, v6

    aget v8, v8, v5

    aget-object v9, v4, v7

    aget v10, p2, v7

    sub-int v10, v5, v10

    aget v9, v9, v10

    aget v10, p2, v7

    add-int/2addr v9, v10

    if-ne v8, v9, :cond_5

    .line 294
    aput-boolean v3, v1, v7

    .line 295
    aget v7, p2, v7

    sub-int/2addr v5, v7

    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_5

    :cond_6
    move v4, v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_8

    .line 302
    aget-boolean v5, v1, v3

    if-eqz v5, :cond_7

    .line 303
    iget-object v5, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->childList:Ljava/util/List;

    aget-object v6, p1, v3

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, -0x1

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_8
    if-nez v4, :cond_9

    return-void

    .line 311
    :cond_9
    new-array v3, v4, [Landroid/view/View;

    .line 312
    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_7
    if-ge v2, v0, :cond_b

    .line 315
    aget-boolean v6, v1, v2

    if-nez v6, :cond_a

    .line 316
    aget-object v6, p1, v2

    aput-object v6, v3, v5

    .line 317
    aget v6, p2, v2

    aput v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 324
    :cond_b
    invoke-direct {p0, v3, v4}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->sortToCompress([Landroid/view/View;[I)V

    return-void
.end method


# virtual methods
.method public dpToPx(F)I
    .locals 1

    .line 474
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 464
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-super {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 459
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 454
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 19

    move-object/from16 v0, p0

    .line 109
    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getPaddingLeft()I

    move-result v1

    .line 110
    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getPaddingRight()I

    move-result v2

    .line 111
    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getPaddingTop()I

    move-result v3

    sub-int v4, p4, p2

    sub-int v5, v4, v1

    sub-int/2addr v5, v2

    .line 116
    iput v5, v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->usefulWidth:I

    add-int/2addr v2, v1

    .line 121
    iget-object v5, v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineNumList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move v8, v1

    move v9, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    .line 122
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildCount()I

    move-result v11

    if-ge v6, v11, :cond_5

    .line 123
    invoke-virtual {v0, v6}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 124
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v12

    const/16 v13, 0x8

    if-ne v12, v13, :cond_0

    move/from16 p2, v2

    move/from16 p3, v6

    goto/16 :goto_3

    .line 133
    :cond_0
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    .line 134
    invoke-virtual {v11}, Landroid/view/View;->getMeasuredHeight()I

    move-result v13

    .line 136
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    .line 137
    instance-of v15, v14, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v15, :cond_1

    .line 138
    move-object v5, v14

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    move/from16 p2, v2

    .line 139
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 p3, v6

    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v6

    .line 140
    iget v6, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 p4, v2

    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v6, v2

    .line 141
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v8

    move/from16 p5, v2

    .line 142
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v2, v3

    move/from16 v16, v2

    .line 143
    iget v2, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v8

    add-int/2addr v2, v12

    .line 144
    iget v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v5, v3

    add-int/2addr v5, v13

    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v5, p5

    move v6, v2

    move/from16 v2, p4

    goto :goto_1

    :cond_1
    move/from16 p2, v2

    move/from16 p3, v6

    add-int v2, v8, v12

    add-int v5, v3, v13

    move v6, v2

    move/from16 v16, v3

    move/from16 v17, v5

    move v5, v8

    const/4 v2, 0x0

    const/16 v18, 0x0

    :goto_1
    add-int/2addr v2, v12

    move/from16 p4, v5

    add-int v5, v18, v13

    move/from16 p5, v6

    add-int v6, v9, v2

    if-le v6, v4, :cond_3

    .line 156
    iget-object v6, v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineNumList:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    iget v6, v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineSpacing:I

    add-int/2addr v10, v6

    add-int/2addr v3, v10

    if-eqz v15, :cond_2

    .line 163
    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 164
    iget v6, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v6, v1

    .line 165
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int v16, v3, v7

    .line 166
    iget v7, v14, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v7, v1

    add-int/2addr v7, v12

    .line 167
    iget v8, v14, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v8, v3

    add-int v17, v8, v13

    move/from16 v10, p2

    move v9, v1

    move/from16 v13, v16

    move/from16 v14, v17

    const/4 v8, 0x0

    const/4 v12, 0x0

    goto :goto_2

    :cond_2
    add-int v6, v1, v12

    add-int v17, v3, v13

    move/from16 v10, p2

    move v9, v1

    move v13, v3

    move v7, v6

    move/from16 v14, v17

    const/4 v8, 0x0

    const/4 v12, 0x0

    move v6, v9

    goto :goto_2

    :cond_3
    move/from16 v6, p4

    move v12, v10

    move/from16 v13, v16

    move/from16 v14, v17

    move v10, v9

    move v9, v8

    move v8, v7

    move/from16 v7, p5

    .line 175
    :goto_2
    invoke-virtual {v11, v6, v13, v7, v14}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v7, v8, 0x1

    if-le v5, v12, :cond_4

    move v12, v5

    :cond_4
    add-int v5, v10, v2

    add-int v8, v9, v2

    move v9, v5

    move v10, v12

    :goto_3
    add-int/lit8 v6, p3, 0x1

    move/from16 v2, p2

    goto/16 :goto_0

    .line 184
    :cond_5
    iget-object v1, v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineNumList:Ljava/util/List;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 18

    move-object/from16 v6, p0

    .line 57
    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getPaddingLeft()I

    move-result v0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getPaddingRight()I

    move-result v1

    .line 59
    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getPaddingTop()I

    move-result v2

    .line 60
    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getPaddingBottom()I

    move-result v7

    .line 62
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 63
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 64
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    add-int v11, v0, v1

    move v13, v2

    move/from16 v16, v11

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 68
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildCount()I

    move-result v0

    if-ge v14, v0, :cond_4

    .line 69
    invoke-virtual {v6, v14}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 70
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_2

    .line 75
    :cond_0
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 76
    instance-of v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move/from16 v2, p1

    move-object/from16 v17, v4

    move/from16 v4, p2

    move-object v12, v5

    move v5, v13

    .line 77
    invoke-virtual/range {v0 .. v5}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 78
    move-object/from16 v4, v17

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 79
    iget v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    .line 80
    iget v1, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    move v2, v0

    move v3, v1

    move/from16 v0, p1

    move/from16 v1, p2

    goto :goto_1

    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    move-object v12, v5

    .line 82
    invoke-virtual {v6, v12, v0, v1}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->measureChild(Landroid/view/View;II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 85
    :goto_1
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 86
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v2, v4

    add-int/2addr v3, v5

    add-int v4, v16, v2

    if-le v4, v8, :cond_2

    .line 92
    iget v4, v6, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->lineSpacing:I

    add-int/2addr v15, v4

    add-int/2addr v13, v15

    move/from16 v16, v11

    const/4 v15, 0x0

    :cond_2
    if-le v3, v15, :cond_3

    move v15, v3

    :cond_3
    add-int v16, v16, v2

    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_4
    const/high16 v0, 0x40000000    # 2.0f

    if-ne v9, v0, :cond_5

    goto :goto_3

    :cond_5
    add-int/2addr v13, v15

    add-int v10, v13, v7

    .line 101
    :goto_3
    invoke-virtual {v6, v8, v10}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public relayoutToAlign()V
    .locals 1

    .line 331
    new-instance v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$3;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout$3;-><init>(Lnet/aihelp/ui/widget/AIHelpFlowLayout;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public relayoutToCompress()V
    .locals 1

    .line 219
    new-instance v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$2;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout$2;-><init>(Lnet/aihelp/ui/widget/AIHelpFlowLayout;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public relayoutToCompressAndAlign()V
    .locals 1

    .line 414
    new-instance v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$4;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout$4;-><init>(Lnet/aihelp/ui/widget/AIHelpFlowLayout;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setOnLabelClickedListener(Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->mListener:Lnet/aihelp/ui/widget/AIHelpFlowLayout$OnLabelClickedListener;

    return-void
.end method

.method public specifyLines(I)V
    .locals 1

    .line 429
    new-instance v0, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/ui/widget/AIHelpFlowLayout$5;-><init>(Lnet/aihelp/ui/widget/AIHelpFlowLayout;I)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public update(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAStep$Action;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/rpa/RPAStep$Action;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/high16 v2, 0x41400000    # 12.0f

    .line 193
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->dpToPx(F)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 194
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 195
    sget-object v3, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {v3, v4, v5}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 196
    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    const/4 v3, 0x2

    const/high16 v4, 0x41500000    # 13.0f

    .line 197
    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    const/high16 v3, 0x40c00000    # 6.0f

    .line 198
    invoke-virtual {p0, v3}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->dpToPx(F)I

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    invoke-virtual {p0, v5}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->dpToPx(F)I

    move-result v6

    invoke-virtual {p0, v3}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->dpToPx(F)I

    move-result v3

    invoke-virtual {p0, v5}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->dpToPx(F)I

    move-result v5

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 199
    new-instance v3, Lnet/aihelp/ui/widget/AIHelpFlowLayout$1;

    invoke-direct {v3, p0, v0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout$1;-><init>(Lnet/aihelp/ui/widget/AIHelpFlowLayout;Lnet/aihelp/data/model/rpa/RPAStep$Action;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-virtual {p0, v2, v1}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 210
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFlowLayout;->relayoutToCompressAndAlign()V

    :cond_2
    return-void
.end method
