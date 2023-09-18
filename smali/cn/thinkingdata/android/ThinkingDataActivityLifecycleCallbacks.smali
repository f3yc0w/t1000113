.class Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field private static final TAG:Ljava/lang/String; = "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"


# instance fields
.field private isLaunch:Ljava/lang/Boolean;

.field private final mActivityLifecycleCallbacksLock:Ljava/lang/Object;

.field private final mMainProcessName:Ljava/lang/String;

.field private final mStartedActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

.field private resumeFromBackground:Z


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->resumeFromBackground:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mActivityLifecycleCallbacksLock:Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->isLaunch:Ljava/lang/Boolean;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mStartedActivityList:Ljava/util/List;

    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mMainProcessName:Ljava/lang/String;

    return-void
.end method

.method private getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v2, :cond_1

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, v1, :cond_1

    iget-object p1, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private isMainProcess(Landroid/content/Context;)Z
    .locals 2

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mMainProcessName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mMainProcessName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private notStartedActivity(Landroid/app/Activity;Z)Z
    .locals 3

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mActivityLifecycleCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mStartedActivityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    if-eqz p2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_1
    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_2
    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private trackAppStart(Landroid/app/Activity;Lcn/thinkingdata/android/utils/ITime;)V
    .locals 5

    invoke-direct {p0, p1}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->isMainProcess(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->isLaunch:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->resumeFromBackground:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_START:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEventTypeIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "#resume_from_background"

    :try_start_1
    iget-boolean v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->resumeFromBackground:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDUtils;->getScreenNameAndTitleFromActivity(Lorg/json/JSONObject;Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x0

    const-string/jumbo v1, "ta_app_start"

    if-nez p2, :cond_1

    :try_start_2
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v2, v1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getAutoTrackStartProperties()Lorg/json/JSONObject;

    move-result-object v2

    iget-object v3, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    iget-object v3, v3, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v3}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    new-instance v0, Lcn/thinkingdata/android/DataDescription;

    iget-object v3, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    sget-object v4, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-direct {v0, v3, v4, v2, p2}, Lcn/thinkingdata/android/DataDescription;-><init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V

    iput-object v1, v0, Lcn/thinkingdata/android/DataDescription;->eventName:Ljava/lang/String;

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->trackInternal(Lcn/thinkingdata/android/DataDescription;)V

    goto :goto_0

    :goto_1
    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->isLaunch:Ljava/lang/Boolean;

    :cond_2
    if-nez p2, :cond_3

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    sget-object p2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_END:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-virtual {p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEventTypeIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    const-string/jumbo p2, "ta_app_end"

    invoke-virtual {p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->timeEvent(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    invoke-static {p2, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p1, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    const-string p2, "onActivityCreated"

    invoke-static {p1, p2}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mActivityLifecycleCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->notStartedActivity(Landroid/app/Activity;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-string v2, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityPaused: the SDK was initialized after the onActivityStart of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mStartedActivityList:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mStartedActivityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getAutoTrackStartTime()Lcn/thinkingdata/android/utils/ITime;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->trackAppStart(Landroid/app/Activity;Lcn/thinkingdata/android/utils/ITime;)V

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->flush()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->isLaunch:Ljava/lang/Boolean;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 6

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mActivityLifecycleCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, v1}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->notStartedActivity(Landroid/app/Activity;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v2, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResumed: the SDK was initialized after the onActivityStart of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mStartedActivityList:Ljava/util/List;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mStartedActivityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getAutoTrackStartTime()Lcn/thinkingdata/android/utils/ITime;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->trackAppStart(Landroid/app/Activity;Lcn/thinkingdata/android/utils/ITime;)V

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->flush()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->isLaunch:Ljava/lang/Boolean;

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isActivityAutoTrackAppViewScreenIgnored(Ljava/lang/Class;)Z

    move-result v0

    xor-int/2addr v0, v3

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_VIEW_SCREEN:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-virtual {v0, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEventTypeIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v0, :cond_6

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "#screen_name"

    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDUtils;->getScreenNameAndTitleFromActivity(Lorg/json/JSONObject;Landroid/app/Activity;)V

    instance-of v1, p1, Lcn/thinkingdata/android/ScreenAutoTracker;

    if-eqz v1, :cond_2

    check-cast p1, Lcn/thinkingdata/android/ScreenAutoTracker;

    invoke-interface {p1}, Lcn/thinkingdata/android/ScreenAutoTracker;->getScreenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcn/thinkingdata/android/ScreenAutoTracker;->getTrackProperties()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcn/thinkingdata/android/utils/PropertyUtils;->checkProperty(Lorg/json/JSONObject;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    iget-object v2, v2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :cond_1
    const-string v2, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    :try_start_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid properties: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    :goto_1
    invoke-virtual {p1, v1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->trackViewScreenInternal(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcn/thinkingdata/android/ThinkingDataAutoTrackAppViewScreenUrl;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcn/thinkingdata/android/ThinkingDataAutoTrackAppViewScreenUrl;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcn/thinkingdata/android/ThinkingDataAutoTrackAppViewScreenUrl;->appId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Lcn/thinkingdata/android/ThinkingDataAutoTrackAppViewScreenUrl;->appId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_3
    invoke-interface {v1}, Lcn/thinkingdata/android/ThinkingDataAutoTrackAppViewScreenUrl;->url()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    const-string/jumbo v1, "ta_app_view"

    invoke-virtual {p1, v1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_6
    const-string v0, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw p1
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    const-string v1, "onActivityStarted"

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mActivityLifecycleCallbacksLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mStartedActivityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    :try_start_2
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->appBecomeActive()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->trackAppStart(Landroid/app/Activity;Lcn/thinkingdata/android/utils/ITime;)V

    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->notStartedActivity(Landroid/app/Activity;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mStartedActivityList:Ljava/util/List;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_1
    const-string v1, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected state. The activity might not be stopped correctly: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4

    const-string v0, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    const-string v1, "onActivityStopped"

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mActivityLifecycleCallbacksLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p1, v1}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->notStartedActivity(Landroid/app/Activity;Z)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    const-string v1, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityStopped: the SDK might be initialized after the onActivityStart of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mStartedActivityList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_2

    :try_start_3
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->appEnterBackground()V

    iput-boolean v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->resumeFromBackground:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-direct {p0, p1}, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->isMainProcess(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEnabled()Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_1

    :try_start_5
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    sget-object v2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_END:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-virtual {v1, v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEventTypeIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v1, p1}, Lcn/thinkingdata/android/utils/TDUtils;->getScreenNameAndTitleFromActivity(Lorg/json/JSONObject;Landroid/app/Activity;)V

    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    const-string/jumbo v2, "ta_app_end"

    invoke-virtual {p1, v2, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_6
    const-string v1, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    invoke-static {v1, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_1
    :goto_1
    :try_start_7
    iget-object p1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->flush()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p1

    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method onAppStartEventEnabled()V
    .locals 4

    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mActivityLifecycleCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->isLaunch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    sget-object v2, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_START:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-virtual {v1, v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEventTypeIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "#resume_from_background"

    :try_start_2
    iget-boolean v3, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->resumeFromBackground:Z

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    const-string/jumbo v3, "ta_app_start"

    invoke-virtual {v2, v3, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->isLaunch:Ljava/lang/Boolean;

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataActivityLifecycleCallbacks;->mThinkingDataInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    const-string v2, "ThinkingAnalytics.ThinkingDataActivityLifecycleCallbacks"

    invoke-static {v2, v1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method
