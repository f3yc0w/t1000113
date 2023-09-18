.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;
.super Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;
.source "SimpleThread.java"


# static fields
.field public static final DEBUG:Z = false


# instance fields
.field private final nioManager:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

.field private pool:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;

.field private threadQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->group:Ljava/lang/ThreadGroup;

    iget-object v1, p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->name:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->pool:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;

    .line 24
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->nioManager:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    .line 25
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->globalQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;

    invoke-direct {v0, p1, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/GlobalDispatchQueue;Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/WorkerThread;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->threadQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    return-void
.end method


# virtual methods
.method protected varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected varargs debug(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;
    .locals 1

    .line 30
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->threadQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    return-object v0
.end method

.method public getNioManager()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;
    .locals 1

    .line 39
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->nioManager:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    return-object v0
.end method

.method public run()V
    .locals 4

    const-string v0, "run end"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "run start"

    .line 44
    invoke-virtual {p0, v3, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    :try_start_0
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->pool:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->tasks:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    :goto_0
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->pool:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;

    iget-boolean v3, v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->shutdown:Z

    if-nez v3, :cond_2

    .line 49
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->threadQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;->poll()Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    move-result-object v3

    if-nez v3, :cond_0

    .line 51
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-nez v3, :cond_0

    .line 53
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->threadQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;

    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/ThreadDispatchQueue;->getSourceQueue()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    :cond_0
    if-nez v3, :cond_1

    .line 58
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->pool:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;

    invoke-virtual {v3, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimplePool;->park(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;)V

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v3}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    new-array v1, v1, [Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    throw v2
.end method

.method public unpark()V
    .locals 1

    .line 34
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/pool/SimpleThread;->nioManager:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/NioManager;->wakeupIfSelecting()Z

    return-void
.end method
