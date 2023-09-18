.class public Lnet/aihelp/data/model/op/OperateArticle;
.super Ljava/lang/Object;
.source "OperateArticle.java"


# instance fields
.field private faqContent:Ljava/lang/String;

.field private faqContentId:Ljava/lang/String;

.field private faqImageUrl:Ljava/lang/String;

.field private faqMainId:Ljava/lang/String;

.field private faqTitle:Ljava/lang/String;

.field private faqUpdateDate:Ljava/lang/String;

.field private isFaqUnread:Z

.field private sectionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFaqContent()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqContentId()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqContentId:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqImageUrl()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqMainId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqMainId:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqTitle()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqUpdateDate()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqUpdateDate:Ljava/lang/String;

    return-object v0
.end method

.method public getSectionId()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lnet/aihelp/data/model/op/OperateArticle;->sectionId:Ljava/lang/String;

    return-object v0
.end method

.method public isFaqUnread()Z
    .locals 1

    .line 47
    iget-boolean v0, p0, Lnet/aihelp/data/model/op/OperateArticle;->isFaqUnread:Z

    return v0
.end method

.method public setFaqContent(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqContent:Ljava/lang/String;

    return-void
.end method

.method public setFaqContentId(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqContentId:Ljava/lang/String;

    return-void
.end method

.method public setFaqImageUrl(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setFaqMainId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqMainId:Ljava/lang/String;

    return-void
.end method

.method public setFaqTitle(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqTitle:Ljava/lang/String;

    return-void
.end method

.method public setFaqUnread(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lnet/aihelp/data/model/op/OperateArticle;->isFaqUnread:Z

    return-void
.end method

.method public setFaqUpdateDate(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lnet/aihelp/data/model/op/OperateArticle;->faqUpdateDate:Ljava/lang/String;

    return-void
.end method

.method public setSectionId(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lnet/aihelp/data/model/op/OperateArticle;->sectionId:Ljava/lang/String;

    return-void
.end method
