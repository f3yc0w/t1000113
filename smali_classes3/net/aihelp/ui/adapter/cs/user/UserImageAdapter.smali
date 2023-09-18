.class public Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "UserImageAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 19
    check-cast p2, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 5

    .line 37
    instance-of v0, p2, Lnet/aihelp/data/model/rpa/MediaMessage;

    if-eqz v0, :cond_1

    .line 38
    move-object v0, p2

    check-cast v0, Lnet/aihelp/data/model/rpa/MediaMessage;

    const-string v1, "aihelp_iv_portrait"

    .line 40
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    sget-object v2, Lnet/aihelp/common/CustomConfig$CustomerService;->csUserPortrait:Ljava/lang/String;

    sget-boolean v3, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    const-string v4, "aihelp_svg_portrait_user"

    invoke-static {v1, v2, v3, v4}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v1, "aihelp_iv_msg_retry"

    .line 43
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    const-string v2, "aihelp_iv_holder"

    .line 45
    invoke-virtual {p0, v2}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    .line 46
    iget-object v3, p0, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, v0}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->loadIntoImageView(Landroid/content/Context;Lnet/aihelp/data/model/rpa/MediaMessage;)V

    .line 48
    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/MediaMessage;->getMsgStatus()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 49
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    .line 50
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p3, p2}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->getRetryListener(ILnet/aihelp/data/model/rpa/RPAMessage;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lnet/aihelp/core/ui/adapter/ViewHolder;

    return-void

    .line 54
    :cond_0
    new-instance p1, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;

    invoke-direct {p1, p0, v2, v0}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;Lnet/aihelp/ui/widget/AIHelpLoadingImageView;Lnet/aihelp/data/model/rpa/MediaMessage;)V

    invoke-virtual {v2, p1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_user_image"

    .line 27
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 19
    check-cast p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/user/UserImageAdapter;->isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z
    .locals 0

    .line 32
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result p1

    const/16 p2, 0xa

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
