.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;
.super Ljava/lang/Object;
.source "AggregatingExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field final source:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "Ljava/lang/Runnable;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    .line 23
    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->linkedList()Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    move-result-object v0

    invoke-static {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;->source:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    .line 24
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor$1;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;)V

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 36
    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2

    .line 49
    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->getCurrentQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v1, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;->source:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->merge(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public resume()V
    .locals 1

    .line 45
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;->source:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    return-void
.end method

.method public suspend()V
    .locals 1

    .line 41
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/AggregatingExecutor;->source:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->suspend()V

    return-void
.end method
