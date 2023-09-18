.class Lcom/tendcloud/tenddata/AlertActivity$a;
.super Landroid/webkit/WebViewClient;
.source "td"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tendcloud/tenddata/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/AlertActivity;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/AlertActivity;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 146
    :try_start_0
    iget-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {p1}, Lcom/tendcloud/tenddata/AlertActivity;->b(Lcom/tendcloud/tenddata/AlertActivity;)Landroid/webkit/WebView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "javascript:parseMessage(\'"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    .line 147
    invoke-static {v0}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lcom/tendcloud/tenddata/AlertActivity;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\')"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    const-string p1, "talkingdata://"

    .line 158
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/AlertActivity;->a(Lcom/tendcloud/tenddata/AlertActivity;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/tendcloud/tenddata/AlertActivity$a;->this$0:Lcom/tendcloud/tenddata/AlertActivity;

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/AlertActivity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
