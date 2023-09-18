.class public Lnet/aihelp/ui/SupportFragment;
.super Lnet/aihelp/core/ui/BaseFragment;
.source "SupportFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/aihelp/ui/faq/IFaqParentView;


# instance fields
.field private fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

.field private fakeSearchPort:Landroid/widget/LinearLayout;

.field private ivBack:Landroid/widget/ImageView;

.field private ivLoading:Landroid/widget/ImageView;

.field private ivTitle:Landroid/widget/ImageView;

.field private loadingAnimator:Landroid/animation/ObjectAnimator;

.field private mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

.field private msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

.field private searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

.field private tvLogo:Landroid/widget/TextView;

.field private tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/SupportFragment;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lnet/aihelp/ui/SupportFragment;->updateTitleBarAccordingToSearchStatus(Z)V

    return-void
.end method

.method public static getInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/SupportFragment;
    .locals 1

    .line 84
    new-instance v0, Lnet/aihelp/ui/SupportFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/SupportFragment;-><init>()V

    .line 85
    invoke-virtual {v0, p0}, Lnet/aihelp/ui/SupportFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private shouldLocalizeFAQ(Landroid/os/Bundle;)Z
    .locals 3

    const-string v0, "support_mode"

    const/4 v1, 0x0

    .line 110
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private shouldShowLoading(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 294
    const-class v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateTitleBarAccordingToSearchStatus(Z)V
    .locals 10

    .line 359
    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 360
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 362
    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/ui/helper/FragmentHelper;->getTopMostFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 363
    instance-of v3, v2, Lnet/aihelp/ui/faq/BaseFaqFragment;

    const/4 v4, 0x1

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz v3, :cond_6

    .line 365
    iget-object v3, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    sget-boolean v8, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqTitleIconVisible:Z

    if-eqz v8, :cond_0

    if-nez p1, :cond_0

    const/4 v8, 0x0

    goto :goto_0

    :cond_0
    const/16 v8, 0x8

    :goto_0
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 366
    iget-object v3, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/16 v8, 0x8

    :goto_1
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 368
    sget-boolean v3, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqSearchVisible:Z

    if-eqz v3, :cond_5

    .line 369
    const-class v3, Lnet/aihelp/ui/faq/FaqHomeFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 370
    iget-object v8, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchPort:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_2

    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v9

    if-nez v9, :cond_2

    if-nez p1, :cond_2

    const/4 v9, 0x0

    goto :goto_2

    :cond_2
    const/16 v9, 0x8

    :goto_2
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v8, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    if-eqz v3, :cond_3

    invoke-static {}, Lnet/aihelp/utils/Styles;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez p1, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    const/16 v3, 0x8

    :goto_3
    invoke-virtual {v8, v3}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;->setVisibility(I)V

    .line 372
    iget-object v3, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    const/16 p1, 0x8

    :goto_4
    invoke-virtual {v3, p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->setVisibility(I)V

    .line 375
    :cond_5
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_6

    const-string p1, "aihelp_iv_back"

    .line 376
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v5, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 377
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v1, v4, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 378
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    :cond_6
    instance-of p1, v2, Lnet/aihelp/ui/cs/BaseCSFragment;

    if-eqz p1, :cond_8

    .line 386
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isCsTitleIconVisible:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    const/16 v2, 0x8

    :goto_5
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 387
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchPort:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 389
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    invoke-virtual {p1, v7}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;->setVisibility(I)V

    .line 390
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-virtual {p1, v7}, Lnet/aihelp/ui/widget/AIHelpSearchView;->setVisibility(I)V

    .line 392
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v5, :cond_8

    .line 393
    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 394
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 395
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    return-void
.end method


# virtual methods
.method protected getBundleBeforeDataPrepared(Landroid/os/Bundle;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1}, Lnet/aihelp/ui/SupportFragment;->shouldLocalizeFAQ(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x3e9

    .line 105
    invoke-static {p1}, Lnet/aihelp/data/localize/LocalizeHelper;->getLocalizeDataFromUrl(I)V

    :cond_0
    return-void
.end method

.method public getFaqEventListener()Lnet/aihelp/ui/faq/IFaqEventListener;
    .locals 1

    .line 404
    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    return-object v0
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_support"

    .line 177
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 4

    const-string p1, "aihelp_rl_navigation"

    .line 118
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 119
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarBackground:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const-string p1, "aihelp_iv_back"

    .line 122
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivBack:Landroid/widget/ImageView;

    const-string p1, "aihelp_iv_loading"

    .line 123
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    const-string p1, "aihelp_iv_title"

    .line 124
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    const-string p1, "aihelp_tv_title"

    .line 125
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    const-string p1, "aihelp_msg_view"

    .line 126
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpMsgView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

    const-string p1, "aihelp_search_view"

    .line 127
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpSearchView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    const-string p1, "aihelp_fake_search_port"

    .line 129
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchPort:Landroid/widget/LinearLayout;

    .line 130
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarBackground:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->navigationBarAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    const-string p1, "aihelp_fake_search_land"

    .line 132
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    .line 134
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivBack:Landroid/widget/ImageView;

    const-string v0, "aihelp_svg_ic_back"

    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    const-string v0, "aihelp_svg_ic_loading"

    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 137
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->msgView:Lnet/aihelp/ui/widget/AIHelpMsgView;

    invoke-virtual {p1, p0}, Lnet/aihelp/ui/widget/AIHelpMsgView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivBack:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    new-instance v0, Lnet/aihelp/ui/helper/BreakReleaseHelper;

    invoke-direct {v0}, Lnet/aihelp/ui/helper/BreakReleaseHelper;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v0}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 142
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchPort:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->fakeSearchLand:Lnet/aihelp/ui/widget/AIHelpFakeSearch;

    invoke-virtual {p1, p0}, Lnet/aihelp/ui/widget/AIHelpFakeSearch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 145
    invoke-direct {p0, p1}, Lnet/aihelp/ui/SupportFragment;->updateTitleBarAccordingToSearchStatus(Z)V

    const-string p1, "aihelp_logo"

    .line 147
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/SupportFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvLogo:Landroid/widget/TextView;

    .line 148
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->tvLogo:Landroid/widget/TextView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v0, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 151
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    const-string v1, "rotation"

    invoke-static {p1, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x3e8

    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 153
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 154
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 156
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    new-instance v0, Lnet/aihelp/ui/SupportFragment$1;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/SupportFragment$1;-><init>(Lnet/aihelp/ui/SupportFragment;)V

    .line 171
    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getFaqEventListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object v1

    .line 156
    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->setupSearchView(Lnet/aihelp/ui/widget/AIHelpSearchView$OnAIHelpSearchViewListener;Landroid/text/TextWatcher;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method protected isBindEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 409
    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/core/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 3

    .line 90
    invoke-super {p0, p1}, Lnet/aihelp/core/ui/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    if-nez v0, :cond_0

    .line 92
    new-instance v0, Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lnet/aihelp/ui/helper/SupportHelper;-><init>(Landroid/content/Context;Landroidx/fragment/app/FragmentManager;Landroid/os/Bundle;)V

    iput-object v0, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .line 300
    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/ui/helper/FragmentHelper;->getTopMostFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 302
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 303
    const-class v2, Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 304
    check-cast v0, Lnet/aihelp/ui/faq/FaqContentFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/faq/FaqContentFragment;->onBackPressed()Z

    move-result v0

    return v0

    .line 305
    :cond_1
    const-class v2, Lnet/aihelp/ui/cs/IntentUrlFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 306
    check-cast v0, Lnet/aihelp/ui/cs/IntentUrlFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->onBackPressed()Z

    move-result v0

    return v0

    .line 307
    :cond_2
    const-class v0, Lnet/aihelp/ui/faq/FaqSearchFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 308
    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-static {v0, v1}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    .line 316
    invoke-static {v0}, Lnet/aihelp/utils/FastClickValidator;->validate(F)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lnet/aihelp/common/Const;->isNestedFragmentOnResume:Z

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_back"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 318
    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 348
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_fake_search_port"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 349
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_fake_search_land"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 350
    :cond_1
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToSearch(Landroid/os/Bundle;)V

    .line 351
    iget-object p1, p0, Lnet/aihelp/ui/SupportFragment;->searchView:Lnet/aihelp/ui/widget/AIHelpSearchView;

    invoke-virtual {p1}, Lnet/aihelp/ui/widget/AIHelpSearchView;->autoFocus()V

    :cond_2
    return-void
.end method

.method public onEventComing(Lnet/aihelp/core/util/bus/event/EventCenter;)V
    .locals 8

    .line 189
    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getRetainedChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/ui/helper/FragmentHelper;->getTopMostFragment(Landroidx/fragment/app/FragmentManager;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 225
    instance-of v1, p1, Lnet/aihelp/data/event/LoadingElvaEvent;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 226
    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/event/EventCenter;->getCode()I

    move-result v1

    const/16 v4, 0x3eb

    if-ne v1, v4, :cond_2

    .line 227
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lnet/aihelp/ui/SupportFragment;->shouldShowLoading(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 228
    :cond_0
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 229
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 231
    :cond_2
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->ivLoading:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 232
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->loadingAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 236
    :cond_3
    :goto_1
    instance-of v1, p1, Lnet/aihelp/data/event/PageHoppingEvent;

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    .line 237
    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/event/EventCenter;->getCode()I

    move-result v1

    const/16 v5, 0x3f1

    if-eq v1, v5, :cond_4

    goto :goto_2

    .line 242
    :cond_4
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    move-object v5, p1

    check-cast v5, Lnet/aihelp/data/event/PageHoppingEvent;

    invoke-virtual {v5}, Lnet/aihelp/data/event/PageHoppingEvent;->getEvent()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Bundle;

    invoke-virtual {v1, v5, v4}, Lnet/aihelp/ui/helper/SupportHelper;->onIntentToFillForm(Landroid/os/Bundle;Z)V

    .line 247
    :cond_5
    :goto_2
    instance-of v1, p1, Lnet/aihelp/data/event/UpdateTitleEvent;

    if-eqz v1, :cond_d

    .line 248
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->tvLogo:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    .line 249
    instance-of v5, v0, Lnet/aihelp/ui/cs/BaseCSFragment;

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    :cond_7
    move-object v1, p1

    check-cast v1, Lnet/aihelp/data/event/UpdateTitleEvent;

    .line 252
    invoke-virtual {v1}, Lnet/aihelp/data/event/UpdateTitleEvent;->getIcon()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 254
    instance-of v2, v0, Lnet/aihelp/ui/cs/BaseCSFragment;

    if-eqz v2, :cond_8

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isCsTitleIconVisible:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    .line 255
    :goto_4
    instance-of v5, v0, Lnet/aihelp/ui/faq/BaseFaqFragment;

    if-eqz v5, :cond_9

    sget-boolean v5, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqTitleIconVisible:Z

    if-eqz v5, :cond_9

    const/4 v5, 0x1

    goto :goto_5

    :cond_9
    const/4 v5, 0x0

    .line 256
    :goto_5
    iget-object v6, p0, Lnet/aihelp/ui/SupportFragment;->ivTitle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lnet/aihelp/data/event/UpdateTitleEvent;->getIcon()Ljava/lang/String;

    move-result-object v7

    if-nez v2, :cond_b

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_6
    invoke-static {v6, v7, v4}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 258
    :cond_c
    invoke-virtual {v1}, Lnet/aihelp/data/event/UpdateTitleEvent;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 259
    iget-object v2, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Lnet/aihelp/data/event/UpdateTitleEvent;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    :cond_d
    instance-of v1, p1, Lnet/aihelp/data/event/SearchViewVisibilityChangeEvent;

    if-eqz v1, :cond_e

    .line 264
    invoke-virtual {p1}, Lnet/aihelp/core/util/bus/event/EventCenter;->getEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 265
    invoke-direct {p0, v1}, Lnet/aihelp/ui/SupportFragment;->updateTitleBarAccordingToSearchStatus(Z)V

    .line 268
    :cond_e
    instance-of v1, p1, Lnet/aihelp/data/event/OrientationChangeEvent;

    if-eqz v1, :cond_f

    .line 269
    iget-object v1, p0, Lnet/aihelp/ui/SupportFragment;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 270
    instance-of v0, v0, Lnet/aihelp/ui/faq/FaqSearchFragment;

    .line 271
    invoke-direct {p0, v0}, Lnet/aihelp/ui/SupportFragment;->updateTitleBarAccordingToSearchStatus(Z)V

    .line 274
    :cond_f
    instance-of p1, p1, Lnet/aihelp/data/event/FatalErrorEvent;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_10

    .line 275
    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Oops! Something went wrong"

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 277
    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->disconnect()V

    .line 278
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/Picasso;->shutdown()V

    .line 279
    sput-boolean v3, Lnet/aihelp/common/Const;->IS_SDK_SHOWING:Z

    .line 281
    invoke-virtual {p0}, Lnet/aihelp/ui/SupportFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_10
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 98
    invoke-super {p0}, Lnet/aihelp/core/ui/BaseFragment;->onResume()V

    .line 99
    iget-object v0, p0, Lnet/aihelp/ui/SupportFragment;->mSupportHelper:Lnet/aihelp/ui/helper/SupportHelper;

    invoke-virtual {v0}, Lnet/aihelp/ui/helper/SupportHelper;->start()V

    return-void
.end method
