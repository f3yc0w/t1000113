.class public Lnet/aihelp/core/util/elva/text/Request;
.super Ljava/lang/Object;
.source "Request.java"


# instance fields
.field private original:Ljava/lang/String;

.field private sentences:[Lnet/aihelp/core/util/elva/text/Sentence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Request;->original:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Lnet/aihelp/core/util/elva/text/Sentence;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Request;->original:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lnet/aihelp/core/util/elva/text/Request;->sentences:[Lnet/aihelp/core/util/elva/text/Sentence;

    return-void
.end method


# virtual methods
.method public empty()Z
    .locals 1

    .line 23
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Request;->sentences:[Lnet/aihelp/core/util/elva/text/Sentence;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_0

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

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 27
    instance-of v1, p1, Lnet/aihelp/core/util/elva/text/Request;

    if-nez v1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    check-cast p1, Lnet/aihelp/core/util/elva/text/Request;

    .line 30
    iget-object v1, p0, Lnet/aihelp/core/util/elva/text/Request;->original:Ljava/lang/String;

    iget-object v2, p1, Lnet/aihelp/core/util/elva/text/Request;->original:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/aihelp/core/util/elva/text/Request;->sentences:[Lnet/aihelp/core/util/elva/text/Sentence;

    iget-object p1, p1, Lnet/aihelp/core/util/elva/text/Request;->sentences:[Lnet/aihelp/core/util/elva/text/Sentence;

    .line 31
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public getOriginal()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Request;->original:Ljava/lang/String;

    return-object v0
.end method

.method public getSentences(I)Lnet/aihelp/core/util/elva/text/Sentence;
    .locals 1

    .line 59
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Request;->sentences:[Lnet/aihelp/core/util/elva/text/Sentence;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSentences()[Lnet/aihelp/core/util/elva/text/Sentence;
    .locals 1

    .line 55
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Request;->sentences:[Lnet/aihelp/core/util/elva/text/Sentence;

    return-object v0
.end method

.method public lastSentence(I)Lnet/aihelp/core/util/elva/text/Sentence;
    .locals 2

    .line 35
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Request;->sentences:[Lnet/aihelp/core/util/elva/text/Sentence;

    array-length v1, v0

    add-int/lit8 p1, p1, 0x1

    sub-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method

.method public setOriginal(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Request;->original:Ljava/lang/String;

    return-void
.end method

.method public setSentences([Lnet/aihelp/core/util/elva/text/Sentence;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Request;->sentences:[Lnet/aihelp/core/util/elva/text/Sentence;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Request;->original:Ljava/lang/String;

    return-object v0
.end method

.method public trimOriginal()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Request;->original:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
