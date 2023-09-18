.class public final enum Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;
.super Ljava/lang/Enum;
.source "BotFaqViewer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

.field public static final enum INSTANCE:Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;


# instance fields
.field private faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

.field private mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 29
    new-instance v0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->INSTANCE:Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    aput-object v0, v1, v2

    .line 27
    sput-object v1, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->$VALUES:[Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    .line 32
    iput-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;
    .locals 1

    .line 27
    const-class v0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;
    .locals 1

    .line 27
    sget-object v0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->$VALUES:[Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    invoke-virtual {v0}, [Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_close"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 100
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    .line 103
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "aihelp_iv_back"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 104
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->goBack()V

    .line 106
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x8

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public onEventComing(Lnet/aihelp/data/event/OrientationChangeEvent;)V
    .locals 0
    .annotation runtime Lnet/aihelp/core/util/bus/Subscribe;
        threadMode = .enum Lnet/aihelp/core/util/bus/ThreadMode;->MAIN:Lnet/aihelp/core/util/bus/ThreadMode;
    .end annotation

    .line 115
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public show(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 36
    new-instance v0, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "aihelp_dia_elva_faq"

    .line 37
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setContentView(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/16 v1, 0x50

    .line 38
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setGravity(I)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->fromBottom(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 40
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setCancelableOntheOutside(Z)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$1;

    invoke-direct {v1, p0}, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$1;-><init>(Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;)V

    .line 41
    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, -0x1

    const/16 v2, 0x1f4

    .line 49
    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setWidthAndHeight(II)Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 50
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->setHeightByDevice()Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lnet/aihelp/core/ui/dialog/AlertDialog$Builder;->create()Lnet/aihelp/core/ui/dialog/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_rl_root"

    .line 53
    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 54
    sget-object v1, Lnet/aihelp/common/CustomConfig$CommonSetting;->upperBackgroundColor:Ljava/lang/String;

    invoke-static {v1}, Lnet/aihelp/utils/Styles;->getColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 56
    iget-object v0, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v1, "aihelp_iv_back"

    invoke-static {v1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 57
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "aihelp_svg_ic_back"

    .line 58
    invoke-static {v0, v1}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v2, "aihelp_iv_close"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 61
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v2, "aihelp_svg_ic_close_dialog"

    .line 62
    invoke-static {v1, v2}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v2, "aihelp_web_view"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/webkit/AIHelpWebView;

    iput-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    const/4 v2, 0x0

    .line 65
    invoke-virtual {v1, v2}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setBackgroundColor(I)V

    .line 67
    iget-object v1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    const-string v2, "aihelp_progress_bar"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/ui/dialog/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    .line 69
    new-instance v2, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;

    invoke-direct {v2, p1, v1}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;-><init>(Landroid/content/Context;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    .line 70
    new-instance p1, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$2;

    invoke-direct {p1, p0, v0}, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$2;-><init>(Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;Landroid/widget/ImageView;)V

    invoke-virtual {v2, p1}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->setUrlLoadingListener(Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;)V

    .line 76
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {p1, v2}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 78
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    new-instance v0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$3;

    invoke-direct {v0, p0, v1}, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer$3;-><init>(Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 86
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/bus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 87
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lnet/aihelp/core/util/bus/EventBus;->register(Ljava/lang/Object;)V

    .line 90
    :cond_0
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/webkit/AIHelpWebView;->loadUrl(Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lnet/aihelp/ui/cs/util/viewer/BotFaqViewer;->faqAlertDialog:Lnet/aihelp/core/ui/dialog/AlertDialog;

    invoke-virtual {p1}, Lnet/aihelp/core/ui/dialog/AlertDialog;->show()V

    .line 93
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "BotFaq: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    return-void
.end method
