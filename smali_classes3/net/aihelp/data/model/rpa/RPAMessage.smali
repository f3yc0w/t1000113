.class public Lnet/aihelp/data/model/rpa/RPAMessage;
.super Ljava/lang/Object;
.source "RPAMessage.java"


# static fields
.field public static final STATUS_FAILURE:I = 0x3

.field public static final STATUS_NORMAL:I = 0x1

.field public static final STATUS_SENDING:I = 0x2

.field public static final TYPE_AGENT_BOT_ANSWER:I = 0x5

.field public static final TYPE_AGENT_IMAGE:I = 0x6

.field public static final TYPE_AGENT_RICH_TEXT:I = 0x8

.field public static final TYPE_AGENT_RPA_FAQ:I = 0x4

.field public static final TYPE_AGENT_TEXT:I = 0x3

.field public static final TYPE_AGENT_VIDEO:I = 0x7

.field public static final TYPE_LOADING:I = 0x2

.field public static final TYPE_TIMESTAMP:I = 0x1

.field public static final TYPE_USER_EVALUATE_FAQ:I = 0xc

.field public static final TYPE_USER_IMAGE:I = 0xa

.field public static final TYPE_USER_TEXT:I = 0x9

.field public static final TYPE_USER_VIDEO:I = 0xb


# instance fields
.field protected content:Ljava/lang/String;

.field private enableInteraction:Z

.field private isDuringRPAProcedure:Z

.field private isNormalMessage:Z

.field protected msgStatus:I

.field protected msgType:I

.field protected nickname:Ljava/lang/String;

.field private requestParams:Lorg/json/JSONObject;

.field protected timestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->isDuringRPAProcedure:Z

    .line 44
    iput-boolean v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->enableInteraction:Z

    .line 48
    iput v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->msgStatus:I

    .line 32
    invoke-virtual {p0, v0}, Lnet/aihelp/data/model/rpa/RPAMessage;->setMsgStatus(I)V

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setTimestamp(J)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>()V

    .line 38
    iput p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->msgType:I

    return-void
.end method

.method public static getAgentTypingMsg()Lnet/aihelp/data/model/rpa/RPAMessage;
    .locals 2

    .line 140
    new-instance v0, Lnet/aihelp/data/model/rpa/RPAMessage;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>(I)V

    return-object v0
.end method

.method public static getDefaultMessage()Lnet/aihelp/data/model/rpa/RPAMessage;
    .locals 3

    .line 127
    new-instance v0, Lnet/aihelp/data/model/rpa/BotMessage;

    const-string v1, ""

    invoke-direct {v0, v1}, Lnet/aihelp/data/model/rpa/BotMessage;-><init>(Ljava/lang/String;)V

    const-wide/16 v1, 0x64

    .line 128
    invoke-virtual {v0, v1, v2}, Lnet/aihelp/data/model/rpa/BotMessage;->setTimestamp(J)V

    .line 130
    sget-object v1, Lnet/aihelp/common/Const;->CUSTOM_WELCOME_MSG:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    sget-object v1, Lnet/aihelp/common/Const;->CUSTOM_WELCOME_MSG:Ljava/lang/String;

    goto :goto_0

    .line 132
    :cond_0
    sget-object v1, Lnet/aihelp/common/CustomConfig$CustomerService;->csWelcomeMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 133
    sget-object v1, Lnet/aihelp/common/CustomConfig$CustomerService;->csWelcomeMessage:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v1, "What can I do for you?"

    .line 135
    :goto_0
    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/BotMessage;->setContent(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;
    .locals 1

    .line 144
    new-instance v0, Lnet/aihelp/data/model/rpa/UserMessage;

    invoke-direct {v0}, Lnet/aihelp/data/model/rpa/UserMessage;-><init>()V

    .line 145
    invoke-virtual {v0, p0}, Lnet/aihelp/data/model/rpa/UserMessage;->setContent(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgStatus()I
    .locals 1

    .line 111
    iget v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->msgStatus:I

    return v0
.end method

.method public getMsgType()I
    .locals 1

    .line 103
    iget v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->msgType:I

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestParams()Lorg/json/JSONObject;
    .locals 1

    .line 77
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->requestParams:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 85
    iget-wide v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->timestamp:J

    return-wide v0
.end method

.method public isAgentMessage()Z
    .locals 2

    .line 155
    iget v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->msgType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isDuringRPAProcedure()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->isDuringRPAProcedure:Z

    return v0
.end method

.method public isEmptyMessage()Z
    .locals 1

    .line 160
    iget v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->msgType:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnableInteraction()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->enableInteraction:Z

    return v0
.end method

.method public isNormalMessage()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->isNormalMessage:Z

    return v0
.end method

.method public isUserMessage()Z
    .locals 2

    .line 150
    iget v0, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->msgType:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->content:Ljava/lang/String;

    return-void
.end method

.method public setDuringRPAProcedure(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->isDuringRPAProcedure:Z

    return-void
.end method

.method public setEnableInteraction(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->enableInteraction:Z

    return-void
.end method

.method public setMsgStatus(I)V
    .locals 0

    .line 115
    iput p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->msgStatus:I

    return-void
.end method

.method public setMsgType(I)V
    .locals 0

    .line 107
    iput p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->msgType:I

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->nickname:Ljava/lang/String;

    return-void
.end method

.method public setNormalMessage(Z)V
    .locals 0

    .line 65
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->isNormalMessage:Z

    return-void
.end method

.method public setRequestParams(Lorg/json/JSONObject;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->requestParams:Lorg/json/JSONObject;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 90
    iput-wide p1, p0, Lnet/aihelp/data/model/rpa/RPAMessage;->timestamp:J

    :cond_0
    return-void
.end method
