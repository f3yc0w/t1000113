.class Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;->processException(Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;

.field final synthetic val$result:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;->this$1:Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler;

    iput-object p2, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;->val$result:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V
    .locals 6

    const-string v0, "UTF-8"

    const-string v1, "#app_crashed_reason"

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->shouldTrackCrash()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v3, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;->val$result:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    array-length v3, v3

    const/16 v4, 0x4000

    if-le v3, v4, :cond_0

    new-instance v3, Ljava/lang/String;

    iget-object v5, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;->val$result:Ljava/lang/String;

    invoke-static {v5, v4}, Lcn/thinkingdata/android/utils/PropertyUtils;->cutToBytes(Ljava/lang/String;I)[B

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;->val$result:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "ThinkingAnalytics.Quit"

    const-string v3, "Exception occurred in getBytes. "

    invoke-static {v0, v3}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;->val$result:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x2000

    if-le v0, v3, :cond_1

    iget-object v0, p0, Lcn/thinkingdata/android/TDQuitSafelyService$ExceptionHandler$1;->val$result:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    const-string/jumbo v0, "ta_app_crash"

    invoke-virtual {p1, v0, v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    return-void
.end method
