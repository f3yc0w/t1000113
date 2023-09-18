.class public Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;
.super Ljava/lang/Object;
.source "HandlerThreadExecutor.java"

# interfaces
.implements Lnet/aihelp/core/util/concurrent/ApiExecutor;


# instance fields
.field private handler:Landroid/os/Handler;

.field private final syncLock:Ljava/lang/Object;

.field private uiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->syncLock:Ljava/lang/Object;

    .line 13
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 15
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->handler:Landroid/os/Handler;

    .line 16
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;)Landroid/os/Handler;
    .locals 0

    .line 7
    iget-object p0, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->uiHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public awaitForSyncExecution()V
    .locals 1

    .line 61
    new-instance v0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$3;

    invoke-direct {v0, p0}, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$3;-><init>(Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->runSync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runAsync(Ljava/lang/Runnable;)V
    .locals 1

    .line 20
    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public runAsyncDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public runOnUiThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 45
    new-instance v0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$1;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$1;-><init>(Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runOnUiThreadDelayed(Ljava/lang/Runnable;J)V
    .locals 1

    .line 53
    new-instance v0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor$2;-><init>(Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;Ljava/lang/Runnable;J)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->runAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public runSync(Ljava/lang/Runnable;)V
    .locals 2

    .line 29
    new-instance v0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;

    invoke-direct {v0, p1}, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 30
    iget-object p1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->syncLock:Ljava/lang/Object;

    monitor-enter p1

    .line 31
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 32
    invoke-virtual {v0}, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->waitForCompletion()V

    .line 33
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public runSyncDelayed(Ljava/lang/Runnable;J)V
    .locals 2

    .line 37
    new-instance v0, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;

    invoke-direct {v0, p1}, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 38
    iget-object p1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->syncLock:Ljava/lang/Object;

    monitor-enter p1

    .line 39
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/util/concurrent/HandlerThreadExecutor;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    invoke-virtual {v0}, Lnet/aihelp/core/util/concurrent/NotifyingRunnable;->waitForCompletion()V

    .line 41
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
