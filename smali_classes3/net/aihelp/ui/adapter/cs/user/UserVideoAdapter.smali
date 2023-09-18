.class public Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;
.super Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;
.source "UserVideoAdapter.java"


# instance fields
.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/MediaMessage;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->loadUpImageView(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/MediaMessage;I)V

    return-void
.end method

.method static synthetic access$300(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;)Landroid/content/Context;
    .locals 0

    .line 24
    iget-object p0, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private loadUpImageView(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/MediaMessage;I)V
    .locals 3

    const-string v0, "aihelp_iv_holder"

    .line 82
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;

    .line 83
    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->loadIntoImageView(Landroid/content/Context;Lnet/aihelp/data/model/rpa/MediaMessage;)V

    .line 85
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getMsgStatus()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v0, "aihelp_iv_msg_retry"

    .line 86
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->getViewId(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    .line 87
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p3, p2}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->getRetryListener(ILnet/aihelp/data/model/rpa/RPAMessage;)Landroid/view/View$OnClickListener;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setOnClickListener(ILandroid/view/View$OnClickListener;)Lnet/aihelp/core/ui/adapter/ViewHolder;

    return-void

    .line 91
    :cond_0
    new-instance p1, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$2;

    invoke-direct {p1, p0, v0, p2}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$2;-><init>(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;Lnet/aihelp/ui/widget/AIHelpLoadingImageView;Lnet/aihelp/data/model/rpa/MediaMessage;)V

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .line 24
    check-cast p2, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V

    return-void
.end method

.method public convert(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/RPAMessage;I)V
    .locals 4

    .line 46
    instance-of v0, p2, Lnet/aihelp/data/model/rpa/MediaMessage;

    if-eqz v0, :cond_1

    .line 47
    check-cast p2, Lnet/aihelp/data/model/rpa/MediaMessage;

    const-string v0, "aihelp_iv_portrait"

    .line 49
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/aihelp/core/ui/adapter/ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    sget-object v1, Lnet/aihelp/common/CustomConfig$CustomerService;->csUserPortrait:Ljava/lang/String;

    sget-boolean v2, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    const-string v3, "aihelp_svg_portrait_user"

    invoke-static {v0, v1, v2, v3}, Lnet/aihelp/utils/Styles;->loadIcon(Landroid/widget/ImageView;Ljava/lang/String;ZLjava/lang/String;)V

    const-string v0, "aihelp_iv_msg_retry"

    .line 52
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->getViewId(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/ui/adapter/ViewHolder;->setVisible(IZ)Lnet/aihelp/core/ui/adapter/ViewHolder;

    .line 54
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getVideoThumbnail()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->loadUpImageView(Lnet/aihelp/core/ui/adapter/ViewHolder;Lnet/aihelp/data/model/rpa/MediaMessage;I)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    new-instance v1, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;

    invoke-direct {v1, p0, p2, p1, p3}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter$1;-><init>(Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;Lnet/aihelp/data/model/rpa/MediaMessage;Lnet/aihelp/core/ui/adapter/ViewHolder;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getItemViewLayoutId()I
    .locals 1

    const-string v0, "aihelp_ada_msg_user_video"

    .line 35
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic isForViewType(Ljava/lang/Object;I)Z
    .locals 0

    .line 24
    check-cast p1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-virtual {p0, p1, p2}, Lnet/aihelp/ui/adapter/cs/user/UserVideoAdapter;->isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z

    move-result p1

    return p1
.end method

.method public isForViewType(Lnet/aihelp/data/model/rpa/RPAMessage;I)Z
    .locals 0

    .line 40
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getMsgType()I

    move-result p1

    const/16 p2, 0xb

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
