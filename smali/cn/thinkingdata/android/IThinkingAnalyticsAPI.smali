.class interface abstract Lcn/thinkingdata/android/IThinkingAnalyticsAPI;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract clearSuperProperties()V
.end method

.method public abstract createLightInstance()Lcn/thinkingdata/android/IThinkingAnalyticsAPI;
.end method

.method public abstract enableAutoTrack(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract enableTracking(Z)V
.end method

.method public abstract flush()V
.end method

.method public abstract getDeviceId()Ljava/lang/String;
.end method

.method public abstract getDistinctId()Ljava/lang/String;
.end method

.method public abstract getSuperProperties()Lorg/json/JSONObject;
.end method

.method public abstract identify(Ljava/lang/String;)V
.end method

.method public abstract ignoreAutoTrackActivities(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation
.end method

.method public abstract ignoreAutoTrackActivity(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract ignoreView(Landroid/view/View;)V
.end method

.method public abstract ignoreViewType(Ljava/lang/Class;)V
.end method

.method public abstract login(Ljava/lang/String;)V
.end method

.method public abstract logout()V
.end method

.method public abstract optInTracking()V
.end method

.method public abstract optOutTracking()V
.end method

.method public abstract optOutTrackingAndDeleteUser()V
.end method

.method public abstract setDynamicSuperPropertiesTracker(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$DynamicSuperPropertiesTracker;)V
.end method

.method public abstract setJsBridge(Landroid/webkit/WebView;)V
.end method

.method public abstract setJsBridgeForX5WebView(Ljava/lang/Object;)V
.end method

.method public abstract setNetworkType(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;)V
.end method

.method public abstract setSuperProperties(Lorg/json/JSONObject;)V
.end method

.method public abstract setViewID(Landroid/app/Dialog;Ljava/lang/String;)V
.end method

.method public abstract setViewID(Landroid/view/View;Ljava/lang/String;)V
.end method

.method public abstract setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
.end method

.method public abstract timeEvent(Ljava/lang/String;)V
.end method

.method public abstract track(Lcn/thinkingdata/android/ThinkingAnalyticsEvent;)V
.end method

.method public abstract track(Ljava/lang/String;)V
.end method

.method public abstract track(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method

.method public abstract track(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Date;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract track(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Date;Ljava/util/TimeZone;)V
.end method

.method public abstract trackAppInstall()V
.end method

.method public abstract trackFragmentAppViewScreen()V
.end method

.method public abstract trackViewScreen(Landroid/app/Activity;)V
.end method

.method public abstract trackViewScreen(Landroid/app/Fragment;)V
.end method

.method public abstract trackViewScreen(Ljava/lang/Object;)V
.end method

.method public abstract unsetSuperProperty(Ljava/lang/String;)V
.end method

.method public abstract user_add(Ljava/lang/String;Ljava/lang/Number;)V
.end method

.method public abstract user_add(Lorg/json/JSONObject;)V
.end method

.method public abstract user_append(Lorg/json/JSONObject;)V
.end method

.method public abstract user_delete()V
.end method

.method public abstract user_set(Lorg/json/JSONObject;)V
.end method

.method public abstract user_setOnce(Lorg/json/JSONObject;)V
.end method

.method public varargs abstract user_unset([Ljava/lang/String;)V
.end method
