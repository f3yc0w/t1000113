.class public Lnet/aihelp/core/util/elva/Context;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private output:Ljava/io/OutputStream;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final random:Ljava/util/Random;

.field private final requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Request;",
            ">;"
        }
    .end annotation
.end field

.field private final responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Response;",
            ">;"
        }
    .end annotation
.end field

.field private seed:J

.field private that:Lnet/aihelp/core/util/elva/text/Sentence;

.field private topic:Lnet/aihelp/core/util/elva/text/Sentence;

.field private transformations:Lnet/aihelp/core/util/elva/text/Transformations;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Context;->properties:Ljava/util/Map;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Context;->listeners:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Context;->requests:Ljava/util/List;

    .line 28
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Context;->responses:Ljava/util/List;

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Context;->random:Ljava/util/Random;

    const-wide/16 v0, 0x0

    .line 30
    iput-wide v0, p0, Lnet/aihelp/core/util/elva/Context;->seed:J

    .line 38
    new-instance v0, Lnet/aihelp/core/util/elva/ContextRandomSeedChangeListener;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/ContextRandomSeedChangeListener;-><init>()V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/Context;->addContextPropertyChangeListener(Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;)V

    .line 39
    new-instance v0, Lnet/aihelp/core/util/elva/ContextTopicChangeListener;

    invoke-direct {v0}, Lnet/aihelp/core/util/elva/ContextTopicChangeListener;-><init>()V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/Context;->addContextPropertyChangeListener(Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;)V

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/util/elva/text/Transformations;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lnet/aihelp/core/util/elva/Context;-><init>()V

    .line 44
    iput-object p1, p0, Lnet/aihelp/core/util/elva/Context;->transformations:Lnet/aihelp/core/util/elva/text/Transformations;

    return-void
.end method


# virtual methods
.method public addContextPropertyChangeListener(Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->listeners:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public appendRequest(Lnet/aihelp/core/util/elva/text/Request;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->requests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public appendResponse(Lnet/aihelp/core/util/elva/text/Response;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->transformations:Lnet/aihelp/core/util/elva/text/Transformations;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Lnet/aihelp/core/util/elva/text/Request;)V

    .line 64
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->responses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 65
    invoke-virtual {p1, v1}, Lnet/aihelp/core/util/elva/text/Response;->lastSentence(I)Lnet/aihelp/core/util/elva/text/Sentence;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/util/elva/Context;->that:Lnet/aihelp/core/util/elva/text/Sentence;

    .line 66
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->transformations:Lnet/aihelp/core/util/elva/text/Transformations;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Lnet/aihelp/core/util/elva/text/Sentence;)V

    return-void
.end method

.method public getRequests(I)Lnet/aihelp/core/util/elva/text/Request;
    .locals 1

    .line 143
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->requests:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/util/elva/text/Request;

    return-object p1
.end method

.method public getResponses(I)Lnet/aihelp/core/util/elva/text/Response;
    .locals 1

    .line 147
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->responses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/aihelp/core/util/elva/text/Response;

    return-object p1
.end method

.method public getThat()Lnet/aihelp/core/util/elva/text/Sentence;
    .locals 1

    .line 122
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->that:Lnet/aihelp/core/util/elva/text/Sentence;

    if-nez v0, :cond_0

    .line 123
    sget-object v0, Lnet/aihelp/core/util/elva/text/Sentence;->ASTERISK:Lnet/aihelp/core/util/elva/text/Sentence;

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Context;->that:Lnet/aihelp/core/util/elva/text/Sentence;

    .line 125
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->that:Lnet/aihelp/core/util/elva/text/Sentence;

    return-object v0
.end method

.method public getTopic()Lnet/aihelp/core/util/elva/text/Sentence;
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->topic:Lnet/aihelp/core/util/elva/text/Sentence;

    if-nez v0, :cond_0

    .line 130
    sget-object v0, Lnet/aihelp/core/util/elva/text/Sentence;->ASTERISK:Lnet/aihelp/core/util/elva/text/Sentence;

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Context;->topic:Lnet/aihelp/core/util/elva/text/Sentence;

    .line 132
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->topic:Lnet/aihelp/core/util/elva/text/Sentence;

    return-object v0
.end method

.method public getTransformations()Lnet/aihelp/core/util/elva/text/Transformations;
    .locals 1

    .line 151
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->transformations:Lnet/aihelp/core/util/elva/text/Transformations;

    return-object v0
.end method

.method public id()Ljava/lang/String;
    .locals 2

    const-string v0, "bot.id"

    .line 105
    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/Context;->property(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    .line 106
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public outputStream()Ljava/io/OutputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->output:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    const-string v0, "bot.output"

    .line 90
    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/elva/Context;->property(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/gossip-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/Context;->id()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/aihelp/core/util/elva/Context;->outputStream(Ljava/io/OutputStream;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->output:Ljava/io/OutputStream;

    return-object v0
.end method

.method public outputStream(Ljava/io/OutputStream;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lnet/aihelp/core/util/elva/Context;->output:Ljava/io/OutputStream;

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/Context;->outputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 71
    invoke-virtual {p0}, Lnet/aihelp/core/util/elva/Context;->outputStream()Ljava/io/OutputStream;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method public property(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 75
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public property(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 79
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->listeners:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;

    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lnet/aihelp/core/util/elva/Context;->properties:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 82
    new-instance v2, Ljava/beans/PropertyChangeEvent;

    invoke-direct {v2, p0, p1, v1, p2}, Ljava/beans/PropertyChangeEvent;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v0, v2}, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;->propertyChange(Ljava/beans/PropertyChangeEvent;)V

    .line 85
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public random()Ljava/util/Random;
    .locals 1

    .line 114
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->random:Ljava/util/Random;

    return-object v0
.end method

.method public random(J)V
    .locals 1

    .line 118
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->random:Ljava/util/Random;

    invoke-virtual {v0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public removeContextPropertyChangeListener(Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->listeners:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;

    if-ne v0, p1, :cond_0

    .line 54
    iget-object v0, p0, Lnet/aihelp/core/util/elva/Context;->listeners:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/ContextPropertyChangeListener;->name()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setTopic(Lnet/aihelp/core/util/elva/text/Sentence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 137
    sget-object v0, Lnet/aihelp/core/util/elva/text/Sentence;->ASTERISK:Lnet/aihelp/core/util/elva/text/Sentence;

    iput-object v0, p0, Lnet/aihelp/core/util/elva/Context;->topic:Lnet/aihelp/core/util/elva/text/Sentence;

    .line 139
    :cond_0
    iput-object p1, p0, Lnet/aihelp/core/util/elva/Context;->topic:Lnet/aihelp/core/util/elva/text/Sentence;

    return-void
.end method

.method public setTransformations(Lnet/aihelp/core/util/elva/text/Transformations;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lnet/aihelp/core/util/elva/Context;->transformations:Lnet/aihelp/core/util/elva/text/Transformations;

    return-void
.end method
