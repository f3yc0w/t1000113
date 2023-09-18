.class public Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "UserTextAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getRightfulMaxWidth(Lnet/aihelp/core/ui/adapter/ViewHolder;)I
    .locals 5

    const-string v0, "aihelp_iv_portrait"

    .line 67
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "aihelp_user_message_text"

    .line 68
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 69
    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->getScreenWidth(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->mContext:Landroid/content/Context;

    const-wide v3, 0x4043800000000000L    # 39.0

    invoke-virtual {p0, v2, v3, v4}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v2

    .line 70
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v0

    .line 71
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, p1

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1
.end method

.method private getUserBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 75
    sget-object v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->interactElementTextColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-eqz p1, :cond_0

    .line 76
    invoke-static {v0, v1, v2, v2, v2}, Lnet/aihelp/utils/Styles;->getDrawableWithCorner(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 77
    :cond_0
    invoke-static {v0, v2, v1, v2, v2}, Lnet/aihelp/utils/Styles;->getDrawableWithCorner(IIIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 22
    check-cast p2, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 5

    const-string v0, "aihelp_iv_portrait"

    .line 41
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CustomerService;->csUserPortrait:Ljava/lang/String;

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    const-string v3, "aihelp_svg_portrait_user"

    invoke-static {v0, v1, v2, v3}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "aihelp_user_message_text"

    .line 44
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 45
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/CustomConfig$CommonSetting;->highlightedColor:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->getUrlSupportedText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, -0x1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    new-instance v1, Lnet/aihelp/ui/widget/AIHelpMovementMethod;

    invoke-direct {v1}, Lnet/aihelp/ui/widget/AIHelpMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 48
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->getRightfulMaxWidth(Lnet/aihelp/core/ui/adapter/ViewHolder;)I

    move-result v1

    iget-object v2, p0, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v3, 0x4069000000000000L    # 200.0

    invoke-virtual {p0, v2, v3, v4}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->dip2px(Landroid/content/Context;D)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 49
    iget-boolean v1, p0, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->isCurrentRtl:Z

    invoke-direct {p0, v1}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->getUserBackgroundDrawable(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "aihelp_iv_msg_retry"

    .line 51
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/AppCompatImageButton;

    .line 52
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setVisibility(I)V

    const-string v0, "aihelp_svg_iv_msg_retry"

    .line 59
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatImageButton;->setImageResource(I)V

    .line 60
    invoke-virtual {p0, p3, p2}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->getRetryListener(ILnet/aihelp/data/model/rpa/RPAMessage;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    .line 55
    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageButton;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_user"

    .line 30
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 22
    check-cast p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/user/UserTextAdapter;->isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z
    .locals 0

    .line 35
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
