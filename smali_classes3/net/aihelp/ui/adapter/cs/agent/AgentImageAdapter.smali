.class public Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "AgentImageAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;)Landroid/content/Context;
    .locals 0

    .line 18
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 18
    check-cast p2, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 4

    .line 37
    instance-of p3, p2, Lnet/aihelp/data/model/rpa/MediaMessage;

    if-eqz p3, :cond_1

    .line 39
    check-cast p2, Lnet/aihelp/data/model/rpa/MediaMessage;

    const-string p3, "aihelp_iv_portrait"

    .line 41
    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    sget-object v0, Lnet/aihelp/common/CustomConfig$CustomerService;->csManualSupportPortrait:Ljava/lang/String;

    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    const-string v2, "aihelp_svg_portrait_agent"

    invoke-static {p3, v0, v1, v2}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string p3, "aihelp_tv_nickname"

    .line 44
    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 45
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getNickname()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v2, 0x3fe999999999999aL    # 0.8

    .line 46
    invoke-static {v1, v2, v3}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v1

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0xd

    .line 44
    invoke-static {p3, v0, v1, v2, v3}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;IZI)V

    const-string p3, "aihelp_iv_holder"

    .line 50
    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    .line 51
    iget-object p3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p3, p2}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->loadIntoImageView(Landroid/content/Context;Lnet/aihelp/data/model/rpa/MediaMessage;)V

    .line 53
    new-instance p3, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter$1;

    invoke-direct {p3, p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;Lnet/aihelp/ui/widget/AIHelpLoadingImageView;Lnet/aihelp/data/model/rpa/MediaMessage;)V

    invoke-virtual {p1, p3}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_agent_image"

    .line 26
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 18
    check-cast p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentImageAdapter;->isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z
    .locals 0

    .line 31
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
