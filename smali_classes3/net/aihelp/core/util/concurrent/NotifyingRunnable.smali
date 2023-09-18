.class public Lnet/aihelp/core/util/concurrent/NotifyingRunnable;
.super Ljava/lang/Object;
.source "NotifyingRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifyingRunnable"


# instance fields
.field private isFinished:Z

.field private final runnable:Ljava/lang/Runnable;

.field private final syncLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    .line 12
    iput-object p1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 29
    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 31
    :try_start_0
    iget-object v2, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :try_start_1
    iput-boolean v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->isFinished:Z

    .line 34
    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 36
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v2

    .line 33
    iput-boolean v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->isFinished:Z

    .line 34
    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 35
    throw v2

    :catchall_1
    move-exception v1

    .line 36
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method

.method public waitForCompletion()V
    .locals 2

    .line 16
    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-boolean v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->isFinished:Z

    if-nez v1, :cond_0

    .line 19
    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->syncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 22
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 25
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
