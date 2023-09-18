.class public Lcn/thinkingdata/android/TDConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/thinkingdata/android/TDConfig$NetworkType;,
        Lcn/thinkingdata/android/TDConfig$ModeEnum;
    }
.end annotation


# static fields
.field static final DEFAULT_FLUSH_BULK_SIZE:I = 0x14

.field static final DEFAULT_FLUSH_INTERVAL:I = 0x3a98

.field private static final PREFERENCE_NAME_PREFIX:Ljava/lang/String; = "cn.thinkingdata.android.config"

.field private static final TAG:Ljava/lang/String; = "ThinkingAnalytics.TDConfig"

.field public static final VERSION:Ljava/lang/String; = "2.6.2"

.field private static final sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/thinkingdata/android/TDConfig;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sPrefsLoader:Lcn/thinkingdata/android/SharedPreferencesLoader;


# instance fields
.field private volatile mAllowedDebug:Z

.field private final mConfigUrl:Ljava/lang/String;

.field final mContext:Landroid/content/Context;

.field private final mContextConfig:Lcn/thinkingdata/android/TDContextConfig;

.field private final mDebugUrl:Ljava/lang/String;

.field private mDefaultTimeZone:Ljava/util/TimeZone;

.field private final mDisabledEvents:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledEventsLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mFlushBulkSize:Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;

.field private final mFlushInterval:Lcn/thinkingdata/android/persistence/StorageFlushInterval;

.field private volatile mMode:Lcn/thinkingdata/android/TDConfig$ModeEnum;

.field private mNetworkType:I

.field private mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private final mServerUrl:Ljava/lang/String;

.field final mToken:Ljava/lang/String;

.field private volatile mTrackOldData:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/thinkingdata/android/SharedPreferencesLoader;

    invoke-direct {v0}, Lcn/thinkingdata/android/SharedPreferencesLoader;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/TDConfig;->sPrefsLoader:Lcn/thinkingdata/android/SharedPreferencesLoader;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/TDConfig;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mDisabledEvents:Ljava/util/Set;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mDisabledEventsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    sget-object v0, Lcn/thinkingdata/android/TDConfig$ModeEnum;->NORMAL:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    iput-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mMode:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    const/16 v0, 0xff

    iput v0, p0, Lcn/thinkingdata/android/TDConfig;->mNetworkType:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/thinkingdata/android/TDConfig;->mTrackOldData:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    sget-object v0, Lcn/thinkingdata/android/TDConfig;->sPrefsLoader:Lcn/thinkingdata/android/SharedPreferencesLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cn.thinkingdata.android.config_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcn/thinkingdata/android/SharedPreferencesLoader;->loadPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {p1}, Lcn/thinkingdata/android/TDContextConfig;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDContextConfig;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mContextConfig:Lcn/thinkingdata/android/TDContextConfig;

    iput-object p2, p0, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/sync"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mServerUrl:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/data_debug"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mDebugUrl:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "/config?appid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mConfigUrl:Ljava/lang/String;

    new-instance p1, Lcn/thinkingdata/android/persistence/StorageFlushInterval;

    const/16 p2, 0x3a98

    invoke-direct {p1, v0, p2}, Lcn/thinkingdata/android/persistence/StorageFlushInterval;-><init>(Ljava/util/concurrent/Future;I)V

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mFlushInterval:Lcn/thinkingdata/android/persistence/StorageFlushInterval;

    new-instance p1, Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;

    const/16 p2, 0x14

    invoke-direct {p1, v0, p2}, Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;-><init>(Ljava/util/concurrent/Future;I)V

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mFlushBulkSize:Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;

    return-void
.end method

.method static synthetic access$000(Lcn/thinkingdata/android/TDConfig;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/TDConfig;->mConfigUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/persistence/StorageFlushInterval;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/TDConfig;->mFlushInterval:Lcn/thinkingdata/android/persistence/StorageFlushInterval;

    return-object p0
.end method

.method static synthetic access$200(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/TDConfig;->mFlushBulkSize:Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;

    return-object p0
.end method

.method static synthetic access$300(Lcn/thinkingdata/android/TDConfig;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/TDConfig;->mDisabledEventsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object p0
.end method

.method static synthetic access$400(Lcn/thinkingdata/android/TDConfig;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcn/thinkingdata/android/TDConfig;->mDisabledEvents:Ljava/util/Set;

    return-object p0
.end method

.method private convertToNetworkType(Ljava/lang/String;)I
    .locals 2

    const-string v0, "NULL"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "WIFI"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x8

    return p1

    :cond_1
    const-string v0, "2G"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const-string v0, "3G"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x2

    return p1

    :cond_3
    const-string v0, "4G"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p1, 0x4

    return p1

    :cond_4
    const-string v0, "5G"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/16 p1, 0x10

    return p1

    :cond_5
    return v1
.end method

.method static getInstance(Landroid/content/Context;Ljava/lang/String;)Lcn/thinkingdata/android/TDConfig;
    .locals 1

    :try_start_0
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lcn/thinkingdata/android/TDConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/thinkingdata/android/TDConfig;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/thinkingdata/android/TDConfig;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v0, Lcn/thinkingdata/android/TDConfig;->sInstances:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/thinkingdata/android/TDConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    :try_start_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p2, Lcn/thinkingdata/android/TDConfig;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v4

    if-lez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/net/URL;->getPort()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_0
    :try_start_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p0, p1, v2}, Lcn/thinkingdata/android/TDConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p2}, Lcn/thinkingdata/android/TDConfig;->getRemoteConfig()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, p2

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ThinkingAnalytics.TDConfig"

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid server URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/thinkingdata/android/utils/TDLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method private getRemoteConfig()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/thinkingdata/android/TDConfig$1;

    invoke-direct {v1, p0}, Lcn/thinkingdata/android/TDConfig$1;-><init>(Lcn/thinkingdata/android/TDConfig;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method getDebugUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mDebugUrl:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getDefaultTimeZone()Ljava/util/TimeZone;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mDefaultTimeZone:Ljava/util/TimeZone;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFlushBulkSize()I
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mFlushBulkSize:Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;

    invoke-virtual {v0}, Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getFlushInterval()I
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mFlushInterval:Lcn/thinkingdata/android/persistence/StorageFlushInterval;

    invoke-virtual {v0}, Lcn/thinkingdata/android/persistence/StorageFlushInterval;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method getMainProcessName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mContextConfig:Lcn/thinkingdata/android/TDContextConfig;

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDContextConfig;->getMainProcessName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()Lcn/thinkingdata/android/TDConfig$ModeEnum;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mMode:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    return-object v0
.end method

.method public getModeInt()I
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mMode:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public declared-synchronized getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getServerUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mServerUrl:Ljava/lang/String;

    return-object v0
.end method

.method isDebug()Z
    .locals 2

    sget-object v0, Lcn/thinkingdata/android/TDConfig$ModeEnum;->DEBUG:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    iget-object v1, p0, Lcn/thinkingdata/android/TDConfig;->mMode:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isDebugOnly()Z
    .locals 2

    sget-object v0, Lcn/thinkingdata/android/TDConfig$ModeEnum;->DEBUG_ONLY:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    iget-object v1, p0, Lcn/thinkingdata/android/TDConfig;->mMode:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isDisabledEvent(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mDisabledEventsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mDisabledEvents:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mDisabledEventsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig;->mDisabledEventsLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method isNormal()Z
    .locals 2

    sget-object v0, Lcn/thinkingdata/android/TDConfig$ModeEnum;->NORMAL:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    iget-object v1, p0, Lcn/thinkingdata/android/TDConfig;->mMode:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method declared-synchronized isShouldFlush(Ljava/lang/String;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcn/thinkingdata/android/TDConfig;->convertToNetworkType(Ljava/lang/String;)I

    move-result p1

    iget v0, p0, Lcn/thinkingdata/android/TDConfig;->mNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method setAllowDebug()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/thinkingdata/android/TDConfig;->mAllowedDebug:Z

    return-void
.end method

.method public declared-synchronized setDefaultTimeZone(Ljava/util/TimeZone;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mDefaultTimeZone:Ljava/util/TimeZone;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(Lcn/thinkingdata/android/TDConfig$ModeEnum;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mMode:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    return-void
.end method

.method public setModeInt(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcn/thinkingdata/android/TDConfig$ModeEnum;->values()[Lcn/thinkingdata/android/TDConfig$ModeEnum;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mMode:Lcn/thinkingdata/android/TDConfig$ModeEnum;

    return-void

    :cond_1
    :goto_0
    const-string p1, "ThinkingAnalytics.TDConfig"

    const-string v0, "Invalid mode value"

    invoke-static {p1, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized setNetworkType(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcn/thinkingdata/android/TDConfig$2;->$SwitchMap$cn$thinkingdata$android$ThinkingAnalyticsSDK$ThinkingdataNetworkType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1f

    iput p1, p0, Lcn/thinkingdata/android/TDConfig;->mNetworkType:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    iput p1, p0, Lcn/thinkingdata/android/TDConfig;->mNetworkType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig;->mSSLSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {p0}, Lcn/thinkingdata/android/TDConfig;->getRemoteConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setTrackOldData(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/thinkingdata/android/TDConfig;->mTrackOldData:Z

    return-void
.end method

.method shouldThrowException()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public trackOldData()Z
    .locals 1

    iget-boolean v0, p0, Lcn/thinkingdata/android/TDConfig;->mTrackOldData:Z

    return v0
.end method
