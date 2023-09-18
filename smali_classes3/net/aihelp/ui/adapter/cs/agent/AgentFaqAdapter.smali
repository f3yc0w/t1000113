.class public Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "AgentFaqAdapter.java"


# instance fields
.field protected llContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    .line 29
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    .line 29
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method private getFaqViewer(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)Landroid/view/View$OnClickListener;
    .locals 1

    .line 161
    new-instance v0, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentFaqAdapter$4XW4aWgY4I25yx0wtp36ZTEPUNw;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/ui/adapter/cs/agent/-$$Lambda$AgentFaqAdapter$4XW4aWgY4I25yx0wtp36ZTEPUNw;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    return-object v0
.end method


# virtual methods
.method protected checkoutFaqDetail(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 165
    invoke-static {}, Lnet/aihelp/utils/FastClickValidator;->validate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 166
    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->setFaqViewed(Z)V

    .line 167
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getFaqContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/DomainSupportHelper;->getAdjustedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "isCustom=1"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&isCustom=1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    :cond_0
    sget-object v1, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->INSTANCE:Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->show(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    invoke-static {p1}, Lnet/aihelp/ui/helper/StatisticHelper;->whenBotFAQClicked(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 29
    check-cast p2, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 6

    .line 50
    instance-of p3, p2, Lnet/aihelp/data/model/rpa/BotMessage;

    if-eqz p3, :cond_3

    .line 51
    check-cast p2, Lnet/aihelp/data/model/rpa/BotMessage;

    const-string p3, "aihelp_iv_portrait"

    .line 53
    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csBotSupportPortrait:Ljava/lang/String;

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    const-string v2, "aihelp_svg_portrait_robot"

    invoke-static {p3, v0, v1, v2}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p3, "aihelp_tv_nickname"

    .line 56
    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 57
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getNickname()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 58
    invoke-static {v1, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 59
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v5, 0xd

    .line 56
    invoke-static {p3, v0, v1, v2, v5}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;IZI)V

    const-string p3, "aihelp_agent_faq_container"

    .line 62
    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->llContainer:Landroid/widget/LinearLayout;

    .line 63
    iget-boolean v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->isCurrentRtl:Z

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getAdminBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 64
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->llContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 66
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->llContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->isEnableInteraction()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getMsg(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 68
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->hasFaq()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 69
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getFaq()Lnet/aihelp/data/model/rpa/bot/Faq;

    move-result-object p2

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Faq;->getFaqDataList()Ljava/util/List;

    move-result-object p2

    .line 70
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v3, :cond_1

    .line 71
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    .line 72
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->llContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getSingleFAQItem(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->hasAttachedForm()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 74
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->llContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p3, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->prepareFaqFormLayout(Landroid/widget/LinearLayout;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    goto :goto_2

    :cond_1
    const/4 p3, 0x0

    .line 77
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 78
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    .line 79
    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->llContainer:Landroid/widget/LinearLayout;

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getFaqTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p3, v2, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getListItem(ILjava/lang/String;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_2
    :goto_2
    const-string p2, "aihelp_rl_evaluate_faq"

    .line 85
    invoke-virtual {p0, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v4}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    const-string p2, "aihelp_tv_thanks"

    .line 86
    invoke-virtual {p0, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v4}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    :cond_3
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_agent_faq_like"

    .line 39
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getListItem(ILjava/lang/String;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)Landroid/widget/TextView;
    .locals 5

    .line 91
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p2, "%s. %s"

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p2, 0x41700000    # 15.0f

    .line 93
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 95
    sget-object p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 96
    invoke-direct {p0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getFaqViewer(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 p2, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result p1

    iget-object p2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    const-wide/16 v3, 0x0

    invoke-virtual {p0, p2, v3, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result p2

    invoke-virtual {v0, v2, p1, v2, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-object v0
.end method

.method protected getSingleFAQItem(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)Landroid/view/View;
    .locals 11

    .line 102
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 105
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    const/high16 v5, 0x41700000    # 15.0f

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 106
    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 108
    iget-object v7, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v7, v3, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1, v7, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 109
    sget-object v7, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 110
    iget-object v7, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v8, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, v7, v8, v9}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v7

    iget-object v8, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v9, 0x4028000000000000L    # 12.0

    invoke-virtual {p0, v8, v9, v10}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v8

    invoke-virtual {v1, v6, v7, v6, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getTemplate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    :cond_0
    new-instance v1, Landroid/widget/TextView;

    iget-object v7, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 116
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x1

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v5, 0x11

    .line 118
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 119
    iget-object v5, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v3, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 120
    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v3, 0x401c000000000000L    # 7.0

    invoke-virtual {p0, v2, v3, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iget-object v5, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v3, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v2, "aihelp_view_details"

    .line 122
    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getFaqViewer(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 29
    check-cast p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z
    .locals 0

    .line 44
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result p1

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic lambda$getFaqViewer$0$AgentFaqAdapter(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;Landroid/view/View;)V
    .locals 0

    .line 161
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->checkoutFaqDetail(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    return-void
.end method

.method protected prepareFaqFormLayout(Landroid/widget/LinearLayout;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
    .locals 6

    .line 131
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 132
    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v2, 0x3fb99999a0000000L    # 0.10000000149011612

    invoke-static {v1, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0, v2, v3, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v2

    const/4 v3, -0x2

    invoke-direct {v1, v3, v2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, v1, v4, v5}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 135
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v4, v5}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    const-string v1, "aihelp_form_hint"

    .line 140
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 143
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getFormTitle()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter$1;

    invoke-direct {v1, p0, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->getHighlightedClickableTextView(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p2

    .line 154
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 155
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 156
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    invoke-virtual {p0, v0, v3, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentFaqAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v0

    invoke-virtual {p2, v2, v0, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 157
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method
