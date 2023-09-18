.class final Lcom/tendcloud/tenddata/game/dc;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$data:Ljava/util/Map;

.field final synthetic val$sendStatusSuccess:Z


# direct methods
.method constructor <init>(Ljava/util/Map;Z)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/dc;->val$data:Ljava/util/Map;

    iput-boolean p2, p0, Lcom/tendcloud/tenddata/game/dc;->val$sendStatusSuccess:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dc;->val$data:Ljava/util/Map;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 77
    iget-boolean v0, p0, Lcom/tendcloud/tenddata/game/dc;->val$sendStatusSuccess:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/dc;->val$data:Ljava/util/Map;

    const-string v1, "targetUrl"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "me.xdrig.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 80
    iget-object v2, p0, Lcom/tendcloud/tenddata/game/dc;->val$data:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ar;->dForInternal([Ljava/lang/String;)V

    .line 81
    new-instance v0, Lcom/tendcloud/tenddata/game/dl;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/dl;-><init>()V

    const-string v1, "sdk"

    .line 82
    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->b:Ljava/lang/String;

    .line 83
    iget-boolean v1, p0, Lcom/tendcloud/tenddata/game/dc;->val$sendStatusSuccess:Z

    if-eqz v1, :cond_1

    const-string v1, "send_ok"

    goto :goto_0

    :cond_1
    const-string v1, "send_fail"

    :goto_0
    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->c:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/dc;->val$data:Ljava/util/Map;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->d:Ljava/util/Map;

    .line 85
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->ENV:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/dl;->a:Lcom/tendcloud/tenddata/game/a;

    .line 86
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method
