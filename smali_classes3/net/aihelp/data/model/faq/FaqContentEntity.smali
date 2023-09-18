.class public Lnet/aihelp/data/model/faq/FaqContentEntity;
.super Ljava/lang/Object;
.source "FaqContentEntity.java"


# instance fields
.field private faqContent:Ljava/lang/String;

.field private faqContentId:Ljava/lang/String;

.field private faqDisplayId:Ljava/lang/String;

.field private faqKeywords:Ljava/lang/String;

.field private faqMainId:Ljava/lang/String;

.field private faqNoHtmlContent:Ljava/lang/String;

.field private faqTitle:Ljava/lang/String;

.field private iconUrl:Ljava/lang/String;

.field private isHelpful:I

.field private searchTerm:Ljava/lang/String;

.field private secId:Ljava/lang/String;

.field private sectionName:Ljava/lang/String;

.field private similarQuestions:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->secId:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqTitle:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqKeywords:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqMainId:Ljava/lang/String;

    .line 32
    iput-object p5, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqDisplayId:Ljava/lang/String;

    .line 33
    iput-object p6, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqContentId:Ljava/lang/String;

    .line 34
    iput-object p7, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqContent:Ljava/lang/String;

    .line 35
    iput p8, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->isHelpful:I

    .line 36
    iput-object p9, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->searchTerm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public clearSearchTerms()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->searchTerm:Ljava/lang/String;

    return-void
.end method

.method public getFaqContent()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqContentId()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqDisplayId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqDisplayId:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqKeywords()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqKeywords:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqMainId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqMainId:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqNoHtmlContent()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqNoHtmlContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqTitle()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 115
    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->iconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getIsHelpful()I
    .locals 1

    .line 147
    iget v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->isHelpful:I

    return v0
.end method

.method public getSearchTerm()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->searchTerm:Ljava/lang/String;

    return-object v0
.end method

.method public getSecId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->secId:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->sectionName:Ljava/lang/String;

    return-object v0
.end method

.method public getSimilarQuestions()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->similarQuestions:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 158
    :cond_0
    iget-object v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->similarQuestions:Ljava/lang/String;

    return-object v0
.end method

.method public isHelpful()I
    .locals 1

    .line 72
    iget v0, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->isHelpful:I

    return v0
.end method

.method public setFaqContent(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqContent:Ljava/lang/String;

    return-void
.end method

.method public setFaqContentId(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqContentId:Ljava/lang/String;

    return-void
.end method

.method public setFaqDisplayId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqDisplayId:Ljava/lang/String;

    return-void
.end method

.method public setFaqKeywords(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqKeywords:Ljava/lang/String;

    return-void
.end method

.method public setFaqMainId(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqMainId:Ljava/lang/String;

    return-void
.end method

.method public setFaqNoHtmlContent(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqNoHtmlContent:Ljava/lang/String;

    return-void
.end method

.method public setFaqTitle(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->faqTitle:Ljava/lang/String;

    return-void
.end method

.method public setHelpful(I)V
    .locals 0

    .line 76
    iput p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->isHelpful:I

    return-void
.end method

.method public setIconUrl(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->iconUrl:Ljava/lang/String;

    return-void
.end method

.method public setIsHelpful(I)V
    .locals 0

    .line 151
    iput p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->isHelpful:I

    return-void
.end method

.method public setSearchTerm(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->searchTerm:Ljava/lang/String;

    return-void
.end method

.method public setSecId(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->secId:Ljava/lang/String;

    return-void
.end method

.method public setSectionName(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->sectionName:Ljava/lang/String;

    return-void
.end method

.method public setSimilarQuestions(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->similarQuestions:Ljava/lang/String;

    return-void
.end method

.method public updateSearchTerm(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lnet/aihelp/data/model/faq/FaqContentEntity;->searchTerm:Ljava/lang/String;

    return-void
.end method
