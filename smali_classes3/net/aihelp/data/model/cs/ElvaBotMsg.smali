.class public Lnet/aihelp/data/model/cs/ElvaBotMsg;
.super Lnet/aihelp/data/model/cs/ConversationMsg;
.source "ElvaBotMsg.java"


# instance fields
.field private actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/aihelp/core/net/json/GenericType;
        value = Ljava/lang/String;
    .end annotation
.end field

.field private botFormUrl:Lnet/aihelp/data/model/cs/storyline/BotFormUrl;

.field private botMsg:Ljava/lang/String;

.field private botOrderInfo:Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

.field private botTagList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/storyline/BotTag;",
            ">;"
        }
    .end annotation

    .annotation runtime Lnet/aihelp/core/net/json/GenericType;
        value = Lnet/aihelp/data/model/cs/storyline/BotTag;
    .end annotation
.end field

.field private botUrl:Lnet/aihelp/data/model/cs/storyline/BotUrl;

.field private faqContentId:Ljava/lang/String;

.field private faqMainId:Ljava/lang/String;

.field private hasAction:Z

.field private hasFormUrl:Z

.field private hasOrderInfo:Z

.field private hasTag:Z

.field private hasUrl:Z

.field private isBotStupid:Z

.field private isFaqViewed:Z

.field private isSimilarMatched:Z

.field private rawResponse:Ljava/lang/String;

.field private template:Ljava/lang/String;

.field private userInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lnet/aihelp/data/model/cs/ConversationMsg;-><init>()V

    const/16 v0, 0xb

    .line 18
    invoke-virtual {p0, v0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setMsgType(I)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setTimeStamp(J)V

    return-void
.end method

.method private setHasAction()V
    .locals 1

    const/4 v0, 0x1

    .line 187
    iput-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasAction:Z

    const-string v0, "6"

    .line 188
    invoke-static {v0}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->updateType(Ljava/lang/String;)V

    return-void
.end method

.method private setHasFormUrl()V
    .locals 1

    const/4 v0, 0x1

    .line 196
    iput-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasFormUrl:Z

    const-string v0, "4"

    .line 197
    invoke-static {v0}, Lnet/aihelp/ui/helper/LogoutMqttHelper;->updateType(Ljava/lang/String;)V

    return-void
.end method

.method private setHasOrderInfo()V
    .locals 1

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasOrderInfo:Z

    return-void
.end method

.method private setHasTag()V
    .locals 1

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasTag:Z

    return-void
.end method

.method private setHasUrl()V
    .locals 1

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasUrl:Z

    return-void
.end method


# virtual methods
.method public getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->actions:Ljava/util/List;

    return-object v0
.end method

.method public getBotFormUrl()Lnet/aihelp/data/model/cs/storyline/BotFormUrl;
    .locals 1

    .line 169
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botFormUrl:Lnet/aihelp/data/model/cs/storyline/BotFormUrl;

    return-object v0
.end method

.method public getBotMsg()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getBotOrderInfo()Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;
    .locals 1

    .line 178
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botOrderInfo:Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    return-object v0
.end method

.method public getBotTagList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/storyline/BotTag;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botTagList:Ljava/util/List;

    return-object v0
.end method

.method public getBotUrl()Lnet/aihelp/data/model/cs/storyline/BotUrl;
    .locals 1

    .line 160
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botUrl:Lnet/aihelp/data/model/cs/storyline/BotUrl;

    return-object v0
.end method

.method public getFaqContentId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->faqContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqMainId()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->faqMainId:Ljava/lang/String;

    return-object v0
.end method

.method public getRawResponse()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->rawResponse:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->template:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInput()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->userInput:Ljava/lang/String;

    return-object v0
.end method

.method public isBotStupid()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isBotStupid:Z

    return v0
.end method

.method public isFaqViewed()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isFaqViewed:Z

    return v0
.end method

.method public isHasAction()Z
    .locals 1

    .line 106
    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasAction:Z

    return v0
.end method

.method public isHasFormUrl()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasFormUrl:Z

    return v0
.end method

.method public isHasOrderInfo()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasOrderInfo:Z

    return v0
.end method

.method public isHasTag()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasTag:Z

    return v0
.end method

.method public isHasUrl()Z
    .locals 1

    .line 110
    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->hasUrl:Z

    return v0
.end method

.method public isSimilarMatched()Z
    .locals 1

    .line 82
    iget-boolean v0, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isSimilarMatched:Z

    return v0
.end method

.method public setActions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->actions:Ljava/util/List;

    .line 147
    invoke-direct {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setHasAction()V

    return-void
.end method

.method public setBotFormUrl(Lnet/aihelp/data/model/cs/storyline/BotFormUrl;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botFormUrl:Lnet/aihelp/data/model/cs/storyline/BotFormUrl;

    .line 174
    invoke-direct {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setHasFormUrl()V

    return-void
.end method

.method public setBotMsg(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botMsg:Ljava/lang/String;

    return-void
.end method

.method public setBotOrderInfo(Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botOrderInfo:Lnet/aihelp/data/model/cs/storyline/BotOrderInfo;

    .line 183
    invoke-direct {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setHasOrderInfo()V

    return-void
.end method

.method public setBotStupid(Z)V
    .locals 0

    .line 102
    iput-boolean p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isBotStupid:Z

    return-void
.end method

.method public setBotTagList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/cs/storyline/BotTag;",
            ">;)V"
        }
    .end annotation

    .line 155
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botTagList:Ljava/util/List;

    .line 156
    invoke-direct {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setHasTag()V

    return-void
.end method

.method public setBotUrl(Lnet/aihelp/data/model/cs/storyline/BotUrl;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->botUrl:Lnet/aihelp/data/model/cs/storyline/BotUrl;

    .line 165
    invoke-direct {p0}, Lnet/aihelp/data/model/cs/ElvaBotMsg;->setHasUrl()V

    return-void
.end method

.method public setFaqContentId(Ljava/lang/String;)V
    .locals 2

    .line 67
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "&isCustom=1"

    const-string v1, ""

    .line 68
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 70
    :cond_0
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->faqContentId:Ljava/lang/String;

    return-void
.end method

.method public setFaqMainId(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->faqMainId:Ljava/lang/String;

    return-void
.end method

.method public setFaqViewed(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isFaqViewed:Z

    return-void
.end method

.method public setRawResponse(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->rawResponse:Ljava/lang/String;

    return-void
.end method

.method public setSimilarMatched(Z)V
    .locals 0

    .line 86
    iput-boolean p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->isSimilarMatched:Z

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->template:Ljava/lang/String;

    return-void
.end method

.method public setUserInput(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lnet/aihelp/data/model/cs/ElvaBotMsg;->userInput:Ljava/lang/String;

    return-void
.end method
