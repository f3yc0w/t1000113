.class public Lnet/aihelp/data/model/rpa/bot/Answer;
.super Ljava/lang/Object;
.source "Answer.java"


# static fields
.field public static final ANSWER_TYPE_FAQ:I = 0x1

.field public static final ANSWER_TYPE_RPA:I = 0x2


# instance fields
.field private faqData:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

.field private title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lnet/aihelp/data/model/rpa/bot/Answer;->type:I

    .line 10
    iput-object p2, p0, Lnet/aihelp/data/model/rpa/bot/Answer;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFaqData()Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;
    .locals 1

    .line 34
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Answer;->faqData:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lnet/aihelp/data/model/rpa/bot/Answer;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 18
    iget v0, p0, Lnet/aihelp/data/model/rpa/bot/Answer;->type:I

    return v0
.end method

.method public setFaqData(Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;)V
    .locals 2

    .line 38
    iget v0, p0, Lnet/aihelp/data/model/rpa/bot/Answer;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 39
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/bot/Answer;->faqData:Lnet/aihelp/data/model/rpa/bot/Faq$FaqData;

    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lnet/aihelp/data/model/rpa/bot/Answer;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 22
    iput p1, p0, Lnet/aihelp/data/model/rpa/bot/Answer;->type:I

    return-void
.end method
