.class Lcom/tendcloud/tenddata/game/bl;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/bk;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bk;Landroid/os/Looper;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bl;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 38
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bl;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bk;->a(Lcom/tendcloud/tenddata/game/bk;)Landroid/hardware/SensorManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/bl;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bk;->a(Lcom/tendcloud/tenddata/game/bk;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bl;->this$0:Lcom/tendcloud/tenddata/game/bk;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bk;->b(Lcom/tendcloud/tenddata/game/bk;)Landroid/hardware/SensorEventListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_1
    :goto_0
    return-void
.end method
