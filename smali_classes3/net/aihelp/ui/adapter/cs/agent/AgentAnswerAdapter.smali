.class public Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;
.super Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;
.source "AgentAnswerAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getListItem(ILnet/aihelp/data/model/rpa/bot/Answer;)Landroid/widget/TextView;
    .locals 2

    .line 85
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Answer;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Answer;->getFaqData()Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-result-object p2

    .line 87
    invoke-super {p0, p1, v0, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getListItem(ILjava/lang/String;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)Landroid/widget/TextView;

    move-result-object p1

    .line 88
    new-instance v1, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$FVn7v--GLohky1fb_2zMh6wnm4E;

    invoke-direct {v1, p0, v0, p2}, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$FVn7v--GLohky1fb_2zMh6wnm4E;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;Ljava/lang/String;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private isSingleFaqMatched(Lnet/aihelp/data/model/rpa/BotMessage;)Z
    .locals 3

    .line 69
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->hasBotAnswers()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->getBotAnswers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 70
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->getBotAnswers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/data/model/rpa/bot/Answer;

    .line 71
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/Answer;->getType()I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/Answer;->getFaqData()Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private onFaqEvaluated(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Z)V
    .locals 2

    const-string v0, "aihelp_rl_evaluate_faq"

    .line 125
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    .line 126
    invoke-static {p3, p4}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->postHelpfulStatusForAnswerBot(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Z)V

    if-eqz p4, :cond_0

    .line 129
    sget-object p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->commonPositiveFeedbackHint:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->commonNegativeFeedbackHint:Ljava/lang/String;

    :goto_0
    sget-object p4, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    .line 130
    invoke-static {p4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p4

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 127
    invoke-static {p2, p1, p4, v1, v0}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;IZI)V

    .line 133
    invoke-virtual {p3, v1}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->setFaqEvaluated(Z)V

    return-void
.end method

.method private static postHelpfulStatusForAnswerBot(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Z)V
    .locals 4

    .line 138
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "mainId"

    .line 139
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getMainId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "contentId"

    .line 140
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getContentId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "type"

    if-eqz p1, :cond_0

    const-string p1, "like"

    goto :goto_0

    :cond_0
    const-string p1, "unlike"

    .line 141
    :goto_0
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "isClickDetail"

    .line 142
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->isFaqViewed()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 143
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object p0

    sget-object p1, Lnet/aihelp/common/API;->EVALUATE_ANSWER_BOT_FAQ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestPostByJson(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private prepareEvaluateLayout(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
    .locals 3

    .line 109
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->isFaqEvaluated()Z

    move-result v0

    const-string v1, "aihelp_rl_evaluate_faq"

    if-nez v0, :cond_0

    sget-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isEvaluationForBotEnable:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    const-string v0, "aihelp_tv_thanks"

    .line 111
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, "aihelp_btn_un_helpful"

    .line 113
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;

    invoke-direct {v2, p0, p1, v0, p2}, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$LpliPCI0T6qm35YcqO8mKV9ocT0;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lnet/aihelp/core/ui/adapter/ViewHolder;

    const-string v1, "aihelp_btn_helpful"

    .line 116
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$3GckxZFA3Z7YxKhJQiOWvK1GpJg;

    invoke-direct {v2, p0, p1, v0, p2}, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentAnswerAdapter$3GckxZFA3Z7YxKhJQiOWvK1GpJg;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lnet/aihelp/core/ui/adapter/ViewHolder;

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->getViewId(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    :goto_0
    return-void
.end method

.method private sendRPAMessageWithBotAnswer(Ljava/lang/String;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-static {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v0

    const/4 v1, 0x1

    .line 101
    invoke-virtual {v0, p1, v1}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;I)V

    .line 102
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onBotAnswerSelected(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 31
    check-cast p2, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 1

    .line 44
    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    .line 47
    instance-of p3, p2, Lnet/aihelp/data/model/rpa/BotMessage;

    if-eqz p3, :cond_2

    .line 48
    check-cast p2, Lnet/aihelp/data/model/rpa/BotMessage;

    .line 49
    invoke-direct {p0, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->isSingleFaqMatched(Lnet/aihelp/data/model/rpa/BotMessage;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 51
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->llContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 52
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getBotAnswers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/aihelp/data/model/rpa/bot/Answer;

    .line 53
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->llContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Answer;->getFaqData()Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->getSingleFAQItem(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 54
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Answer;->getFaqData()Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-result-object p3

    invoke-virtual {p3}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->hasAttachedForm()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 55
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->llContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Answer;->getFaqData()Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->prepareFaqFormLayout(Landroid/widget/LinearLayout;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    .line 57
    :cond_0
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Answer;->getFaqData()Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->prepareEvaluateLayout(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    goto :goto_1

    .line 59
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getBotAnswers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_2

    .line 60
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getBotAnswers()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/data/model/rpa/bot/Answer;

    .line 61
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->llContainer:Landroid/widget/LinearLayout;

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->getListItem(ILnet/aihelp/data/model/rpa/bot/Answer;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 31
    check-cast p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z
    .locals 0

    .line 39
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$getListItem$0$AgentAnswerAdapter(Ljava/lang/String;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Landroid/view/View;)V
    .locals 0

    .line 89
    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketServingByAnswerBot()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 90
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->sendRPAMessageWithBotAnswer(Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->checkoutFaqDetail(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$prepareEvaluateLayout$1$AgentAnswerAdapter(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Landroid/view/View;)V
    .locals 0

    const/4 p4, 0x0

    .line 114
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->onFaqEvaluated(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Z)V

    return-void
.end method

.method public synthetic lambda$prepareEvaluateLayout$2$AgentAnswerAdapter(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Landroid/view/View;)V
    .locals 0

    const/4 p4, 0x1

    .line 117
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/aihelp/ui/adapter/cs/agent/AgentAnswerAdapter;->onFaqEvaluated(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Z)V

    return-void
.end method
