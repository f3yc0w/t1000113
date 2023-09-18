.class public final Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;
.super Ljava/lang/Thread;
.source "TimerThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;,
        Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;
    }
.end annotation


# instance fields
.field private final mutex:Ljava/lang/Object;

.field private requests:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->mutex:Ljava/lang/Object;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->requests:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " timer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->setName(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 41
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->setDaemon(Z)V

    return-void
.end method

.method private add(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->requests:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->mutex:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notify()V

    .line 76
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final addAbsolute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 45
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$1;)V

    .line 46
    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->ABSOLUTE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->type:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    .line 47
    iput-wide p3, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->time:J

    .line 48
    iput-object p5, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->unit:Ljava/util/concurrent/TimeUnit;

    .line 49
    iput-object p1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    .line 50
    iput-object p2, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->target:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    .line 51
    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;)V

    return-void
.end method

.method public final addRelative(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 55
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$1;)V

    .line 56
    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->RELATIVE:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->type:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    .line 57
    iput-wide p3, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->time:J

    .line 58
    iput-object p5, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->unit:Ljava/util/concurrent/TimeUnit;

    .line 59
    iput-object p1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    .line 60
    iput-object p2, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->target:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    .line 61
    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;)V

    return-void
.end method

.method public run()V
    .locals 12

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$1;

    invoke-direct {v1, p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$1;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;Ljava/util/HashMap;)V

    .line 96
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    :goto_0
    :try_start_0
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->mutex:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->requests:Ljava/util/ArrayList;

    .line 104
    iput-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->requests:Ljava/util/ArrayList;

    .line 106
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 108
    :try_start_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_6

    .line 109
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;

    .line 110
    sget-object v6, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$3;->$SwitchMap$net$aihelp$core$net$mqtt$hawtdispatch$internal$TimerThread$Type:[I

    iget-object v7, v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->type:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    invoke-virtual {v7}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->ordinal()I

    move-result v7

    aget v6, v6, v7

    if-eq v6, v3, :cond_4

    const/4 v7, 0x2

    if-eq v6, v7, :cond_3

    const/4 v7, 0x3

    if-eq v6, v7, :cond_0

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/TimerHeap;->clear()Ljava/util/List;

    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;

    .line 121
    iget-object v2, v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->target:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_2

    .line 123
    :cond_1
    iget-object v0, v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v0, :cond_2

    .line 124
    iget-object v0, v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_2
    return-void

    .line 115
    :cond_3
    iget-wide v6, v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->time:J

    iget-object v8, v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v7, v8}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/TimerHeap;->addAbsolute(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    .line 112
    :cond_4
    iget-wide v6, v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->time:J

    iget-object v8, v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->unit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6, v7, v8}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/TimerHeap;->addRelative(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)V

    goto :goto_1

    .line 129
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 132
    :cond_6
    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/TimerHeap;->executeReadyTimers()V

    .line 134
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 135
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 136
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    .line 137
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedList;

    .line 138
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-le v7, v3, :cond_7

    .line 140
    new-instance v7, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$2;

    invoke-direct {v7, p0, v5}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$2;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;Ljava/util/LinkedList;)V

    invoke-interface {v6, v7}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_3

    .line 148
    :cond_7
    invoke-virtual {v5}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v6, v5}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_3

    .line 151
    :cond_8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 155
    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 156
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/util/TimerHeap;->timeToNext(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_a

    goto :goto_6

    :cond_a
    if-lez v9, :cond_b

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-gez v9, :cond_b

    .line 164
    :goto_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    sub-long/2addr v7, v2

    cmp-long v9, v7, v5

    if-gez v9, :cond_e

    goto :goto_4

    :cond_b
    const-wide/32 v2, 0xf4240

    .line 169
    div-long v7, v5, v2

    .line 170
    rem-long v2, v5, v2

    long-to-int v3, v2

    .line 171
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->mutex:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :try_start_3
    iget-object v9, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->requests:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    const-wide/16 v9, -0x1

    cmp-long v11, v5, v9

    if-nez v11, :cond_c

    .line 174
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->mutex:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    goto :goto_5

    .line 176
    :cond_c
    iget-object v5, p0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->mutex:Ljava/lang/Object;

    invoke-virtual {v5, v7, v8, v3}, Ljava/lang/Object;->wait(JI)V

    .line 179
    :cond_d
    :goto_5
    monitor-exit v2

    :cond_e
    :goto_6
    move-object v2, v4

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v0

    .line 106
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    return-void
.end method

.method public final shutdown(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 2

    .line 65
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;-><init>(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$1;)V

    .line 66
    sget-object v1, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;->SHUTDOWN:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    iput-object v1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->type:Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$Type;

    .line 67
    iput-object p2, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->target:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    .line 68
    iput-object p1, v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;->task:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    .line 69
    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread;->add(Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/TimerThread$TimerRequest;)V

    return-void
.end method
