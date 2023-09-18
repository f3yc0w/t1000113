.class Lcom/tendcloud/tenddata/game/cr;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field appId:Ljava/lang/String;

.field channelId:Ljava/lang/String;

.field features:Lcom/tendcloud/tenddata/game/a;

.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cq;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cq;Landroid/os/Looper;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cr;->this$0:Lcom/tendcloud/tenddata/game/cq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 105
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "appId"

    .line 107
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->appId:Ljava/lang/String;

    const-string v1, "channelId"

    .line 108
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->channelId:Ljava/lang/String;

    const-string v1, "Features"

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->features:Lcom/tendcloud/tenddata/game/a;

    .line 112
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 119
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cq;->a(Z)Z

    .line 120
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cr;->this$0:Lcom/tendcloud/tenddata/game/cq;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->channelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->features:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cq;->a(Lcom/tendcloud/tenddata/game/cq;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cr;->this$0:Lcom/tendcloud/tenddata/game/cq;

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cr;->appId:Ljava/lang/String;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cr;->channelId:Ljava/lang/String;

    iget-object v2, p0, Lcom/tendcloud/tenddata/game/cr;->features:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cq;->a(Lcom/tendcloud/tenddata/game/cq;Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 127
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
