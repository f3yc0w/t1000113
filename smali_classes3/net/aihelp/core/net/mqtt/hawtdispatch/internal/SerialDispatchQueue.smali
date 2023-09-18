.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;
.source "SerialDispatchQueue.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;


# instance fields
.field private final executing:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final externalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile label:Ljava/lang/String;

.field private final localQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;",
            ">;"
        }
    .end annotation
.end field

.field private metricsCollector:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;

.field private profile:Z

.field private final sourceQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;",
            ">;"
        }
    .end annotation
.end field

.field protected final triggered:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/AbstractDispatchObject;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->externalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 23
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->localQueue:Ljava/util/LinkedList;

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->sourceQueue:Ljava/util/LinkedList;

    .line 25
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->executing:Ljava/lang/ThreadLocal;

    .line 26
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->metricsCollector:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->profile:Z

    .line 30
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->label:Ljava/lang/String;

    return-void
.end method

.method private checkCollector()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->profile()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->profile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->metricsCollector:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;

    if-eq v0, v1, :cond_2

    .line 191
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->metricsCollector:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;

    .line 192
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->untrack(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;)V

    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->metricsCollector:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;

    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;->INSTANCE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/InactiveMetricsCollector;

    if-ne v0, v1, :cond_2

    .line 186
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ActiveMetricsCollector;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->metricsCollector:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;

    .line 187
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->track(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private drains()I
    .locals 1

    .line 202
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v0

    iget v0, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->drains:I

    return v0
.end method

.method private enqueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->executing:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->localQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->externalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggerExecution()V

    :goto_0
    return-void
.end method


# virtual methods
.method public assertExecuting()V
    .locals 0

    return-void
.end method

.method public createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 149
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;

    move-result-object p1

    .line 150
    invoke-interface {p1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    return-object p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->metricsCollector:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;->track(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->enqueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public executeAfter(JLjava/util/concurrent/TimeUnit;Ljava/lang/Runnable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 44
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;

    invoke-direct {v0, p4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/TaskWrapper;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 7

    .line 145
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v0

    iget-object v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->timerThread:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;

    move-object v2, p4

    move-object v3, p0

    move-wide v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->addRelative(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;
    .locals 1

    .line 155
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;->getDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getQueueType()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;
    .locals 1

    .line 141
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;->SERIAL_QUEUE:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue$QueueType;

    return-object v0
.end method

.method public getSourceQueue()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->sourceQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method public isExecuting()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->executing:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isGlobalDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isSerialDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;
    .locals 0

    return-object p0
.end method

.method public isThreadDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public metrics()Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;
    .locals 1

    .line 198
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->metricsCollector:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/MetricsCollector;->metrics()Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;

    move-result-object v0

    return-object v0
.end method

.method protected onResume()V
    .locals 0

    .line 137
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggerExecution()V

    return-void
.end method

.method protected onStartup()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggerExecution()V

    return-void
.end method

.method public profile(Z)V
    .locals 0

    .line 175
    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->profile:Z

    .line 176
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->checkCollector()V

    return-void
.end method

.method public profile()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->profile:Z

    return v0
.end method

.method public run()V
    .locals 6

    .line 63
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->checkCollector()V

    .line 65
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->CURRENT_QUEUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    .line 66
    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->CURRENT_QUEUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 67
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->executing:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    :try_start_0
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->externalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v3, :cond_0

    .line 71
    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->localQueue:Ljava/util/LinkedList;

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->isSuspended()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_4

    .line 93
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->sourceQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 94
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_2

    .line 96
    :cond_1
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->sourceQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 98
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->executing:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 99
    sget-object v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->CURRENT_QUEUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->externalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->localQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    .line 102
    :goto_3
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 103
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggerExecution()V

    :cond_3
    return-void

    .line 77
    :cond_4
    :try_start_1
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->localQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_8

    .line 93
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->sourceQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 94
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_4

    .line 96
    :cond_5
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->sourceQueue:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 98
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->executing:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 99
    sget-object v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->CURRENT_QUEUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->externalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->localQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    .line 102
    :goto_5
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    .line 103
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggerExecution()V

    :cond_7
    return-void

    .line 82
    :cond_8
    :try_start_2
    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    .line 84
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 85
    invoke-virtual {v4}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_1

    :catchall_1
    move-exception v3

    .line 93
    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->sourceQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    .line 94
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_6

    .line 96
    :cond_9
    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->sourceQueue:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 98
    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->executing:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->remove()V

    .line 99
    sget-object v4, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->CURRENT_QUEUE:Ljava/lang/ThreadLocal;

    invoke-virtual {v4, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 100
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 101
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->externalQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->localQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    const/4 v1, 0x0

    .line 102
    :goto_7
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->isSuspended()Z

    move-result v0

    if-nez v0, :cond_b

    if-nez v1, :cond_b

    .line 103
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggerExecution()V

    .line 105
    :cond_b
    throw v3
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->label:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 207
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->label:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "serial queue"

    return-object v0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "serial queue { label: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected triggerExecution()V
    .locals 3

    .line 109
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->triggered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/SerialDispatchQueue;->getTargetQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;

    move-result-object v0

    invoke-interface {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    :cond_0
    return-void
.end method
