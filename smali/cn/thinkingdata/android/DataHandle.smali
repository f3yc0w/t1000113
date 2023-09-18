.class public Lcn/thinkingdata/android/DataHandle;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/thinkingdata/android/DataHandle$SendMessageWorker;,
        Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThinkingAnalytics.DataHandle"

.field static final THREAD_NAME_SAVE_WORKER:Ljava/lang/String; = "thinkingData.sdk.saveMessageWorker"

.field static final THREAD_NAME_SEND_WORKER:Ljava/lang/String; = "thinkingData.sdk.sendMessageWorker"

.field private static final sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Lcn/thinkingdata/android/DataHandle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDbAdapter:Lcn/thinkingdata/android/DatabaseAdapter;

.field private final mSaveMessageWorker:Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;

.field private final mSendMessageWorker:Lcn/thinkingdata/android/DataHandle$SendMessageWorker;

.field private final mSystemInformation:Lcn/thinkingdata/android/SystemInformation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/DataHandle;->sInstances:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/DataHandle;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/thinkingdata/android/TDContextConfig;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDContextConfig;

    move-result-object v0

    invoke-static {p1}, Lcn/thinkingdata/android/SystemInformation;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/SystemInformation;

    move-result-object v1

    iput-object v1, p0, Lcn/thinkingdata/android/DataHandle;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    invoke-virtual {p0, p1}, Lcn/thinkingdata/android/DataHandle;->getDbAdapter(Landroid/content/Context;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/DataHandle;->mDbAdapter:Lcn/thinkingdata/android/DatabaseAdapter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDContextConfig;->getDataExpiration()J

    move-result-wide v3

    sub-long/2addr v1, v3

    sget-object v0, Lcn/thinkingdata/android/DatabaseAdapter$Table;->EVENTS:Lcn/thinkingdata/android/DatabaseAdapter$Table;

    invoke-virtual {p1, v1, v2, v0}, Lcn/thinkingdata/android/DatabaseAdapter;->cleanupEvents(JLcn/thinkingdata/android/DatabaseAdapter$Table;)V

    new-instance p1, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;

    invoke-direct {p1, p0}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;-><init>(Lcn/thinkingdata/android/DataHandle;)V

    iput-object p1, p0, Lcn/thinkingdata/android/DataHandle;->mSendMessageWorker:Lcn/thinkingdata/android/DataHandle$SendMessageWorker;

    new-instance p1, Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;

    invoke-direct {p1, p0}, Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;-><init>(Lcn/thinkingdata/android/DataHandle;)V

    iput-object p1, p0, Lcn/thinkingdata/android/DataHandle;->mSaveMessageWorker:Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;

    return-void
.end method

.method static synthetic access$100(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DataHandle$SendMessageWorker;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/DataHandle;->mSendMessageWorker:Lcn/thinkingdata/android/DataHandle$SendMessageWorker;

    return-object p0
.end method

.method static synthetic access$1200(Lcn/thinkingdata/android/DataHandle;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/DataHandle;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/DatabaseAdapter;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/DataHandle;->mDbAdapter:Lcn/thinkingdata/android/DatabaseAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcn/thinkingdata/android/DataHandle;)Lcn/thinkingdata/android/SystemInformation;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/DataHandle;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    return-object p0
.end method

.method static getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/DataHandle;
    .locals 2

    sget-object v0, Lcn/thinkingdata/android/DataHandle;->sInstances:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcn/thinkingdata/android/DataHandle;

    invoke-direct {v1, p0}, Lcn/thinkingdata/android/DataHandle;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Lcn/thinkingdata/android/DataHandle;

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method deviceInfo()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle;->mSendMessageWorker:Lcn/thinkingdata/android/DataHandle$SendMessageWorker;

    invoke-static {v0}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->access$000(Lcn/thinkingdata/android/DataHandle$SendMessageWorker;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method emptyMessageQueue(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle;->mSaveMessageWorker:Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;->emptyQueue(Ljava/lang/String;)V

    return-void
.end method

.method flush(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle;->mSaveMessageWorker:Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;->triggerFlush(Ljava/lang/String;)V

    return-void
.end method

.method flushOldData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle;->mSendMessageWorker:Lcn/thinkingdata/android/DataHandle$SendMessageWorker;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->postOldDataToServer(Ljava/lang/String;)V

    return-void
.end method

.method protected getConfig(Ljava/lang/String;)Lcn/thinkingdata/android/TDConfig;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcn/thinkingdata/android/TDConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcn/thinkingdata/android/TDConfig;

    move-result-object p1

    return-object p1
.end method

.method protected getDbAdapter(Landroid/content/Context;)Lcn/thinkingdata/android/DatabaseAdapter;
    .locals 0

    invoke-static {p1}, Lcn/thinkingdata/android/DatabaseAdapter;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/DatabaseAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected getFlushBulkSize(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcn/thinkingdata/android/DataHandle;->getConfig(Ljava/lang/String;)Lcn/thinkingdata/android/TDConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->getFlushBulkSize()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected getFlushInterval(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0, p1}, Lcn/thinkingdata/android/DataHandle;->getConfig(Ljava/lang/String;)Lcn/thinkingdata/android/TDConfig;

    move-result-object p1

    if-nez p1, :cond_0

    const/16 p1, 0x3a98

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->getFlushInterval()I

    move-result p1

    :goto_0
    return p1
.end method

.method protected getPoster()Lcn/thinkingdata/android/utils/RemoteService;
    .locals 1

    new-instance v0, Lcn/thinkingdata/android/utils/HttpService;

    invoke-direct {v0}, Lcn/thinkingdata/android/utils/HttpService;-><init>()V

    return-object v0
.end method

.method postClickData(Lcn/thinkingdata/android/DataDescription;)V
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle;->mSendMessageWorker:Lcn/thinkingdata/android/DataHandle$SendMessageWorker;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->postToServer(Lcn/thinkingdata/android/DataDescription;)V

    return-void
.end method

.method postToDebug(Lcn/thinkingdata/android/DataDescription;)V
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle;->mSendMessageWorker:Lcn/thinkingdata/android/DataHandle$SendMessageWorker;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/DataHandle$SendMessageWorker;->postToDebug(Lcn/thinkingdata/android/DataDescription;)V

    return-void
.end method

.method saveClickData(Lcn/thinkingdata/android/DataDescription;)V
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/DataHandle;->mSaveMessageWorker:Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/DataHandle$SaveMessageWorker;->saveToDatabase(Lcn/thinkingdata/android/DataDescription;)V

    return-void
.end method
