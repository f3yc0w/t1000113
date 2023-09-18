.class public Lnet/aihelp/data/model/rpa/BotMessage;
.super Lnet/aihelp/data/model/rpa/RPAMessage;
.source "BotMessage.java"


# instance fields
.field private botAnswers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/bot/Answer;",
            ">;"
        }
    .end annotation
.end field

.field private externalUrl:Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

.field private faq:Lnet/aihelp/data/model/rpa/bot/Faq;

.field private formUrl:Lnet/aihelp/data/model/rpa/bot/FormUrl;

.field private selfService:Lnet/aihelp/data/model/rpa/bot/SelfService;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lnet/aihelp/data/model/rpa/RPAMessage;-><init>()V

    .line 17
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/BotMessage;->setNickname(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBotAnswers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/bot/Answer;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->botAnswers:Ljava/util/List;

    return-object v0
.end method

.method public getExternalUrl()Lnet/aihelp/data/model/rpa/bot/ExternalUrl;
    .locals 1

    .line 35
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->externalUrl:Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    return-object v0
.end method

.method public getFaq()Lnet/aihelp/data/model/rpa/bot/Faq;
    .locals 1

    .line 43
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->faq:Lnet/aihelp/data/model/rpa/bot/Faq;

    return-object v0
.end method

.method public getFormUrl()Lnet/aihelp/data/model/rpa/bot/FormUrl;
    .locals 1

    .line 27
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->formUrl:Lnet/aihelp/data/model/rpa/bot/FormUrl;

    return-object v0
.end method

.method public getSelfService()Lnet/aihelp/data/model/rpa/bot/SelfService;
    .locals 1

    .line 54
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->selfService:Lnet/aihelp/data/model/rpa/bot/SelfService;

    return-object v0
.end method

.method public hasBotAnswers()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->botAnswers:Ljava/util/List;

    invoke-static {v0}, Lnet/aihelp/utils/ListUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasExternalUrl()Z
    .locals 1

    .line 86
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->externalUrl:Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/ExternalUrl;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->externalUrl:Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/ExternalUrl;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFaq()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->faq:Lnet/aihelp/data/model/rpa/bot/Faq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/Faq;->getFaqDataList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/ListUtil;->isListEmpty(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFormUrl()Z
    .locals 1

    .line 82
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->formUrl:Lnet/aihelp/data/model/rpa/bot/FormUrl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/FormUrl;->getLink()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->formUrl:Lnet/aihelp/data/model/rpa/bot/FormUrl;

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/FormUrl;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelfService()Z
    .locals 2

    .line 94
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->selfService:Lnet/aihelp/data/model/rpa/bot/SelfService;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/SelfService;->getSelfServiceData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/model/rpa/BotMessage;->selfService:Lnet/aihelp/data/model/rpa/bot/SelfService;

    invoke-virtual {v0}, Lnet/aihelp/data/model/rpa/bot/SelfService;->getSelfServiceData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[]"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setBotAnswers(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/data/model/rpa/bot/Answer;",
            ">;)V"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/BotMessage;->botAnswers:Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/BotMessage;->hasBotAnswers()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    .line 71
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/BotMessage;->setMsgType(I)V

    :cond_0
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lnet/aihelp/data/model/rpa/RPAMessage;->setContent(Ljava/lang/String;)V

    const/4 p1, 0x3

    .line 78
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/BotMessage;->setMsgType(I)V

    return-void
.end method

.method public setExternalUrl(Lnet/aihelp/data/model/rpa/bot/ExternalUrl;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/BotMessage;->externalUrl:Lnet/aihelp/data/model/rpa/bot/ExternalUrl;

    return-void
.end method

.method public setFaq(Lnet/aihelp/data/model/rpa/bot/Faq;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/BotMessage;->faq:Lnet/aihelp/data/model/rpa/bot/Faq;

    .line 48
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/BotMessage;->hasFaq()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 49
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/BotMessage;->setMsgType(I)V

    :cond_0
    return-void
.end method

.method public setFormUrl(Lnet/aihelp/data/model/rpa/bot/FormUrl;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/BotMessage;->formUrl:Lnet/aihelp/data/model/rpa/bot/FormUrl;

    return-void
.end method

.method public setSelfService(Lnet/aihelp/data/model/rpa/bot/SelfService;)V
    .locals 1

    .line 58
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/BotMessage;->selfService:Lnet/aihelp/data/model/rpa/bot/SelfService;

    .line 59
    invoke-virtual {p0}, Lnet/aihelp/data/model/rpa/BotMessage;->hasSelfService()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/aihelp/data/model/rpa/bot/SelfService;->isEnableSend()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lnet/aihelp/data/model/rpa/BotMessage;->setNormalMessage(Z)V

    :cond_0
    return-void
.end method
