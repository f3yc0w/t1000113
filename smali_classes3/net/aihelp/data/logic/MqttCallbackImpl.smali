.class public Lnet/aihelp/data/logic/MqttCallbackImpl;
.super Ljava/lang/Object;
.source "MqttCallbackImpl.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/logic/MqttCallbackImpl$LazyHolder;
    }
.end annotation


# static fields
.field public static final NOTIFICATION_TYPE_ASSIGN_CHANGE:I = 0x1


# instance fields
.field private csFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/aihelp/ui/cs/CustomerServiceFragment;",
            ">;"
        }
    .end annotation
.end field

.field private faqFragment:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lnet/aihelp/ui/faq/BaseFaqFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/data/logic/MqttCallbackImpl$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lnet/aihelp/data/logic/MqttCallbackImpl;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;
    .locals 1

    .line 200
    sget-object v0, Lnet/aihelp/data/logic/MqttCallbackImpl$LazyHolder;->INSTANCE:Lnet/aihelp/data/logic/MqttCallbackImpl;

    return-object v0
.end method

.method private preparePushNotifications(Ljava/lang/String;)V
    .locals 2

    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    .line 131
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v1, "data"

    .line 132
    invoke-static {v0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "assignType"

    .line 134
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    sput p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->ticketAssignType:I

    .line 135
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 136
    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketServingByAgent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 137
    new-instance p1, Lnet/aihelp/data/model/rpa/RPAStep;

    invoke-direct {p1}, Lnet/aihelp/data/model/rpa/RPAStep;-><init>()V

    const/16 v0, 0x64

    .line 138
    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    .line 139
    iget-object v0, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    new-instance v1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-direct {v1}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>()V

    invoke-virtual {v0, v1, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateBottomLayout(Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V

    .line 141
    :cond_0
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onTicketAssignStatusChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public dismissMqttLoading()V
    .locals 3

    .line 176
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/LoadingElvaEvent;

    const/16 v2, 0x3ec

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/LoadingElvaEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onMqttConnected()V
    .locals 0

    return-void
.end method

.method public onMqttDisconnected()V
    .locals 1

    .line 158
    iget-object v0, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->prepareMqtt()V

    :cond_0
    return-void
.end method

.method public onMqttFailure(Ljava/lang/String;)V
    .locals 0

    .line 165
    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->disconnect()V

    .line 166
    invoke-virtual {p0}, Lnet/aihelp/data/logic/MqttCallbackImpl;->showMqttLoading()V

    return-void
.end method

.method public onMqttResponse(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string p1, "code"

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "errorCode"

    .line 49
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez p1, :cond_6

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 p1, -0x1

    .line 52
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v4, 0x3

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "pushChat"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :sswitch_1
    const-string v1, "pushNotification"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x6

    goto :goto_2

    :sswitch_2
    const-string v1, "pushWithdraw"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :sswitch_3
    const-string v1, "pushSdkMessage"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x5

    goto :goto_2

    :sswitch_4
    const-string v1, "pushOverflagChat"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x2

    goto :goto_2

    :sswitch_5
    const-string v1, "ticketRejected"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x3

    goto :goto_2

    :sswitch_6
    const-string v1, "pushFormChat"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v2, 0x4

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, -0x1

    :goto_2
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 118
    :pswitch_0
    sget-boolean p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketFinished:Z

    if-nez p1, :cond_6

    sget-boolean p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketRejected:Z

    if-nez p1, :cond_6

    .line 119
    invoke-direct {p0, p3}, Lnet/aihelp/data/logic/MqttCallbackImpl;->preparePushNotifications(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 112
    :pswitch_1
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->faqFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 113
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->faqFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/faq/BaseFaqFragment;

    invoke-virtual {p1, v3}, Lnet/aihelp/ui/faq/BaseFaqFragment;->showEntranceWithNotification(Z)V

    goto/16 :goto_3

    .line 97
    :pswitch_2
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "msg"

    .line 98
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    iget-object p2, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {p2, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onFormSubmitted(Ljava/lang/String;)V

    .line 102
    :cond_3
    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->getClickedFormTimeStamp()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2, v4}, Lnet/aihelp/ui/helper/StatisticHelper;->whenFormEventHappened(JI)V

    .line 105
    sget-object p1, Lnet/aihelp/common/Const;->sSpecificFormSubmittedListener:Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;

    if-eqz p1, :cond_6

    const-string p1, "isSpecificForm"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 106
    sget-object p1, Lnet/aihelp/common/Const;->sSpecificFormSubmittedListener:Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;

    invoke-interface {p1}, Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;->onFormSubmitted()V

    goto/16 :goto_3

    .line 90
    :pswitch_3
    sput-boolean v3, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketRejected:Z

    .line 91
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 92
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onTicketFinishedOrRejected()V

    goto/16 :goto_3

    .line 78
    :pswitch_4
    sput-boolean v3, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketFinished:Z

    const-string p1, "isShowResolve"

    .line 80
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForAskingResolveStatus:Z

    .line 82
    sget-boolean p1, Lnet/aihelp/common/CustomConfig$CustomerService;->isTicketRatingEnable:Z

    sput-boolean p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForRating:Z

    const-string p1, "yes"

    const-string p2, "storeReview"

    .line 84
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isAppRatable:Z

    .line 85
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 86
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onTicketFinishedOrRejected()V

    goto/16 :goto_3

    .line 61
    :pswitch_5
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 62
    invoke-static {p3}, Lnet/aihelp/ui/cs/util/rpa/ResponseHelper;->getRPAMessage(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAMessage;

    move-result-object p1

    .line 63
    invoke-static {p3}, Lnet/aihelp/ui/cs/util/rpa/ResponseHelper;->getRPAStep(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAStep;

    move-result-object p2

    .line 64
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object p3

    new-instance v0, Lnet/aihelp/data/event/PrepareMessageTimeStampEvent;

    invoke-direct {v0, p1}, Lnet/aihelp/data/event/PrepareMessageTimeStampEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p3, v0}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    .line 65
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAStep;->isEnableUpload()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 66
    invoke-static {v3}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->tryUploadLog(Z)V

    goto :goto_3

    .line 68
    :cond_4
    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->isNormalMessage()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 69
    iget-object p3, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {p3, p1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateChatList(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    .line 71
    :cond_5
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAStep;->getNextStep()I

    move-result p3

    const/16 v0, 0x68

    if-eq p3, v0, :cond_6

    .line 72
    iget-object p3, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {p3, p1, p2}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->updateBottomLayout(Lnet/aihelp/data/model/rpa/RPAMessage;Lnet/aihelp/data/model/rpa/RPAStep;)V

    goto :goto_3

    .line 55
    :pswitch_6
    iget-object p1, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 56
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object p2, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    const-string p3, "withdrawkey"

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->notifyMessageWithdrawn(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :catch_0
    :cond_6
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ce8948a -> :sswitch_6
        -0x2ee7e856 -> :sswitch_5
        -0x1a313a0e -> :sswitch_4
        -0x159386d9 -> :sswitch_3
        0x2ed86444 -> :sswitch_2
        0x4a3ab525 -> :sswitch_1
        0x69d39992 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onMqttSubscribed()V
    .locals 1

    .line 182
    iget-object v0, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-virtual {v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->prepareLogin()V

    :cond_0
    return-void
.end method

.method public showMqttLoading()V
    .locals 3

    .line 171
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/LoadingElvaEvent;

    const/16 v2, 0x3eb

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/LoadingElvaEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public updateHostView(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 36
    instance-of v0, p1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->csFragment:Ljava/lang/ref/WeakReference;

    goto :goto_0

    .line 38
    :cond_0
    instance-of v0, p1, Lnet/aihelp/ui/faq/BaseFaqFragment;

    if-eqz v0, :cond_1

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lnet/aihelp/ui/faq/BaseFaqFragment;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lnet/aihelp/data/logic/MqttCallbackImpl;->faqFragment:Ljava/lang/ref/WeakReference;

    :cond_1
    :goto_0
    return-void
.end method
