.class public Lnet/aihelp/ui/webkit/AIHelpWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AIHelpWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/webkit/AIHelpWebViewClient$OnPageLoadingProgressListener;,
        Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AIHelpWebViewClient"


# instance fields
.field private context:Landroid/content/Context;

.field private mPageLoadingProgressListener:Lnet/aihelp/ui/webkit/AIHelpWebViewClient$OnPageLoadingProgressListener;

.field private mUrlLoadingListener:Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;

.field private openInNewWindow:Z

.field private webProgress:Lnet/aihelp/ui/webkit/AIHelpWebProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 53
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->context:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->webProgress:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnet/aihelp/ui/webkit/AIHelpWebProgress;Z)V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 58
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->webProgress:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    .line 60
    iput-boolean p3, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->openInNewWindow:Z

    return-void
.end method

.method private handleUrlClickAndCancelCurrentLoad(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 98
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lnet/aihelp/utils/AppInfoUtil;->isUrlStillNeedResponding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 99
    iget-boolean p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->openInNewWindow:Z

    if-eqz p1, :cond_0

    .line 100
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent_url"

    .line 101
    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p2

    new-instance v1, Lnet/aihelp/data/event/PageHoppingEvent;

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, p1}, Lnet/aihelp/data/event/PageHoppingEvent;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p2, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    return v0

    .line 110
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 114
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "js-bridge=enable"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lnet/aihelp/common/Const;->sOnSpecificUrlClickedListener:Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    return v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->mPageLoadingProgressListener:Lnet/aihelp/ui/webkit/AIHelpWebViewClient$OnPageLoadingProgressListener;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1, p2}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient$OnPageLoadingProgressListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 82
    iget-object p3, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->webProgress:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-virtual {p3}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->show()V

    .line 83
    iget-object p3, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->mPageLoadingProgressListener:Lnet/aihelp/ui/webkit/AIHelpWebViewClient$OnPageLoadingProgressListener;

    if-eqz p3, :cond_0

    .line 84
    invoke-interface {p3, p1, p2}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient$OnPageLoadingProgressListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 125
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 127
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    const-string p1, "SslError unknown"

    goto :goto_0

    :cond_0
    const-string p1, "SSL_INVALID"

    goto :goto_0

    :cond_1
    const-string p1, "SSL_DATE_INVALID"

    goto :goto_0

    :cond_2
    const-string p1, "SSL_UNTRUSTED"

    goto :goto_0

    :cond_3
    const-string p1, "SSL_IDMISMATCH"

    goto :goto_0

    :cond_4
    const-string p1, "SSL_EXPIRED"

    goto :goto_0

    :cond_5
    const-string p1, "SSL_NOTYETVALID"

    .line 149
    :goto_0
    sget-object p2, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedSslError: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setOnPageLoadingProgressListener(Lnet/aihelp/ui/webkit/AIHelpWebViewClient$OnPageLoadingProgressListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->mPageLoadingProgressListener:Lnet/aihelp/ui/webkit/AIHelpWebViewClient$OnPageLoadingProgressListener;

    return-void
.end method

.method public setOpenInNewWindow(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->openInNewWindow:Z

    return-void
.end method

.method public setUrlLoadingListener(Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->mUrlLoadingListener:Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 2

    .line 64
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->handleUrlClickAndCancelCurrentLoad(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 65
    :goto_0
    iget-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->mUrlLoadingListener:Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;

    if-eqz p2, :cond_3

    .line 66
    invoke-interface {p2, p1}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;->handleUrlClick(Z)V

    :cond_3
    return p1
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2

    .line 72
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->handleUrlClickAndCancelCurrentLoad(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 73
    :goto_0
    iget-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebViewClient;->mUrlLoadingListener:Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;

    if-eqz p2, :cond_3

    .line 74
    invoke-interface {p2, p1}, Lnet/aihelp/ui/webkit/AIHelpWebViewClient$ShouldOverrideUrlLoadingListener;->handleUrlClick(Z)V

    :cond_3
    return p1
.end method
