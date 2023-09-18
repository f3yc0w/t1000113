.class Lcn/thinkingdata/android/DataDescription;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SAVE_TO_DATABASE:Z = true


# instance fields
.field eventName:Ljava/lang/String;

.field private mAccountId:Ljava/lang/String;

.field private mDistinctId:Ljava/lang/String;

.field private mExtraFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mProperties:Lorg/json/JSONObject;

.field private final mTime:Lcn/thinkingdata/android/utils/ITime;

.field final mToken:Ljava/lang/String;

.field final mType:Lcn/thinkingdata/android/utils/TDConstants$DataType;

.field saveData:Z


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Lcn/thinkingdata/android/utils/TDConstants$DataType;Lorg/json/JSONObject;Lcn/thinkingdata/android/utils/ITime;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/thinkingdata/android/DataDescription;->saveData:Z

    iput-object p2, p0, Lcn/thinkingdata/android/DataDescription;->mType:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    iput-object p3, p0, Lcn/thinkingdata/android/DataDescription;->mProperties:Lorg/json/JSONObject;

    iput-object p4, p0, Lcn/thinkingdata/android/DataDescription;->mTime:Lcn/thinkingdata/android/utils/ITime;

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/thinkingdata/android/DataDescription;->mToken:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getDistinctId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/thinkingdata/android/DataDescription;->mDistinctId:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getLoginId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/thinkingdata/android/DataDescription;->mAccountId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public get()Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "#type"

    :try_start_0
    iget-object v2, p0, Lcn/thinkingdata/android/DataDescription;->mType:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-virtual {v2}, Lcn/thinkingdata/android/utils/TDConstants$DataType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "#time"

    :try_start_1
    iget-object v2, p0, Lcn/thinkingdata/android/DataDescription;->mTime:Lcn/thinkingdata/android/utils/ITime;

    invoke-interface {v2}, Lcn/thinkingdata/android/utils/ITime;->getTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "#distinct_id"

    :try_start_2
    iget-object v2, p0, Lcn/thinkingdata/android/DataDescription;->mDistinctId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcn/thinkingdata/android/DataDescription;->mAccountId:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_0

    const-string v2, "#account_id"

    :try_start_3
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    iget-object v1, p0, Lcn/thinkingdata/android/DataDescription;->mExtraFields:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcn/thinkingdata/android/DataDescription;->mType:Lcn/thinkingdata/android/utils/TDConstants$DataType;

    invoke-virtual {v1}, Lcn/thinkingdata/android/utils/TDConstants$DataType;->isTrack()Z

    move-result v1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v1, :cond_2

    const-string v1, "#event_name"

    :try_start_4
    iget-object v2, p0, Lcn/thinkingdata/android/DataDescription;->eventName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcn/thinkingdata/android/DataDescription;->mTime:Lcn/thinkingdata/android/utils/ITime;

    invoke-interface {v1}, Lcn/thinkingdata/android/utils/ITime;->getZoneOffset()Ljava/lang/Double;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcn/thinkingdata/android/DataDescription;->mProperties:Lorg/json/JSONObject;

    const-string v3, "#zone_offset"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_2
    const-string v1, "properties"

    :try_start_5
    iget-object v2, p0, Lcn/thinkingdata/android/DataDescription;->mProperties:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method setExtraFields(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/thinkingdata/android/DataDescription;->mExtraFields:Ljava/util/Map;

    return-void
.end method

.method setNoCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/thinkingdata/android/DataDescription;->saveData:Z

    return-void
.end method
