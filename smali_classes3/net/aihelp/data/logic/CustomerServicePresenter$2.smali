.class Lnet/aihelp/data/logic/CustomerServicePresenter$2;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "CustomerServicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/CustomerServicePresenter;->chatWithSupport(JLorg/json/JSONObject;)V
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

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/CustomerServicePresenter;J)V
    .locals 0

    .line 88
    iput-object p1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$2;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    iput-wide p2, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$2;->val$timestamp:J

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 110
    iget-object p1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$2;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->access$600(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    iget-wide p2, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$2;->val$timestamp:J

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateMessageStatus(ZJ)V

    return-void
.end method

.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/CustomerServicePresenter$2;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 3

    .line 91
    iget-object v0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$2;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-static {v0, p1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->access$300(Lnet/aihelp/data/logic/CustomerServicePresenter;Ljava/lang/String;)V

    .line 93
    invoke-static {p1}, Lnet/aihelp/ui/cs/util/rpa/ResponseHelper;->getRPAMessage(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAMessage;

    move-result-object v0

    .line 94
    invoke-static {p1}, Lnet/aihelp/ui/cs/util/rpa/ResponseHelper;->getRPAStep(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAStep;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAStep;->isEnableUpload()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 97
    invoke-static {p1}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->tryUploadLog(Z)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/RPAMessage;->isNormalMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    iget-object v1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$2;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-static {v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->access$400(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v1, v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateChatList(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    .line 102
    :cond_1
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAStep;->getNextStep()I

    move-result v1

    const/16 v2, 0x68

    if-eq v1, v2, :cond_2

    .line 103
    iget-object v1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$2;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-static {v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->access$500(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object v1

    check-cast v1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v1, v0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateBottomLayout(Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V

    :cond_2
    :goto_0
    return-void
.end method
