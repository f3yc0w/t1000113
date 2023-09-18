.class public Lnet/aihelp/core/util/elva/aiml/TemplateElement;
.super Ljava/lang/Object;
.source "TemplateElement.java"

# interfaces
.implements Lnet/aihelp/core/util/elva/aiml/AIMLElement;


# static fields
.field private static final TEMPLATE_ELEMENT_ARRAY:[Lnet/aihelp/core/util/elva/aiml/TemplateElement;


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/TemplateElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    .line 11
    sput-object v0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->TEMPLATE_ELEMENT_ARRAY:[Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    .line 15
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 16
    instance-of v3, v2, Lnet/aihelp/core/util/elva/aiml/AIMLElement;

    if-eqz v3, :cond_0

    .line 17
    iget-object v3, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    check-cast v2, Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_0
    iget-object v3, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    new-instance v4, Lnet/aihelp/core/util/elva/aiml/Text;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lnet/aihelp/core/util/elva/aiml/Text;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public appendChild(Lnet/aihelp/core/util/elva/aiml/AIMLElement;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appendChildren(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/AIMLElement;",
            ">;)V"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/elva/aiml/AIMLElement;

    .line 30
    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    check-cast v0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public children()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/aiml/TemplateElement;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 39
    instance-of v0, p1, Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    if-nez v0, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    check-cast p1, Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    .line 43
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    iget-object p1, p1, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getChildren(I)Lnet/aihelp/core/util/elva/aiml/TemplateElement;
    .locals 1

    .line 63
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    return-object p1
.end method

.method public getChildren()[Lnet/aihelp/core/util/elva/aiml/TemplateElement;
    .locals 2

    .line 59
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    sget-object v1, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->TEMPLATE_ELEMENT_ARRAY:[Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;
    .locals 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object v1, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/util/elva/aiml/TemplateElement;

    .line 53
    invoke-virtual {v2, p1}, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->process(Lnet/aihelp/core/util/elva/Match;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setChildren([Lnet/aihelp/core/util/elva/aiml/TemplateElement;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v0, p0, Lnet/aihelp/core/util/elva/aiml/TemplateElement;->children:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
