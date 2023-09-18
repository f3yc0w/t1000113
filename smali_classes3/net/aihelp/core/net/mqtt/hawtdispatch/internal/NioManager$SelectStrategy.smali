.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;
.super Ljava/lang/Object;
.source "NioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SelectStrategy"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;


# direct methods
.method constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public select(J)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 34
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    new-array p2, v0, [Ljava/lang/Object;

    const-string v1, "entered blocking select"

    invoke-virtual {p1, v1, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;)Ljava/nio/channels/Selector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->select()I

    move-result p1

    .line 36
    iget-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exited blocking select"

    invoke-virtual {p2, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 38
    :cond_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    new-array v2, v0, [Ljava/lang/Object;

    const-string v3, "entered blocking select with timeout"

    invoke-virtual {v1, v3, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->access$000(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;)Ljava/nio/channels/Selector;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/nio/channels/Selector;->select(J)I

    move-result p1

    .line 40
    iget-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager$SelectStrategy;->this$0:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "exited blocking select with timeout"

    invoke-virtual {p2, v1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return p1
.end method
