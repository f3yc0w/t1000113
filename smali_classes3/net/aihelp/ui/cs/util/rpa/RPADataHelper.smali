.class public Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;
.super Ljava/lang/Object;
.source "RPADataHelper.java"


# static fields
.field private static final BOT_REPLY_TYPE_ATTACHMENT:I = 0x2

.field private static final BOT_REPLY_TYPE_EXTERNAL_URL:I = 0x3

.field private static final BOT_REPLY_TYPE_FAQ:I = 0x4

.field private static final BOT_REPLY_TYPE_FORM_CONTENT:I = 0x1

.field private static final BOT_REPLY_TYPE_FORM_URL:I = 0x6

.field private static final BOT_REPLY_TYPE_SELF_SERVICE:I = 0x5

.field private static final BOT_REPLY_TYPE_TEXT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _getFaq(Lorg/json/JSONArray;Z)Lnet/aihelp/data/model/rpa/bot/Faq;
    .locals 3

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 76
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 77
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getFaqData(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    :cond_0
    new-instance p0, Lnet/aihelp/data/model/rpa/bot/Faq;

    invoke-direct {p0, p1, v0}, Lnet/aihelp/data/model/rpa/bot/Faq;-><init>(ZLjava/util/List;)V

    return-object p0
.end method

.method public static getBotAnswers(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/bot/Answer;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "answerData"

    .line 185
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 186
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 187
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 188
    new-instance v3, Lnet/aihelp/data/model/rpa/bot/Answer;

    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "answerTitle"

    invoke-static {v2, v5}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/aihelp/data/model/rpa/bot/Answer;-><init>(ILjava/lang/String;)V

    const-string v4, "data"

    .line 189
    invoke-static {v2, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getFaqData(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-result-object v2

    invoke-virtual {v3, v2}, Lnet/aihelp/data/model/rpa/bot/Answer;->setFaqData(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    .line 190
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getBotContent(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1

    const-string v0, "botReply"

    .line 52
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getContentObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 215
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 217
    :catch_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0
.end method

.method public static getExternalUrl(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/ExternalUrl;
    .locals 3

    const-string v0, "msgType"

    .line 156
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "title"

    .line 157
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    .line 158
    invoke-static {p0, v2}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_1

    .line 159
    new-instance v1, Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    invoke-direct {v1, v0, p0}, Lnet/aihelp/data/model/rpa/bot/ExternalUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static getFaq(Lorg/json/JSONObject;Lnet/aihelp/data/model/rpa/BotMessage;)Lnet/aihelp/data/model/rpa/bot/Faq;
    .locals 2

    const-string v0, "faqData"

    .line 64
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "msg"

    .line 65
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/BotMessage;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Lnet/aihelp/data/model/rpa/BotMessage;->setContent(Ljava/lang/String;)V

    :cond_0
    const-string p1, "reply"

    .line 69
    invoke-static {p0, p1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v0, "isSimilarMatch"

    .line 70
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 71
    :goto_0
    invoke-static {p1, v0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->_getFaq(Lorg/json/JSONArray;Z)Lnet/aihelp/data/model/rpa/bot/Faq;

    move-result-object p0

    return-object p0
.end method

.method public static getFaqData(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;
    .locals 12

    const-string v0, "mainId"

    .line 83
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v0, "id"

    .line 84
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v0, "faqTitle"

    .line 85
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "faqContent"

    .line 86
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "template"

    .line 87
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "form"

    .line 88
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "url"

    .line 89
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "title"

    .line 90
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "isSimilarMatch"

    .line 91
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v11

    .line 92
    new-instance p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static getFormUrl(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/FormUrl;
    .locals 3

    const-string v0, "msgType"

    .line 143
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "title"

    .line 144
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "url"

    .line 145
    invoke-static {p0, v2}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz v1, :cond_1

    .line 146
    new-instance v1, Lnet/aihelp/data/model/rpa/bot/FormUrl;

    invoke-direct {v1, v0, p0}, Lnet/aihelp/data/model/rpa/bot/FormUrl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public static getHistoryBotAnswers(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/bot/Answer;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getContentObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "answerData"

    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    .line 174
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 175
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v2

    .line 176
    new-instance v3, Lnet/aihelp/data/model/rpa/bot/Answer;

    const-string v4, "type"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "answerTitle"

    invoke-static {v2, v5}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lnet/aihelp/data/model/rpa/bot/Answer;-><init>(ILjava/lang/String;)V

    const-string v4, "data"

    .line 177
    invoke-static {v2, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getFaqData(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    move-result-object v2

    invoke-virtual {v3, v2}, Lnet/aihelp/data/model/rpa/bot/Answer;->setFaqData(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V

    .line 178
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getHistoryBotContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "content"

    .line 36
    invoke-static {v0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "reply"

    .line 40
    invoke-static {v0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object p0
.end method

.method public static getHistoryExternalUrl(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/ExternalUrl;
    .locals 2

    .line 150
    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getContentObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "type"

    .line 151
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    .line 152
    invoke-static {v0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getExternalUrl(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getHistoryFaq(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/Faq;
    .locals 1

    .line 58
    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getContentObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "faqList"

    .line 59
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v0, 0x0

    .line 60
    invoke-static {p0, v0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->_getFaq(Lorg/json/JSONArray;Z)Lnet/aihelp/data/model/rpa/bot/Faq;

    move-result-object p0

    return-object p0
.end method

.method public static getHistoryFormUrl(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/FormUrl;
    .locals 3

    .line 132
    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getContentObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    :try_start_0
    const-string v1, "msgType"

    const/4 v2, 0x1

    .line 134
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const-string v1, "type"

    .line 138
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    .line 139
    invoke-static {v0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getFormUrl(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/FormUrl;

    move-result-object p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getHistorySelfService(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/SelfService;
    .locals 2

    .line 98
    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getContentObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "allowSend"

    .line 99
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "apiData"

    .line 100
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 101
    new-instance v0, Lnet/aihelp/data/model/rpa/bot/SelfService;

    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getSelfServiceData(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/aihelp/data/model/rpa/bot/SelfService;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static getSelfService(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/SelfService;
    .locals 2

    const-string v0, "apiData"

    .line 105
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "allowSend"

    .line 106
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "rows"

    .line 107
    invoke-static {p0, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 108
    new-instance v0, Lnet/aihelp/data/model/rpa/bot/SelfService;

    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getSelfServiceData(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/aihelp/data/model/rpa/bot/SelfService;-><init>(ZLjava/lang/String;)V

    return-object v0
.end method

.method public static getSelfServiceData(Lorg/json/JSONArray;)Ljava/lang/String;
    .locals 9

    .line 112
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 113
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 114
    invoke-static {p0, v2}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "row"

    invoke-static {v3, v4}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 116
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const/4 v5, 0x0

    .line 117
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 118
    invoke-static {v3, v5}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "key"

    .line 119
    invoke-static {v6, v7}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "value"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 121
    :cond_0
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isAgentMsg(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 204
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "usertype"

    .line 205
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "bot"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "msg"

    .line 206
    invoke-static {v1, p0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
