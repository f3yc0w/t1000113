.class public Lcom/tendcloud/tenddata/game/ci;
.super Ljava/lang/Object;
.source "td"


# instance fields
.field private a:I

.field private b:J

.field private c:Ljava/util/List;

.field private d:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/tendcloud/tenddata/game/ci;->a:I

    return v0
.end method

.method public a(Z)Ljava/util/Map;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ci;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 43
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ci;->d:Ljava/util/Map;

    .line 44
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ci;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/ce;

    .line 45
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/ci;->d:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/ce;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/ci;->d:Ljava/util/Map;

    return-object p1
.end method

.method public b()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/ci;->b:J

    return-wide v0
.end method

.method public c()Ljava/util/List;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/ci;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Lcom/tendcloud/tenddata/game/ci;
    .locals 4

    .line 54
    new-instance v0, Lcom/tendcloud/tenddata/game/ci;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/ci;-><init>()V

    .line 55
    iget v1, p0, Lcom/tendcloud/tenddata/game/ci;->a:I

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ci;->setTimestamp(I)V

    .line 56
    iget-wide v1, p0, Lcom/tendcloud/tenddata/game/ci;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/tendcloud/tenddata/game/ci;->setPoiId(J)V

    .line 57
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 58
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/ci;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tendcloud/tenddata/game/ce;

    .line 59
    invoke-virtual {v3}, Lcom/tendcloud/tenddata/game/ce;->f()Lcom/tendcloud/tenddata/game/ce;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/ci;->setBsslist(Ljava/util/List;)V

    return-object v0
.end method

.method public setBsslist(Ljava/util/List;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/ci;->c:Ljava/util/List;

    return-void
.end method

.method public setPoiId(J)V
    .locals 0

    .line 30
    iput-wide p1, p0, Lcom/tendcloud/tenddata/game/ci;->b:J

    return-void
.end method

.method public setTimestamp(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/tendcloud/tenddata/game/ci;->a:I

    return-void
.end method
