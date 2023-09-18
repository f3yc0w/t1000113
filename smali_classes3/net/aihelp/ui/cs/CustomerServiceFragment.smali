.class public Lnet/aihelp/ui/cs/CustomerServiceFragment;
.super Lnet/aihelp/ui/cs/BaseCSFragment;
.source "CustomerServiceFragment.java"

# interfaces
.implements Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/ui/cs/BaseCSFragment<",
        "Lnet/aihelp/data/logic/CustomerServicePresenter;",
        ">;",
        "Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;"
    }
.end annotation


# instance fields
.field private isTicketAlreadyFinished:Z

.field private mCurrentPage:I

.field private mCurrentStep:Lnet/aihelp/data/model/rpa/RPAStep;

.field private mIntentView:Lnet/aihelp/ui/cs/widget/SmartIntentView;

.field private mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

.field private mSkipView:Landroid/widget/TextView;

.field private shouldRefreshSkipView:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mCurrentPage:I

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/cs/CustomerServiceFragment;)I
    .locals 0

    .line 58
    iget p0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mCurrentPage:I

    return p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/cs/CustomerServiceFragment;)Lnet/aihelp/core/mvp/IPresenter;
    .locals 0

    .line 58
    iget-object p0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/cs/CustomerServiceFragment;)Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->isTicketAlreadyFinished:Z

    return p0
.end method

.method private isBottomViewAlreadyAdded(Lnet/aihelp/ui/cs/bottom/BottomBaseView;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 369
    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/cs/bottom/BottomBaseView;

    if-eqz v1, :cond_0

    .line 371
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/CustomerServiceFragment;
    .locals 1

    .line 71
    new-instance v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;-><init>()V

    .line 72
    invoke-virtual {v0, p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private updateSkipView(Lnet/aihelp/data/model/rpa/RPAStep;)V
    .locals 2

    .line 379
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 380
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->bottomContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/cs/bottom/BottomBaseView;

    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {v0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->updateSkipStep(Lnet/aihelp/data/model/rpa/RPAStep;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getHostFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    return-object p0
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_customer_service"

    .line 387
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getLoadingTargetViewId()I
    .locals 1

    const-string v0, "aihelp_customer_service_root"

    .line 392
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 3

    .line 89
    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->initEventAndData(Landroid/view/View;)V

    const-string p1, "aihelp_smart_intent"

    .line 91
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/cs/widget/SmartIntentView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mIntentView:Lnet/aihelp/ui/cs/widget/SmartIntentView;

    .line 92
    invoke-virtual {p1, p0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->setBottomViewEventListener(Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;)V

    const-string p1, "aihelp_tv_skip"

    .line 94
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mSkipView:Landroid/widget/TextView;

    const-string p1, "aihelp_refresh_layout"

    .line 96
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    iput-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    .line 97
    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isHistoryChatEnable:Z

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setEnabled(Z)V

    .line 98
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 99
    sget-boolean p1, Lnet/aihelp/common/CustomConfig$CustomerService;->isHistoryChatEnable:Z

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    new-instance v0, Lnet/aihelp/ui/cs/CustomerServiceFragment$1;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment$1;-><init>(Lnet/aihelp/ui/cs/CustomerServiceFragment;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setOnRefreshListener(Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout$OnRefreshListener;)V

    .line 108
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    new-instance v0, Lnet/aihelp/ui/cs/CustomerServiceFragment$2;

    invoke-direct {v0, p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment$2;-><init>(Lnet/aihelp/ui/cs/CustomerServiceFragment;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->setOnClickedListener(Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;)V

    .line 139
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->prepareMqtt()V

    return-void
.end method

.method public notifyMessageWithdrawn(J)V
    .locals 5

    .line 266
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 267
    iget-object v2, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/data/model/rpa/RPAMessage;

    .line 268
    invoke-virtual {v2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getTimestamp()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 269
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->remove(I)V

    .line 270
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-virtual {p1, v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->updateCachedUnreadMessageCount(Z)V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 402
    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/BaseCSFragment;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 404
    invoke-static {}, Lnet/aihelp/ui/helper/AttachmentPicker;->getInstance()Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lnet/aihelp/ui/helper/AttachmentPicker;->onAttachmentPickRequestResult(ILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 410
    invoke-super {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->onDestroy()V

    .line 411
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-virtual {v0}, Lnet/aihelp/data/logic/CustomerServicePresenter;->logout()V

    .line 412
    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->disconnect()V

    return-void
.end method

.method public onEventComing(Lnet/aihelp/data/event/PrepareMessageTimeStampEvent;)V
    .locals 1

    .line 278
    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->onEventComing(Lnet/aihelp/data/event/PrepareMessageTimeStampEvent;)V

    .line 280
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast p1, Lnet/aihelp/data/logic/CustomerServicePresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/data/logic/CustomerServicePresenter;->updateCachedUnreadMessageCount(Z)V

    return-void
.end method

.method public onFormSubmitted(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 158
    iput-boolean v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->shouldRefreshSkipView:Z

    .line 159
    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-static {p1}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->getUserFormMsgList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lnet/aihelp/ui/adapter/MessageListAdapter;->update(Ljava/util/List;Ljava/lang/Boolean;)V

    .line 160
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1, v1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->scrollToPosition(I)V

    .line 161
    sget-boolean p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketActive:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;

    if-nez p1, :cond_0

    .line 162
    new-instance p1, Lnet/aihelp/data/model/rpa/RPAStep;

    invoke-direct {p1}, Lnet/aihelp/data/model/rpa/RPAStep;-><init>()V

    const/16 v0, 0x64

    .line 163
    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    .line 164
    new-instance v0, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-direct {v0}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>()V

    invoke-virtual {p0, v0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateBottomLayout(Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V

    :cond_0
    return-void
.end method

.method public onIntentOrSkipViewVisibilityChanged()V
    .locals 4

    .line 417
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mIntentView:Lnet/aihelp/ui/cs/widget/SmartIntentView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 418
    :goto_0
    iget-object v3, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mSkipView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 420
    :goto_1
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/high16 v0, 0x42340000    # 45.0f

    :goto_3
    invoke-static {v2, v0}, Lnet/aihelp/utils/Styles;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    .line 422
    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-virtual {v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 423
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_4

    .line 424
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 425
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v2, v0, :cond_4

    .line 426
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 427
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->scrollRecyclerViewToEnd()V

    :cond_4
    return-void
.end method

.method public onLastConversationRetrieved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;)V"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mRefreshLayout:Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpSwipeRefreshLayout;->setRefreshing(Z)V

    if-eqz p1, :cond_0

    .line 171
    iget v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mCurrentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mCurrentPage:I

    .line 172
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->insertHistoryConversation(Ljava/util/List;)V

    .line 173
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-virtual {v0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 174
    instance-of v2, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v2, :cond_0

    .line 175
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 176
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    .line 177
    iget-object v2, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p1, v0

    invoke-virtual {v2, p1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->scrollToPosition(I)V

    .line 178
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    const/16 v0, -0x64

    invoke-virtual {p1, v1, v0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method public onLogin(Ljava/util/List;Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            "Lnet/aihelp/data/model/rpa/RPAStep;",
            ")V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lnet/aihelp/ui/adapter/MessageListAdapter;->update(Ljava/util/List;Ljava/lang/Boolean;)V

    .line 153
    invoke-virtual {p0, p2, p3}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateBottomLayout(Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V

    .line 154
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    iget-object p2, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {p2}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onNetworkStateChanged(Lnet/aihelp/core/net/monitor/NetworkState;)V
    .locals 1
    .annotation runtime Lnet/aihelp/core/net/monitor/NetworkMonitor;
    .end annotation

    .line 285
    sget-object v0, Lnet/aihelp/core/net/monitor/NetworkState;->NONE:Lnet/aihelp/core/net/monitor/NetworkState;

    if-ne p1, v0, :cond_0

    .line 286
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->onMqttFailure(Ljava/lang/String;)V

    goto :goto_0

    .line 288
    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->prepare(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    :goto_0
    return-void
.end method

.method public onNewConversationStarted()V
    .locals 2

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->isTicketAlreadyFinished:Z

    .line 249
    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v1, Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-virtual {v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->logout()V

    .line 250
    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v1, Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-virtual {v1, v0}, Lnet/aihelp/data/logic/CustomerServicePresenter;->requestLogin(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 78
    invoke-super {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->onResume()V

    .line 80
    iget-boolean v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->shouldRefreshSkipView:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->scrollToPosition(I)V

    .line 83
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mCurrentStep:Lnet/aihelp/data/model/rpa/RPAStep;

    invoke-direct {p0, v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateSkipView(Lnet/aihelp/data/model/rpa/RPAStep;)V

    :cond_0
    return-void
.end method

.method public onTicketAssignStatusChanged()V
    .locals 1

    const/4 v0, 0x1

    .line 206
    iput-boolean v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->shouldRefreshSkipView:Z

    .line 207
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mIntentView:Lnet/aihelp/ui/cs/widget/SmartIntentView;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->updateViewVisibility()V

    return-void
.end method

.method public onTicketFinished(I)V
    .locals 1

    const/4 v0, 0x1

    .line 240
    iput-boolean v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->isTicketAlreadyFinished:Z

    .line 241
    new-instance v0, Lnet/aihelp/data/model/rpa/RPAStep;

    invoke-direct {v0}, Lnet/aihelp/data/model/rpa/RPAStep;-><init>()V

    .line 242
    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    .line 243
    new-instance p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-direct {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>()V

    invoke-virtual {p0, p1, v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateBottomLayout(Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V

    return-void
.end method

.method public onTicketFinishedOrRejected()V
    .locals 3

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->isTicketAlreadyFinished:Z

    .line 185
    new-instance v0, Lnet/aihelp/data/model/rpa/RPAStep;

    invoke-direct {v0}, Lnet/aihelp/data/model/rpa/RPAStep;-><init>()V

    .line 187
    sget-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketFinished:Z

    const/16 v2, 0x66

    if-eqz v1, :cond_2

    .line 188
    sget-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForAskingResolveStatus:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForRating:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {v0, v2}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v1, 0x65

    .line 189
    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    goto :goto_1

    .line 193
    :cond_2
    sget-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketRejected:Z

    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {v0, v2}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    .line 197
    :cond_3
    :goto_1
    new-instance v1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-direct {v1}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>()V

    invoke-virtual {p0, v1, v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateBottomLayout(Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0, v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateSkipView(Lnet/aihelp/data/model/rpa/RPAStep;)V

    .line 201
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mIntentView:Lnet/aihelp/ui/cs/widget/SmartIntentView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->setVisibility(I)V

    .line 202
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->updateAgentTypingStatus(Z)V

    return-void
.end method

.method public onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 4

    const/4 v0, 0x0

    .line 213
    invoke-direct {p0, v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateSkipView(Lnet/aihelp/data/model/rpa/RPAStep;)V

    .line 214
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mIntentView:Lnet/aihelp/ui/cs/widget/SmartIntentView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->setVisibility(I)V

    .line 216
    instance-of v0, p1, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgStatus()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 218
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateChatList(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    goto :goto_0

    .line 220
    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateMessageStatus(ZJ)V

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateChatList(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    .line 226
    :goto_0
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgStatus()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 227
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getRequestParams()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lnet/aihelp/data/logic/CustomerServicePresenter;->chatWithSupport(JLorg/json/JSONObject;)V

    .line 232
    :cond_2
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->isDuringRPAProcedure()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 233
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_3
    return-void
.end method

.method public prepareLogin()V
    .locals 2

    .line 148
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/CustomerServicePresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->requestLogin(Z)V

    return-void
.end method

.method public prepareMqtt()V
    .locals 2

    .line 143
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-interface {v0, p0}, Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;->updateHostView(Landroidx/fragment/app/Fragment;)V

    .line 144
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mPresenter:Lnet/aihelp/core/mvp/IPresenter;

    check-cast v0, Lnet/aihelp/data/logic/CustomerServicePresenter;

    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->prepareMqtt(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    return-void
.end method

.method public updateBottomLayout(Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V
    .locals 5

    .line 293
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mIntentView:Lnet/aihelp/ui/cs/widget/SmartIntentView;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/widget/SmartIntentView;->updateViewVisibility()V

    .line 294
    iput-object p2, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mCurrentStep:Lnet/aihelp/data/model/rpa/RPAStep;

    .line 297
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 298
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAStep;->getNextStep()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    const/4 p1, 0x0

    goto/16 :goto_0

    .line 347
    :pswitch_0
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomNewConversationView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 344
    :pswitch_1
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateServiceView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 339
    :pswitch_2
    iget-boolean p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->isTicketAlreadyFinished:Z

    const-string v1, "bottom_ticket_finished"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "bottom_during_procedure"

    .line 340
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 330
    :pswitch_3
    instance-of v1, p1, Lnet/aihelp/data/model/rpa/BotMessage;

    if-eqz v1, :cond_0

    check-cast p1, Lnet/aihelp/data/model/rpa/BotMessage;

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->hasFaq()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->getFaq()Lnet/aihelp/data/model/rpa/bot/Faq;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/Faq;->getFaqDataList()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 332
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 333
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getContentId()J

    move-result-wide v3

    const-string p1, "bottom_faq_content_id"

    invoke-virtual {v0, p1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 336
    :cond_0
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomEvaluateFaqView;-><init>(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 322
    :pswitch_4
    instance-of v1, p1, Lnet/aihelp/data/model/rpa/BotMessage;

    if-eqz v1, :cond_1

    check-cast p1, Lnet/aihelp/data/model/rpa/BotMessage;

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->hasSelfService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 323
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->getSelfService()Lnet/aihelp/data/model/rpa/bot/SelfService;

    move-result-object p1

    const-string v1, "bottom_self_service"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 324
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomSelfServiceView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 326
    :cond_1
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 314
    :pswitch_5
    instance-of v1, p1, Lnet/aihelp/data/model/rpa/BotMessage;

    if-eqz v1, :cond_2

    check-cast p1, Lnet/aihelp/data/model/rpa/BotMessage;

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->hasFormUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 315
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->getFormUrl()Lnet/aihelp/data/model/rpa/bot/FormUrl;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/FormUrl;->getLink()Ljava/lang/String;

    move-result-object p1

    const-string v1, "intent_url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomFillFormView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomFillFormView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 318
    :cond_2
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 311
    :pswitch_6
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 308
    :pswitch_7
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomDatePickerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 305
    :pswitch_8
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomActionPickerView;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 302
    :pswitch_9
    new-instance p1, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lnet/aihelp/ui/cs/bottom/BottomBotInputView;-><init>(Landroid/content/Context;)V

    :goto_0
    if-eqz p1, :cond_5

    .line 350
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->isBottomViewAlreadyAdded(Lnet/aihelp/ui/cs/bottom/BottomBaseView;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 351
    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketServingByRPA()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketServingByAgent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 352
    :cond_3
    iget-object v1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v1, v2}, Lnet/aihelp/ui/adapter/MessageListAdapter;->updateAgentTypingStatus(Z)V

    .line 354
    :cond_4
    invoke-virtual {p1, v0, p2, p0}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->setBottomViewEventListener(Landroid/os/Bundle;Lnet/aihelp/data/model/rpa/RPAStep;Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;)V

    .line 355
    iget-object p2, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 356
    iget-object p2, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->bottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 358
    :cond_5
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    new-instance p2, Lnet/aihelp/ui/cs/CustomerServiceFragment$3;

    invoke-direct {p2, p0}, Lnet/aihelp/ui/cs/CustomerServiceFragment$3;-><init>(Lnet/aihelp/ui/cs/CustomerServiceFragment;)V

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public updateMessageStatus(ZJ)V
    .locals 6

    .line 254
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->updateAgentTypingStatus(Z)V

    .line 255
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 256
    iget-object v2, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v2}, Lnet/aihelp/ui/adapter/MessageListAdapter;->getDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/data/model/rpa/RPAMessage;

    .line 257
    invoke-virtual {v2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getTimestamp()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-nez v5, :cond_1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x3

    .line 258
    :goto_1
    invoke-virtual {v2, v1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setMsgStatus(I)V

    .line 259
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;->notifyItemChanged(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method
