.class public Lnet/aihelp/ui/cs/util/rpa/ResponseHelper;
.super Ljava/lang/Object;
.source "ResponseHelper.java"


# static fields
.field public static final RAW_USER_TYPE_AGENT:I = 0x0

.field public static final RAW_USER_TYPE_SOME_BOT:I = 0x1

.field public static final RAW_USER_TYPE_UNASSIGNED:I = -0x1

.field private static final REGEX_IMAGE:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

.field private static final REGEX_VIDEO:Ljava/lang/String; = "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

.field public static final RPA_PROCEDURE_AGENT_ALREADY_ASSIGNED:I = 0x7d1

.field public static final RPA_PROCEDURE_BOT_NORMAL:I = 0x3e9

.field public static final RPA_PROCEDURE_BOT_STOP_AND_WAIT:I = 0x3ea

.field public static final RPA_PROCEDURE_TICKET_CREATED:I = 0x1

.field public static final RPA_PROCEDURE_TICKET_RESET:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRPAMessage(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAMessage;
    .locals 8

    const-string v0, "usertype"

    .line 41
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 42
    new-instance p0, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-direct {p0, v2}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>(I)V

    .line 43
    invoke-virtual {p0, v3}, Lnet/aihelp/data/model/rpa/RPAMessage;->setNormalMessage(Z)V

    return-object p0

    .line 48
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    const/4 v4, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string v0, "nickname"

    .line 51
    invoke-static {v1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "time"

    .line 52
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    if-eqz p0, :cond_4

    const-string p0, "msg"

    .line 55
    invoke-static {v1, p0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(http:|https:)(//)((?!\").)*?.(PNG|png|JPG|jpg|JPEG|jpeg)"

    .line 56
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v7, "(http:|https:)(//)((?!\").)*?.(mp4|MP4)"

    .line 57
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 58
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    new-instance v1, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/4 v7, 0x6

    invoke-direct {v1, v7, p0}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    .line 60
    invoke-virtual {v1, v5, v6}, Lnet/aihelp/data/model/rpa/MediaMessage;->setTimestamp(J)V

    .line 61
    invoke-virtual {v1, v0}, Lnet/aihelp/data/model/rpa/MediaMessage;->setNickname(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v4}, Lnet/aihelp/data/model/rpa/MediaMessage;->setMessageFromServer(Z)V

    .line 63
    invoke-virtual {v1, v4}, Lnet/aihelp/data/model/rpa/MediaMessage;->setNormalMessage(Z)V

    return-object v1

    .line 65
    :cond_2
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    new-instance v1, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/4 v7, 0x7

    invoke-direct {v1, v7, p0}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    .line 67
    invoke-virtual {v1, v5, v6}, Lnet/aihelp/data/model/rpa/MediaMessage;->setTimestamp(J)V

    .line 68
    invoke-virtual {v1, v0}, Lnet/aihelp/data/model/rpa/MediaMessage;->setNickname(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1, v4}, Lnet/aihelp/data/model/rpa/MediaMessage;->setMessageFromServer(Z)V

    .line 70
    invoke-virtual {v1, v4}, Lnet/aihelp/data/model/rpa/MediaMessage;->setNormalMessage(Z)V

    return-object v1

    .line 73
    :cond_3
    new-instance v1, Lnet/aihelp/data/model/rpa/AgentMessage;

    invoke-direct {v1, v0}, Lnet/aihelp/data/model/rpa/AgentMessage;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1, v5, v6}, Lnet/aihelp/data/model/rpa/AgentMessage;->setTimestamp(J)V

    .line 75
    invoke-virtual {v1, v4}, Lnet/aihelp/data/model/rpa/AgentMessage;->setNormalMessage(Z)V

    .line 76
    invoke-virtual {v1, p0}, Lnet/aihelp/data/model/rpa/AgentMessage;->setContent(Ljava/lang/String;)V

    return-object v1

    .line 80
    :cond_4
    new-instance p0, Lnet/aihelp/data/model/rpa/BotMessage;

    invoke-direct {p0, v0}, Lnet/aihelp/data/model/rpa/BotMessage;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0, v5, v6}, Lnet/aihelp/data/model/rpa/BotMessage;->setTimestamp(J)V

    const-string v0, "welcomeBot"

    .line 83
    invoke-static {v1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-nez v5, :cond_5

    const-string v0, "bot"

    .line 85
    invoke-static {v1, v0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    :cond_5
    const-string v1, "status"

    const/4 v5, -0x1

    .line 88
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const/16 v5, 0x3e9

    if-ne v1, v5, :cond_6

    const/4 v6, 0x1

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    .line 89
    :goto_1
    invoke-virtual {p0, v6}, Lnet/aihelp/data/model/rpa/BotMessage;->setNormalMessage(Z)V

    if-eq v1, v5, :cond_8

    const/16 v5, 0x3ea

    if-ne v1, v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v4, 0x0

    .line 90
    :cond_8
    :goto_2
    invoke-virtual {p0, v4}, Lnet/aihelp/data/model/rpa/BotMessage;->setDuringRPAProcedure(Z)V

    const-string v1, "reply"

    .line 93
    invoke-static {v0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getBotContent(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/aihelp/data/model/rpa/BotMessage;->setContent(Ljava/lang/String;)V

    .line 99
    invoke-static {v0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getFormUrl(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/FormUrl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/aihelp/data/model/rpa/BotMessage;->setFormUrl(Lnet/aihelp/data/model/rpa/bot/FormUrl;)V

    .line 102
    invoke-static {v0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getExternalUrl(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/aihelp/data/model/rpa/BotMessage;->setExternalUrl(Lnet/aihelp/data/model/rpa/bot/ExternalUrl;)V

    .line 105
    invoke-static {v0, p0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getFaq(Lorg/json/JSONObject;Lnet/aihelp/data/model/rpa/BotMessage;)Lnet/aihelp/data/model/rpa/bot/Faq;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/aihelp/data/model/rpa/BotMessage;->setFaq(Lnet/aihelp/data/model/rpa/bot/Faq;)V

    .line 108
    invoke-static {v0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getSelfService(Lorg/json/JSONObject;)Lnet/aihelp/data/model/rpa/bot/SelfService;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/aihelp/data/model/rpa/BotMessage;->setSelfService(Lnet/aihelp/data/model/rpa/bot/SelfService;)V

    .line 111
    invoke-static {v0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->getBotAnswers(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/aihelp/data/model/rpa/BotMessage;->setBotAnswers(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 116
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    new-instance p0, Lnet/aihelp/data/model/rpa/RPAMessage;

    invoke-direct {p0, v2}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>(I)V

    .line 118
    invoke-virtual {p0, v3}, Lnet/aihelp/data/model/rpa/RPAMessage;->setNormalMessage(Z)V

    return-object p0
.end method

.method public static getRPAStep(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAStep;
    .locals 7

    .line 126
    new-instance v0, Lnet/aihelp/data/model/rpa/RPAStep;

    invoke-direct {v0}, Lnet/aihelp/data/model/rpa/RPAStep;-><init>()V

    .line 129
    sget-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketFinished:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    sget-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForAskingResolveStatus:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketWaitForRating:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 131
    :goto_0
    invoke-static {p0}, Lnet/aihelp/ui/cs/util/rpa/RPADataHelper;->isAgentMsg(Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x68

    if-nez v4, :cond_d

    if-eqz v1, :cond_2

    goto/16 :goto_6

    .line 137
    :cond_2
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "welcomeBot"

    .line 138
    invoke-static {v1, p0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-nez v4, :cond_3

    const-string p0, "bot"

    .line 140
    invoke-static {v1, p0}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    :cond_3
    const-string v4, "status"

    const/4 v6, -0x1

    .line 142
    invoke-virtual {p0, v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v3, :cond_a

    const/4 v1, 0x2

    if-eq v4, v1, :cond_9

    const/16 v1, 0x3ea

    if-eq v4, v1, :cond_8

    const/16 v1, 0x7d1

    if-eq v4, v1, :cond_b

    const-string v1, "step"

    .line 157
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 158
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "stepId"

    .line 161
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/RPAStep;->setStepId(Ljava/lang/String;)V

    const-string v1, "allowSkip"

    .line 162
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/RPAStep;->setEnableSkip(Z)V

    const-string v1, "autoUpload"

    .line 163
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/RPAStep;->setEnableUpload(Z)V

    const-string v1, "nextAction"

    .line 164
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    const-string v1, "skipLabel"

    .line 165
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/RPAStep;->setSkipHint(Ljava/lang/String;)V

    const-string v1, "allowInputBox"

    .line 166
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v0, v3}, Lnet/aihelp/data/model/rpa/RPAStep;->setEnableActionInput(Z)V

    const-string v1, "buttons"

    .line 169
    invoke-static {p0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonArray(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 170
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 171
    :goto_4
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 172
    invoke-static {p0, v2}, Lnet/aihelp/core/net/json/JsonHelper;->getJsonObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "order"

    .line 173
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "id"

    .line 174
    invoke-static {v3, v5}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "value"

    .line 175
    invoke-static {v3, v6}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-static {v4, v5, v3}, Lnet/aihelp/data/model/rpa/RPAStep$Action;->getInstance(ILjava/lang/String;Ljava/lang/String;)Lnet/aihelp/data/model/rpa/RPAStep$Action;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 178
    :cond_7
    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/RPAStep;->setActionList(Ljava/util/List;)V

    goto :goto_5

    :cond_8
    const/16 p0, 0x67

    .line 145
    invoke-virtual {v0, p0}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    goto :goto_5

    :cond_9
    const/16 p0, 0x66

    .line 148
    invoke-virtual {v0, p0}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    goto :goto_5

    .line 151
    :cond_a
    sput-boolean v3, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->isTicketActive:Z

    const-string p0, "ticketId"

    .line 152
    invoke-static {v1, p0}, Lnet/aihelp/core/net/json/JsonHelper;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lnet/aihelp/ui/cs/util/TicketStatusTracker;->appendRenderedTicketIds(Ljava/lang/String;Z)V

    .line 154
    :cond_b
    invoke-virtual {v0, v5}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 183
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_5
    return-object v0

    .line 132
    :cond_d
    :goto_6
    invoke-virtual {v0, v5}, Lnet/aihelp/data/model/rpa/RPAStep;->setNextStep(I)V

    return-object v0
.end method
