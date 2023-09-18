.class public abstract Lnet/aihelp/ui/cs/BaseCSFragment;
.super Lnet/aihelp/core/ui/BaseFragment;
.source "BaseCSFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P::",
        "Lnet/aihelp/core/mvp/IPresenter;",
        ">",
        "Lnet/aihelp/core/ui/BaseFragment<",
        "TP;>;"
    }
.end annotation


# instance fields
.field bottomContainer:Landroid/view/ViewGroup;

.field btnSend:Landroidx/appcompat/widget/AppCompatImageButton;

.field etInput:Landroid/widget/EditText;

.field private helper:Lnet/aihelp/utils/KeyboardChangeHelper;

.field isAlwaysShowSupportInElva:Z

.field isOperateBot:Z

.field isOperateHuman:Z

.field mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

.field private mTimeStampMsg:Lnet/aihelp/data/model/rpa/RPAMessage;

.field mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

.field rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

.field private titleIcon:Ljava/lang/String;

.field private titleText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method private prepareTimeStamp(J)V
    .locals 5

    .line 198
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mTimeStampMsg:Lnet/aihelp/data/model/rpa/RPAMessage;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/RPAMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 199
    :cond_0
    new-instance v0, Lnet/aihelp/data/model/rpa/RPAMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>(I)V

    iput-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mTimeStampMsg:Lnet/aihelp/data/model/rpa/RPAMessage;

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setContent(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mTimeStampMsg:Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->updateChatList(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getBundleBeforeDataPrepared(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "bot_embedded_in_operation"

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->isOperateBot:Z

    const-string v0, "HUMAN_embedded_in_operation"

    .line 63
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->isOperateHuman:Z

    .line 64
    sget-object p1, Lnet/aihelp/common/CustomConfig$CustomerService;->csNavigationBarTitleIcon:Ljava/lang/String;

    iput-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->titleIcon:Ljava/lang/String;

    .line 65
    sget-object p1, Lnet/aihelp/common/CustomConfig$CustomerService;->csNavigationTitle:Ljava/lang/String;

    iput-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->titleText:Ljava/lang/String;

    return-void
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 3

    .line 77
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    new-instance v0, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(I)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    .line 79
    invoke-static {}, Lnet/aihelp/data/logic/MqttCallbackImpl;->getInstance()Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mqttCallback:Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;

    const-string p1, "aihelp_chat_bottom_layout"

    .line 81
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 82
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    sget-wide v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundAlpha:D

    invoke-static {v0, v1, v2}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const-string p1, "aihelp_bottom_container"

    .line 84
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->bottomContainer:Landroid/view/ViewGroup;

    const-string p1, "aihelp_rv_msg_list"

    .line 86
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->setBackgroundColor(I)V

    .line 88
    new-instance p1, Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    .line 89
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 90
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 91
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 93
    new-instance v0, Lnet/aihelp/utils/KeyboardChangeHelper;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/utils/KeyboardChangeHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->helper:Lnet/aihelp/utils/KeyboardChangeHelper;

    .line 94
    invoke-virtual {v0}, Lnet/aihelp/utils/KeyboardChangeHelper;->addListener()V

    .line 95
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->helper:Lnet/aihelp/utils/KeyboardChangeHelper;

    new-instance v1, Lnet/aihelp/ui/cs/BaseCSFragment$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/ui/cs/BaseCSFragment$1;-><init>(Lnet/aihelp/ui/cs/BaseCSFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/utils/KeyboardChangeHelper;->addOnKeyboardShowListener(Lnet/aihelp/utils/KeyboardChangeHelper$OnKeyboardShowListener;)V

    return-void
.end method

.method protected isBindEventBus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isNetCheckingInProgress()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 168
    invoke-super {p0, p1}, Lnet/aihelp/core/ui/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 169
    iget-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    if-eqz p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    invoke-static {p1, v0}, Lnet/aihelp/utils/SoftInputUtil;->hideSoftInput(Landroid/content/Context;Landroid/view/View;)V

    .line 171
    iget-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->setBackgroundColor(I)V

    .line 172
    iget-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 178
    invoke-super {p0}, Lnet/aihelp/core/ui/BaseFragment;->onDestroy()V

    .line 179
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->helper:Lnet/aihelp/utils/KeyboardChangeHelper;

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {v0}, Lnet/aihelp/utils/KeyboardChangeHelper;->removeListener()V

    :cond_0
    return-void
.end method

.method public onEventComing(Lnet/aihelp/data/event/PrepareMessageTimeStampEvent;)V
    .locals 2
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    .line 207
    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isMessageTimestampVisible:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {p1}, Lnet/aihelp/data/event/PrepareMessageTimeStampEvent;->getEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    .line 209
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getTimestamp()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lnet/aihelp/ui/cs/BaseCSFragment;->prepareTimeStamp(J)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 70
    invoke-super {p0}, Lnet/aihelp/core/ui/BaseFragment;->onResume()V

    .line 71
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/UpdateTitleEvent;

    iget-object v2, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->titleIcon:Ljava/lang/String;

    iget-object v3, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->titleText:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v4, v2, v3}, Lnet/aihelp/data/event/UpdateTitleEvent;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    .line 72
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/SearchViewVisibilityChangeEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/SearchViewVisibilityChangeEvent;-><init>(Z)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected onTextChange(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method protected scrollRecyclerViewToEnd()V
    .locals 2

    .line 146
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->rvMsgList:Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;

    new-instance v1, Lnet/aihelp/ui/cs/BaseCSFragment$2;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/BaseCSFragment$2;-><init>(Lnet/aihelp/ui/cs/BaseCSFragment;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/widget/AIHelpChatRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateChatList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;)V"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->update(Ljava/util/List;Ljava/lang/Boolean;)V

    .line 162
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->scrollRecyclerViewToEnd()V

    return-void
.end method

.method public updateChatList(Lnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 4

    .line 120
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->isEmptyMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 124
    :cond_0
    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isMessageTimestampVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 125
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getTimestamp()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lnet/aihelp/ui/cs/BaseCSFragment;->prepareTimeStamp(J)V

    .line 129
    :cond_1
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->isUserMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 130
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->update(Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->isDuringRPAProcedure()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 132
    iget-object p1, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {p1, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->updateAgentTypingStatus(Z)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->isAgentMessage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 135
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->isDuringRPAProcedure()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->updateAgentTypingStatus(Z)V

    .line 139
    :cond_3
    iget-object v0, p0, Lnet/aihelp/ui/cs/BaseCSFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->update(Ljava/lang/Object;)V

    .line 142
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/BaseCSFragment;->scrollRecyclerViewToEnd()V

    return-void
.end method

.method public updateChatListClearly(Lnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 1

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 157
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/BaseCSFragment;->updateChatList(Ljava/util/List;)V

    return-void
.end method

.method public updateNetCheckingStatus(Z)V
    .locals 0

    return-void
.end method
