.class Lnet/aihelp/core/net/http/callback/DownloadCallback$2;
.super Ljava/lang/Object;
.source "DownloadCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/http/callback/DownloadCallback;->failedCallBack(Ljava/lang/String;Ljava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/http/callback/DownloadCallback;

.field final synthetic val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

.field final synthetic val$errorMsg:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/http/callback/DownloadCallback;Lnet/aihelp/core/net/http/callback/BaseCallback;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$2;->this$0:Lnet/aihelp/core/net/http/callback/DownloadCallback;

    iput-object p2, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$2;->val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    iput-object p3, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$2;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$2;->val$errorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$2;->val$callBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$2;->val$url:Ljava/lang/String;

    iget-object v2, p0, Lnet/aihelp/core/net/http/callback/DownloadCallback$2;->val$errorMsg:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3, v2}, Lnet/aihelp/core/net/http/callback/BaseCallback;->onFailure(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method