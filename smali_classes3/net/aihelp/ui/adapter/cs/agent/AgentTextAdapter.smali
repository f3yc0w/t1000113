.class public Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "AgentTextAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;Ljava/lang/String;)I
    .locals 0

    .line 33
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private convertElvaBotTextMsg(Landroid/view/ViewGroup;Lnet/aihelp/data/model/rpa/BotMessage;)V
    .locals 3

    .line 90
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->isEnableInteraction()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getMsg(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 96
    :cond_0
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->hasExternalUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getExternalUrl()Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/ExternalUrl;->getTitle()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$1;

    invoke-direct {v2, p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;Lnet/aihelp/data/model/rpa/bot/ExternalUrl;)V

    invoke-virtual {p0, v1, v2}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getHighlightedClickableTextView(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 111
    :cond_1
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->hasSelfService()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/BotMessage;->getSelfService()Lnet/aihelp/data/model/rpa/bot/SelfService;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/SelfService;->isEnableSend()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "aihelp_view_details"

    .line 112
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$2;

    invoke-direct {v1, p0, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$2;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;Lnet/aihelp/data/model/rpa/BotMessage;)V

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getHighlightedClickableTextView(Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method private convertSupportTextMsg(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/ViewGroup;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 1

    .line 83
    invoke-virtual {p3}, Lnet/aihelp/data/model/rpa/RPAMessage;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lnet/aihelp/data/model/rpa/RPAMessage;->isEnableInteraction()Z

    move-result p3

    invoke-virtual {p0, v0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getMsg(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p3

    .line 84
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 85
    invoke-direct {p0, p1, p3, p4}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->prepareTranslate(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;I)V

    .line 86
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private prepareTranslate(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/widget/TextView;I)V
    .locals 7

    .line 124
    sget-boolean p3, Lnet/aihelp/common/Const;->TOGGLE_TRANSLATE_CS_MESSAGE:Z

    if-eqz p3, :cond_0

    .line 125
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result p3

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->mContext:Landroid/content/Context;

    const-wide v1, 0x4064a00000000000L    # 165.0

    invoke-virtual {p0, v0, v1, v2}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v0

    sub-int/2addr p3, v0

    .line 126
    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 127
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p3, "aihelp_iv_translate"

    .line 129
    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    new-instance v6, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;

    move-object v0, v6

    move-object v1, p0

    move-object v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter$3;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;Ljava/lang/String;Ljava/lang/StringBuilder;Landroid/widget/TextView;Lnet/aihelp/core/ui/adapter/ViewHolder;)V

    invoke-virtual {p1, p3, v6}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lnet/aihelp/core/ui/adapter/ViewHolder;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 33
    check-cast p2, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 8

    const-string v0, "aihelp_agent_message_container"

    .line 52
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 54
    iget-boolean v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->isCurrentRtl:Z

    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getAdminBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 55
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 57
    instance-of v1, p2, Lnet/aihelp/data/model/rpa/BotMessage;

    const-string v2, "aihelp_iv_portrait"

    .line 58
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 61
    sget-object v3, Lnet/aihelp/common/CustomConfig$CustomerService;->csBotSupportPortrait:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v3, Lnet/aihelp/common/CustomConfig$CustomerService;->csManualSupportPortrait:Ljava/lang/String;

    :goto_0
    sget-boolean v4, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    if-eqz v1, :cond_1

    const-string v5, "aihelp_svg_portrait_robot"

    goto :goto_1

    :cond_1
    const-string v5, "aihelp_svg_portrait_agent"

    .line 59
    :goto_1
    invoke-static {v2, v3, v4, v5}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v2, "aihelp_tv_nickname"

    .line 66
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 67
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getNickname()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v5, 0x3fe999999999999aL    # 0.8

    .line 68
    invoke-static {v4, v5, v6}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v4

    sget-boolean v5, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    .line 69
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getNickname()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    const/16 v7, 0xd

    .line 66
    invoke-static {v2, v3, v4, v5, v7}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;IZI)V

    const-string v2, "aihelp_iv_translate"

    if-eqz v1, :cond_3

    .line 73
    check-cast p2, Lnet/aihelp/data/model/rpa/BotMessage;

    invoke-direct {p0, v0, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->convertElvaBotTextMsg(Landroid/view/ViewGroup;Lnet/aihelp/data/model/rpa/BotMessage;)V

    .line 74
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v6}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    goto :goto_3

    .line 76
    :cond_3
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lnet/aihelp/common/Const;->TOGGLE_TRANSLATE_CS_MESSAGE:Z

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    .line 77
    invoke-direct {p0, p1, v0, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->convertSupportTextMsg(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/ViewGroup;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    :goto_3
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_agent"

    .line 41
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 33
    check-cast p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentTextAdapter;->isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z
    .locals 0

    .line 46
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
