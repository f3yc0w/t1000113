.class public Lnet/aihelp/data/logic/InitPresenter;
.super Lnet/aihelp/core/mvp/AbsPresenter;
.source "InitPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/mvp/AbsPresenter<",
        "Lnet/aihelp/core/mvp/IView;",
        "Lnet/aihelp/data/local/InitRepository;",
        ">;"
    }
.end annotation


# instance fields
.field private mInitListener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

.field private unreadMsgFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lnet/aihelp/core/mvp/AbsPresenter;-><init>(Landroid/content/Context;)V

    .line 59
    iget-object p1, p0, Lnet/aihelp/data/logic/InitPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast p1, Lnet/aihelp/data/local/InitRepository;

    invoke-virtual {p1, p2, p3, p4, p5}, Lnet/aihelp/data/local/InitRepository;->saveInitConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/core/mvp/IRepository;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/aihelp/data/logic/InitPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    return-object p0
.end method

.method static synthetic access$100(Lnet/aihelp/data/logic/InitPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lnet/aihelp/data/logic/InitPresenter;->goLogDauStatus()V

    return-void
.end method

.method static synthetic access$1000(Lnet/aihelp/data/logic/InitPresenter;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lnet/aihelp/data/logic/InitPresenter;->fetchUnreadMessageCount()V

    return-void
.end method

.method static synthetic access$200(Lnet/aihelp/data/logic/InitPresenter;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lnet/aihelp/data/logic/InitPresenter;->requestInit(Z)V

    return-void
.end method

.method static synthetic access$300(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/core/mvp/IRepository;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/aihelp/data/logic/InitPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    return-object p0
.end method

.method static synthetic access$400(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/data/logic/RequestRetryHandler;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/aihelp/data/logic/InitPresenter;->mRetryHandler:Lnet/aihelp/data/logic/RequestRetryHandler;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/data/logic/InitPresenter;ZLjava/lang/String;J)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/aihelp/data/logic/InitPresenter;->cacheInitResponse(ZLjava/lang/String;J)V

    return-void
.end method

.method static synthetic access$600(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/data/logic/RequestRetryHandler;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/aihelp/data/logic/InitPresenter;->mRetryHandler:Lnet/aihelp/data/logic/RequestRetryHandler;

    return-object p0
.end method

.method static synthetic access$700(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/aihelp/data/logic/InitPresenter;->mInitListener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    return-object p0
.end method

.method static synthetic access$702(Lnet/aihelp/data/logic/InitPresenter;Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;
    .locals 0

    .line 53
    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter;->mInitListener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    return-object p1
.end method

.method static synthetic access$800(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/utils/SpUtil;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/aihelp/data/logic/InitPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    return-object p0
.end method

.method static synthetic access$900(Lnet/aihelp/data/logic/InitPresenter;)Lnet/aihelp/utils/SpUtil;
    .locals 0

    .line 53
    iget-object p0, p0, Lnet/aihelp/data/logic/InitPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    return-object p0
.end method

.method private cacheInitResponse(ZLjava/lang/String;J)V
    .locals 2

    .line 173
    :try_start_0
    const-class v0, Lnet/aihelp/data/model/init/InitEntity;

    invoke-static {p2, v0}, Lnet/aihelp/core/net/json/JsonHelper;->toJavaObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/init/InitEntity;

    if-eqz v0, :cond_0

    .line 175
    iget-object v1, p0, Lnet/aihelp/data/logic/InitPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v1, Lnet/aihelp/data/local/InitRepository;

    invoke-virtual {v1, v0, p2, p3, p4}, Lnet/aihelp/data/local/InitRepository;->prepareInitData(Lnet/aihelp/data/model/init/InitEntity;Ljava/lang/String;J)V

    .line 176
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object p2

    new-instance p3, Lnet/aihelp/data/logic/InitPresenter$5;

    invoke-direct {p3, p0, p1}, Lnet/aihelp/data/logic/InitPresenter$5;-><init>(Lnet/aihelp/data/logic/InitPresenter;Z)V

    const-wide/16 v0, 0x1f4

    invoke-interface {p2, p3, v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private fetchUnreadMessageCount()V
    .locals 5

    .line 258
    :try_start_0
    sget-boolean v0, Lnet/aihelp/common/Const;->IS_SDK_SHOWING:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "AIHelp"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "AIHelp session is visible to user, do not need fetch for unread messages."

    .line 259
    invoke-static {v1, v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 263
    :cond_0
    sget-boolean v0, Lnet/aihelp/common/Const;->TOGGLE_FETCH_MESSAGE:Z

    if-nez v0, :cond_1

    const-string v0, "Current user(%s) does not have any active tickets at present."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 264
    sget-object v4, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 268
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "appid"

    .line 269
    sget-object v3, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    .line 270
    sget-object v3, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    iget-object v3, p0, Lnet/aihelp/data/logic/InitPresenter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "The userId you\'re using for unread message polling is AIHelp\'s generated deviceId, please verify if this is what you want."

    .line 272
    invoke-static {v1, v2}, Lnet/aihelp/utils/TLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_2
    sget-object v1, Lnet/aihelp/common/API;->FETCH_NEW_MSG:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/data/logic/InitPresenter$7;

    invoke-direct {v2, p0}, Lnet/aihelp/data/logic/InitPresenter$7;-><init>(Lnet/aihelp/data/logic/InitPresenter;)V

    invoke-virtual {p0, v1, v0, v2}, Lnet/aihelp/data/logic/InitPresenter;->get(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 294
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private goLogDauStatus()V
    .locals 3

    .line 113
    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    const-string v1, "sp_log_dau_time"

    invoke-virtual {v0, v1}, Lnet/aihelp/utils/SpUtil;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 114
    invoke-static {v0, v1}, Lnet/aihelp/utils/DateFormatUtil;->isToday(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "deviceid"

    .line 119
    iget-object v2, p0, Lnet/aihelp/data/logic/InitPresenter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    sget-object v1, Lnet/aihelp/common/API;->LOG_DAU_URL:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/data/logic/InitPresenter$3;

    invoke-direct {v2, p0}, Lnet/aihelp/data/logic/InitPresenter$3;-><init>(Lnet/aihelp/data/logic/InitPresenter;)V

    invoke-virtual {p0, v1, v0, v2}, Lnet/aihelp/data/logic/InitPresenter;->post(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private requestInit(Z)V
    .locals 11

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 133
    sget-object v1, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lnet/aihelp/common/Const;->ORIGINAL_LANGUAGE:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s_%s_"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lnet/aihelp/data/logic/InitPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "init_timestamp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lnet/aihelp/utils/SpUtil;->getLong(Ljava/lang/String;J)J

    move-result-wide v9

    .line 135
    iget-object v1, p0, Lnet/aihelp/data/logic/InitPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "init_limit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/aihelp/utils/SpUtil;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 136
    iget-object v2, p0, Lnet/aihelp/data/logic/InitPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "init_response"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/aihelp/utils/SpUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 139
    invoke-static {}, Lnet/aihelp/data/localize/LocalizeHelper;->resetLocalizeData()V

    .line 141
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ltz v1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v9

    int-to-long v0, v1

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-direct {p0, p1, v8, v9, v10}, Lnet/aihelp/data/logic/InitPresenter;->cacheInitResponse(ZLjava/lang/String;J)V

    goto :goto_1

    .line 143
    :cond_1
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "domain"

    .line 144
    sget-object v2, Lnet/aihelp/common/API;->HOST_URL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/API;->INIT_URL:Ljava/lang/String;

    new-instance v3, Lnet/aihelp/data/logic/InitPresenter$4;

    move-object v5, v3

    move-object v6, p0

    move v7, p1

    invoke-direct/range {v5 .. v10}, Lnet/aihelp/data/logic/InitPresenter$4;-><init>(Lnet/aihelp/data/logic/InitPresenter;ZLjava/lang/String;J)V

    invoke-virtual {v1, v2, v0, v3}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestGetByAsync(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public doInitForAIHelp()V
    .locals 2

    .line 102
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/logic/InitPresenter$2;

    invoke-direct {v1, p0}, Lnet/aihelp/data/logic/InitPresenter$2;-><init>(Lnet/aihelp/data/logic/InitPresenter;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUpListeners(Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 316
    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter;->mInitListener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    if-nez v0, :cond_0

    .line 317
    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter;->mInitListener:Lnet/aihelp/ui/listener/OnAIHelpInitializedCallback;

    :cond_0
    return-void
.end method

.method public onRetryRequest()V
    .locals 1

    const/4 v0, 0x1

    .line 351
    invoke-direct {p0, v0}, Lnet/aihelp/data/logic/InitPresenter;->requestInit(Z)V

    return-void
.end method

.method public postCrmPushTokenInfo()V
    .locals 5

    .line 193
    sget-object v0, Lnet/aihelp/common/UserProfile;->PUSH_TOKEN:Ljava/lang/String;

    .line 194
    sget v1, Lnet/aihelp/common/UserProfile;->PUSH_PLATFORM:I

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez v1, :cond_0

    .line 197
    iget-object v2, p0, Lnet/aihelp/data/logic/InitPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v2, Lnet/aihelp/data/local/InitRepository;

    invoke-virtual {v2, v0, v1}, Lnet/aihelp/data/local/InitRepository;->saveMqttPushInfo(Ljava/lang/String;I)V

    .line 198
    sget-boolean v2, Lnet/aihelp/common/Const;->TOGGLE_CRM_TOKEN:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 199
    sget-object v4, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "%s|%s|%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 200
    iget-object v3, p0, Lnet/aihelp/data/logic/InitPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    const-string v4, "sp_crm_push_info"

    invoke-virtual {v3, v4}, Lnet/aihelp/utils/SpUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 203
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "token"

    .line 204
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "pushTypeId"

    .line 205
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "playerId"

    .line 206
    sget-object v1, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "playerName"

    .line 207
    sget-object v1, Lnet/aihelp/common/UserProfile;->USER_NAME:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "language"

    .line 208
    sget-object v1, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    .line 209
    iget-object v1, p0, Lnet/aihelp/data/logic/InitPresenter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 210
    sget-object v0, Lnet/aihelp/common/API;->CRM_TOKEN_URL:Ljava/lang/String;

    new-instance v1, Lnet/aihelp/data/logic/InitPresenter$6;

    invoke-direct {v1, p0, v2}, Lnet/aihelp/data/logic/InitPresenter$6;-><init>(Lnet/aihelp/data/logic/InitPresenter;Ljava/lang/String;)V

    invoke-virtual {p0, v0, v3, v1}, Lnet/aihelp/data/logic/InitPresenter;->post(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 217
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setNetworkCheckHostAddress(Ljava/lang/String;Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;)V
    .locals 2

    .line 246
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "aihelp.net"

    goto :goto_0

    :cond_0
    const-string v0, "http://"

    const-string v1, ""

    .line 249
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://"

    .line 250
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 252
    :goto_0
    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v0, Lnet/aihelp/data/local/InitRepository;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/local/InitRepository;->setNetworkCheckHostAddress(Ljava/lang/String;)V

    .line 253
    sput-object p2, Lnet/aihelp/common/Const;->sCheckResultListener:Lnet/aihelp/ui/listener/OnNetworkCheckResultCallback;

    return-void
.end method

.method public setOnAIHelpSessionCloseCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;)V
    .locals 0

    .line 330
    sput-object p1, Lnet/aihelp/common/Const;->sSessionCloseListener:Lnet/aihelp/ui/listener/OnAIHelpSessionCloseCallback;

    return-void
.end method

.method public setOnAIHelpSessionOpenCallback(Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;)V
    .locals 0

    .line 326
    sput-object p1, Lnet/aihelp/common/Const;->sSessionOpenListener:Lnet/aihelp/ui/listener/OnAIHelpSessionOpenCallback;

    return-void
.end method

.method public setOnOperationUnreadChangedCallback(Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;)V
    .locals 3

    .line 338
    sput-object p1, Lnet/aihelp/common/Const;->sOperationUnreadListener:Lnet/aihelp/ui/listener/OnOperationUnreadChangedCallback;

    .line 339
    invoke-static {}, Lnet/aihelp/core/util/concurrent/ApiExecutorFactory;->getHandlerExecutor()Lnet/aihelp/core/util/concurrent/ApiExecutor;

    move-result-object p1

    new-instance v0, Lnet/aihelp/data/logic/InitPresenter$9;

    invoke-direct {v0, p0}, Lnet/aihelp/data/logic/InitPresenter$9;-><init>(Lnet/aihelp/data/logic/InitPresenter;)V

    const-wide/16 v1, 0x3e8

    invoke-interface {p1, v0, v1, v2}, Lnet/aihelp/core/util/concurrent/ApiExecutor;->runAsyncDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public setOnSpecificFormSubmittedCallback(Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;)V
    .locals 0

    .line 322
    sput-object p1, Lnet/aihelp/common/Const;->sSpecificFormSubmittedListener:Lnet/aihelp/ui/listener/OnSpecificFormSubmittedCallback;

    return-void
.end method

.method public setOnSpecificUrlClickedCallback(Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;)V
    .locals 0

    .line 334
    sput-object p1, Lnet/aihelp/common/Const;->sOnSpecificUrlClickedListener:Lnet/aihelp/ui/listener/OnSpecificUrlClickedCallback;

    return-void
.end method

.method public setUploadLogPath(Ljava/lang/String;)V
    .locals 1

    .line 242
    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v0, Lnet/aihelp/data/local/InitRepository;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/local/InitRepository;->setUploadLogPath(Ljava/lang/String;)V

    return-void
.end method

.method public startUnreadMessagePolling(Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;)V
    .locals 7

    .line 301
    invoke-static {}, Lnet/aihelp/utils/SpUtil;->getInstance()Lnet/aihelp/utils/SpUtil;

    move-result-object v0

    const-string v1, "sp_log_toggle"

    invoke-virtual {v0, v1}, Lnet/aihelp/utils/SpUtil;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    sput v0, Lnet/aihelp/common/Const;->LIMIT_CHECKING_UNREAD:I

    :cond_0
    if-eqz p1, :cond_1

    .line 302
    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter;->unreadMsgFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    .line 303
    sget-boolean v0, Lnet/aihelp/common/Const;->TOGGLE_OPEN_UNREAD_MSG:Z

    if-eqz v0, :cond_1

    sget v0, Lnet/aihelp/common/Const;->LIMIT_CHECKING_UNREAD:I

    if-lez v0, :cond_1

    sget-object v0, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    sput-object p1, Lnet/aihelp/common/Const;->sMessageListener:Lnet/aihelp/ui/listener/OnMessageCountArrivedCallback;

    const/4 p1, 0x1

    .line 305
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lnet/aihelp/data/logic/InitPresenter$8;

    invoke-direct {v1, p0}, Lnet/aihelp/data/logic/InitPresenter$8;-><init>(Lnet/aihelp/data/logic/InitPresenter;)V

    const-wide/16 v2, 0x0

    sget p1, Lnet/aihelp/common/Const;->LIMIT_CHECKING_UNREAD:I

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/data/logic/InitPresenter;->unreadMsgFuture:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    return-void
.end method

.method public updateConversationFields(Lnet/aihelp/config/ApiConfig;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v0, Lnet/aihelp/data/local/InitRepository;

    invoke-virtual {p1}, Lnet/aihelp/config/ApiConfig;->getWelcomeMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/data/local/InitRepository;->updateConversationFields(Ljava/lang/String;)V

    return-void
.end method

.method public updateConversationFields(Lnet/aihelp/config/ConversationConfig;)V
    .locals 0

    return-void
.end method

.method public updateSDKLanguage(Ljava/lang/String;)V
    .locals 2

    .line 225
    invoke-static {p1}, Lnet/aihelp/utils/LocaleUtil;->getFormatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 226
    sget-object v0, Lnet/aihelp/common/Const;->ORIGINAL_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 228
    sget-object v0, Lnet/aihelp/config/AIHelpContext;->successfullyInit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 231
    sput-object p1, Lnet/aihelp/common/Const;->ORIGINAL_LANGUAGE:Ljava/lang/String;

    .line 232
    sget-object p1, Lnet/aihelp/common/Const;->ORIGINAL_LANGUAGE:Ljava/lang/String;

    sput-object p1, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    .line 235
    invoke-direct {p0, v1}, Lnet/aihelp/data/logic/InitPresenter;->requestInit(Z)V

    goto :goto_0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AIHelp is using "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " as global language already!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateUserProfile(Lnet/aihelp/config/UserConfig;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/logic/InitPresenter;->mRepo:Lnet/aihelp/core/mvp/IRepository;

    check-cast v0, Lnet/aihelp/data/local/InitRepository;

    invoke-virtual {v0, p1}, Lnet/aihelp/data/local/InitRepository;->saveUserProfileConfig(Lnet/aihelp/config/UserConfig;)V

    const/4 v0, 0x1

    .line 65
    sput-boolean v0, Lnet/aihelp/common/Const;->TOGGLE_FETCH_MESSAGE:Z

    .line 66
    invoke-static {}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->resetTicketStatusFlags()V

    .line 67
    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->isSyncCrmInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 68
    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getUserId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getUserTags()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "%s|%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lnet/aihelp/data/logic/InitPresenter;->mSp:Lnet/aihelp/utils/SpUtil;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "crmInfo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/aihelp/utils/SpUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "userName"

    .line 73
    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "uId"

    .line 74
    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "tags"

    .line 75
    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getUserTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    sget-object v1, Lnet/aihelp/common/API;->SYNC_VIP_INFO:Ljava/lang/String;

    new-instance v2, Lnet/aihelp/data/logic/InitPresenter$1;

    invoke-direct {v2, p0, p1}, Lnet/aihelp/data/logic/InitPresenter$1;-><init>(Lnet/aihelp/data/logic/InitPresenter;Lnet/aihelp/config/UserConfig;)V

    invoke-virtual {p0, v1, v0, v2}, Lnet/aihelp/data/logic/InitPresenter;->post(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 87
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/data/logic/InitPresenter;->postCrmPushTokenInfo()V

    return-void
.end method
