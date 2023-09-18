.class public Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "AIHelpWebChromeClient.java"


# instance fields
.field private final fragment:Landroidx/fragment/app/Fragment;

.field private fullScreenContainer:Landroid/view/ViewGroup;

.field private mCustomView:Landroid/view/View;

.field private mUploadCallbackAboveL:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private mUploadMessage:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final webProgress:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

.field private window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;Lnet/aihelp/ui/webkit/AIHelpWebProgress;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mCustomView:Landroid/view/View;

    .line 46
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->fragment:Landroidx/fragment/app/Fragment;

    .line 47
    iput-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->webProgress:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 49
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->window:Landroid/view/Window;

    .line 50
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const p2, 0x1020002

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->fullScreenContainer:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method private onActivityResultAboveL(IILandroid/content/Intent;)V
    .locals 4

    .line 167
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, -0x1

    const/4 v0, 0x0

    if-ne p2, p1, :cond_4

    if-eqz p3, :cond_4

    .line 173
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    .line 175
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt p2, v1, :cond_1

    .line 176
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    move-result-object p2

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_0
    const/4 p3, 0x0

    if-eqz p2, :cond_2

    .line 179
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    .line 180
    :goto_1
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 181
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v3

    .line 182
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :cond_3
    if-eqz p1, :cond_5

    const/4 p2, 0x1

    new-array v1, p2, [Landroid/net/Uri;

    .line 186
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    aput-object p1, v1, p3

    goto :goto_2

    :cond_4
    move-object v1, v0

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 190
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 191
    iput-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    goto :goto_3

    .line 193
    :cond_6
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 194
    iput-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    :goto_3
    return-void
.end method

.method private tryGetFileFromData()V
    .locals 2

    .line 199
    invoke-static {}, Lnet/aihelp/ui/helper/AttachmentPicker;->getInstance()Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->fragment:Landroidx/fragment/app/Fragment;

    .line 200
    invoke-virtual {v0, v1}, Lnet/aihelp/ui/helper/AttachmentPicker;->setPickerHost(Landroidx/fragment/app/Fragment;)Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/ui/helper/AttachmentPicker;->launchImagePicker(Z)V

    return-void
.end method


# virtual methods
.method public cancelChooseFileDialog()V
    .locals 2

    .line 153
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 155
    iput-object v1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    .line 157
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_1

    .line 158
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 159
    iput-object v1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 124
    :try_start_0
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    goto :goto_1

    :cond_2
    :goto_0
    move-object p2, p1

    .line 126
    :goto_1
    iget-object p3, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    if-eqz p3, :cond_4

    .line 128
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p3

    invoke-virtual {p3}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lnet/aihelp/ui/helper/AttachmentHelper;->copyAndGetFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/net/Uri;

    const/4 v0, 0x0

    .line 130
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, v0

    goto :goto_2

    :cond_3
    move-object p3, p1

    .line 132
    :goto_2
    iget-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    invoke-interface {p2, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 133
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    goto :goto_5

    .line 134
    :cond_4
    iget-object p3, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    if-eqz p3, :cond_7

    if-eqz p2, :cond_6

    .line 136
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object p3

    invoke-virtual {p3}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lnet/aihelp/ui/helper/AttachmentHelper;->copyAndGetFilePath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 139
    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    goto :goto_3

    :cond_5
    move-object p2, p1

    .line 141
    :goto_3
    iget-object p3, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    invoke-interface {p3, p2}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto :goto_4

    .line 143
    :cond_6
    invoke-interface {p3, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 145
    :goto_4
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_5
    return-void
.end method

.method public onHideCustomView()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 69
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mCustomView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->fullScreenContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 71
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mCustomView:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->window:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 75
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 76
    iget-object v1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->window:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 77
    iget-object v0, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->window:Landroid/view/Window;

    const/16 v1, 0x200

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_0
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0

    .line 93
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 94
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->webProgress:Lnet/aihelp/ui/webkit/AIHelpWebProgress;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/webkit/AIHelpWebProgress;->setProgress(I)V

    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 83
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 84
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "AIHelp"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "about:blank"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 85
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->fragment:Landroidx/fragment/app/Fragment;

    instance-of p1, p1, Lnet/aihelp/ui/cs/IntentUrlFragment;

    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p1

    new-instance v0, Lnet/aihelp/data/event/UpdateTitleEvent;

    invoke-direct {v0, p2}, Lnet/aihelp/data/event/UpdateTitleEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    if-eqz p1, :cond_0

    .line 57
    iget-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->fullScreenContainer:Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    .line 58
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mCustomView:Landroid/view/View;

    const-string p2, "#000000"

    .line 59
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 60
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->fullScreenContainer:Landroid/view/ViewGroup;

    iget-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mCustomView:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 61
    iget-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->window:Landroid/view/Window;

    const/16 p2, 0x400

    invoke-virtual {p1, p2, p2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    return-void
.end method

.method public onShowFileChooser(Landroid/webkit/WebView;Landroid/webkit/ValueCallback;Landroid/webkit/WebChromeClient$FileChooserParams;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/webkit/WebChromeClient$FileChooserParams;",
            ")Z"
        }
    .end annotation

    .line 99
    iput-object p2, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadCallbackAboveL:Landroid/webkit/ValueCallback;

    .line 100
    invoke-direct {p0}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->tryGetFileFromData()V

    const/4 p1, 0x1

    return p1
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 107
    invoke-direct {p0}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->tryGetFileFromData()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 113
    invoke-direct {p0}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->tryGetFileFromData()V

    return-void
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 118
    iput-object p1, p0, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->mUploadMessage:Landroid/webkit/ValueCallback;

    .line 119
    invoke-direct {p0}, Lnet/aihelp/ui/webkit/AIHelpWebChromeClient;->tryGetFileFromData()V

    return-void
.end method
