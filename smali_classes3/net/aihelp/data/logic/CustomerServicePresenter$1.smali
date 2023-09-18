.class Lnet/aihelp/data/logic/CustomerServicePresenter$1;
.super Lnet/aihelp/core/net/http/callback/ReqCallback;
.source "CustomerServicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/data/logic/CustomerServicePresenter;->requestLogin(Z)V
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

.field final synthetic val$firstLogin:Z


# direct methods
.method constructor <init>(Lnet/aihelp/data/logic/CustomerServicePresenter;Z)V
    .locals 0

    .line 47
    iput-object p1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$1;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    iput-boolean p2, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$1;->val$firstLogin:Z

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/ReqCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 76
    iget-object p1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$1;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-static {p1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->access$200(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/data/logic/RequestRetryHandler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/aihelp/data/logic/RequestRetryHandler;->handleRetryRequest(I)V

    return-void
.end method

.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/logic/CustomerServicePresenter$1;->onReqSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onReqSuccess(Ljava/lang/String;)V
    .locals 4

    .line 50
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/LoadingElvaEvent;

    const/16 v2, 0x3ec

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/LoadingElvaEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$1;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-static {v0}, Lnet/aihelp/data/logic/CustomerServicePresenter;->access$000(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/data/logic/RequestRetryHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/data/logic/RequestRetryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    iget-boolean v0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$1;->val$firstLogin:Z

    invoke-static {p1, v0}, Lnet/aihelp/ui/cs/util/rpa/LoginHelper;->getLoginResponse(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-static {p1}, Lnet/aihelp/ui/cs/util/rpa/ResponseHelper;->getRPAMessage(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAMessage;

    move-result-object v1

    .line 56
    invoke-static {p1}, Lnet/aihelp/ui/cs/util/rpa/ResponseHelper;->getRPAStep(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAStep;

    move-result-object p1

    .line 58
    sget-boolean v2, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketFinished:Z

    const/16 v3, 0x66

    if-eqz v2, :cond_2

    .line 59
    new-instance p1, Lnet/aihelp/data/model/rpa/RPAStep;

    invoke-direct {p1}, Lnet/aihelp/data/model/rpa/RPAStep;-><init>()V

    .line 60
    sget-boolean v2, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForAskingResolveStatus:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForRating:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1, v3}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x65

    .line 61
    invoke-virtual {p1, v2}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    goto :goto_1

    .line 65
    :cond_2
    sget-boolean v2, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketActive:Z

    if-eqz v2, :cond_3

    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketServingByAgent()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x64

    .line 66
    invoke-virtual {p1, v2}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    goto :goto_1

    .line 67
    :cond_3
    sget-boolean v2, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketRejected:Z

    if-eqz v2, :cond_4

    .line 68
    invoke-virtual {p1, v3}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    .line 71
    :cond_4
    :goto_1
    iget-object v2, p0, Lnet/aihelp/data/logic/CustomerServicePresenter$1;->this$0:Lnet/aihelp/data/logic/CustomerServicePresenter;

    invoke-static {v2}, Lnet/aihelp/data/logic/CustomerServicePresenter;->access$100(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;

    move-result-object v2

    check-cast v2, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v2, v0, v1, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onLogin(Ljava/util/List;Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V

    return-void
.end method
