.class public Lnet/aihelp/ui/helper/StatisticHelper;
.super Ljava/lang/Object;
.source "StatisticHelper.java"


# static fields
.field public static final FORM_ACTION_CLICKED:I = 0x2

.field public static final FORM_ACTION_DISPLAYED:I = 0x1

.field public static final FORM_ACTION_SUBMITTED:I = 0x3

.field private static final TRACK_TYPE_BOT_FAQ:I = 0x6

.field private static final TRACK_TYPE_BOT_HISTORY:I = 0xb

.field private static final TRACK_TYPE_BOT_SIMILAR_ANSWER:I = 0x3

.field private static final TRACK_TYPE_BOT_VISIBLE:I = 0x5

.field private static final TRACK_TYPE_DETAIL_FAQ_OR_ARTICLE:I = 0x2

.field private static final TRACK_TYPE_FORM_ACTION:I = 0x4

.field private static final TRACK_TYPE_OP_ARTICLE_HELPFUL:I = 0x22

.field private static final TRACK_TYPE_OP_ARTICLE_UNHELPFUL:I = 0x23

.field private static final TRACK_TYPE_OP_ARTICLE_VISIBLE:I = 0x24

.field private static final TRACK_TYPE_PROCESS_ENTRANCE:I = 0x25

.field private static final TRACK_TYPE_SDK_CREATED:I = 0x29

.field private static final TRACK_TYPE_SDK_DESTROYED:I = 0x2a

.field private static final TRACK_TYPE_SEND_CLICK:I = 0x1f

.field private static final TRACK_TYPE_SHOW_FAQ:I = 0x16

.field private static final TRACK_TYPE_SHOW_OPERATION:I = 0x15

.field private static clickedFormTimeStamp:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 49
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnet/aihelp/ui/helper/StatisticHelper;->clickedFormTimeStamp:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static get(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 66
    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->isNetworkUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestGetByAsync(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)V

    return-void
.end method

.method public static getClickedFormTimeStamp()Ljava/lang/Long;
    .locals 1

    .line 52
    sget-object v0, Lnet/aihelp/ui/helper/StatisticHelper;->clickedFormTimeStamp:Ljava/lang/Long;

    return-object v0
.end method

.method private static varargs getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3

    .line 234
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "trackType"

    .line 236
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "language"

    .line 237
    sget-object v1, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "deviceId"

    .line 238
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "userId"

    .line 239
    sget-object v1, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    sget-object p0, Lnet/aihelp/common/CustomConfig$CommonSetting;->privacyControlData:Lnet/aihelp/data/model/init/PrivacyControlEntity;

    if-eqz p0, :cond_0

    .line 242
    invoke-virtual {p0}, Lnet/aihelp/data/model/init/PrivacyControlEntity;->getApplicationVersion()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "gameVersion"

    .line 243
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/utils/AppInfoUtil;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    if-eqz p0, :cond_1

    .line 245
    invoke-virtual {p0}, Lnet/aihelp/data/model/init/PrivacyControlEntity;->getDeviceModel()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "deviceModel"

    .line 246
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz p0, :cond_2

    .line 248
    invoke-virtual {p0}, Lnet/aihelp/data/model/init/PrivacyControlEntity;->getOsVersion()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "osVersion"

    .line 249
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p1, :cond_3

    .line 251
    array-length p0, p1

    if-lez p0, :cond_3

    const-string p0, "extendData"

    const/4 v1, 0x0

    .line 252
    aget-object p1, p1, v1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 255
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static isNetworkUnavailable()Z
    .locals 2

    .line 56
    invoke-static {}, Lnet/aihelp/config/AIHelpContext;->getInstance()Lnet/aihelp/config/AIHelpContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/config/AIHelpContext;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    return v0
.end method

.method private static post(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 71
    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->isNetworkUnavailable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 72
    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestPostByJson(Ljava/lang/String;Lorg/json/JSONObject;Lnet/aihelp/core/net/http/callback/BaseCallback;)Lokhttp3/Call;

    return-void
.end method

.method public static postHelpfulStatus(ILjava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 78
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "evaluateStatus"

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 79
    :goto_0
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "kmContentId"

    .line 80
    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    sget-object p1, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    if-eqz p2, :cond_1

    const/16 p2, 0x22

    goto :goto_1

    :cond_1
    const/16 p2, 0x23

    :goto_1
    new-array v0, v0, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p2, v0}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_4

    .line 84
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "id"

    .line 85
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "type1"

    if-ne p0, v0, :cond_3

    const-string p0, "15"

    goto :goto_2

    :cond_3
    const-string p0, "4"

    .line 86
    :goto_2
    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "type2"

    if-eqz p2, :cond_4

    const-string p1, "5"

    goto :goto_3

    :cond_4
    const-string p1, "6"

    .line 87
    :goto_3
    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "language"

    .line 88
    sget-object p1, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    sget-object p0, Lnet/aihelp/common/API;->LOG_COUNT_URL:Ljava/lang/String;

    invoke-static {p0, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static whenAIHelpCreated()V
    .locals 3

    .line 226
    sget-object v0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/json/JSONObject;

    const/16 v2, 0x29

    invoke-static {v2, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static whenAIHelpDestroyed()V
    .locals 3

    .line 230
    sget-object v0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/json/JSONObject;

    const/16 v2, 0x2a

    invoke-static {v2, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static whenAllFAQSectionsVisible(Z)V
    .locals 4

    .line 197
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "source"

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_0

    :cond_0
    const/4 p0, 0x3

    .line 198
    :goto_0
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    sget-object p0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/16 v1, 0x16

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static whenBotFAQClicked(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
    .locals 4

    .line 134
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "8"

    .line 135
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentId"

    .line 136
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getContentId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "publishId"

    .line 137
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->getMainId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "isClickDetail"

    .line 139
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->isFaqViewed()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 140
    sget-object p0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 v1, 0x6

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static whenBotFAQGotNegativeFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 148
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "9"

    .line 149
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "contentId"

    .line 150
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "publishId"

    .line 151
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "createTime"

    .line 152
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    sget-object p0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 p1, 0x6

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 155
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static whenBotMessagePrepared(Lnet/aihelp/data/model/cs/ElvaBotMsg;)V
    .locals 7

    const-string v0, "message"

    .line 174
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 175
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getRawResponse()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tags"

    .line 176
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getBotTagList()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lnet/aihelp/core/net/json/JsonHelper;->wrap(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    sget-object v2, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/16 v3, 0xb

    const/4 v4, 0x1

    new-array v5, v4, [Lorg/json/JSONObject;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v5}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 180
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isSimilarMatched()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 182
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getRawResponse()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "action"

    .line 183
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->getUserInput()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    sget-object p0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v2, v4, [Lorg/json/JSONObject;

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 187
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static whenBotVisible()V
    .locals 3

    .line 192
    sget-object v0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x5

    invoke-static {v2, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static whenFAQDetailVisible(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 122
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "1"

    .line 123
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "publishId"

    .line 124
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "id"

    .line 125
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    sget-object p0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 p1, 0x2

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static whenFormEventHappened(JI)V
    .locals 2

    const/4 v0, 0x2

    if-ne v0, p2, :cond_0

    .line 161
    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lnet/aihelp/ui/helper/StatisticHelper;->clickedFormTimeStamp:Ljava/lang/Long;

    .line 162
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    .line 163
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p2, "createTime"

    .line 164
    invoke-virtual {v0, p2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 165
    sget-object p0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 p1, 0x4

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    invoke-static {p1, p2}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 167
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static whenOperationArticleVisible(Ljava/lang/String;)V
    .locals 4

    .line 98
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "type"

    const-string v2, "2"

    .line 99
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 100
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "publishId"

    .line 101
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    sget-object p0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 v1, 0x2

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 104
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static whenOperationArticleVisibleWithCollectApi(Ljava/lang/String;)V
    .locals 4

    .line 110
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "evaluateStatus"

    const/4 v2, 0x5

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "kmContentId"

    .line 112
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    sget-object p0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/16 v1, 0x24

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static whenOperationVisible()V
    .locals 3

    .line 206
    sget-object v0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/json/JSONObject;

    const/16 v2, 0x15

    invoke-static {v2, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static whenProcessEntranceSet(Ljava/lang/String;)V
    .locals 4

    .line 214
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "visitId"

    .line 217
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    sget-object p0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/16 v1, 0x25

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {p0, v0}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 220
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static whenSendButtonClicked()V
    .locals 3

    .line 210
    sget-object v0, Lnet/aihelp/common/API;->TRACK_COLLECT:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/json/JSONObject;

    const/16 v2, 0x1f

    invoke-static {v2, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->getCommonParameters(I[Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/aihelp/ui/helper/StatisticHelper;->post(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
