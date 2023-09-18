.class final Lcom/tendcloud/tenddata/game/db;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/db;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/db;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bq;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/tendcloud/tenddata/game/da;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    const-string v2, "sdk"

    .line 46
    iput-object v2, v1, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    const-string v2, "error"

    .line 47
    iput-object v2, v1, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 48
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    const-string v3, "type"

    .line 49
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/db;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "msg"

    .line 50
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/db;->val$throwable:Ljava/lang/Throwable;

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "stack"

    .line 51
    iget-object v4, p0, Lcom/tendcloud/tenddata/game/db;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v4}, Lcom/tendcloud/tenddata/game/da;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iput-object v2, v1, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 53
    sget-object v2, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v2, v1, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 54
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V

    .line 55
    invoke-static {}, Lcom/tendcloud/tenddata/game/da;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
