.class public Lnet/aihelp/core/util/elva/text/Transformations;
.super Ljava/lang/Object;
.source "Transformations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/util/elva/text/Transformations$Mapper;
    }
.end annotation


# static fields
.field private static final INTEGER_ARRAY:[Ljava/lang/Integer;


# instance fields
.field private correction:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final fitting:Ljava/util/regex/Pattern;

.field private gender:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;"
        }
    .end annotation
.end field

.field private person:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;"
        }
    .end annotation
.end field

.field private person2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;"
        }
    .end annotation
.end field

.field private protection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final splitter:Lnet/aihelp/core/util/elva/text/SentenceSplitter;

.field private final tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

.field private final wordBreakers:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Integer;

    .line 18
    sput-object v0, Lnet/aihelp/core/util/elva/text/Transformations;->INTEGER_ARRAY:[Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/Map;Lnet/aihelp/core/util/elva/text/Tokenizer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lnet/aihelp/core/util/elva/text/Tokenizer;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "[^A-Z0-9\\u4E00-\\u9FA5\\u3040-\\u31FE\\u0400-\\u04FF\\u0E00-\\u0E7F\\uAC00-\\uD7AF\\u0600-\\u06FF\\u0080-\\u00FF\\u0100-\\u017F\\u0B80-\\u0BFF\\u0370-\\u03FF\\u1000-\\u109F\\u1780-\\u17FF]+"

    .line 20
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->fitting:Ljava/util/regex/Pattern;

    const-string v0, "([,;:])([A-Za-z]|[ \\s]{2,})"

    .line 21
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->wordBreakers:Ljava/util/regex/Pattern;

    .line 32
    iput-object p3, p0, Lnet/aihelp/core/util/elva/text/Transformations;->tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

    .line 33
    new-instance p3, Lnet/aihelp/core/util/elva/text/SentenceSplitter;

    const-string v0, "protection"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p3, v0, p1}, Lnet/aihelp/core/util/elva/text/SentenceSplitter;-><init>(Ljava/util/Map;Ljava/util/List;)V

    iput-object p3, p0, Lnet/aihelp/core/util/elva/text/Transformations;->splitter:Lnet/aihelp/core/util/elva/text/SentenceSplitter;

    const-string p1, "correction"

    .line 35
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Integer;
    .locals 1

    .line 16
    sget-object v0, Lnet/aihelp/core/util/elva/text/Transformations;->INTEGER_ARRAY:[Ljava/lang/Integer;

    return-object v0
.end method

.method private breakWords(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 109
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->wordBreakers:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 111
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 112
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x20

    if-eq v2, v4, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 119
    :goto_1
    invoke-virtual {p1, v0, v1}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fit(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 127
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->fitting:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, " "

    .line 128
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private fit(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations$Mapper;)Ljava/lang/String;
    .locals 4

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    .line 133
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->fitting:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 135
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 136
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {p2, p1, v2, v3}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->prepare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {p2, v2}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->update(I)V

    .line 139
    invoke-virtual {v0, v1, v3}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private newSubstitutionList(Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 101
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 102
    new-instance v2, Lnet/aihelp/core/util/elva/text/Substitution;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lnet/aihelp/core/util/elva/text/Transformations;->tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

    invoke-direct {v2, v3, v1, v4}, Lnet/aihelp/core/util/elva/text/Substitution;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Tokenizer;)V

    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private substitute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 147
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x42

    .line 148
    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 149
    invoke-virtual {v2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 150
    iget-object v2, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private substitute(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations$Mapper;)Ljava/lang/String;
    .locals 5

    .line 157
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 158
    iget-object v1, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x42

    .line 159
    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 160
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 161
    iget-object v4, p0, Lnet/aihelp/core/util/elva/text/Transformations;->correction:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 162
    invoke-virtual {p2, p1, v2, v4}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->prepare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_1
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->hitEnd()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->start()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->update(I)V

    .line 165
    invoke-virtual {v3, v0, v4}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 167
    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    .line 169
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private transform(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lnet/aihelp/core/util/elva/text/Substitution;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lnet/aihelp/core/util/elva/text/Transformations;->tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/elva/text/Tokenizer;->tokenize(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    .line 177
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 179
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/aihelp/core/util/elva/text/Substitution;

    .line 180
    invoke-virtual {v2, v0, p1}, Lnet/aihelp/core/util/elva/text/Substitution;->substitute(ILjava/util/List;)I

    move-result v2

    if-le v2, v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    .line 187
    :cond_2
    iget-object p2, p0, Lnet/aihelp/core/util/elva/text/Transformations;->tokenizer:Lnet/aihelp/core/util/elva/text/Tokenizer;

    invoke-virtual {p2, p1}, Lnet/aihelp/core/util/elva/text/Tokenizer;->toString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public normalization(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "[ ]{2,}"

    const-string v1, " "

    .line 219
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 220
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/text/Transformations;->substitute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 221
    invoke-direct {p0, p1}, Lnet/aihelp/core/util/elva/text/Transformations;->fit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public normalization(Lnet/aihelp/core/util/elva/text/Request;)V
    .locals 7

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Request;->getOriginal()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ ]{2,}"

    const-string v2, " "

    .line 192
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lnet/aihelp/core/util/elva/text/Transformations;->splitter:Lnet/aihelp/core/util/elva/text/SentenceSplitter;

    invoke-virtual {v1, v0}, Lnet/aihelp/core/util/elva/text/SentenceSplitter;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 194
    array-length v2, v1

    new-array v2, v2, [Lnet/aihelp/core/util/elva/text/Sentence;

    .line 195
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 196
    new-instance v5, Lnet/aihelp/core/util/elva/text/Sentence;

    aget-object v6, v1, v4

    invoke-direct {v5, v6}, Lnet/aihelp/core/util/elva/text/Sentence;-><init>(Ljava/lang/String;)V

    aput-object v5, v2, v4

    .line 197
    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Lnet/aihelp/core/util/elva/text/Transformations;->normalization(Lnet/aihelp/core/util/elva/text/Sentence;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/text/Request;->setOriginal(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p1, v2}, Lnet/aihelp/core/util/elva/text/Request;->setSentences([Lnet/aihelp/core/util/elva/text/Sentence;)V

    return-void
.end method

.method public normalization(Lnet/aihelp/core/util/elva/text/Sentence;)V
    .locals 3

    .line 205
    invoke-virtual {p1}, Lnet/aihelp/core/util/elva/text/Sentence;->getOriginal()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/util/elva/text/Transformations;->breakWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lnet/aihelp/core/util/elva/util/ParseUtil;->blankSplit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[ ]{2,}"

    const-string v2, " "

    .line 208
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/text/Sentence;->setOriginal(Ljava/lang/String;)V

    .line 210
    new-instance v1, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;

    invoke-direct {v1, p0, v0}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;-><init>(Lnet/aihelp/core/util/elva/text/Transformations;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/util/elva/text/Transformations;->substitute(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations$Mapper;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/util/elva/text/Transformations;->fit(Ljava/lang/String;Lnet/aihelp/core/util/elva/text/Transformations$Mapper;)Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {v1}, Lnet/aihelp/core/util/elva/text/Transformations$Mapper;->toArray()[Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lnet/aihelp/core/util/elva/text/Sentence;->setMappings([Ljava/lang/Integer;)V

    .line 214
    invoke-virtual {p1, v0}, Lnet/aihelp/core/util/elva/text/Sentence;->setNormalized(Ljava/lang/String;)V

    return-void
.end method
