.class Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;
.super Lcn/thinkingdata/android/ThinkingAnalyticsSDK;
.source ""


# instance fields
.field private mAccountId:Ljava/lang/String;

.field private mDistinctId:Ljava/lang/String;

.field private mEnabled:Z

.field private final mSuperProperties:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/TDConfig;)V
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [Z

    const/4 v2, 0x0

    aput-boolean v0, v1, v2

    invoke-direct {p0, p1, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;-><init>(Lcn/thinkingdata/android/TDConfig;[Z)V

    iput-boolean v0, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mEnabled:Z

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mSuperProperties:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public clearSuperProperties()V
    .locals 3

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mSuperProperties:Lorg/json/JSONObject;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mSuperProperties:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public enableAutoTrack(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public enableTracking(Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mEnabled:Z

    return-void
.end method

.method public getDistinctId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mDistinctId:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getRandomID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLoginId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mAccountId:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperProperties()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mSuperProperties:Lorg/json/JSONObject;

    return-object v0
.end method

.method public hasOptOut()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public identify(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mDistinctId:Ljava/lang/String;

    return-void
.end method

.method public ignoreAutoTrackActivities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    return-void
.end method

.method public ignoreAutoTrackActivity(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public ignoreView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public ignoreViewType(Ljava/lang/Class;)V
    .locals 0

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mEnabled:Z

    return v0
.end method

.method public login(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method public logout()V
    .locals 1

    invoke-virtual {p0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->hasDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mAccountId:Ljava/lang/String;

    return-void
.end method

.method public optInTracking()V
    .locals 0

    return-void
.end method

.method public optOutTracking()V
    .locals 0

    return-void
.end method

.method public optOutTrackingAndDeleteUser()V
    .locals 0

    return-void
.end method

.method public setJsBridge(Landroid/webkit/WebView;)V
    .locals 0

    return-void
.end method

.method public setJsBridgeForX5WebView(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setNetworkType(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;)V
    .locals 0

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
    iget-object v0, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mSuperProperties:Lorg/json/JSONObject;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mSuperProperties:Lorg/json/JSONObject;

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

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

    :cond_2
    :goto_0
    return-void
.end method

.method public setViewID(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setViewID(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public trackFragmentAppViewScreen()V
    .locals 0

    return-void
.end method

.method public trackViewScreen(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public trackViewScreen(Landroid/app/Fragment;)V
    .locals 0

    return-void
.end method

.method public trackViewScreen(Ljava/lang/Object;)V
    .locals 0

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
    iget-object v0, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mSuperProperties:Lorg/json/JSONObject;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcn/thinkingdata/android/LightThinkingAnalyticsSDK;->mSuperProperties:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

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
