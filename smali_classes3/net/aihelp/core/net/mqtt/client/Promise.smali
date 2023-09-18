.class public Lnet/aihelp/core/net/mqtt/client/Promise;
.super Ljava/lang/Object;
.source "Promise.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/client/Callback;
.implements Lnet/aihelp/core/net/mqtt/client/Future;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/aihelp/core/net/mqtt/client/Callback<",
        "TT;>;",
        "Lnet/aihelp/core/net/mqtt/client/Future<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private error:Ljava/lang/Throwable;

.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private next:Lnet/aihelp/core/net/mqtt/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_3

    .line 77
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_2

    .line 79
    instance-of v1, v0, Ljava/lang/Exception;

    if-nez v1, :cond_1

    .line 81
    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_0

    .line 82
    check-cast v0, Ljava/lang/Error;

    throw v0

    .line 85
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :cond_1
    check-cast v0, Ljava/lang/Exception;

    throw v0

    .line 78
    :cond_2
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 88
    :cond_3
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->value:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public await()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 71
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/Promise;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public await(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/Promise;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 65
    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
.end method

.method public onFailure(Ljava/lang/Throwable;)V
    .locals 1

    .line 22
    monitor-enter p0

    .line 23
    :try_start_0
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->error:Ljava/lang/Throwable;

    .line 24
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 25
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    .line 26
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->value:Ljava/lang/Object;

    .line 36
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 37
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    .line 38
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 38
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public then(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    monitor-enter p0

    .line 47
    :try_start_0
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->next:Lnet/aihelp/core/net/mqtt/client/Callback;

    .line 48
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 53
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->error:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/Promise;->value:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 51
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
