.class Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.source "RunnableSupport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport;->runAfter(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;I)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field final synthetic val$task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;->val$counter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;->val$queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iput-object p3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;->val$task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;->val$counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-gtz v0, :cond_0

    .line 110
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;->val$queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;->val$task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/RunnableSupport$5;->val$task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
