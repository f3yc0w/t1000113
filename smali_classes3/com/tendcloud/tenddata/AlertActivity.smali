.class public Lcom/tendcloud/tenddata/AlertActivity;
.super Landroid/app/Activity;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/AlertActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "popup"

.field public static final b:Ljava/lang/String; = "isinapp"

.field public static final c:Ljava/lang/String; = "showduration"


# instance fields
.field private d:Landroid/webkit/WebView;

.field private e:J

.field private f:Z

.field private g:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->f:Z

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->g:Lorg/json/JSONObject;

    return-void
.end method

.method private a()Landroid/widget/RelativeLayout;
    .locals 3

    .line 99
    :try_start_0
    invoke-direct {p0}, Lcom/tendcloud/tenddata/AlertActivity;->b()Landroid/widget/RelativeLayout;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    :try_start_1
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tendcloud/tenddata/AlertActivity;->d:Landroid/webkit/WebView;

    .line 103
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 106
    iget-object v2, p0, Lcom/tendcloud/tenddata/AlertActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :catchall_1
    :goto_0
    return-object v0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/AlertActivity;)Lorg/json/JSONObject;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tendcloud/tenddata/AlertActivity;->g:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/AlertActivity;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/AlertActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/AlertActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/tendcloud/tenddata/AlertActivity;->d:Landroid/webkit/WebView;

    return-object p0
.end method

.method private b()Landroid/widget/RelativeLayout;
    .locals 3

    .line 121
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const v1, 0xffff

    .line 123
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/16 v1, 0x11

    .line 125
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 127
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 130
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 80
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string v2, "utf-8"

    .line 81
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 83
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->d:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 85
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->d:Landroid/webkit/WebView;

    new-instance v1, Lcom/tendcloud/tenddata/AlertActivity$a;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/AlertActivity$a;-><init>(Lcom/tendcloud/tenddata/AlertActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 86
    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->d:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "popup"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 45
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "isinapp"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->f:Z

    if-eqz p1, :cond_1

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->g:Lorg/json/JSONObject;

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/AlertActivity;->e:J

    .line 51
    invoke-direct {p0}, Lcom/tendcloud/tenddata/AlertActivity;->a()Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Lcom/tendcloud/tenddata/AlertActivity;->setContentView(Landroid/view/View;)V

    .line 54
    iget-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity;->g:Lorg/json/JSONObject;

    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/AlertActivity;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/AlertActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
