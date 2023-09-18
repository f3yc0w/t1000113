.class public Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "AgentRichTextAdapter.java"


# static fields
.field private static final REGEX_IMAGE:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

.field private static final REGEX_RICH_TEXT:Ljava/lang/String; = "https?://\\S*?((?=\\s+http)|\\.(PNG|png|JPG|jpg|JPEG|jpeg|mp4|MP4))|https?://((?!\").)*"

.field private static final REGEX_VIDEO:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;Landroid/content/Context;D)I
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->dip2px(Landroid/content/Context;D)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;Landroid/content/Context;D)I
    .locals 0

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->dip2px(Landroid/content/Context;D)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;)Landroid/content/Context;
    .locals 0

    .line 33
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private convertSupportTextMsg(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/ViewGroup;Lnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 3

    const-string v0, "aihelp_tv_nickname"

    .line 76
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lnet/aihelp/data/model/rpa/RPAMessage;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    .line 77
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p3}, Lnet/aihelp/data/model/rpa/RPAMessage;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setText(ILjava/lang/String;)Lnet/aihelp/core/ui/adapter/ViewHolder;

    .line 78
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setTextColor(II)Lnet/aihelp/core/ui/adapter/ViewHolder;

    .line 79
    invoke-virtual {p3}, Lnet/aihelp/data/model/rpa/RPAMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lnet/aihelp/data/model/rpa/RPAMessage;->isEnableInteraction()Z

    move-result p3

    invoke-virtual {p0, p1, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getRichTextMsg(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private getImageViewFromRichText(Ljava/lang/String;)Landroid/view/View;
    .locals 3

    .line 132
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 133
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 135
    invoke-static {p1}, Lnet/aihelp/utils/DomainSupportHelper;->getAdjustedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 137
    new-instance v1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private getTextViewFromRichText(Ljava/lang/String;Z)Landroid/view/View;
    .locals 1

    .line 196
    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getMsg(Ljava/lang/String;Z)Landroid/widget/TextView;

    move-result-object p1

    .line 197
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method private getVideoViewFromRichText(Ljava/lang/String;)Landroid/view/View;
    .locals 11

    .line 149
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->mContext:Landroid/content/Context;

    const-string v1, "aihelp_loading_image_view"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "aihelp_image_view"

    .line 150
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/widget/ImageView;

    const-string v1, "aihelp_iv_play"

    .line 151
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/ImageView;

    const-string v1, "aihelp_v_mask"

    .line 152
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const-string v1, "aihelp_loading_view"

    .line 153
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 154
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v3, 0x405e000000000000L    # 120.0

    invoke-virtual {p0, v2, v3, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v2

    iget-object v3, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->mContext:Landroid/content/Context;

    const-wide v4, 0x4062c00000000000L    # 150.0

    invoke-virtual {p0, v3, v4, v5}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-static {p1}, Lnet/aihelp/utils/DomainSupportHelper;->getAdjustedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    new-instance v1, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;

    move-object v3, v1

    move-object v4, p0

    move-object v5, v0

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter$2;-><init>(Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)V

    invoke-static {p1, v1}, Lnet/aihelp/utils/MediaUtils;->getImageForVideo(Ljava/lang/String;Lnet/aihelp/utils/MediaUtils$OnLoadVideoImageListener;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 33
    check-cast p2, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 5

    const-string p3, "aihelp_agent_message_container"

    .line 58
    invoke-virtual {p0, p3}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    .line 59
    iget-boolean v0, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->isCurrentRtl:Z

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getAdminBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    const-string v0, "aihelp_iv_portrait"

    .line 62
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CustomerService;->csManualSupportPortrait:Ljava/lang/String;

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    const-string v3, "aihelp_svg_portrait_agent"

    invoke-static {v0, v1, v2, v3}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "aihelp_tv_nickname"

    .line 65
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 66
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getNickname()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->textColor:Ljava/lang/String;

    const-wide v3, 0x3fe999999999999aL    # 0.8

    .line 67
    invoke-static {v2, v3, v4}, Lnet/aihelp/utils/Styles;->getColorWithAlpha(Ljava/lang/String;D)I

    move-result v2

    sget-boolean v3, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0xd

    .line 65
    invoke-static {v0, v1, v2, v3, v4}, Lnet/aihelp/utils/Styles;->reRenderTextView(Landroid/widget/TextView;Ljava/lang/String;IZI)V

    .line 71
    invoke-direct {p0, p1, p3, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->convertSupportTextMsg(Lnet/aihelp/core/ui/adapter/ViewHolder;Landroid/view/ViewGroup;Lnet/aihelp/data/model/rpa/RPAMessage;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_agent"

    .line 47
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getRichTextMsg(Ljava/lang/String;Z)Landroid/view/View;
    .locals 6

    .line 91
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v2, 0x800003

    .line 93
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 96
    :try_start_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    const/4 v3, 0x0

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v4, "https?://\\S*?((?=\\s+http)|\\.(PNG|png|JPG|jpg|JPEG|jpeg|mp4|MP4))|https?://((?!\").)*"

    .line 100
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 101
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 102
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 110
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-ge v3, v4, :cond_5

    .line 111
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\\s*?"

    .line 113
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    const-string v5, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    .line 117
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 118
    invoke-direct {p0, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getImageViewFromRichText(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    const-string v5, "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

    .line 119
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 120
    invoke-direct {p0, v4}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getVideoViewFromRichText(Ljava/lang/String;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 122
    :cond_4
    invoke-direct {p0, v4, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->getTextViewFromRichText(Ljava/lang/String;Z)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 126
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-object v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 33
    check-cast p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/agent/AgentRichTextAdapter;->isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z
    .locals 0

    .line 52
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
