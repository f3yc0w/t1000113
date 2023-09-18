.class public Lnet/aihelp/ui/cs/IntentUrlFragment;
.super Lnet/aihelp/core/ui/BaseFragment;
.source "IntentUrlFragment.java"


# instance fields
.field private mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

.field private mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lnet/aihelp/core/ui/BaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lnet/aihelp/ui/cs/IntentUrlFragment;
    .locals 1

    .line 29
    new-instance v0, Lnet/aihelp/ui/cs/IntentUrlFragment;

    invoke-direct {v0}, Lnet/aihelp/ui/cs/IntentUrlFragment;-><init>()V

    .line 30
    invoke-virtual {v0, p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected getBundleAfterDataPrepared(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "intent_url"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lnet/aihelp/utils/DomainSupportHelper;->getAdjustedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebView;->loadUrl(Ljava/lang/String;)V

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Intent URL is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lnet/aihelp/utils/DomainSupportHelper;->getAdjustedUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method protected getLayout()I
    .locals 1

    const-string v0, "aihelp_fra_intent_url"

    .line 66
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected initEventAndData(Landroid/view/View;)V
    .locals 3

    const-string p1, "aihelp_progress_bar"

    .line 38
    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/IntentUrlFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    .line 39
    new-instance v0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;-><init>(Landroidx/fragment/app/Fragment;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    iput-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    const-string v0, "aihelp_web_view"

    .line 41
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->get(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/webkit/AIHelpWebView;

    iput-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setBackgroundColor(I)V

    .line 43
    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    new-instance v1, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;-><init>(Landroid/content/Context;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 44
    iget-object p1, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 46
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/IntentUrlFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/webkit/AIHelpWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 71
    invoke-super {p0, p1, p2, p3}, Lnet/aihelp/core/ui/BaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 72
    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mClient:Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {v0, p1, p2, p3}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lnet/aihelp/ui/cs/IntentUrlFragment;->mWebView:Lnet/aihelp/ui/webkit/AIHelpWebView;

    invoke-virtual {v0}, Lnet/aihelp/ui/webkit/AIHelpWebView;->goBack()V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 60
    invoke-super {p0}, Lnet/aihelp/core/ui/BaseFragment;->onResume()V

    .line 61
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/SupportActionEvent;

    const/16 v2, 0x3ea

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/SupportActionEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
