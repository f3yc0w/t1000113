.class public Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;
.super Landroid/widget/LinearLayout;
.source "AIHelpFaqCardLayout.java"


# instance fields
.field private adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field private final ivTitle:Landroidx/appcompat/widget/AppCompatImageView;

.field private final rvList:Landroidx/recyclerview/widget/RecyclerView;

.field private final tvTitle:Landroidx/appcompat/widget/AppCompatTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_layout_faq_card_layout"

    .line 39
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_rl_list"

    .line 42
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 43
    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {p2, v0, v1}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result p2

    const/16 p3, 0xf

    .line 45
    invoke-static {p2, p3}, Lnet/aihelp/utils/Styles;->getDrawable(II)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "aihelp_iv_title"

    .line 47
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->ivTitle:Landroidx/appcompat/widget/AppCompatImageView;

    const-string p1, "aihelp_tv_title"

    .line 49
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    sget-object p2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {p2}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->setTextColor(I)V

    const-string p1, "aihelp_rv_list"

    .line 52
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;)Landroidx/recyclerview/widget/RecyclerView$Adapter;
    .locals 0

    .line 21
    iget-object p0, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-object p0
.end method

.method private getGridLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 66
    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqHotTopicVisible:Z

    if-nez v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 67
    :goto_0
    new-instance v1, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$2;

    invoke-direct {v1, p0, p1, v0}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$2;-><init>(Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;Landroid/content/Context;I)V

    .line 73
    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    new-instance p1, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$3;

    invoke-direct {p1, p0, v0}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$3;-><init>(Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;I)V

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    :cond_1
    return-object v1
.end method

.method private getLinearLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 1

    .line 57
    new-instance v0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$1;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout$1;-><init>(Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public setup(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    const/4 v0, 0x1

    .line 85
    invoke-virtual {p0, v0, p1}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->setup(ZLandroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setup(ZLandroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 89
    iput-object p2, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->getLinearLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 94
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->getGridLayoutManager(Landroid/content/Context;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 96
    :goto_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->rvList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public updateTitleIcon(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 100
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 101
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->ivTitle:Landroidx/appcompat/widget/AppCompatImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 102
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->ivTitle:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method

.method public updateTitleText(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 107
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 108
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 109
    iget-object p1, p0, Lnet/aihelp/ui/widget/AIHelpFaqCardLayout;->tvTitle:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {p1, p2}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
