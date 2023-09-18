.class final Lcom/tendcloud/tenddata/game/e;
.super Landroid/os/Handler;
.source "td"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .line 114
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 118
    invoke-static {}, Lcom/tendcloud/tenddata/game/dp;->a()Lcom/tendcloud/tenddata/game/dp;

    .line 119
    invoke-static {}, Lcom/tendcloud/tenddata/game/dm;->a()Lcom/tendcloud/tenddata/game/dm;

    .line 122
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tendcloud/tenddata/game/zz$a;

    if-eqz v0, :cond_0

    .line 123
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/tendcloud/tenddata/game/zz$a;

    .line 125
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/bt;->a()Lcom/tendcloud/tenddata/game/bt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tendcloud/tenddata/game/bt;->post(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
