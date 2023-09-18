.class public Lcn/thinkingdata/android/TDWebAppInterface;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThinkingAnalytics.TDWebAppInterface"


# instance fields
.field private final defaultInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/thinkingdata/android/TDWebAppInterface;->defaultInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    return-void
.end method


# virtual methods
.method public thinkingdata_track(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ThinkingAnalytics.TDWebAppInterface"

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "#app_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;-><init>(Lcn/thinkingdata/android/TDWebAppInterface;Lcn/thinkingdata/android/TDWebAppInterface$1;)V

    new-instance v3, Lcn/thinkingdata/android/TDWebAppInterface$1;

    invoke-direct {v3, p0, v1, v2, p1}, Lcn/thinkingdata/android/TDWebAppInterface$1;-><init>(Lcn/thinkingdata/android/TDWebAppInterface;Ljava/lang/String;Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;Ljava/lang/String;)V

    invoke-static {v3}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->allInstances(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;)V

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDWebAppInterface$TrackFlag;->shouldTrack()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/thinkingdata/android/TDWebAppInterface;->defaultInstance:Lcn/thinkingdata/android/ThinkingAnalyticsSDK;

    invoke-virtual {v1, p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->trackFromH5(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected exception occurred: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
