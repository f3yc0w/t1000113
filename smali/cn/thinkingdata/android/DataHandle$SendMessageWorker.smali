.class Lcn/thinkingdata/android/DataHandle$SendMessageWorker;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/DataHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SendMessageWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/thinkingdata/android/DataHandle$SendMessageWorker$AnalyticsMessageHandler;
    }
.end annotation


# static fields
.field private static final EMPTY_FLUSH_QUEUE:I = 0x3

.field private static final FLUSH_QUEUE:I = 0x0

.field private static final FLUSH_QUEUE_OLD:I = 0x2

.field private static final FLUSH_QUEUE_PROCESSING:I = 0x1

.field private static final INTEGRATION_COUNT:Ljava/lang/String; = "TA-Integration-Count"

.field private static final INTEGRATION_EXTRA:Ljava/lang/String; = "TA-Integration-Extra"

.field private static final INTEGRATION_TYPE:Ljava/lang/String; = "TA-Integration-Type"

.field private static final INTEGRATION_VERSION:Ljava/lang/String; = "TA-Integration-Version"

.field private static final KEY_APP_ID:Ljava/lang/String; = "#app_id"

.field private static final KEY_AUTOMATIC_DATA:Ljava/lang/String; = "automaticData"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final SEND_TO_DEBUG:I = 0x5

.field private static final SEND_TO_SERVER:I = 0x4


# instance fields
.field private final mDeviceInfo:Lorg/json/JSONObject;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerLock:Ljava/lang/Object;

.field private final mPoster:Lcn/thinkingdata/android/utils/RemoteService;

.field private mToastShown:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/thinkingdata/android/DataHandle;


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/DataHandle;)V
    .locals 3

    iput-object p1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandlerLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mToastShown:Ljava/util/Map;

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "thinkingData.sdk.sendMessageWorker"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker$AnalyticsMessageHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker$AnalyticsMessageHandler;-><init>(Lcn/thinkingdata/android/DataHandle$SendMessageWorker;Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcn/thinkingdata/android/DataHandle;->getPoster()Lcn/thinkingdata/android/utils/RemoteService;

    move-result-object v0

    iput-object v0, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mPoster:Lcn/thinkingdata/android/utils/RemoteService;

    new-instance v0, Lorg/json/JSONObject;

    invoke-static {p1}, Lcn/thinkingdata/android/DataHandle;->access$500(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/SystemInformation;

    move-result-object p1

    invoke-virtual {p1}, Lcn/thinkingdata/android/SystemInformation;->getDeviceInfo()Ljava/util/Map;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mDeviceInfo:Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic access$000(Lcn/thinkingdata/android/DataHandle$SendMessageWorker;)Lorg/json/JSONObject;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mDeviceInfo:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic access$1000(Lcn/thinkingdata/android/DataHandle$SendMessageWorker;Lcn/thinkingdata/android/TDConfig;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->sendData(Lcn/thinkingdata/android/TDConfig;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$1100(Lcn/thinkingdata/android/DataHandle$SendMessageWorker;Lcn/thinkingdata/android/TDConfig;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->sendDebugData(Lcn/thinkingdata/android/TDConfig;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$600(Lcn/thinkingdata/android/DataHandle$SendMessageWorker;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcn/thinkingdata/android/DataHandle$SendMessageWorker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$800(Lcn/thinkingdata/android/DataHandle$SendMessageWorker;Lcn/thinkingdata/android/TDConfig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->sendData(Lcn/thinkingdata/android/TDConfig;)V

    return-void
.end method

.method static synthetic access$900(Lcn/thinkingdata/android/DataHandle$SendMessageWorker;Ljava/lang/String;Lcn/thinkingdata/android/TDConfig;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->sendData(Ljava/lang/String;Lcn/thinkingdata/android/TDConfig;)V

    return-void
.end method

.method private createExtraHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcn/thinkingdata/android/SystemInformation;->getLibName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TA-Integration-Type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcn/thinkingdata/android/SystemInformation;->getLibVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TA-Integration-Version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "TA-Integration-Count"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "TA-Integration-Extra"

    const-string v1, "Android"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private sendData(Lcn/thinkingdata/android/TDConfig;)V
    .locals 1

    iget-object v0, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->sendData(Ljava/lang/String;Lcn/thinkingdata/android/TDConfig;)V

    return-void
.end method

.method private sendData(Lcn/thinkingdata/android/TDConfig;Lorg/json/JSONObject;)V
    .locals 8

    iget-object v0, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "data"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    const-string v1, "#app_id"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mPoster:Lcn/thinkingdata/android/utils/RemoteService;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    const-string p1, "1"

    invoke-direct {p0, p1}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->createExtraHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    const/4 v5, 0x0

    invoke-interface/range {v2 .. v7}, Lcn/thinkingdata/android/utils/RemoteService;->performRequest(Ljava/lang/String;Ljava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ret code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", upload message:\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThinkingAnalytics.DataHandle"

    invoke-static {p2, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private sendData(Ljava/lang/String;Lcn/thinkingdata/android/TDConfig;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v3, :cond_0

    const-string v0, "ThinkingAnalytics.DataHandle"

    const-string v2, "Could found config object for sendToken. Canceling..."

    invoke-static {v0, v2}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, v3, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$500(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/SystemInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcn/thinkingdata/android/SystemInformation;->isOnline()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$500(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/SystemInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcn/thinkingdata/android/SystemInformation;->getNetworkType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcn/thinkingdata/android/TDConfig;->isShouldFlush(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v0

    sget-object v5, Lcn/thinkingdata/android/DatabaseAdapter$Table;->EVENTS:Lcn/thinkingdata/android/DatabaseAdapter$Table;

    const/16 v6, 0x32

    invoke-virtual {v0, v5, v2, v6}, Lcn/thinkingdata/android/DatabaseAdapter;->generateDataString(Lcn/thinkingdata/android/DatabaseAdapter$Table;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    if-nez v0, :cond_4

    return-void

    :cond_4
    const/4 v4, 0x0

    aget-object v5, v0, v4

    const/4 v6, 0x1

    aget-object v7, v0, v6

    const/4 v8, 0x0

    :try_start_2
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v7}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lcn/thinkingdata/android/utils/RemoteService$ServiceUnavailableException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Lcn/thinkingdata/android/utils/RemoteService$ServiceUnavailableException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    const-string v9, "data"

    invoke-virtual {v7, v9, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcn/thinkingdata/android/utils/RemoteService$ServiceUnavailableException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const-string v9, "#app_id"

    :try_start_5
    iget-object v10, v3, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcn/thinkingdata/android/utils/RemoteService$ServiceUnavailableException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v11, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mPoster:Lcn/thinkingdata/android/utils/RemoteService;

    invoke-virtual/range {p2 .. p2}, Lcn/thinkingdata/android/TDConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual/range {p2 .. p2}, Lcn/thinkingdata/android/TDConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v15

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->createExtraHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v16

    invoke-interface/range {v11 .. v16}, Lcn/thinkingdata/android/utils/RemoteService;->performRequest(Ljava/lang/String;Ljava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Lcn/thinkingdata/android/utils/RemoteService$ServiceUnavailableException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v9, "ThinkingAnalytics.DataHandle"

    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ret code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", upload message:\n"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lcn/thinkingdata/android/utils/RemoteService$ServiceUnavailableException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "ThinkingAnalytics.DataHandle"

    invoke-static {v0, v8}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v7

    monitor-enter v7

    :try_start_8
    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v0

    sget-object v8, Lcn/thinkingdata/android/DatabaseAdapter$Table;->EVENTS:Lcn/thinkingdata/android/DatabaseAdapter$Table;

    invoke-virtual {v0, v5, v8, v2}, Lcn/thinkingdata/android/DatabaseAdapter;->cleanupEvents(Ljava/lang/String;Lcn/thinkingdata/android/DatabaseAdapter$Table;Ljava/lang/String;)I

    move-result v0

    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, "Events flushed. [left = %d]"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_9
    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    const/4 v3, 0x1

    goto/16 :goto_6

    :catch_1
    const/4 v7, 0x1

    goto/16 :goto_2

    :catch_2
    move-exception v0

    const-string v9, "ThinkingAnalytics.DataHandle"

    :try_start_a
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid data: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catch Lcn/thinkingdata/android/utils/RemoteService$ServiceUnavailableException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    const/4 v3, 0x0

    goto/16 :goto_6

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto/16 :goto_3

    :catch_5
    move-exception v0

    const-string v9, "ThinkingAnalytics.DataHandle"

    :try_start_b
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "The data is invalid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Lcn/thinkingdata/android/utils/RemoteService$ServiceUnavailableException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/nio/charset/MalformedInputException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_6
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catch_6
    nop

    const-string v0, "Cannot post message due to JSONException, the data will be deleted"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string v7, "ThinkingAnalytics.DataHandle"

    invoke-static {v7, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v7

    monitor-enter v7

    :try_start_c
    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v0

    sget-object v8, Lcn/thinkingdata/android/DatabaseAdapter$Table;->EVENTS:Lcn/thinkingdata/android/DatabaseAdapter$Table;

    invoke-virtual {v0, v5, v8, v2}, Lcn/thinkingdata/android/DatabaseAdapter;->cleanupEvents(Ljava/lang/String;Lcn/thinkingdata/android/DatabaseAdapter$Table;Ljava/lang/String;)I

    move-result v0

    monitor-exit v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, "Events flushed. [left = %d]"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    const-string v5, "ThinkingAnalytics.DataHandle"

    invoke-static {v5, v4}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    goto/16 :goto_5

    :catchall_3
    move-exception v0

    :try_start_d
    monitor-exit v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    throw v0

    :goto_1
    :try_start_e
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot post message to ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcn/thinkingdata/android/TDConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] due to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    goto/16 :goto_4

    :catch_7
    const/4 v7, 0x0

    :goto_2
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot interpret "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcn/thinkingdata/android/TDConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " as a URL. The data will be deleted."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    const-string v8, "ThinkingAnalytics.DataHandle"

    invoke-static {v8, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v7, :cond_8

    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v7

    monitor-enter v7

    :try_start_10
    iget-object v0, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v0

    sget-object v8, Lcn/thinkingdata/android/DatabaseAdapter$Table;->EVENTS:Lcn/thinkingdata/android/DatabaseAdapter$Table;

    invoke-virtual {v0, v5, v8, v2}, Lcn/thinkingdata/android/DatabaseAdapter;->cleanupEvents(Ljava/lang/String;Lcn/thinkingdata/android/DatabaseAdapter$Table;Ljava/lang/String;)I

    move-result v0

    monitor-exit v7
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v4, "Events flushed. [left = %d]"

    invoke-static {v5, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :try_start_11
    monitor-exit v7
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    throw v0

    :catchall_5
    move-exception v0

    move v3, v7

    goto :goto_6

    :goto_3
    :try_start_12
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot post message to ["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcn/thinkingdata/android/TDConfig;->getServerUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] due to "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    :goto_4
    const-string v5, "ThinkingAnalytics.DataHandle"

    invoke-static {v5, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_5
    if-gtz v4, :cond_3

    return-void

    :goto_6
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    const-string v7, "ThinkingAnalytics.DataHandle"

    invoke-static {v7, v8}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-eqz v3, :cond_a

    iget-object v3, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v3}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v3

    monitor-enter v3

    :try_start_13
    iget-object v7, v1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v7}, Lcn/thinkingdata/android/DataHandle;->access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object v7

    sget-object v8, Lcn/thinkingdata/android/DatabaseAdapter$Table;->EVENTS:Lcn/thinkingdata/android/DatabaseAdapter$Table;

    invoke-virtual {v7, v5, v8, v2}, Lcn/thinkingdata/android/DatabaseAdapter;->cleanupEvents(Ljava/lang/String;Lcn/thinkingdata/android/DatabaseAdapter$Table;Ljava/lang/String;)I

    move-result v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v4

    const-string v2, "Events flushed. [left = %d]"

    invoke-static {v3, v2, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ThinkingAnalytics.DataHandle"

    invoke-static {v3, v2}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :catchall_6
    move-exception v0

    :try_start_14
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    throw v0

    :cond_a
    :goto_7
    throw v0

    :catchall_7
    move-exception v0

    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    throw v0
.end method

.method private sendDebugData(Lcn/thinkingdata/android/TDConfig;Lorg/json/JSONObject;)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&deviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mDeviceInfo:Lorg/json/JSONObject;

    const-string v2, "#device_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&source=client&data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->isDebugOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "&dryRun=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->getSuffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uploading message("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "):\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "ThinkingAnalytics.DataHandle"

    invoke-static {v3, p2}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mPoster:Lcn/thinkingdata/android/utils/RemoteService;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->getDebugUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v8

    const-string p2, "1"

    invoke-direct {p0, p2}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->createExtraHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v9

    const/4 v7, 0x1

    invoke-interface/range {v4 .. v9}, Lcn/thinkingdata/android/utils/RemoteService;->performRequest(Ljava/lang/String;Ljava/lang/String;ZLjavax/net/ssl/SSLSocketFactory;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "errorLevel"

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_2

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->isDebugOnly()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The data will be discarded due to this device is not allowed to debug for: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    sget-object p2, Lcn/thinkingdata/android/TDConfig$ModeEnum;->NORMAL:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    invoke-virtual {p1, p2}, Lcn/thinkingdata/android/TDConfig;->setMode(Lcn/thinkingdata/android/TDConfig$ModeEnum;)V

    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fallback to normal mode due to the device is not allowed to debug for: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v4, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mToastShown:Ljava/util/Map;

    iget-object v5, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_4

    :cond_3
    iget-object v4, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->this$0:Lcn/thinkingdata/android/DataHandle;

    invoke-static {v4}, Lcn/thinkingdata/android/DataHandle;->access$1200(Lcn/thinkingdata/android/DataHandle;)Landroid/content/Context;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Debug Mode enabled for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    iget-object v4, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mToastShown:Ljava/util/Map;

    iget-object v6, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->setAllowDebug()V

    :cond_4
    if-eqz p2, :cond_9

    const-string v1, "errorProperties"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " Error Properties: \n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "errorReasons"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Reasons: \n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result p1

    if-eqz p1, :cond_a

    if-eq v5, p2, :cond_8

    const/4 p1, 0x2

    if-ne p1, p2, :cond_7

    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    const-string p2, "Invalid data format. Please refer to the logcat log for detail info."

    invoke-direct {p1, p2}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown error level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    const-string p2, "Invalid properties. Please refer to the logcat log for detail info."

    invoke-direct {p1, p2}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Upload debug data successfully for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method


# virtual methods
.method emptyQueue(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method postOldDataToServer(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method postToDebug(Lcn/thinkingdata/android/DataDescription;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method postToServer(Lcn/thinkingdata/android/DataDescription;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method postToServer(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method posterToServerDelayed(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p1, p0, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "ThinkingAnalytics.DataHandle"

    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The app might be quiting: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
