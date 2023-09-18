.class public Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;
.super Ljava/lang/Object;
.source "HistoryHelper.java"


# static fields
.field private static final BOT_REPLY_TYPE_ATTACHMENT:I = 0x2

.field private static final BOT_REPLY_TYPE_EXTERNAL_URL:I = 0x3

.field private static final BOT_REPLY_TYPE_FAQ:I = 0x4

.field private static final BOT_REPLY_TYPE_FORM_CONTENT:I = 0x1

.field private static final BOT_REPLY_TYPE_FORM_URL:I = 0x6

.field private static final BOT_REPLY_TYPE_SELF_SERVICE:I = 0x5

.field private static final BOT_REPLY_TYPE_TEXT:I = 0x0

.field private static CUSTOMER_TYPE_AGENT:I = 0x0

.field private static CUSTOMER_TYPE_BOT:I = 0x1

.field private static final REGEX_IMAGE:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

.field private static final REGEX_VIDEO:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

.field private static assigneeInfo:Ljava/lang/String; = null

.field private static sFakeTimeStamp:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getChatTimeStampList(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/ChatHistoryEntity;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "[0-9]*"

    .line 46
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 50
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "assigneeinfo"

    .line 54
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 55
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->assigneeInfo:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_1
    sget-boolean v4, Lnet/aihelp/common/CustomConfig$CustomerService;->isMessageTimestampVisible:Z

    if-eqz v4, :cond_2

    const-string v4, "chatTimestamp"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 61
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->prepareHistoryTimeStamp(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "\\|"

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 67
    aget-object v5, v3, v4

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    new-instance v5, Lnet/aihelp/data/model/cs/ChatHistoryEntity;

    invoke-direct {v5}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;-><init>()V

    .line 69
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setTimeStamp(J)V

    .line 70
    array-length v4, v3

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    const/4 v4, 0x1

    .line 71
    aget-object v3, v3, v4

    const-string v4, "Bot"

    .line 72
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    :goto_1
    invoke-virtual {v5, v4}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setMsgType(I)V

    .line 73
    invoke-virtual {v5, v3}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setAgentName(Ljava/lang/String;)V

    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {v5, v6}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setMsgType(I)V

    const-string v3, ""

    .line 76
    invoke-virtual {v5, v3}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setAgentName(Ljava/lang/String;)V

    .line 78
    :goto_2
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 83
    :cond_5
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0
.end method

.method private static getConversationJSONObjectKey(Lnet/aihelp/data/model/cs/ChatHistoryEntity;)Ljava/lang/String;
    .locals 2

    .line 123
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getAgentName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getAgentName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getRetrievedMsgList(Lorg/json/JSONObject;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Z)",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;"
        }
    .end annotation

    .line 278
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    .line 279
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 280
    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->getChatTimeStampList(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/data/model/cs/ChatHistoryEntity;

    .line 283
    invoke-static {v1}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->getConversationJSONObjectKey(Lnet/aihelp/data/model/cs/ChatHistoryEntity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 284
    invoke-static {v1, v2}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->getSupportMsgAfterLogin(Lnet/aihelp/data/model/cs/ChatHistoryEntity;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/rpa/RPAMessage;

    .line 290
    instance-of v1, v0, Lnet/aihelp/data/model/rpa/MediaMessage;

    if-eqz v1, :cond_1

    .line 291
    check-cast v0, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setMessageFromServer(Z)V

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method private static getSupportMsgAfterLogin(Lnet/aihelp/data/model/cs/ChatHistoryEntity;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/data/model/cs/ChatHistoryEntity;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;"
        }
    .end annotation

    .line 138
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v1, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-direct {v1}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>()V

    .line 141
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/aihelp/data/model/rpa/RPAMessage;->setTimestamp(J)V

    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getMsgType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 145
    invoke-virtual {v1, v2}, Lnet/aihelp/data/model/rpa/RPAMessage;->setMsgType(I)V

    .line 146
    invoke-virtual {v1, v2}, Lnet/aihelp/data/model/rpa/RPAMessage;->setMsgStatus(I)V

    .line 147
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/aihelp/data/model/rpa/RPAMessage;->setContent(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    .line 153
    :cond_1
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getMsgType()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x4

    const-string v4, "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

    const-string v5, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    if-ne v2, v3, :cond_4

    .line 155
    :try_start_1
    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->prepareNickname(Lnet/aihelp/data/model/cs/ChatHistoryEntity;)V

    .line 157
    invoke-static {p1}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getHistoryBotContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 159
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 160
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 161
    new-instance v1, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p1}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/aihelp/data/model/rpa/MediaMessage;->setTimestamp(J)V

    .line 163
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getAgentNickname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/aihelp/data/model/rpa/MediaMessage;->setNickname(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 165
    :cond_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 166
    new-instance v1, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p1}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/aihelp/data/model/rpa/MediaMessage;->setTimestamp(J)V

    .line 168
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getAgentNickname()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/aihelp/data/model/rpa/MediaMessage;->setNickname(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 171
    :cond_3
    new-instance p1, Lnet/aihelp/data/model/rpa/AgentMessage;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getAgentNickname()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lnet/aihelp/data/model/rpa/AgentMessage;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lnet/aihelp/data/model/rpa/AgentMessage;->setTimestamp(J)V

    .line 173
    invoke-virtual {p1, v1}, Lnet/aihelp/data/model/rpa/AgentMessage;->setContent(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 177
    :cond_4
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getMsgType()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 179
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "customerId"

    .line 180
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setUserId(I)V

    .line 181
    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->prepareNickname(Lnet/aihelp/data/model/cs/ChatHistoryEntity;)V

    .line 183
    new-instance v2, Lnet/aihelp/data/model/rpa/BotMessage;

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getAgentNickname()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/aihelp/data/model/rpa/BotMessage;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lnet/aihelp/data/model/rpa/BotMessage;->setTimestamp(J)V

    .line 188
    invoke-static {p1}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getHistoryBotContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/aihelp/data/model/rpa/BotMessage;->setContent(Ljava/lang/String;)V

    .line 194
    invoke-static {v1}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getHistoryExternalUrl(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/aihelp/data/model/rpa/BotMessage;->setExternalUrl(Lnet/aihelp/data/model/rpa/bot/ExternalUrl;)V

    .line 197
    invoke-static {v1}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getHistoryFaq(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/Faq;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/aihelp/data/model/rpa/BotMessage;->setFaq(Lnet/aihelp/data/model/rpa/bot/Faq;)V

    .line 200
    invoke-static {v1}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getHistorySelfService(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/SelfService;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/aihelp/data/model/rpa/BotMessage;->setSelfService(Lnet/aihelp/data/model/rpa/bot/SelfService;)V

    .line 201
    invoke-virtual {v2}, Lnet/aihelp/data/model/rpa/BotMessage;->hasSelfService()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v2}, Lnet/aihelp/data/model/rpa/BotMessage;->getSelfService()Lnet/aihelp/data/model/rpa/bot/SelfService;

    move-result-object p0

    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/bot/SelfService;->isEnableSend()Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v0

    .line 208
    :cond_5
    invoke-static {v1}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getHistoryBotAnswers(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, p0}, Lnet/aihelp/data/model/rpa/BotMessage;->setBotAnswers(Ljava/util/List;)V

    .line 210
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 212
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 216
    :cond_6
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 217
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 218
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 219
    new-instance p0, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/16 v1, 0xa

    invoke-direct {p0, v1, p1}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    .line 220
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 221
    :cond_7
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 222
    new-instance p0, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/16 v2, 0xb

    invoke-direct {p0, v2, p1}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Lnet/aihelp/data/model/rpa/RPAMessage;->getTimestamp()J

    move-result-wide v1

    sget p1, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->sFakeTimeStamp:I

    add-int/lit8 v3, p1, 0x1

    sput v3, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->sFakeTimeStamp:I

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lnet/aihelp/data/model/rpa/MediaMessage;->setTimestamp(J)V

    .line 224
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_8
    new-instance v1, Lnet/aihelp/data/model/rpa/UserMessage;

    invoke-direct {v1}, Lnet/aihelp/data/model/rpa/UserMessage;-><init>()V

    .line 227
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getTimeStamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lnet/aihelp/data/model/rpa/UserMessage;->setTimestamp(J)V

    .line 228
    invoke-virtual {v1, p1}, Lnet/aihelp/data/model/rpa/UserMessage;->setContent(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    invoke-static {p1, v0, v1}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->replaceMediaUrls(Ljava/lang/String;Ljava/util/ArrayList;Lnet/aihelp/data/model/rpa/RPAMessage;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_0
    return-object v0

    .line 237
    :catch_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public static getUserFormMsgList(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 242
    new-instance v1, Lnet/aihelp/data/model/rpa/UserMessage;

    invoke-direct {v1}, Lnet/aihelp/data/model/rpa/UserMessage;-><init>()V

    .line 243
    invoke-virtual {v1, p0}, Lnet/aihelp/data/model/rpa/UserMessage;->setContent(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {p0, v0, v1}, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->replaceMediaUrls(Ljava/lang/String;Ljava/util/ArrayList;Lnet/aihelp/data/model/rpa/RPAMessage;)V

    return-object v0
.end method

.method private static prepareHistoryTimeStamp(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/data/model/cs/ChatHistoryEntity;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 90
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    const-string v3, "[0-9]*"

    .line 91
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 92
    new-instance v3, Lnet/aihelp/data/model/cs/ChatHistoryEntity;

    invoke-direct {v3}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;-><init>()V

    const/4 v4, 0x1

    .line 93
    invoke-virtual {v3, v4}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setMsgType(I)V

    .line 94
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setTimeStamp(J)V

    .line 95
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static prepareNickname(Lnet/aihelp/data/model/cs/ChatHistoryEntity;)V
    .locals 6

    .line 101
    sget-object v0, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->assigneeInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 103
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    sget-object v1, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->assigneeInfo:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    .line 105
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 106
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "userid"

    .line 107
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "username"

    .line 108
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getUserId()I

    move-result v5

    if-eq v5, v3, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->getAgentName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v0, "nickname"

    .line 110
    invoke-static {v2, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lnet/aihelp/data/model/cs/ChatHistoryEntity;->setAgentNickname(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private static replaceMediaUrls(Ljava/lang/String;Ljava/util/ArrayList;Lnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ">;",
            "Lnet/aihelp/data/model/rpa/RPAMessage;",
            ")V"
        }
    .end annotation

    const-string v0, ";"

    .line 251
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 252
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    const-string v4, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    .line 253
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 256
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_0

    .line 257
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 258
    new-instance v6, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/16 v7, 0xa

    invoke-direct {v6, v7, v4}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getTimestamp()J

    move-result-wide v7

    sget v9, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->sFakeTimeStamp:I

    add-int/lit8 v10, v9, 0x1

    sput v10, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->sFakeTimeStamp:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lnet/aihelp/data/model/rpa/MediaMessage;->setTimestamp(J)V

    .line 260
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    const-string v3, "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

    .line 266
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 267
    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    .line 269
    new-instance v6, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/16 v7, 0xb

    invoke-direct {v6, v7, v4}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    .line 270
    invoke-virtual {p2}, Lnet/aihelp/data/model/rpa/RPAMessage;->getTimestamp()J

    move-result-wide v7

    sget v9, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->sFakeTimeStamp:I

    add-int/lit8 v10, v9, 0x1

    sput v10, Lnet/aihelp/ui/cs/util/rpa/HistoryHelper;->sFakeTimeStamp:I

    int-to-long v9, v9

    add-long/2addr v7, v9

    invoke-virtual {v6, v7, v8}, Lnet/aihelp/data/model/rpa/MediaMessage;->setTimestamp(J)V

    .line 271
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
