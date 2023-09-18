.class Lnet/aihelp/ui/cs/CustomerServiceFragment$2;
.super Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
.source "CustomerServiceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/CustomerServiceFragment;->initEventAndData(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/CustomerServiceFragment;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$2;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-direct {p0}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public onBotAnswerSelected(Lnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$2;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    return-void
.end method

.method public onRetrySendingMessage(ILnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 1

    .line 128
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$2;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$2;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-static {v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->access$200(Lnet/aihelp/ui/cs/CustomerServiceFragment;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    sget-object p1, Lnet/aihelp/utils/ToastUtil;->INSTANCE:Lnet/aihelp/utils/ToastUtil;

    iget-object p2, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$2;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {p2}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "aihelp_ticket_closed"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 134
    :cond_1
    iget-object v0, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$2;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    iget-object v0, v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;->mAdapter:Lnet/aihelp/ui/adapter/MessageListAdapter;

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/adapter/MessageListAdapter;->remove(I)V

    .line 135
    iget-object p1, p0, Lnet/aihelp/ui/cs/CustomerServiceFragment$2;->this$0:Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {p1, p2}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    return-void
.end method

.method public onUrlClicked(ZLjava/lang/String;)V
    .locals 3

    .line 113
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "intent_url"

    .line 114
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p2

    new-instance v1, Lnet/aihelp/data/event/PageHoppingEvent;

    const/16 v2, 0x3f1

    invoke-direct {v1, v2, v0}, Lnet/aihelp/data/event/PageHoppingEvent;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {p2, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lnet/aihelp/ui/helper/StatisticHelper;->whenFormEventHappened(JI)V

    :cond_0
    return-void
.end method
