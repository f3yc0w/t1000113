.class public Lcom/netease/lava/webrtc/ForegroundMonitor;
.super Ljava/lang/Object;
.source "ForegroundMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ForegroundMonitor"

.field private static final sDelay:I = 0x3e8

.field private static sInstance:Lcom/netease/lava/webrtc/ForegroundMonitor;


# instance fields
.field private mAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field private mHander:Landroid/os/Handler;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mIsForeground:Z

.field private final mLock:Ljava/lang/Object;

.field private mObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mObserversForeach:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mLock:Ljava/lang/Object;

    .line 70
    new-instance v1, Lcom/netease/lava/webrtc/-$$Lambda$ForegroundMonitor$Ti9ys5g2mChcCaXLtNd28vDCaiI;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/-$$Lambda$ForegroundMonitor$Ti9ys5g2mChcCaXLtNd28vDCaiI;-><init>(Lcom/netease/lava/webrtc/ForegroundMonitor;)V

    iput-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mRunnable:Ljava/lang/Runnable;

    .line 48
    monitor-enter v0

    .line 49
    :try_start_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObservers:Ljava/util/List;

    .line 50
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObserversForeach:Ljava/util/List;

    .line 51
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    return-void

    :catchall_0
    move-exception v1

    .line 51
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/netease/lava/webrtc/ForegroundMonitor;
    .locals 1

    .line 40
    sget-object v0, Lcom/netease/lava/webrtc/ForegroundMonitor;->sInstance:Lcom/netease/lava/webrtc/ForegroundMonitor;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/netease/lava/webrtc/ForegroundMonitor;

    invoke-direct {v0}, Lcom/netease/lava/webrtc/ForegroundMonitor;-><init>()V

    sput-object v0, Lcom/netease/lava/webrtc/ForegroundMonitor;->sInstance:Lcom/netease/lava/webrtc/ForegroundMonitor;

    .line 44
    :cond_0
    sget-object v0, Lcom/netease/lava/webrtc/ForegroundMonitor;->sInstance:Lcom/netease/lava/webrtc/ForegroundMonitor;

    return-object v0
.end method

.method private process()V
    .locals 4

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 103
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mAppProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 106
    :goto_1
    iget-boolean v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mIsForeground:Z

    if-eq v0, v1, :cond_3

    .line 107
    iput-boolean v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mIsForeground:Z

    .line 109
    iget-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_1
    iget-object v2, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObserversForeach:Ljava/util/List;

    iget-object v3, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    iget-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObserversForeach:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;

    .line 114
    invoke-interface {v2, v0}, Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;->onForegroundChanged(Z)V

    goto :goto_2

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObserversForeach:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 111
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    :cond_3
    :goto_3
    return-void
.end method

.method private start(J)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mHander:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mHander:Landroid/os/Handler;

    iget-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private stop()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mHander:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mHander:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public addObserver(Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 127
    iget-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic lambda$new$0$ForegroundMonitor()V
    .locals 3

    .line 71
    invoke-direct {p0}, Lcom/netease/lava/webrtc/ForegroundMonitor;->process()V

    .line 72
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide/16 v1, 0x3e8

    .line 73
    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/netease/lava/webrtc/ForegroundMonitor;->start(J)V

    .line 74
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeObserver(Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 138
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startMonitor(Landroid/os/Handler;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 57
    :try_start_0
    iput-boolean v1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mIsForeground:Z

    .line 58
    iput-object p1, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mHander:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    .line 59
    invoke-direct {p0, v1, v2}, Lcom/netease/lava/webrtc/ForegroundMonitor;->start(J)V

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopMonitor()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/netease/lava/webrtc/ForegroundMonitor;->stop()V

    .line 66
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v0, p0, Lcom/netease/lava/webrtc/ForegroundMonitor;->mObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :catchall_0
    move-exception v1

    .line 66
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
