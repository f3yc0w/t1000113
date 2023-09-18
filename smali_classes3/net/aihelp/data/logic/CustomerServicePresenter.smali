.class public Lnet/aihelp/data/logic/CustomerServicePresenter;
.super Lnet/aihelp/core/mvp/AbsPresenter;
.source "CustomerServicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/mvp/AbsPresenter<",
        "Lnet/aihelp/ui/cs/CustomerServiceFragment;",
        "Lnet/aihelp/core/mvp/IRepository;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x5

    .line 37
    invoke-direct {p0, p1, v0}, Lnet/aihelp/core/mvp/AbsPresenter;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/data/logic/RequestRetryHandler;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mRetryHandler:Lnet/aihelp/data/logic/RequestRetryHandler;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/data/logic/RequestRetryHandler;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mRetryHandler:Lnet/aihelp/data/logic/RequestRetryHandler;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/data/logic/CustomerServicePresenter;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->notifyMqttPush(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$600(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$700(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$800(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/core/mvp/IView;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mView:Lnet/aihelp/core/mvp/IView;

    return-object p0
.end method

.method static synthetic access$900(Lnet/aihelp/data/logic/CustomerServicePresenter;)Lnet/aihelp/utils/SpUtil;
    .locals 0

    .line 34
    iget-object p0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    return-object p0
.end method

.method private notifyMqttPush(Ljava/lang/String;)V
    .locals 3

    const-string v0, "responseId"

    .line 120
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 121
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object p1

    sget-object v0, Lnet/aihelp/common/API;->NOTIFY_MQTT_PUSH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestGetByAsync(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private refreshUnreadMessageCount()V
    .locals 3

    const/4 v0, 0x0

    .line 165
    :try_start_0
    sput-boolean v0, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->hasUnreadMsg:Z

    .line 167
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "appid"

    .line 168
    sget-object v2, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uid"

    .line 169
    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    sget-object v1, Lnet/aihelp/common/API;->FETCH_NEW_MSG:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/data/logic/CustomerServicePresenter$4;

    invoke-direct {v2, p0}, Lnet/aihelp/data/logic/CustomerServicePresenter$4;-><init>(Lnet/aihelp/data/logic/CustomerServicePresenter;)V

    invoke-virtual {p0, v1, v0, v2}, Lnet/aihelp/data/logic/CustomerServicePresenter;->get(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public chatWithSupport(JLorg/json/JSONObject;)V
    .locals 2

    .line 88
    :try_start_0
    sget-object v0, Lnet/aihelp/common/API;->SEND_MESSAGE:Ljava/lang/String;

    new-instance v1, Lnet/aihelp/data/logic/CustomerServicePresenter$2;

    invoke-direct {v1, p0, p1, p2}, Lnet/aihelp/data/logic/CustomerServicePresenter$2;-><init>(Lnet/aihelp/data/logic/CustomerServicePresenter;J)V

    invoke-virtual {p0, v0, p3, v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->post(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getChatRequestParams(Ljava/lang/String;I)Lorg/json/JSONObject;
    .locals 3

    const-string v0, ""

    .line 204
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "input"

    .line 205
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "inputFormat"

    .line 206
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "skip"

    const/4 p2, 0x0

    .line 207
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "inputData"

    .line 208
    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "eventId"

    .line 209
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "-"

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 212
    :catch_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public getLastConversation(I)V
    .locals 3

    .line 129
    iget-object v0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object p1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mView:Lnet/aihelp/core/mvp/IView;

    check-cast p1, Lnet/aihelp/ui/cs/CustomerServiceFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/cs/CustomerServiceFragment;->onLastConversationRetrieved(Ljava/util/List;)V

    return-void

    .line 134
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "userId"

    .line 135
    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceId"

    .line 136
    iget-object v2, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "index"

    .line 137
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ticketIds"

    .line 138
    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->getRenderedTicketIds()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    sget-object p1, Lnet/aihelp/common/API;->GET_LAST_CONVERSATION:Ljava/lang/String;

    new-instance v1, Lnet/aihelp/data/logic/CustomerServicePresenter$3;

    invoke-direct {v1, p0}, Lnet/aihelp/data/logic/CustomerServicePresenter$3;-><init>(Lnet/aihelp/data/logic/CustomerServicePresenter;)V

    invoke-virtual {p0, p1, v0, v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->get(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public logout()V
    .locals 2

    .line 82
    sget-object v0, Lnet/aihelp/common/API;->LOGOUT:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lnet/aihelp/data/logic/CustomerServicePresenter;->post(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;

    .line 83
    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->resetTicketStatusFlags()V

    return-void
.end method

.method public onRetryRequest()V
    .locals 1

    const/4 v0, 0x1

    .line 218
    invoke-virtual {p0, v0}, Lnet/aihelp/data/logic/CustomerServicePresenter;->requestLogin(Z)V

    return-void
.end method

.method public prepareMqtt(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V
    .locals 3

    .line 41
    invoke-static {}, Lnet/aihelp/core/util/bus/EventBus;->getDefault()Lnet/aihelp/core/util/bus/EventBus;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/event/LoadingElvaEvent;

    const/16 v2, 0x3eb

    invoke-direct {v1, v2}, Lnet/aihelp/data/event/LoadingElvaEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/bus/EventBus;->post(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->prepare(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    .line 43
    invoke-direct {p0}, Lnet/aihelp/data/logic/CustomerServicePresenter;->refreshUnreadMessageCount()V

    return-void
.end method

.method public requestLogin(Z)V
    .locals 3

    .line 47
    sget-object v0, Lnet/aihelp/common/API;->LOGIN:Ljava/lang/String;

    invoke-static {}, Lnet/aihelp/ui/cs/util/rpa/LoginHelper;->getLoginParams()Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lnet/aihelp/data/logic/CustomerServicePresenter$1;

    invoke-direct {v2, p0, p1}, Lnet/aihelp/data/logic/CustomerServicePresenter$1;-><init>(Lnet/aihelp/data/logic/CustomerServicePresenter;Z)V

    invoke-virtual {p0, v0, v1, v2}, Lnet/aihelp/data/logic/CustomerServicePresenter;->post(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;

    return-void
.end method

.method public updateCachedUnreadMessageCount(Z)V
    .locals 3

    .line 198
    iget-object v0, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    sget-object v1, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/utils/SpUtil;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 199
    iget-object v1, p0, Lnet/aihelp/data/logic/CustomerServicePresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    if-eqz p1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lnet/aihelp/utils/SpUtil;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
