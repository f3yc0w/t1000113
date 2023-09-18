.class public Lnet/aihelp/ui/cs/widget/SmartIntentRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SmartIntentRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/cs/widget/SmartIntentRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 26
    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result p1

    .line 29
    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/Styles;->getScreenHeight(Landroid/content/Context;)I

    .line 36
    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x42f00000    # 120.0f

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    const/high16 p2, -0x80000000

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 37
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result p2

    .line 38
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/widget/SmartIntentRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    sub-int/2addr p2, v0

    const/high16 v0, 0x40000000    # 2.0f

    .line 37
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 40
    invoke-super {p0, p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->onMeasure(II)V

    return-void
.end method
