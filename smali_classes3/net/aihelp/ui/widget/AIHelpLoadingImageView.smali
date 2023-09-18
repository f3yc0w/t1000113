.class public Lnet/aihelp/ui/widget/AIHelpLoadingImageView;
.super Landroid/widget/FrameLayout;
.source "AIHelpLoadingImageView.java"


# instance fields
.field private imageView:Landroidx/appcompat/widget/AppCompatImageView;

.field private isLoading:Z

.field private isVideo:Z

.field private ivPlay:Landroidx/appcompat/widget/AppCompatImageView;

.field private loadingView:Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;

.field private maskView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->getAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->getAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/ui/widget/AIHelpLoadingImageView;)Landroidx/appcompat/widget/AppCompatImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    return-object p0
.end method

.method private getAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const-string v0, "aihelp_widget"

    .line 85
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getStyleable(Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "aihelp_widget_is_video"

    .line 88
    invoke-static {v0, p2}, Lnet/aihelp/utils/ResResolver;->getStyleableFieldIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isVideo:Z

    .line 90
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 1

    .line 96
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    const-string v0, "aihelp_bg_uploading_mask"

    .line 97
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getDrawableId(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 v0, 0x11

    .line 98
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setForegroundGravity(I)V

    const-string v0, "aihelp_loading_image_view"

    .line 100
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const-string v0, "aihelp_image_view"

    .line 101
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "aihelp_iv_play"

    .line 102
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    iput-object v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->ivPlay:Landroidx/appcompat/widget/AppCompatImageView;

    const-string v0, "aihelp_v_mask"

    .line 103
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->maskView:Landroid/view/View;

    const-string v0, "aihelp_loading_view"

    .line 104
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;

    iput-object p1, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->loadingView:Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;

    const/4 p1, 0x1

    .line 105
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->updateLoadingStatus(Z)V

    return-void
.end method


# virtual methods
.method public dip2px(Landroid/content/Context;D)I
    .locals 2

    .line 174
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p1

    mul-double p2, p2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p2, v0

    double-to-int p1, p2

    return p1
.end method

.method public getRealImageView()Landroidx/appcompat/widget/AppCompatImageView;
    .locals 1

    .line 65
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isLoading:Z

    return v0
.end method

.method public isVideo()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isVideo:Z

    return v0
.end method

.method public loadIntoImageView(Landroid/content/Context;Lnet/aihelp/data/model/rpa/MediaMessage;)V
    .locals 5

    .line 118
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 120
    iget-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isVideo:Z

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getVideoThumbnail()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getContent()Ljava/lang/String;

    move-result-object p1

    .line 119
    :goto_0
    invoke-static {p1}, Lnet/aihelp/utils/DomainSupportHelper;->getAdjustedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getMsgStatus()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 127
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isVideo:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->isMessageFromServer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 128
    :cond_1
    invoke-virtual {p0, v1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->updateLoadingStatus(Z)V

    .line 132
    :cond_2
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getImageSize()[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 133
    invoke-virtual {p0}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 134
    iget-object v3, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {v3}, Landroidx/appcompat/widget/AppCompatImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 135
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getImageSize()[I

    move-result-object v4

    aget v1, v4, v1

    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/MediaMessage;->getImageSize()[I

    move-result-object p2

    aget p2, p2, v2

    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p2, v3}, Landroidx/appcompat/widget/AppCompatImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/ui/image/RequestCreator;->fit()Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->imageView:Landroidx/appcompat/widget/AppCompatImageView;

    invoke-virtual {p1, p2}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Landroid/widget/ImageView;)V

    return-void

    .line 143
    :cond_3
    invoke-static {}, Lnet/aihelp/core/ui/image/Picasso;->get()Lnet/aihelp/core/ui/image/Picasso;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/ui/image/Picasso;->load(Ljava/lang/String;)Lnet/aihelp/core/ui/image/RequestCreator;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;

    invoke-direct {v1, p0, p2, p1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView$1;-><init>(Lnet/aihelp/ui/widget/AIHelpLoadingImageView;Lnet/aihelp/data/model/rpa/MediaMessage;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/image/RequestCreator;->into(Lnet/aihelp/core/ui/image/Target;)V

    :cond_4
    return-void
.end method

.method public setLoading(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isLoading:Z

    return-void
.end method

.method public setVideo(Z)V
    .locals 0

    .line 61
    iput-boolean p1, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isVideo:Z

    return-void
.end method

.method public showPlayButton(Z)V
    .locals 1

    .line 179
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->ivPlay:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    return-void
.end method

.method public updateLoadingStatus(Z)V
    .locals 4

    .line 109
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->maskView:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->loadingView:Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Lnet/aihelp/core/ui/loading/indicator/LoadingIndicatorView;->setVisibility(I)V

    .line 111
    iget-boolean v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->isVideo:Z

    if-eqz v0, :cond_3

    .line 112
    iget-object v0, p0, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->ivPlay:Landroidx/appcompat/widget/AppCompatImageView;

    if-eqz p1, :cond_2

    const/16 v1, 0x8

    :cond_2
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    .line 114
    :cond_3
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/widget/AIHelpLoadingImageView;->setLoading(Z)V

    return-void
.end method
