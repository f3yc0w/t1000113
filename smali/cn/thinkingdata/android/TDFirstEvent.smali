.class public Lcn/thinkingdata/android/TDFirstEvent;
.super Lcn/thinkingdata/android/ThinkingAnalyticsEvent;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ThinkingAnalytics.TDUniqueEvent"


# instance fields
.field private mExtraValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method


# virtual methods
.method getDataType()Lcn/thinkingdata/android/utils/TDConstants$DataType;
    .locals 1

    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    return-object v0
.end method

.method getExtraField()Ljava/lang/String;
    .locals 1

    const-string v0, "#first_check_id"

    return-object v0
.end method

.method getExtraValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDFirstEvent;->mExtraValue:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic setEventTime(Ljava/util/Date;)V
    .locals 0

    invoke-super {p0, p1}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->setEventTime(Ljava/util/Date;)V

    return-void
.end method

.method public bridge synthetic setEventTime(Ljava/util/Date;Ljava/util/TimeZone;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;->setEventTime(Ljava/util/Date;Ljava/util/TimeZone;)V

    return-void
.end method

.method public setFirstCheckId(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "ThinkingAnalytics.TDUniqueEvent"

    const-string v0, "Invalid firstCheckId. Use device Id"

    invoke-static {p1, v0}, Lcn/thinkingdata/android/utils/TDLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iput-object p1, p0, Lcn/thinkingdata/android/TDFirstEvent;->mExtraValue:Ljava/lang/String;

    return-void
.end method
