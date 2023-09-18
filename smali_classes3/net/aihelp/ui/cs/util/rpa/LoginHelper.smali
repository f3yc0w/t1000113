.class public Lnet/aihelp/ui/cs/util/rpa/LoginHelper;
.super Ljava/lang/Object;
.source "LoginHelper.java"


# static fields
.field private static isSpecialVisit:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getCorrectWelcomeMessage(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/RPAMessage;
    .locals 2

    .line 113
    invoke-static {}, Lnet/aihelp/data/model/rpa/RPAMessage;->getDefaultMessage()Lnet/aihelp/data/model/rpa/RPAMessage;

    move-result-object v0

    :try_start_0
    const-string v1, "welcomeBot"

    .line 115
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 116
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 117
    sput-boolean v1, Lnet/aihelp/ui/cs/util/rpa/LoginHelper;->isSpecialVisit:Z

    const-string v1, "reply"

    .line 118
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "botReply"

    .line 119
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/aihelp/data/model/rpa/RPAMessage;->setContent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getLoginParams()Lorg/json/JSONObject;
    .locals 3

    .line 89
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "appId"

    .line 91
    sget-object v2, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userId"

    .line 92
    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "userName"

    .line 93
    sget-object v2, Lnet/aihelp/common/UserProfile;->USER_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const/4 v2, 0x1

    .line 94
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "lan"

    .line 95
    sget-object v2, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdkVersion"

    const-string v2, "4.1.9"

    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source"

    const-string v2, "android"

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gameInfo"

    .line 98
    invoke-static {}, Lnet/aihelp/utils/DeviceInfoUtil;->getInstance()Lnet/aihelp/utils/DeviceInfoUtil;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/utils/DeviceInfoUtil;->getGameInfo()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getLoginResponse(Ljava/lang/String;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;"
        }
    .end annotation

    const-string v0, "evaluation"

    const-string v1, "chatExtraInfo"

    const-string v2, "chatHistoryContent"

    const/4 v3, 0x0

    .line 28
    sput-boolean v3, Lnet/aihelp/ui/cs/util/rpa/LoginHelper;->isSpecialVisit:Z

    .line 30
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 33
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "isShowWelcome"

    .line 38
    invoke-virtual {v5, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v6, 0x1

    if-ne p0, v6, :cond_0

    .line 39
    invoke-static {v5}, Lnet/aihelp/ui/cs/util/rpa/LoginHelper;->getCorrectWelcomeMessage(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/RPAMessage;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_0
    invoke-static {v5, v2}, Lnet/aihelp/ui/cs/util/rpa/LoginHelper;->hasKey(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 46
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p0, v6}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->getRetrievedMsgList(Lorg/json/JSONObject;Z)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 58
    :cond_1
    invoke-static {v5, v1}, Lnet/aihelp/ui/cs/util/rpa/LoginHelper;->hasKey(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 59
    new-instance p0, Lorg/json/JSONObject;

    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "hasTicket"

    .line 60
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "assignType"

    .line 61
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 62
    invoke-static {v1, v2}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->updateAssignTypeWithActiveStatus(ZI)V

    const-string v1, "isEvaluate"

    .line 63
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketFinished:Z

    const-string v1, "isShowResolve"

    .line 64
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForAskingResolveStatus:Z

    const-string v1, "isStoreReview"

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isAppRatable:Z

    .line 66
    sget-boolean v1, Lnet/aihelp/common/CustomConfig$CustomerService;->isTicketRatingEnable:Z

    sput-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForRating:Z

    const-string v1, "status"

    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    sput-boolean v3, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketRejected:Z

    const-string v1, "ticketId"

    .line 68
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->appendRenderedTicketIds(Ljava/lang/String;Z)V

    .line 73
    :cond_3
    invoke-static {v5, v0}, Lnet/aihelp/ui/cs/util/rpa/LoginHelper;->hasKey(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 74
    invoke-static {v5, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 76
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 77
    sget-object p0, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->INSTANCE:Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;

    invoke-virtual {p0, p1}, Lnet/aihelp/data/localize/config/FeedbackOpinionHelper;->prepareDataSource(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_0
    return-object v4
.end method

.method private static hasKey(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSpecialVisit()Z
    .locals 1

    .line 128
    sget-boolean v0, Lnet/aihelp/ui/cs/util/rpa/LoginHelper;->isSpecialVisit:Z

    return v0
.end method
