.class public Lcn/thinkingdata/android/ThinkingAnalyticsSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/IThinkingAnalyticsAPI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;,
        Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;,
        Lcn/thinkingdata/android/ThinkingAnalyticsSDK$DynamicSuperPropertiesTracker;,
        Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;
    }
.end annotation


# static fields
.field private static final APP_CRASH:I = 0x10

.field private static final APP_END:I = 0x2

.field private static final APP_INSTALL:I = 0x20

.field private static final APP_START:I = 0x1

.field private static final PREFERENCE_NAME:Ljava/lang/String; = "com.thinkingdata.analyse"

.field private static final TAG:Ljava/lang/String; = "ThinkingAnalyticsSDK"

.field private static final sAppFirstInstallationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sCalibratedTime:Lcn/thinkingdata/android/utils/ICalibratedTime;

.field private static final sCalibratedTimeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final sInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/thinkingdata/android/ThinkingAnalyticsSDK;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sOldLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

.field private static final sOldLoginIdLock:Ljava/lang/Object;

.field private static final sPrefsLoader:Lcn/thinkingdata/android/SharedPreferencesLoader;

.field private static sRandomID:Lcn/thinkingdata/android/persistence/StorageRandomID;

.field private static final sRandomIDLock:Ljava/lang/Object;

.field private static sStoredSharedPrefs:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAutoTrack:Z

.field private mAutoTrackEventTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoTrackIgnoredActivities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoTrackStartProperties:Lorg/json/JSONObject;

.field private mAutoTrackStartTime:Lcn/thinkingdata/android/utils/ITime;

.field mConfig:Lcn/thinkingdata/android/TDConfig;

.field private mDynamicSuperPropertiesTracker:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$DynamicSuperPropertiesTracker;

.field private final mEnableFlag:Lcn/thinkingdata/android/persistence/StorageEnableFlag;

.field private final mEnableTrackOldData:Z

.field private final mIdentifyId:Lcn/thinkingdata/android/persistence/StorageIdentifyId;

.field private mIgnoredViewTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private mLastScreenUrl:Ljava/lang/String;

.field private mLifecycleCallbacks:Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;

.field private final mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

.field private final mMessages:Lcn/thinkingdata/android/DataHandle;

.field private final mOptOutFlag:Lcn/thinkingdata/android/persistence/StorageOptOutFlag;

.field private final mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

.field private mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

.field private mTrackCrash:Z

.field private mTrackFragmentAppViewScreen:Z

.field private final mTrackTimer:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/thinkingdata/android/EventTimer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/thinkingdata/android/SharedPreferencesLoader;

    invoke-direct {v0}, Lcn/thinkingdata/android/SharedPreferencesLoader;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sPrefsLoader:Lcn/thinkingdata/android/SharedPreferencesLoader;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sOldLoginIdLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sRandomIDLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sInstanceMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sAppFirstInstallationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sCalibratedTimeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-void
.end method

.method varargs constructor <init>(Lcn/thinkingdata/android/TDConfig;[Z)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIgnoredViewTypeList:Ljava/util/List;

    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    aget-boolean p2, p2, v1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIdentifyId:Lcn/thinkingdata/android/persistence/StorageIdentifyId;

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mOptOutFlag:Lcn/thinkingdata/android/persistence/StorageOptOutFlag;

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableFlag:Lcn/thinkingdata/android/persistence/StorageEnableFlag;

    iput-boolean v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableTrackOldData:Z

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    iget-object p2, p1, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getDataHandleInstance(Landroid/content/Context;)Lcn/thinkingdata/android/DataHandle;

    move-result-object p2

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mMessages:Lcn/thinkingdata/android/DataHandle;

    iget-object p1, p1, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/thinkingdata/android/SystemInformation;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/SystemInformation;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    return-void

    :cond_0
    sget-object p2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sStoredSharedPrefs:Ljava/util/concurrent/Future;

    if-nez p2, :cond_1

    sget-object p2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sPrefsLoader:Lcn/thinkingdata/android/SharedPreferencesLoader;

    iget-object v0, p1, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    const-string v2, "com.thinkingdata.analyse"

    invoke-virtual {p2, v0, v2}, Lcn/thinkingdata/android/SharedPreferencesLoader;->loadPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p2

    sput-object p2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sStoredSharedPrefs:Ljava/util/concurrent/Future;

    new-instance v0, Lcn/thinkingdata/android/persistence/StorageRandomID;

    invoke-direct {v0, p2}, Lcn/thinkingdata/android/persistence/StorageRandomID;-><init>(Ljava/util/concurrent/Future;)V

    sput-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sRandomID:Lcn/thinkingdata/android/persistence/StorageRandomID;

    new-instance p2, Lcn/thinkingdata/android/persistence/StorageLoginID;

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sStoredSharedPrefs:Ljava/util/concurrent/Future;

    invoke-direct {p2, v0}, Lcn/thinkingdata/android/persistence/StorageLoginID;-><init>(Ljava/util/concurrent/Future;)V

    sput-object p2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sOldLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    :cond_1
    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->trackOldData()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-static {}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isOldDataTracked()Z

    move-result p2

    if-nez p2, :cond_2

    iput-boolean v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableTrackOldData:Z

    goto :goto_0

    :cond_2
    iput-boolean v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableTrackOldData:Z

    :goto_0
    sget-object p2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sPrefsLoader:Lcn/thinkingdata/android/SharedPreferencesLoader;

    iget-object v2, p1, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "com.thinkingdata.analyse_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v2, v3}, Lcn/thinkingdata/android/SharedPreferencesLoader;->loadPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object p2

    new-instance v2, Lcn/thinkingdata/android/persistence/StorageLoginID;

    invoke-direct {v2, p2}, Lcn/thinkingdata/android/persistence/StorageLoginID;-><init>(Ljava/util/concurrent/Future;)V

    iput-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    new-instance v2, Lcn/thinkingdata/android/persistence/StorageIdentifyId;

    invoke-direct {v2, p2}, Lcn/thinkingdata/android/persistence/StorageIdentifyId;-><init>(Ljava/util/concurrent/Future;)V

    iput-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIdentifyId:Lcn/thinkingdata/android/persistence/StorageIdentifyId;

    new-instance v2, Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    invoke-direct {v2, p2}, Lcn/thinkingdata/android/persistence/StorageSuperProperties;-><init>(Ljava/util/concurrent/Future;)V

    iput-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    new-instance v2, Lcn/thinkingdata/android/persistence/StorageOptOutFlag;

    invoke-direct {v2, p2}, Lcn/thinkingdata/android/persistence/StorageOptOutFlag;-><init>(Ljava/util/concurrent/Future;)V

    iput-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mOptOutFlag:Lcn/thinkingdata/android/persistence/StorageOptOutFlag;

    new-instance v2, Lcn/thinkingdata/android/persistence/StorageEnableFlag;

    invoke-direct {v2, p2}, Lcn/thinkingdata/android/persistence/StorageEnableFlag;-><init>(Ljava/util/concurrent/Future;)V

    iput-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableFlag:Lcn/thinkingdata/android/persistence/StorageEnableFlag;

    iget-object p2, p1, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcn/thinkingdata/android/SystemInformation;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/SystemInformation;

    move-result-object p2

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    iget-object p2, p1, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getDataHandleInstance(Landroid/content/Context;)Lcn/thinkingdata/android/DataHandle;

    move-result-object p2

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mMessages:Lcn/thinkingdata/android/DataHandle;

    iget-boolean v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableTrackOldData:Z

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcn/thinkingdata/android/DataHandle;->flushOldData(Ljava/lang/String;)V

    :cond_3
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackEventTypeList:Ljava/util/List;

    new-instance p2, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getMainProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, p0, v2}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;-><init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/String;)V

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLifecycleCallbacks:Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt p2, v2, :cond_4

    iget-object p2, p1, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    check-cast p2, Landroid/app/Application;

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLifecycleCallbacks:Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;

    invoke-virtual {p2, v2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_4
    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->isNormal()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->enableTrackLog(Z)V

    :cond_5
    const/4 p2, 0x5

    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "2.6.2"

    aput-object v2, p2, v1

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->getMode()Lcn/thinkingdata/android/TDConfig$ModeEnum;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    iget-object v0, p1, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDUtils;->getSuffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    aput-object v0, p2, v2

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->getServerUrl()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, p2, v0

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getDeviceId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    const-string p1, "Thinking Analytics SDK %s instance initialized successfully with mode: %s, APP ID ends with: %s, server url: %s, device ID: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThinkingAnalyticsSDK"

    invoke-static {p2, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static addInstance(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sInstanceMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p2, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V
    .locals 4

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sInstanceMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-interface {p0, v3}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;->process(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static calibrateTime(J)V
    .locals 1

    new-instance v0, Lcn/thinkingdata/android/utils/TDCalibratedTime;

    invoke-direct {v0, p0, p1}, Lcn/thinkingdata/android/utils/TDCalibratedTime;-><init>(J)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->setCalibratedTime(Lcn/thinkingdata/android/utils/ICalibratedTime;)V

    return-void
.end method

.method public static varargs calibrateTimeWithNtp([Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;

    invoke-direct {v0, p0}, Lcn/thinkingdata/android/utils/TDCalibratedTimeWithNTP;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->setCalibratedTime(Lcn/thinkingdata/android/utils/ICalibratedTime;)V

    return-void
.end method

.method public static calibrateTimeWithNtpForUnity(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->calibrateTimeWithNtp([Ljava/lang/String;)V

    return-void
.end method

.method public static enableTrackLog(Z)V
    .locals 0

    invoke-static {p0}, Lcn/thinkingdata/android/utils/TDLog;->setEnableLog(Z)V

    return-void
.end method

.method private getIdentifyID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIdentifyId:Lcn/thinkingdata/android/persistence/StorageIdentifyId;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIdentifyId:Lcn/thinkingdata/android/persistence/StorageIdentifyId;

    invoke-virtual {v1}, Lcn/thinkingdata/android/persistence/StorageIdentifyId;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getTime()Lcn/thinkingdata/android/utils/ITime;
    .locals 4

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sCalibratedTimeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sCalibratedTime:Lcn/thinkingdata/android/utils/ICalibratedTime;

    if-eqz v1, :cond_0

    new-instance v2, Lcn/thinkingdata/android/utils/TDTimeCalibrated;

    iget-object v3, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v3}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcn/thinkingdata/android/utils/TDTimeCalibrated;-><init>(Lcn/thinkingdata/android/utils/ICalibratedTime;Ljava/util/TimeZone;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcn/thinkingdata/android/utils/TDTime;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v3, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v3}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcn/thinkingdata/android/utils/TDTime;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v2
.end method

.method private getTime(Ljava/lang/String;Ljava/lang/Double;)Lcn/thinkingdata/android/utils/ITime;
    .locals 1

    new-instance v0, Lcn/thinkingdata/android/utils/TDTimeConstant;

    invoke-direct {v0, p1, p2}, Lcn/thinkingdata/android/utils/TDTimeConstant;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    return-object v0
.end method

.method private getTime(Ljava/util/Date;Ljava/util/TimeZone;)Lcn/thinkingdata/android/utils/ITime;
    .locals 1

    if-nez p2, :cond_0

    new-instance p2, Lcn/thinkingdata/android/utils/TDTime;

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcn/thinkingdata/android/utils/TDTime;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    invoke-virtual {p2}, Lcn/thinkingdata/android/utils/TDTime;->disableZoneOffset()V

    return-object p2

    :cond_0
    new-instance v0, Lcn/thinkingdata/android/utils/TDTime;

    invoke-direct {v0, p1, p2}, Lcn/thinkingdata/android/utils/TDTime;-><init>(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-object v0
.end method

.method private static isOldDataTracked()Z
    .locals 4

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sInstanceMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    iget-boolean v3, v3, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableTrackOldData:Z

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :cond_2
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private obtainDefaultEventProperties(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getSuperProperties()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mDynamicSuperPropertiesTracker:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$DynamicSuperPropertiesTracker;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$DynamicSuperPropertiesTracker;->getDynamicSuperProperties()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Lcn/thinkingdata/android/utils/PropertyUtils;->checkProperty(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    const-string v1, "#network_type"

    :try_start_3
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    invoke-virtual {v2}, Lcn/thinkingdata/android/SystemInformation;->getNetworkType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mMessages:Lcn/thinkingdata/android/DataHandle;

    invoke-virtual {v1}, Lcn/thinkingdata/android/DataHandle;->deviceInfo()Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    invoke-virtual {v1}, Lcn/thinkingdata/android/SystemInformation;->getAppVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v1, :cond_1

    const-string v1, "#app_version"

    :try_start_4
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    invoke-virtual {v2}, Lcn/thinkingdata/android/SystemInformation;->getAppVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/thinkingdata/android/EventTimer;

    iget-object v3, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Lcn/thinkingdata/android/EventTimer;->duration()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-lez v5, :cond_2

    const-string v1, "#duration"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_7
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    :catch_2
    :cond_2
    :goto_1
    return-object v0
.end method

.method private static setCalibratedTime(Lcn/thinkingdata/android/utils/ICalibratedTime;)V
    .locals 2

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sCalibratedTimeLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    sput-object p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sCalibratedTime:Lcn/thinkingdata/android/utils/ICalibratedTime;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-void
.end method

.method public static setCustomerLibInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/thinkingdata/android/SystemInformation;->setLibraryInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static sharedInstance(Landroid/content/Context;Ljava/lang/String;)Lcn/thinkingdata/android/ThinkingAnalyticsSDK;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sharedInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    move-result-object p0

    return-object p0
.end method

.method public static sharedInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/thinkingdata/android/ThinkingAnalyticsSDK;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sharedInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    move-result-object p0

    return-object p0
.end method

.method public static sharedInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Lcn/thinkingdata/android/ThinkingAnalyticsSDK;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "ThinkingAnalyticsSDK"

    if-nez p0, :cond_0

    const-string p0, "App context is required to get SDK instance."

    :goto_0
    invoke-static {v1, p0}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p0, "APP ID is required to get SDK instance."

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcn/thinkingdata/android/TDConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/thinkingdata/android/TDConfig;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p3}, Lcn/thinkingdata/android/TDConfig;->setTrackOldData(Z)V

    invoke-static {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sharedInstance(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p0, "Cannot get valid TDConfig instance. Returning null"

    goto :goto_0
.end method

.method public static sharedInstance(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/ThinkingAnalyticsSDK;
    .locals 5

    if-nez p0, :cond_0

    const-string p0, "ThinkingAnalyticsSDK"

    const-string v0, "Cannot initial SDK instance with null config instance."

    invoke-static {p0, v0}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sInstanceMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/thinkingdata/android/DatabaseAdapter;->dbNotExist(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/thinkingdata/android/SystemInformation;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/SystemInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcn/thinkingdata/android/SystemInformation;->hasNotBeenUpdatedSinceInstall()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sAppFirstInstallationMap:Ljava/util/Map;

    iget-object v3, p0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, p0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/thinkingdata/android/TDQuitSafelyService;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDQuitSafelyService;

    move-result-object v2

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDQuitSafelyService;->start()V

    :cond_2
    iget-object v2, p0, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    if-nez v2, :cond_3

    new-instance v2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    const/4 v3, 0x0

    new-array v3, v3, [Z

    invoke-direct {v2, p0, v3}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;-><init>(Lcn/thinkingdata/android/TDConfig;[Z)V

    iget-object v3, p0, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sAppFirstInstallationMap:Ljava/util/Map;

    iget-object v3, p0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object p0, p0, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;Z)V

    return-void
.end method

.method private track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;Z)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v6}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;ZLjava/util/Map;Lcn/thinkingdata/android/utils/TDConstants$DataType;)V

    return-void
.end method

.method private track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;ZLjava/util/Map;Lcn/thinkingdata/android/utils/TDConstants$DataType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcn/thinkingdata/android/utils/ITime;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcn/thinkingdata/android/utils/TDConstants$DataType;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/TDConfig;->isDisabledEvent(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ThinkingAnalyticsSDK"

    if-eqz v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring disabled event ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p4, :cond_2

    :try_start_0
    invoke-static {p1}, Lcn/thinkingdata/android/utils/PropertyUtils;->isInvalidName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Event name["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is invalid. Event name must be string that starts with English letter, and contains letter, number, and \'_\'. The max length of the event name is 50."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Lcn/thinkingdata/android/TDDebugException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid event name: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    :goto_0
    if-eqz p4, :cond_4

    invoke-static {p2}, Lcn/thinkingdata/android/utils/PropertyUtils;->checkProperty(Lorg/json/JSONObject;)Z

    move-result p4

    if-nez p4, :cond_4

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "The data contains invalid key or value: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v1, p4}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p4, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {p4}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result p4

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    const-string p2, "Invalid properties. Please refer to SDK debug log for detail reasons."

    invoke-direct {p1, p2}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->obtainDefaultEventProperties(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    if-eqz p2, :cond_5

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p2, p4, v0}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    :cond_5
    if-nez p6, :cond_6

    sget-object p6, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    :cond_6
    new-instance p2, Lcn/thinkingdata/android/DataDescription;

    invoke-direct {p2, p0, p6, p4, p3}, Lcn/thinkingdata/android/DataDescription;-><init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V

    iput-object p1, p2, Lcn/thinkingdata/android/DataDescription;->eventName:Ljava/lang/String;

    if-eqz p5, :cond_7

    invoke-virtual {p2, p5}, Lcn/thinkingdata/android/DataDescription;->setExtraFields(Ljava/util/Map;)V

    :cond_7
    invoke-virtual {p0, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->trackInternal(Lcn/thinkingdata/android/DataDescription;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method private user_operations(Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Ljava/util/Date;)V
    .locals 3

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcn/thinkingdata/android/utils/PropertyUtils;->checkProperty(Lorg/json/JSONObject;)Z

    move-result v0

    const-string v1, "ThinkingAnalyticsSDK"

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The data contains invalid key or value: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    const-string p2, "Invalid properties. Please refer to SDK debug log for detail reasons."

    invoke-direct {p1, p2}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    :try_start_0
    invoke-direct {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime()Lcn/thinkingdata/android/utils/ITime;

    move-result-object p3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime(Ljava/util/Date;Ljava/util/TimeZone;)Lcn/thinkingdata/android/utils/ITime;

    move-result-object p3

    :goto_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {p2, v0, v2}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    :cond_4
    new-instance p2, Lcn/thinkingdata/android/DataDescription;

    invoke-direct {p2, p0, p1, v0, p3}, Lcn/thinkingdata/android/DataDescription;-><init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V

    invoke-virtual {p0, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->trackInternal(Lcn/thinkingdata/android/DataDescription;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method appBecomeActive()V
    .locals 5

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    iget-object v0, v0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/thinkingdata/android/TDQuitSafelyService;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDQuitSafelyService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDQuitSafelyService;->start()V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/thinkingdata/android/EventTimer;

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcn/thinkingdata/android/EventTimer;->setStartTime(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ThinkingAnalyticsSDK"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appBecomeActive error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method appEnterBackground()V
    .locals 7

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-string/jumbo v3, "ta_app_end"

    :try_start_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/thinkingdata/android/EventTimer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcn/thinkingdata/android/EventTimer;->getEventAccumulatedDuration()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v3, v5

    invoke-virtual {v2}, Lcn/thinkingdata/android/EventTimer;->getStartTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcn/thinkingdata/android/EventTimer;->setEventAccumulatedDuration(J)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcn/thinkingdata/android/EventTimer;->setStartTime(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ThinkingAnalyticsSDK"

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appEnterBackground error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime()Lcn/thinkingdata/android/utils/ITime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;Z)V

    return-void
.end method

.method public clearSuperProperties()V
    .locals 3

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2}, Lcn/thinkingdata/android/persistence/StorageSuperProperties;->put(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic createLightInstance()Lcn/thinkingdata/android/IThinkingAnalyticsAPI;
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->createLightInstance()Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    move-result-object v0

    return-object v0
.end method

.method public createLightInstance()Lcn/thinkingdata/android/ThinkingAnalyticsSDK;
    .locals 2

    new-instance v0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-direct {v0, v1}, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;-><init>(Lcn/thinkingdata/android/TDConfig;)V

    return-object v0
.end method

.method public enableAutoTrack(I)V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_0

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_START:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_1

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_END:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p1, 0x20

    if-lez v1, :cond_2

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_INSTALL:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 p1, p1, 0x10

    if-lez p1, :cond_3

    sget-object p1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_CRASH:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->enableAutoTrack(Ljava/util/List;)V

    :cond_4
    return-void
.end method

.method public enableAutoTrack(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrack:Z

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_CRASH:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackCrash:Z

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    iget-object v0, v0, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/thinkingdata/android/TDQuitSafelyService;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/TDQuitSafelyService;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDQuitSafelyService;->initExceptionHandler()V

    :cond_2
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackEventTypeList:Ljava/util/List;

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_END:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_END:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "ta_app_end"

    invoke-virtual {p0, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->timeEvent(Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_INSTALL:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sInstanceMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sAppFirstInstallationMap:Ljava/util/Map;

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    iget-object v2, v2, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    iget-object v2, v2, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "ta_app_install"

    invoke-virtual {p0, v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->flush()V

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    iget-object v2, v2, Lcn/thinkingdata/android/TDConfig;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_0
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime()Lcn/thinkingdata/android/utils/ITime;

    move-result-object v0

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackStartTime:Lcn/thinkingdata/android/utils/ITime;

    const-string/jumbo v0, "ta_app_start"

    invoke-direct {p0, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->obtainDefaultEventProperties(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackStartProperties:Lorg/json/JSONObject;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackEventTypeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackEventTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackEventTypeList:Ljava/util/List;

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_START:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLifecycleCallbacks:Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->onAppStartEventEnabled()V

    :cond_6
    return-void

    :catchall_1
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_7
    :goto_1
    return-void
.end method

.method public enableTracking(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTracking: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThinkingAnalyticsSDK"

    invoke-static {v1, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->flush()V

    :cond_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableFlag:Lcn/thinkingdata/android/persistence/StorageEnableFlag;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/persistence/StorageEnableFlag;->put(Ljava/lang/Object;)V

    return-void
.end method

.method public flush()V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mMessages:Lcn/thinkingdata/android/DataHandle;

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/DataHandle;->flush(Ljava/lang/String;)V

    return-void
.end method

.method declared-synchronized getAutoTrackStartProperties()Lorg/json/JSONObject;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackStartProperties:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
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

.method declared-synchronized getAutoTrackStartTime()Lcn/thinkingdata/android/utils/ITime;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackStartTime:Lcn/thinkingdata/android/utils/ITime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getDataHandleInstance(Landroid/content/Context;)Lcn/thinkingdata/android/DataHandle;
    .locals 0

    invoke-static {p1}, Lcn/thinkingdata/android/DataHandle;->getInstance(Landroid/content/Context;)Lcn/thinkingdata/android/DataHandle;

    move-result-object p1

    return-object p1
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    invoke-virtual {v0}, Lcn/thinkingdata/android/SystemInformation;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    const-string v1, "#device_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    invoke-virtual {v0}, Lcn/thinkingdata/android/SystemInformation;->getDeviceInfo()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getIdentifyID()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getRandomID()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getIgnoredViewTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIgnoredViewTypeList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIgnoredViewTypeList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIgnoredViewTypeList:Ljava/util/List;

    return-object v0
.end method

.method getLoginId()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    invoke-virtual {v1}, Lcn/thinkingdata/android/persistence/StorageLoginID;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableTrackOldData:Z

    if-eqz v2, :cond_1

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sOldLoginIdLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sOldLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    invoke-virtual {v2}, Lcn/thinkingdata/android/persistence/StorageLoginID;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    invoke-virtual {v3, v2}, Lcn/thinkingdata/android/persistence/StorageLoginID;->put(Ljava/lang/Object;)V

    sget-object v3, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sOldLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcn/thinkingdata/android/persistence/StorageLoginID;->put(Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method getRandomID()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sRandomIDLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sRandomID:Lcn/thinkingdata/android/persistence/StorageRandomID;

    invoke-virtual {v1}, Lcn/thinkingdata/android/persistence/StorageRandomID;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSuperProperties()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    invoke-virtual {v1}, Lcn/thinkingdata/android/persistence/StorageSuperProperties;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTimeString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime(Ljava/util/Date;Ljava/util/TimeZone;)Lcn/thinkingdata/android/utils/ITime;

    move-result-object p1

    invoke-interface {p1}, Lcn/thinkingdata/android/utils/ITime;->getTime()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    iget-object v0, v0, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method hasDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasOptOut()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasOptOut()Z
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mOptOutFlag:Lcn/thinkingdata/android/persistence/StorageOptOutFlag;

    invoke-virtual {v0}, Lcn/thinkingdata/android/persistence/StorageOptOutFlag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public identify(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ThinkingAnalyticsSDK"

    const-string v0, "The identity cannot be empty."

    invoke-static {p1, v0}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    const-string v0, "distinct id cannot be empty"

    invoke-direct {p1, v0}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIdentifyId:Lcn/thinkingdata/android/persistence/StorageIdentifyId;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIdentifyId:Lcn/thinkingdata/android/persistence/StorageIdentifyId;

    invoke-virtual {v1, p1}, Lcn/thinkingdata/android/persistence/StorageIdentifyId;->put(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ignoreAutoTrackActivities(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public ignoreAutoTrackActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_ignored:I

    const-string v2, "1"

    invoke-static {v0, p1, v1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->setTag(Ljava/lang/String;Landroid/view/View;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public ignoreViewType(Ljava/lang/Class;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIgnoredViewTypeList:Ljava/util/List;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIgnoredViewTypeList:Ljava/util/List;

    :cond_2
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIgnoredViewTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIgnoredViewTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-class v1, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreenAndAppClick;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreenAndAppClick;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreenAndAppClick;->appId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreenAndAppClick;->appId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v2

    :cond_3
    const-class v1, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppClick;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppClick;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppClick;->appId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppClick;->appId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0
.end method

.method isActivityAutoTrackAppViewScreenIgnored(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackIgnoredActivities:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-class v1, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreenAndAppClick;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreenAndAppClick;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreenAndAppClick;->appId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreenAndAppClick;->appId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    return v2

    :cond_3
    const-class v1, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreen;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreen;

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreen;->appId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcn/thinkingdata/android/ThinkingDataIgnoreTrackAppViewScreen;->appId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    return v2

    :cond_5
    return v0
.end method

.method isAutoTrackEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrack:Z

    return v0
.end method

.method isAutoTrackEventTypeIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mAutoTrackEventTypeList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableFlag:Lcn/thinkingdata/android/persistence/StorageEnableFlag;

    invoke-virtual {v0}, Lcn/thinkingdata/android/persistence/StorageEnableFlag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method isTrackFragmentAppViewScreenEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackFragmentAppViewScreen:Z

    return v0
.end method

.method public login(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p1, "ThinkingAnalyticsSDK"

    const-string v0, "The account id cannot be empty."

    invoke-static {p1, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    const-string v0, "account id cannot be empty"

    invoke-direct {p1, v0}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    invoke-virtual {v1}, Lcn/thinkingdata/android/persistence/StorageLoginID;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    invoke-virtual {v1, p1}, Lcn/thinkingdata/android/persistence/StorageLoginID;->put(Ljava/lang/Object;)V

    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public logout()V
    .locals 4

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/thinkingdata/android/persistence/StorageLoginID;->put(Ljava/lang/Object;)V

    iget-boolean v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mEnableTrackOldData:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sOldLoginIdLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v3, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sOldLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    invoke-virtual {v3}, Lcn/thinkingdata/android/persistence/StorageLoginID;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->sOldLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    invoke-virtual {v3, v2}, Lcn/thinkingdata/android/persistence/StorageLoginID;->put(Ljava/lang/Object;)V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    :cond_2
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public optInTracking()V
    .locals 2

    const-string v0, "ThinkingAnalyticsSDK"

    const-string v1, "optInTracking..."

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mOptOutFlag:Lcn/thinkingdata/android/persistence/StorageOptOutFlag;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/persistence/StorageOptOutFlag;->put(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mMessages:Lcn/thinkingdata/android/DataHandle;

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/DataHandle;->flush(Ljava/lang/String;)V

    return-void
.end method

.method public optOutTracking()V
    .locals 3

    const-string v0, "ThinkingAnalyticsSDK"

    const-string v1, "optOutTracking..."

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mOptOutFlag:Lcn/thinkingdata/android/persistence/StorageOptOutFlag;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/persistence/StorageOptOutFlag;->put(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mMessages:Lcn/thinkingdata/android/DataHandle;

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/DataHandle;->emptyMessageQueue(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mIdentifyId:Lcn/thinkingdata/android/persistence/StorageIdentifyId;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/persistence/StorageIdentifyId;->put(Ljava/lang/Object;)V

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLoginId:Lcn/thinkingdata/android/persistence/StorageLoginID;

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/persistence/StorageLoginID;->put(Ljava/lang/Object;)V

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v2}, Lcn/thinkingdata/android/persistence/StorageSuperProperties;->put(Ljava/lang/Object;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public optOutTrackingAndDeleteUser()V
    .locals 4

    new-instance v0, Lcn/thinkingdata/android/DataDescription;

    sget-object v1, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_DEL:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-direct {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime()Lcn/thinkingdata/android/utils/ITime;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcn/thinkingdata/android/DataDescription;-><init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V

    invoke-virtual {v0}, Lcn/thinkingdata/android/DataDescription;->setNoCache()V

    invoke-virtual {p0, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->trackInternal(Lcn/thinkingdata/android/DataDescription;)V

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->optOutTracking()V

    return-void
.end method

.method public setDynamicSuperPropertiesTracker(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$DynamicSuperPropertiesTracker;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mDynamicSuperPropertiesTracker:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$DynamicSuperPropertiesTracker;

    return-void
.end method

.method public setJsBridge(Landroid/webkit/WebView;)V
    .locals 2

    if-nez p1, :cond_1

    const-string p1, "ThinkingAnalyticsSDK"

    const-string v0, "SetJsBridge failed due to parameter webView is null"

    invoke-static {p1, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    const-string/jumbo v0, "webView cannot be null for setJsBridge"

    invoke-direct {p1, v0}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    new-instance v0, Lcn/thinkingdata/android/TDWebAppInterface;

    invoke-direct {v0, p0}, Lcn/thinkingdata/android/TDWebAppInterface;-><init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V

    const-string v1, "ThinkingData_APP_JS_Bridge"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public setJsBridgeForX5WebView(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "ThinkingAnalyticsSDK"

    if-nez p1, :cond_0

    const-string p1, "SetJsBridge failed due to parameter webView is null"

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "addJavascriptInterface"

    const/4 v3, 0x2

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Lcn/thinkingdata/android/TDWebAppInterface;

    invoke-direct {v3, p0}, Lcn/thinkingdata/android/TDWebAppInterface;-><init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V

    aput-object v3, v2, v6

    const-string v3, "ThinkingData_APP_JS_Bridge"

    aput-object v3, v2, v7

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setJsBridgeForX5WebView failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setNetworkType(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;->NETWORKTYPE_ALL:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;

    goto :goto_0

    :cond_1
    sget-object p1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;->NETWORKTYPE_WIFI:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;

    goto :goto_0

    :cond_2
    sget-object p1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;->NETWORKTYPE_DEFAULT:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;

    :goto_0
    invoke-virtual {p0, p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->setNetworkType(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;)V

    return-void
.end method

.method public setNetworkType(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/TDConfig;->setNetworkType(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;)V

    return-void
.end method

.method public setSuperProperties(Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-static {p1}, Lcn/thinkingdata/android/utils/PropertyUtils;->checkProperty(Lorg/json/JSONObject;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    invoke-virtual {v1}, Lcn/thinkingdata/android/persistence/StorageSuperProperties;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    invoke-virtual {p1, v1}, Lcn/thinkingdata/android/persistence/StorageSuperProperties;->put(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    const-string v0, "Set super properties failed. Please refer to the SDK debug log for details."

    invoke-direct {p1, v0}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setViewID(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v1, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_id:I

    invoke-static {v0, p1, v1, p2}, Lcn/thinkingdata/android/utils/TDUtils;->setTag(Ljava/lang/String;Landroid/view/View;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewID(Landroid/view/View;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_id:I

    invoke-static {v0, p1, v1, p2}, Lcn/thinkingdata/android/utils/TDUtils;->setTag(Ljava/lang/String;Landroid/view/View;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_properties:I

    invoke-static {v0, p1, v1, p2}, Lcn/thinkingdata/android/utils/TDUtils;->setTag(Ljava/lang/String;Landroid/view/View;ILjava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method shouldTrackCrash()Z
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackCrash:Z

    return v0
.end method

.method public timeEvent(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Lcn/thinkingdata/android/utils/PropertyUtils;->isInvalidName(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const-string v0, "ThinkingAnalyticsSDK"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "timeEvent event name["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackTimer:Ljava/util/Map;

    new-instance v2, Lcn/thinkingdata/android/EventTimer;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3}, Lcn/thinkingdata/android/EventTimer;-><init>(Ljava/util/concurrent/TimeUnit;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public track(Lcn/thinkingdata/android/ThinkingAnalyticsEvent;)V
    .locals 9

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ThinkingAnalyticsSDK"

    if-nez p1, :cond_1

    const-string p1, "Ignoring empty event..."

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getEventTime()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getEventTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime(Ljava/util/Date;Ljava/util/TimeZone;)Lcn/thinkingdata/android/utils/ITime;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime()Lcn/thinkingdata/android/utils/ITime;

    move-result-object v1

    :goto_0
    move-object v5, v1

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getExtraField()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Invalid ExtraFields. Ignoring..."

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    instance-of v0, p1, Lcn/thinkingdata/android/TDFirstEvent;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getExtraValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getExtraField()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v7, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getEventName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getProperties()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->getDataType()Lcn/thinkingdata/android/utils/TDConstants$DataType;

    move-result-object v8

    const/4 v6, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;ZLjava/util/Map;Lcn/thinkingdata/android/utils/TDConstants$DataType;)V

    return-void
.end method

.method public track(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime()Lcn/thinkingdata/android/utils/ITime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V

    return-void
.end method

.method public track(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime()Lcn/thinkingdata/android/utils/ITime;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V

    return-void
.end method

.method public track(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Date;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p3, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime(Ljava/util/Date;Ljava/util/TimeZone;)Lcn/thinkingdata/android/utils/ITime;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V

    return-void
.end method

.method public track(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3, p4}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime(Ljava/util/Date;Ljava/util/TimeZone;)Lcn/thinkingdata/android/utils/ITime;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V

    return-void
.end method

.method public trackAppInstall()V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_INSTALL:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->enableAutoTrack(Ljava/util/List;)V

    return-void
.end method

.method public trackFragmentAppViewScreen()V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mTrackFragmentAppViewScreen:Z

    return-void
.end method

.method trackFromH5(Ljava/lang/String;)V
    .locals 13

    const-string v0, "#zone_offset"

    const-string v8, "ThinkingAnalyticsSDK"

    const-string v9, "#event_id"

    const-string v10, "#first_check_id"

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "data"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    const/4 v1, 0x0

    const/4 v12, 0x0

    :goto_0
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v12, v1, :cond_a

    invoke-virtual {v11, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "#time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_2
    invoke-direct {p0, v2, v3}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getTime(Ljava/lang/String;Ljava/lang/Double;)Lcn/thinkingdata/android/utils/ITime;

    move-result-object v4

    const-string v2, "#type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/thinkingdata/android/utils/TDConstants$DataType;->get(Ljava/lang/String;)Lcn/thinkingdata/android/utils/TDConstants$DataType;

    move-result-object v7

    if-nez v7, :cond_3

    const-string v0, "Unknown data type from H5. ignoring..."

    invoke-static {v8, v0}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    const-string v2, "properties"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "#account_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "#distinct_id"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSystemInformation:Lcn/thinkingdata/android/SystemInformation;

    invoke-virtual {v6}, Lcn/thinkingdata/android/SystemInformation;->getDeviceInfo()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_6
    invoke-virtual {v7}, Lcn/thinkingdata/android/utils/TDConstants$DataType;->isTrack()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "#event_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v10, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;ZLjava/util/Map;Lcn/thinkingdata/android/utils/TDConstants$DataType;)V

    goto :goto_2

    :cond_9
    new-instance v1, Lcn/thinkingdata/android/DataDescription;

    invoke-direct {v1, p0, v7, v3, v4}, Lcn/thinkingdata/android/DataDescription;-><init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V

    invoke-virtual {p0, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->trackInternal(Lcn/thinkingdata/android/DataDescription;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred when track data from H5."

    invoke-static {v8, v1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    return-void
.end method

.method trackInternal(Lcn/thinkingdata/android/DataDescription;)V
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDConfig;->isDebugOnly()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v0}, Lcn/thinkingdata/android/TDConfig;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcn/thinkingdata/android/DataDescription;->saveData:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mMessages:Lcn/thinkingdata/android/DataHandle;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/DataHandle;->saveClickData(Lcn/thinkingdata/android/DataDescription;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mMessages:Lcn/thinkingdata/android/DataHandle;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/DataHandle;->postClickData(Lcn/thinkingdata/android/DataDescription;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mMessages:Lcn/thinkingdata/android/DataHandle;

    invoke-virtual {v0, p1}, Lcn/thinkingdata/android/DataHandle;->postToDebug(Lcn/thinkingdata/android/DataDescription;)V

    :goto_1
    return-void
.end method

.method public trackViewScreen(Landroid/app/Activity;)V
    .locals 3

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "#screen_name"

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDUtils;->getScreenNameAndTitleFromActivity(Lorg/json/JSONObject;Landroid/app/Activity;)V

    instance-of v1, p1, Lcn/thinkingdata/android/ScreenAutoTracker;

    if-eqz v1, :cond_3

    check-cast p1, Lcn/thinkingdata/android/ScreenAutoTracker;

    invoke-interface {p1}, Lcn/thinkingdata/android/ScreenAutoTracker;->getScreenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcn/thinkingdata/android/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    :cond_2
    invoke-virtual {p0, v1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->trackViewScreenInternal(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "ta_app_view"

    invoke-virtual {p0, p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trackViewScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThinkingAnalyticsSDK"

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public trackViewScreen(Landroid/app/Fragment;)V
    .locals 7

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->getTitleFromFragment(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {p1}, Lcn/thinkingdata/android/utils/TDUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "%s|%s"

    const/4 v5, 0x2

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v6

    const/4 p1, 0x1

    aput-object v1, v5, p1

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "#title"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    const-string p1, "#screen_name"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "ta_app_view"

    invoke-virtual {p0, p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "trackViewScreen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThinkingAnalyticsSDK"

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public trackViewScreen(Ljava/lang/Object;)V
    .locals 8

    const-string v0, "androidx.fragment.app.Fragment"

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v2, v1

    :goto_0
    :try_start_1
    const-string v3, "android.app.Fragment"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-object v3, v1

    :goto_1
    :try_start_2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-object v0, v1

    :goto_2
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/thinkingdata/android/utils/TDUtils;->getTitleFromFragment(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/4 v4, 0x0

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    const-string v6, "getActivity"

    :try_start_5
    new-array v7, v4, [Ljava/lang/Class;

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-object v1, p1

    goto :goto_3

    :catch_3
    nop

    :cond_5
    :goto_3
    if-eqz v1, :cond_7

    :try_start_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-static {v1}, Lcn/thinkingdata/android/utils/TDUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v3

    :cond_6
    sget-object p1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const-string v5, "%s|%s"

    const/4 v6, 0x2

    :try_start_7
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v4

    const/4 v1, 0x1

    aput-object v2, v6, v1

    invoke-static {p1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "#title"

    invoke-virtual {v0, p1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    const-string p1, "#screen_name"

    invoke-virtual {v0, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "ta_app_view"

    invoke-virtual {p0, p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_4
    return-void
.end method

.method trackViewScreenInternal(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_4

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLastScreenUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_2

    const-string v1, "#referrer"

    :try_start_1
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLastScreenUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    const-string v1, "#url"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mLastScreenUrl:Ljava/lang/String;

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    :cond_3
    const-string/jumbo p1, "ta_app_view"

    invoke-virtual {p0, p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "trackViewScreen:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ThinkingAnalyticsSDK"

    invoke-static {p2, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public unsetSuperProperty(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    invoke-virtual {v1}, Lcn/thinkingdata/android/persistence/StorageSuperProperties;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mSuperProperties:Lcn/thinkingdata/android/persistence/StorageSuperProperties;

    invoke-virtual {p1, v1}, Lcn/thinkingdata/android/persistence/StorageSuperProperties;->put(Ljava/lang/Object;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public user_add(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_2

    :try_start_0
    const-string p1, "ThinkingAnalyticsSDK"

    const-string/jumbo p2, "user_add value must be Number"

    invoke-static {p1, p2}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {p1}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lcn/thinkingdata/android/TDDebugException;

    const-string p2, "Invalid property values for user add."

    invoke-direct {p1, p2}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_add(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    iget-object p2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {p2}, Lcn/thinkingdata/android/TDConfig;->shouldThrowException()Z

    move-result p2

    if-nez p2, :cond_3

    :goto_0
    return-void

    :cond_3
    new-instance p2, Lcn/thinkingdata/android/TDDebugException;

    invoke-direct {p2, p1}, Lcn/thinkingdata/android/TDDebugException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public user_add(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_add(Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public user_add(Lorg/json/JSONObject;Ljava/util/Date;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_ADD:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-direct {p0, v0, p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_operations(Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public user_append(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_append(Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public user_append(Lorg/json/JSONObject;Ljava/util/Date;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_APPEND:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-direct {p0, v0, p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_operations(Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public user_delete()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_delete(Ljava/util/Date;)V

    return-void
.end method

.method public user_delete(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_DEL:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_operations(Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public user_set(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_set(Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public user_set(Lorg/json/JSONObject;Ljava/util/Date;)V
    .locals 1

    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_SET:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-direct {p0, v0, p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_operations(Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public user_setOnce(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_setOnce(Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public user_setOnce(Lorg/json/JSONObject;Ljava/util/Date;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_SET_ONCE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-direct {p0, v0, p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_operations(Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public user_unset(Lorg/json/JSONObject;Ljava/util/Date;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->USER_UNSET:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-direct {p0, v0, p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_operations(Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Ljava/util/Date;)V

    return-void
.end method

.method public varargs user_unset([Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    :try_start_0
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->user_unset(Lorg/json/JSONObject;Ljava/util/Date;)V

    :cond_3
    return-void
.end method
