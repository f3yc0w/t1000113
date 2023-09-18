.class public Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;
.super Ljava/lang/Object;
.source "Faq.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/data/model/rpa/bot/Faq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaqData"
.end annotation


# instance fields
.field private final contentId:J

.field private final faqContent:Ljava/lang/String;

.field private final faqTitle:Ljava/lang/String;

.field private final formTitle:Ljava/lang/String;

.field private final formUrl:Ljava/lang/String;

.field private isFaqEvaluated:Z

.field private isFaqViewed:Z

.field private final isSimilarMatch:Z

.field private final mainId:J

.field private final template:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-wide p1, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->mainId:J

    .line 28
    iput-wide p3, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->contentId:J

    .line 29
    iput-object p5, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->faqTitle:Ljava/lang/String;

    .line 30
    iput-object p6, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->faqContent:Ljava/lang/String;

    .line 31
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->template:Ljava/lang/String;

    .line 32
    invoke-static {p8}, Lnet/aihelp/data/model/rpa/bot/Faq;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->formUrl:Ljava/lang/String;

    .line 33
    iput-object p9, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->formTitle:Ljava/lang/String;

    .line 34
    iput-boolean p10, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->isSimilarMatch:Z

    return-void
.end method


# virtual methods
.method public getContentId()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->contentId:J

    return-wide v0
.end method

.method public getFaqContent()Ljava/lang/String;
    .locals 1

    .line 74
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->faqContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqTitle()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->faqTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFormTitle()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->formTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFormUrl()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->formUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMainId()J
    .locals 2

    .line 66
    iget-wide v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->mainId:J

    return-wide v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->template:Ljava/lang/String;

    return-object v0
.end method

.method public hasAttachedForm()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->formUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->formTitle:Ljava/lang/String;

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

.method public isFaqEvaluated()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->isFaqEvaluated:Z

    return v0
.end method

.method public isFaqViewed()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->isFaqViewed:Z

    return v0
.end method

.method public isSimilarMatch()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->isSimilarMatch:Z

    return v0
.end method

.method public setFaqEvaluated(Z)V
    .locals 0

    .line 54
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->isFaqEvaluated:Z

    return-void
.end method

.method public setFaqViewed(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;->isFaqViewed:Z

    return-void
.end method
