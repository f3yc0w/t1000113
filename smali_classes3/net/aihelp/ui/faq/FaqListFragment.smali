.class public Lnet/aihelp/ui/faq/FaqListFragment;
.super Lnet/aihelp/ui/faq/BaseFaqFragment;
.source "FaqListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/ui/faq/BaseFaqFragment<",
        "Lnet/aihelp/data/logic/FaqPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private currentSectionId:Ljava/lang/String;

.field private mAdapter:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lnet/aihelp/ui/faq/BaseFaqFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/faq/FaqListFragment;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lnet/aihelp/ui/faq/FaqListFragment;->currentSectionId:Ljava/lang/String;

    return-object p0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/faq/FaqListFragment;
    .locals 1

    .line 34
    new-instance v0, Lnet/aihelp/ui/faq/FaqListFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/faq/FaqListFragment;-><init>()V

    .line 35
    invoke-virtual {v0, p0}, Lnet/aihelp/ui/faq/FaqListFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getBundleAfterDataPrepared(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "section_id"

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/FaqPresenter;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/logic/FaqPresenter;->goFetchFAQDataSource(Ljava/lang/String;)V

    return-void
.end method

.method protected getBundleBeforeDataPrepared(Landroid/os/Bundle;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lnet/aihelp/ui/faq/BaseFaqFragment;->getBundleBeforeDataPrepared(Landroid/os/Bundle;)V

    const-string v0, "section_id"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/faq/FaqListFragment;->currentSectionId:Ljava/lang/String;

    return-void
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_search_faq"

    .line 95
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLoadingTargetViewId()I
    .locals 1

    const-string v0, "aihelp_rv_faq_search"

    .line 100
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 3

    const-string p1, "aihelp_rl_search"

    .line 48
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/faq/FaqListFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    .line 49
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    .line 51
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const-string p1, "aihelp_rv_faq_search"

    .line 53
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/faq/FaqListFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 54
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lnet/aihelp/ui/faq/FaqListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 55
    new-instance v0, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

    invoke-virtual {p0}, Lnet/aihelp/ui/faq/FaqListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment;->mAdapter:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

    .line 56
    invoke-virtual {p0}, Lnet/aihelp/ui/faq/FaqListFragment;->getMergedBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Lnet/aihelp/ui/faq/FaqListFragment;->getFaqFlowListener()Lnet/aihelp/ui/faq/IFaqEventListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;->setup(Landroid/os/Bundle;Lnet/aihelp/ui/faq/IFaqEventListener;Lnet/aihelp/ui/faq/BaseFaqFragment;)V

    .line 57
    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment;->mAdapter:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

    new-instance v1, Lnet/aihelp/ui/faq/FaqListFragment$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/faq/FaqListFragment$1;-><init>(Lnet/aihelp/ui/faq/FaqListFragment;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;->setOnFaqSelectedListener(Lnet/aihelp/ui/wrapper/FaqSelectedListenerWrapper;)V

    .line 79
    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment;->mAdapter:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 82
    iget p1, p0, Lnet/aihelp/ui/faq/FaqListFragment;->intentMode:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 83
    iget-object p1, p0, Lnet/aihelp/ui/faq/FaqListFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/FaqPresenter;

    invoke-virtual {p1}, Lnet/aihelp/data/logic/FaqPresenter;->prepareFAQNotification()V

    :cond_0
    return-void
.end method

.method public refreshList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/faq/FaqListEntity;",
            ">;)V"
        }
    .end annotation

    .line 106
    iget v0, p0, Lnet/aihelp/ui/faq/FaqListFragment;->intentMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lnet/aihelp/utils/ListUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 108
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/data/model/faq/FaqListEntity;

    .line 110
    invoke-virtual {v1}, Lnet/aihelp/data/model/faq/FaqListEntity;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {p1}, Lnet/aihelp/utils/ListUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    .line 118
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/faq/FaqListEntity;

    if-eqz v0, :cond_2

    .line 121
    invoke-virtual {v0}, Lnet/aihelp/data/model/faq/FaqListEntity;->getSectionName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment;->titleText:Ljava/lang/String;

    .line 123
    :cond_2
    iget-object v0, p0, Lnet/aihelp/ui/faq/FaqListFragment;->mAdapter:Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/faq/FaqCardLayoutAdapter;->update(Ljava/util/List;)V

    goto :goto_1

    :cond_3
    new-array p1, v1, [I

    .line 125
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/faq/FaqListFragment;->showEmpty([I)V

    :goto_1
    return-void
.end method
