.class Lnet/aihelp/data/logic/CustomerServicePresenter$3;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "CustomerServicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/CustomerServicePresenter;->getLastConversation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/ReqCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/CustomerServicePresenter;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$3;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$3;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->access$800(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onLastConversationRetrieved(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 139
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/CustomerServicePresenter$3;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 1

    .line 142
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 145
    invoke-static {v0, p1}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->getRetrievedMsgList(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$3;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/CustomerServicePresenter;->access$700(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onLastConversationRetrieved(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
