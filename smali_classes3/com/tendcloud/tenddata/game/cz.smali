.class Lcom/tendcloud/tenddata/game/cz;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic this$0:Lcom/tendcloud/tenddata/game/cy;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/cy;Landroid/os/Looper;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 89
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->a(Lcom/tendcloud/tenddata/game/cy;)V

    .line 102
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->c(Lcom/tendcloud/tenddata/game/cy;)V

    .line 104
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    const-wide/32 v1, 0x927c0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tendcloud/tenddata/game/cy;->a(IJ)V

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->a(Lcom/tendcloud/tenddata/game/cy;)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->b(Lcom/tendcloud/tenddata/game/cy;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object p1, p0, Lcom/tendcloud/tenddata/game/cz;->this$0:Lcom/tendcloud/tenddata/game/cy;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/cy;->c(Lcom/tendcloud/tenddata/game/cy;)V

    :goto_0
    return-void
.end method
