.class public Lnet/aihelp/core/util/elva/aiml/Srai;
.super Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.source "Srai.java"


# instance fields
.field private externalName:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 58
    invoke-direct {p0, p5}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    .line 59
    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->id:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->type:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->externalName:Ljava/lang/String;

    .line 62
    iput-object p4, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->url:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xml/sax/Attributes;)V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 50
    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;-><init>([Ljava/lang/Object;)V

    const-string v0, "id"

    .line 51
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->id:Ljava/lang/String;

    const-string v0, "type"

    .line 52
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->type:Ljava/lang/String;

    const-string v0, "externalName"

    .line 53
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->externalName:Ljava/lang/String;

    const-string v0, "url"

    .line 54
    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->url:Ljava/lang/String;

    return-void
.end method

.method private isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 70
    invoke-super {p0, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    check-cast p1, Lnet/aihelp/core/util/elva/aiml/Srai;

    .line 74
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->id:Ljava/lang/String;

    iget-object v2, p1, Lnet/aihelp/core/util/elva/aiml/Srai;->id:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lnet/aihelp/core/util/elva/aiml/Srai;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->type:Ljava/lang/String;

    iget-object v2, p1, Lnet/aihelp/core/util/elva/aiml/Srai;->type:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lnet/aihelp/core/util/elva/aiml/Srai;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->externalName:Ljava/lang/String;

    iget-object v2, p1, Lnet/aihelp/core/util/elva/aiml/Srai;->externalName:Ljava/lang/String;

    .line 75
    invoke-direct {p0, v0, v2}, Lnet/aihelp/core/util/elva/aiml/Srai;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->url:Ljava/lang/String;

    iget-object p1, p1, Lnet/aihelp/core/util/elva/aiml/Srai;->url:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lnet/aihelp/core/util/elva/aiml/Srai;->isEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getExternalName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->externalName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->url:Ljava/lang/String;

    return-object v0
.end method

.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 13

    const-string p1, "&apos;"

    const-string v0, "\'"

    const-string v1, "&quot;"

    const-string v2, "\""

    const-string v3, "&gt;"

    const-string v4, ">"

    const-string v5, "&lt;"

    const-string v6, "<"

    const-string v7, "&amp;"

    const-string v8, "&"

    :try_start_0
    const-string v9, "<srai id=\'%s\' type=\'%s\' externalName=\'%s\' url=\'%s\'></srai>"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    .line 80
    iget-object v12, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->id:Ljava/lang/String;

    .line 81
    invoke-virtual {v12, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    iget-object v12, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->type:Ljava/lang/String;

    .line 82
    invoke-virtual {v12, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    iget-object v12, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->externalName:Ljava/lang/String;

    .line 83
    invoke-virtual {v12, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x3

    iget-object v12, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->url:Ljava/lang/String;

    .line 84
    invoke-virtual {v12, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v10, v11

    .line 80
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, ""

    return-object p1
.end method

.method public setExternalName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->externalName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->id:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->type:Ljava/lang/String;

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lnet/aihelp/core/util/elva/aiml/Srai;->url:Ljava/lang/String;

    return-void
.end method
