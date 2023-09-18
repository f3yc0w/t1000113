.class public Lnet/aihelp/core/net/http/callback/AIHelpCallback;
.super Ljava/lang/Object;
.source "AIHelpCallback.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lokhttp3/Callback;"
    }
.end annotation


# instance fields
.field private final reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    return-void
.end method

.method private failedCallBack(Lokhttp3/Request;Ljava/lang/String;ILjava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p5, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-virtual {p5, p2, p3, p4}, Lnet/aihelp/core/net/http/callback/BaseCallback;->onAsyncFailure(Ljava/lang/String;ILjava/lang/String;)V

    .line 89
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object p1

    .line 90
    new-instance v6, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p5

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/aihelp/core/net/http/callback/AIHelpCallback$2;-><init>(Lnet/aihelp/core/net/http/callback/AIHelpCallback;Lnet/aihelp/core/net/http/callback/BaseCallback;Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {p1, v6}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private isUniqueRequest(Lokhttp3/Call;Ljava/lang/String;)Z
    .locals 1

    .line 99
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "initset"

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "getfaqfilenames"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "upload"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "faqs"

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "crmtoken"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "sdkconfig"

    .line 102
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "collect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ".json"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 104
    :cond_1
    :goto_0
    iget-object p1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-virtual {p1}, Lnet/aihelp/core/net/http/callback/BaseCallback;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    invoke-static {p2, p1}, Lnet/aihelp/core/net/json/JsonHelper;->toJavaObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->successCallBack(Ljava/lang/Object;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    const/4 p1, 0x1

    return p1
.end method

.method private successCallBack(Ljava/lang/Object;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lnet/aihelp/core/net/http/callback/BaseCallback<",
            "TT;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 76
    :cond_0
    invoke-virtual {p2, p1}, Lnet/aihelp/core/net/http/callback/BaseCallback;->onAsyncReqSuccess(Ljava/lang/Object;)V

    .line 77
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    .line 78
    new-instance v1, Lnet/aihelp/core/net/http/callback/AIHelpCallback$1;

    invoke-direct {v1, p0, p2, p1}, Lnet/aihelp/core/net/http/callback/AIHelpCallback$1;-><init>(Lnet/aihelp/core/net/http/callback/AIHelpCallback;Lnet/aihelp/core/net/http/callback/BaseCallback;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 7

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AIHelpCallback onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    .line 29
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    const/4 v4, -0x1

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->failedCallBack(Lokhttp3/Request;Ljava/lang/String;ILjava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    .line 31
    invoke-static {v0, p2}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 7

    .line 37
    iget-object v0, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    if-nez v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 41
    :try_start_0
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 42
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p2

    .line 43
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->isUniqueRequest(Lokhttp3/Call;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 44
    :cond_1
    const-class v1, Lnet/aihelp/core/net/http/pojo/ResultEntity;

    invoke-static {p2, v1}, Lnet/aihelp/core/net/json/JsonHelper;->toJavaObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/aihelp/core/net/http/pojo/ResultEntity;

    if-eqz p2, :cond_8

    .line 46
    invoke-virtual {p2}, Lnet/aihelp/core/net/http/pojo/ResultEntity;->isFlag()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p2}, Lnet/aihelp/core/net/http/pojo/ResultEntity;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 59
    :cond_2
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    const/16 v4, 0xc8

    invoke-virtual {p2}, Lnet/aihelp/core/net/http/pojo/ResultEntity;->getDesc()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->failedCallBack(Lokhttp3/Request;Ljava/lang/String;ILjava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    goto/16 :goto_3

    .line 47
    :cond_3
    :goto_0
    invoke-virtual {p2}, Lnet/aihelp/core/net/http/pojo/ResultEntity;->getData()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    const-string v1, ""

    .line 48
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 51
    :cond_4
    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-virtual {v1}, Lnet/aihelp/core/net/http/callback/BaseCallback;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Ljava/lang/String;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-virtual {v1}, Lnet/aihelp/core/net/http/callback/BaseCallback;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Ljava/lang/Integer;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    .line 52
    invoke-virtual {v1}, Lnet/aihelp/core/net/http/callback/BaseCallback;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Ljava/lang/Double;

    if-eq v1, v2, :cond_6

    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-virtual {v1}, Lnet/aihelp/core/net/http/callback/BaseCallback;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-class v2, Ljava/lang/Float;

    if-ne v1, v2, :cond_5

    goto :goto_1

    .line 55
    :cond_5
    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-virtual {v1}, Lnet/aihelp/core/net/http/callback/BaseCallback;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {p2, v1}, Lnet/aihelp/core/net/json/JsonHelper;->toJavaObject(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-direct {p0, p2, v1}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->successCallBack(Ljava/lang/Object;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    goto :goto_3

    .line 53
    :cond_6
    :goto_1
    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-direct {p0, p2, v1}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->successCallBack(Ljava/lang/Object;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    goto :goto_3

    :cond_7
    :goto_2
    const/4 p2, 0x0

    .line 49
    iget-object v1, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    invoke-direct {p0, p2, v1}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->successCallBack(Ljava/lang/Object;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    goto :goto_3

    .line 62
    :cond_8
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    const/4 v4, -0x1

    const-string v5, "ResultEntity is NULL"

    iget-object v6, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->failedCallBack(Lokhttp3/Request;Ljava/lang/String;ILjava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    goto :goto_3

    .line 65
    :cond_9
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {p2}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {p2}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->failedCallBack(Lokhttp3/Request;Ljava/lang/String;ILjava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p2

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AIHelpCallback onResponse catch Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;)V

    .line 69
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->reqCallBack:Lnet/aihelp/core/net/http/callback/BaseCallback;

    move-object v1, p0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lnet/aihelp/core/net/http/callback/AIHelpCallback;->failedCallBack(Lokhttp3/Request;Ljava/lang/String;ILjava/lang/String;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    .line 70
    invoke-static {v0, p2}, Lnet/aihelp/core/util/logger/AIHelpLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
