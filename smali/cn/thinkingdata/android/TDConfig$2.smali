.class synthetic Lcn/thinkingdata/android/TDConfig$2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/thinkingdata/android/TDConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$thinkingdata$android$ThinkingAnalyticsSDK$ThinkingdataNetworkType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;->values()[Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/thinkingdata/android/TDConfig$2;->$SwitchMap$cn$thinkingdata$android$ThinkingAnalyticsSDK$ThinkingdataNetworkType:[I

    :try_start_0
    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;->NETWORKTYPE_WIFI:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/thinkingdata/android/TDConfig$2;->$SwitchMap$cn$thinkingdata$android$ThinkingAnalyticsSDK$ThinkingdataNetworkType:[I

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;->NETWORKTYPE_DEFAULT:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcn/thinkingdata/android/TDConfig$2;->$SwitchMap$cn$thinkingdata$android$ThinkingAnalyticsSDK$ThinkingdataNetworkType:[I

    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;->NETWORKTYPE_ALL:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$ThinkingdataNetworkType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
