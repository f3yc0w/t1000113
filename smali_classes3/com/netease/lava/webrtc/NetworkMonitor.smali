.class public Lcom/netease/lava/webrtc/NetworkMonitor;
.super Ljava/lang/Object;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/webrtc/NetworkMonitor$InstanceHolder;,
        Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkMonitor"


# instance fields
.field private autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final autoDetectLock:Ljava/lang/Object;

.field private volatile currentConnectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

.field private final nativeNetworkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final networkObservers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;",
            ">;"
        }
    .end annotation
.end field

.field private numObservers:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetectLock:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 64
    iput v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->numObservers:I

    .line 65
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_UNKNOWN:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    iput-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->currentConnectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/lava/webrtc/NetworkMonitor$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/netease/lava/webrtc/NetworkMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/netease/lava/webrtc/NetworkMonitor;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitor;->updateCurrentConnectionType(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    return-void
.end method

.method static synthetic access$200(Lcom/netease/lava/webrtc/NetworkMonitor;Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitor;->notifyObserversOfNetworkConnect(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netease/lava/webrtc/NetworkMonitor;J)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/netease/lava/webrtc/NetworkMonitor;->notifyObserversOfNetworkDisconnect(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/netease/lava/webrtc/NetworkMonitor;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitor;->notifyObserversOfNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static addNetworkObserver(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 284
    invoke-static {}, Lcom/netease/lava/webrtc/NetworkMonitor;->getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->addObserver(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V

    return-void
.end method

.method private static androidSdkInt()I
    .locals 1

    .line 161
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method

.method private static assertIsTrue(Z)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    .line 80
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    const-string v0, "Expected to be true"

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method static createAndSetAutoDetectForTest(Landroid/content/Context;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
    .locals 1

    .line 341
    invoke-static {}, Lcom/netease/lava/webrtc/NetworkMonitor;->getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;

    move-result-object v0

    .line 342
    invoke-direct {v0, p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->createAutoDetect(Landroid/content/Context;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    move-result-object p0

    .line 343
    iput-object p0, v0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    return-object p0
.end method

.method private createAutoDetect(Landroid/content/Context;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
    .locals 2

    .line 175
    new-instance v0, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    new-instance v1, Lcom/netease/lava/webrtc/NetworkMonitor$1;

    invoke-direct {v1, p0}, Lcom/netease/lava/webrtc/NetworkMonitor$1;-><init>(Lcom/netease/lava/webrtc/NetworkMonitor;)V

    invoke-direct {v0, v1, p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;-><init>(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$Observer;Landroid/content/Context;)V

    return-object v0
.end method

.method private getCurrentDefaultNetId()J
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    if-nez v1, :cond_0

    const-wide/16 v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getDefaultNetId()J

    move-result-wide v1

    :goto_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;
    .locals 1

    .line 75
    sget-object v0, Lcom/netease/lava/webrtc/NetworkMonitor$InstanceHolder;->instance:Lcom/netease/lava/webrtc/NetworkMonitor;

    return-object v0
.end method

.method private getNativeNetworkObserversSync()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 273
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public static isOnline()Z
    .locals 2

    .line 312
    invoke-static {}, Lcom/netease/lava/webrtc/NetworkMonitor;->getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/NetworkMonitor;->getCurrentConnectionType()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;->CONNECTION_NONE:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private native nativeNotifyConnectionTypeChanged(J)V
.end method

.method private native nativeNotifyOfActiveNetworkList(J[Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkConnect(JLcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
.end method

.method private native nativeNotifyOfNetworkDisconnect(JJ)V
.end method

.method private networkBindingSupported()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->supportNetworkCallback()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 156
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyObserversOfConnectionTypeChange(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;Z)V
    .locals 3

    .line 209
    invoke-direct {p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    move-result-object v0

    .line 212
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 213
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNotifyConnectionTypeChanged(J)V

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 219
    iget-object p2, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    monitor-enter p2

    .line 220
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 221
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;

    .line 224
    invoke-interface {v0, p1}, Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;->onConnectionTypeChanged(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 221
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    return-void
.end method

.method private notifyObserversOfNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 233
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;

    .line 236
    invoke-interface {v1, p1}, Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;->onNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 234
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private notifyObserversOfNetworkConnect(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V
    .locals 3

    .line 243
    invoke-direct {p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    move-result-object v0

    .line 244
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 245
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1}, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNotifyOfNetworkConnect(JLcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyObserversOfNetworkDisconnect(J)V
    .locals 3

    .line 250
    invoke-direct {p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->getNativeNetworkObserversSync()Ljava/util/List;

    move-result-object v0

    .line 251
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 252
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, p1, p2}, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNotifyOfNetworkDisconnect(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static removeNetworkObserver(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    invoke-static {}, Lcom/netease/lava/webrtc/NetworkMonitor;->getInstance()Lcom/netease/lava/webrtc/NetworkMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->removeObserver(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V

    return-void
.end method

.method private startMonitoring(Landroid/content/Context;J)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 117
    :goto_0
    invoke-virtual {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;)V

    .line 121
    iget-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter p1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    invoke-direct {p0, p2, p3}, Lcom/netease/lava/webrtc/NetworkMonitor;->updateObserverActiveNetworkList(J)V

    .line 129
    iget-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->currentConnectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/netease/lava/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;Z)V

    return-void

    :catchall_0
    move-exception p2

    .line 123
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method private stopMonitoring(J)V
    .locals 3

    const-string v0, "NetworkMonitor"

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stop monitoring with native observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/NetworkMonitor;->stopMonitoring()V

    .line 146
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNetworkObservers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private updateCurrentConnectionType(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;)V
    .locals 1

    .line 202
    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->currentConnectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    const/4 v0, 0x0

    .line 203
    invoke-direct {p0, p1, v0}, Lcom/netease/lava/webrtc/NetworkMonitor;->notifyObserversOfConnectionTypeChange(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;Z)V

    return-void
.end method

.method private updateObserverActiveNetworkList(J)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getActiveNetworkList()Ljava/util/List;

    move-result-object v1

    .line 260
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 261
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 266
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 267
    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;

    .line 268
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/lava/webrtc/NetworkMonitor;->nativeNotifyOfActiveNetworkList(J[Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkInformation;)V

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 260
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public addObserver(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getCurrentConnectionType()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->currentConnectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    return-object v0
.end method

.method getNetworkMonitorAutoDetect()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 327
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getNumObservers()I
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 335
    :try_start_0
    iget v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->numObservers:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 336
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeObserver(Lcom/netease/lava/webrtc/NetworkMonitor$NetworkObserver;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->networkObservers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 306
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public startMonitoring()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 106
    invoke-static {}, Lcom/netease/lava/webrtc/ContextUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netease/lava/webrtc/NetworkMonitor;->startMonitoring(Landroid/content/Context;)V

    return-void
.end method

.method public startMonitoring(Landroid/content/Context;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->numObservers:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->numObservers:I

    .line 94
    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    if-nez v1, :cond_0

    .line 95
    invoke-direct {p0, p1}, Lcom/netease/lava/webrtc/NetworkMonitor;->createAutoDetect(Landroid/content/Context;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    .line 98
    :cond_0
    iget-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    .line 99
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getCurrentNetworkState()Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->getConnectionType(Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$NetworkState;)Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->currentConnectionType:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect$ConnectionType;

    .line 100
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public stopMonitoring()V
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->numObservers:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->numObservers:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;->destroy()V

    const/4 v1, 0x0

    .line 137
    iput-object v1, p0, Lcom/netease/lava/webrtc/NetworkMonitor;->autoDetect:Lcom/netease/lava/webrtc/NetworkMonitorAutoDetect;

    .line 139
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
