.class public Lcn/thinkingdata/android/TDOverWritableEvent;
.super Lcn/thinkingdata/android/ThinkingAnalyticsEvent;
.source ""


# instance fields
.field private final mEventId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/thinkingdata/android/ThinkingAnalyticsEvent;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    iput-object p3, p0, Lcn/thinkingdata/android/TDOverWritableEvent;->mEventId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getDataType()Lcn/thinkingdata/android/utils/TDConstants$DataType;
    .locals 1

    sget-object v0, Lcn/thinkingdata/android/utils/TDConstants$DataType;->TRACK_OVERWRITE:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    return-object v0
.end method

.method getExtraField()Ljava/lang/String;
    .locals 1

    const-string v0, "#event_id"

    return-object v0
.end method

.method getExtraValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/thinkingdata/android/TDOverWritableEvent;->mEventId:Ljava/lang/String;

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
