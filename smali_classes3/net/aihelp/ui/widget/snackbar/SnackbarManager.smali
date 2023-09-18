.class Lnet/aihelp/ui/widget/snackbar/SnackbarManager;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;,
        Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;
    }
.end annotation


# static fields
.field private static final LONG_DURATION_MS:I = 0xabe

.field static final MSG_TIMEOUT:I = 0x0

.field private static final SHORT_DURATION_MS:I = 0x5dc

.field private static snackbarManager:Lnet/aihelp/ui/widget/snackbar/SnackbarManager;


# instance fields
.field private currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

.field private final handler:Landroid/os/Handler;

.field private final lock:Ljava/lang/Object;

.field private nextSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    .line 50
    new-instance v0, Landroid/os/Handler;

    .line 52
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$1;

    invoke-direct {v2, p0}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$1;-><init>(Lnet/aihelp/ui/widget/snackbar/SnackbarManager;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method private cancelSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;I)Z
    .locals 2

    .line 204
    iget-object v0, p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

    if-eqz v0, :cond_0

    .line 207
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    invoke-interface {v0, p2}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;->dismiss(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static getInstance()Lnet/aihelp/ui/widget/snackbar/SnackbarManager;
    .locals 1

    .line 36
    sget-object v0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->snackbarManager:Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    invoke-direct {v0}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;-><init>()V

    sput-object v0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->snackbarManager:Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    .line 39
    :cond_0
    sget-object v0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->snackbarManager:Lnet/aihelp/ui/widget/snackbar/SnackbarManager;

    return-object v0
.end method

.method private isCurrentSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z
    .locals 1

    .line 215
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isNextSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->nextSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->isSnackbar(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private scheduleTimeoutLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;)V
    .locals 4

    .line 223
    iget v0, p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xabe

    .line 229
    iget v1, p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    if-lez v1, :cond_1

    .line 230
    iget v0, p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_0

    .line 231
    :cond_1
    iget v1, p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    const/16 v0, 0x5dc

    .line 234
    :cond_2
    :goto_0
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 235
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v2, v0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private showNextSnackbarLocked()V
    .locals 2

    .line 189
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->nextSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz v0, :cond_1

    .line 190
    iput-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->nextSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    .line 193
    iget-object v0, v0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;

    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;->show()V

    goto :goto_0

    .line 198
    :cond_0
    iput-object v1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;I)V
    .locals 2

    .line 106
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 107
    :try_start_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->cancelSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;I)Z

    goto :goto_0

    .line 109
    :cond_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isNextSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->nextSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->cancelSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;I)Z

    .line 112
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method handleTimeout(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;)V
    .locals 2

    .line 239
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 240
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->nextSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    if-ne v1, p1, :cond_1

    :cond_0
    const/4 v1, 0x2

    .line 241
    invoke-direct {p0, p1, v1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->cancelSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;I)Z

    .line 243
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCurrent(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z
    .locals 1

    .line 162
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 164
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isCurrentOrNext(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z
    .locals 2

    .line 168
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isNextSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 170
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onDismissed(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V
    .locals 1

    .line 120
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 123
    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    .line 124
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->nextSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz p1, :cond_0

    .line 125
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    .line 128
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onShown(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 138
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 140
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pauseTimeout(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V
    .locals 2

    .line 144
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 145
    :try_start_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    iget-boolean p1, p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    const/4 v1, 0x1

    iput-boolean v1, p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    .line 147
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public restoreTimeoutIfPaused(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V
    .locals 2

    .line 153
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    iget-boolean p1, p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    if-eqz p1, :cond_0

    .line 155
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->paused:Z

    .line 156
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 158
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public show(ILnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    invoke-direct {p0, p2}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isCurrentSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    iget-object p2, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    iput p1, p2, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    .line 81
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {p0, p1}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->scheduleTimeoutLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;)V

    .line 83
    monitor-exit v0

    return-void

    .line 84
    :cond_0
    invoke-direct {p0, p2}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->isNextSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    iget-object p2, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->nextSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    iput p1, p2, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;->duration:I

    goto :goto_0

    .line 89
    :cond_1
    new-instance v1, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    invoke-direct {v1, p1, p2}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;-><init>(ILnet/aihelp/ui/widget/snackbar/SnackbarManager$Callback;)V

    iput-object v1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->nextSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    .line 92
    :goto_0
    iget-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    if-eqz p1, :cond_2

    const/4 p2, 0x4

    .line 93
    invoke-direct {p0, p1, p2}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->cancelSnackbarLocked(Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 95
    monitor-exit v0

    return-void

    :cond_2
    const/4 p1, 0x0

    .line 98
    iput-object p1, p0, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->currentSnackbar:Lnet/aihelp/ui/widget/snackbar/SnackbarManager$SnackbarRecord;

    .line 100
    invoke-direct {p0}, Lnet/aihelp/ui/widget/snackbar/SnackbarManager;->showNextSnackbarLocked()V

    .line 102
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
