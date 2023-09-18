.class public Lnet/aihelp/core/net/mqtt/client/MQTT;
.super Ljava/lang/Object;
.source "MQTT.java"


# static fields
.field private static final DEFAULT_HOST:Ljava/net/URI;

.field private static final KEEP_ALIVE:J

.field private static final STACK_SIZE:J

.field private static blockingThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;


# instance fields
.field protected blockingExecutor:Ljava/util/concurrent/Executor;

.field protected connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

.field protected connectAttemptsMax:J

.field protected dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field protected host:Ljava/net/URI;

.field protected localAddress:Ljava/net/URI;

.field protected maxReadRate:I

.field protected maxWriteRate:I

.field protected receiveBufferSize:I

.field protected reconnectAttemptsMax:J

.field protected reconnectBackOffMultiplier:D

.field protected reconnectDelay:J

.field protected reconnectDelayMax:J

.field protected sendBufferSize:I

.field protected sslContext:Ljavax/net/ssl/SSLContext;

.field protected tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

.field protected trafficClass:I

.field protected useLocalHost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3e8

    .line 30
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mqtt.thread.keep_alive"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->KEEP_ALIVE:J

    const/high16 v0, 0x80000

    .line 31
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mqtt.thread.stack_size"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->STACK_SIZE:J

    .line 63
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/MQTT;->createDefaultHost()Ljava/net/URI;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->DEFAULT_HOST:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->DEFAULT_HOST:Ljava/net/URI;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->host:Ljava/net/URI;

    const/16 v0, 0x8

    .line 79
    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->trafficClass:I

    const/high16 v0, 0x10000

    .line 80
    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->receiveBufferSize:I

    .line 81
    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->sendBufferSize:I

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->useLocalHost:Z

    .line 83
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    const-wide/16 v0, 0xa

    .line 85
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelay:J

    const-wide/16 v0, 0x7530

    .line 86
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelayMax:J

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 87
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectBackOffMultiplier:D

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    .line 89
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connectAttemptsMax:J

    .line 90
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/Tracer;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/Tracer;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/client/MQTT;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->DEFAULT_HOST:Ljava/net/URI;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->host:Ljava/net/URI;

    const/16 v0, 0x8

    .line 79
    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->trafficClass:I

    const/high16 v0, 0x10000

    .line 80
    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->receiveBufferSize:I

    .line 81
    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->sendBufferSize:I

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->useLocalHost:Z

    .line 83
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    const-wide/16 v0, 0xa

    .line 85
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelay:J

    const-wide/16 v0, 0x7530

    .line 86
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelayMax:J

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 87
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectBackOffMultiplier:D

    const-wide/16 v0, -0x1

    .line 88
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    .line 89
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connectAttemptsMax:J

    .line 90
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/Tracer;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/Tracer;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    .line 95
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->host:Ljava/net/URI;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->host:Ljava/net/URI;

    .line 96
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->localAddress:Ljava/net/URI;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->localAddress:Ljava/net/URI;

    .line 97
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->sslContext:Ljavax/net/ssl/SSLContext;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 98
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    .line 99
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingExecutor:Ljava/util/concurrent/Executor;

    .line 100
    iget v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxReadRate:I

    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxReadRate:I

    .line 101
    iget v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxWriteRate:I

    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxWriteRate:I

    .line 102
    iget v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->trafficClass:I

    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->trafficClass:I

    .line 103
    iget v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->receiveBufferSize:I

    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->receiveBufferSize:I

    .line 104
    iget v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->sendBufferSize:I

    iput v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->sendBufferSize:I

    .line 105
    iget-boolean v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->useLocalHost:Z

    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->useLocalHost:Z

    .line 106
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    iget-object v1, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;-><init>(Lnet/aihelp/core/net/mqtt/codec/CONNECT;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    .line 107
    iget-wide v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelay:J

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelay:J

    .line 108
    iget-wide v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelayMax:J

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelayMax:J

    .line 109
    iget-wide v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectBackOffMultiplier:D

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectBackOffMultiplier:D

    .line 110
    iget-wide v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    .line 111
    iget-wide v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->connectAttemptsMax:J

    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connectAttemptsMax:J

    .line 112
    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 28
    sget-wide v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->STACK_SIZE:J

    return-wide v0
.end method

.method private static createDefaultHost()Ljava/net/URI;
    .locals 2

    .line 66
    :try_start_0
    new-instance v0, Ljava/net/URI;

    const-string v1, "tcp://127.0.0.1:1883"

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static declared-synchronized getBlockingThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 10

    const-class v0, Lnet/aihelp/core/net/mqtt/client/MQTT;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lnet/aihelp/core/net/mqtt/client/MQTT$2;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    sget-wide v5, Lnet/aihelp/core/net/mqtt/client/MQTT;->KEEP_ALIVE:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v8}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v9, Lnet/aihelp/core/net/mqtt/client/MQTT$1;

    invoke-direct {v9}, Lnet/aihelp/core/net/mqtt/client/MQTT$1;-><init>()V

    move-object v2, v1

    invoke-direct/range {v2 .. v9}, Lnet/aihelp/core/net/mqtt/client/MQTT$2;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 57
    :cond_0
    sget-object v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setBlockingThreadPool(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1

    const-class v0, Lnet/aihelp/core/net/mqtt/client/MQTT;

    monitor-enter v0

    .line 60
    :try_start_0
    sput-object p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingThreadPool:Ljava/util/concurrent/ThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public blockingConnection()Lnet/aihelp/core/net/mqtt/client/BlockingConnection;
    .locals 2

    .line 125
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->futureConnection()Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/client/BlockingConnection;-><init>(Lnet/aihelp/core/net/mqtt/client/FutureConnection;)V

    return-object v0
.end method

.method public callbackConnection()Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
    .locals 2

    .line 116
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->isCleanSession()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->getClientId()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->getClientId()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v0

    iget v0, v0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;->length:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The client id MUST be configured when clean session is set to false"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_1
    :goto_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v1, Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/client/MQTT;-><init>(Lnet/aihelp/core/net/mqtt/client/MQTT;)V

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;-><init>(Lnet/aihelp/core/net/mqtt/client/MQTT;)V

    return-object v0
.end method

.method public futureConnection()Lnet/aihelp/core/net/mqtt/client/FutureConnection;
    .locals 2

    .line 122
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/FutureConnection;

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->callbackConnection()Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/aihelp/core/net/mqtt/client/FutureConnection;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V

    return-object v0
.end method

.method public getBlockingExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 235
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getClientId()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getConnectAttemptsMax()J
    .locals 2

    .line 331
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connectAttemptsMax:J

    return-wide v0
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 243
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object v0
.end method

.method public getHost()Ljava/net/URI;
    .locals 1

    .line 286
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->host:Ljava/net/URI;

    return-object v0
.end method

.method public getKeepAlive()S
    .locals 1

    .line 133
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive()S

    move-result v0

    return v0
.end method

.method public getLocalAddress()Ljava/net/URI;
    .locals 1

    .line 251
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->localAddress:Ljava/net/URI;

    return-object v0
.end method

.method public getMaxReadRate()I
    .locals 1

    .line 262
    iget v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxReadRate:I

    return v0
.end method

.method public getMaxWriteRate()I
    .locals 1

    .line 270
    iget v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxWriteRate:I

    return v0
.end method

.method public getPassword()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    .line 137
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .line 278
    iget v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->receiveBufferSize:I

    return v0
.end method

.method public getReconnectAttemptsMax()J
    .locals 2

    .line 339
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    return-wide v0
.end method

.method public getReconnectBackOffMultiplier()D
    .locals 2

    .line 347
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectBackOffMultiplier:D

    return-wide v0
.end method

.method public getReconnectDelay()J
    .locals 2

    .line 355
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelay:J

    return-wide v0
.end method

.method public getReconnectDelayMax()J
    .locals 2

    .line 363
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelayMax:J

    return-wide v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .line 299
    iget v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->sendBufferSize:I

    return v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1

    .line 307
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->sslContext:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public getTracer()Lnet/aihelp/core/net/mqtt/client/Tracer;
    .locals 1

    .line 371
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    return-object v0
.end method

.method public getTrafficClass()I
    .locals 1

    .line 315
    iget v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->trafficClass:I

    return v0
.end method

.method public getType()B
    .locals 1

    .line 141
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->messageType()B

    move-result v0

    return v0
.end method

.method public getUserName()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    .line 145
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 216
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    const-string v0, "3.1.1"

    return-object v0

    :cond_1
    const-string v0, "3.1"

    return-object v0
.end method

.method public getWillMessage()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    .line 149
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v0

    return-object v0
.end method

.method public getWillQos()Lnet/aihelp/core/net/mqtt/client/QoS;
    .locals 1

    .line 153
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willQos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v0

    return-object v0
.end method

.method public getWillTopic()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 1

    .line 157
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v0

    return-object v0
.end method

.method public isCleanSession()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession()Z

    move-result v0

    return v0
.end method

.method public isUseLocalHost()Z
    .locals 1

    .line 323
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->useLocalHost:Z

    return v0
.end method

.method public isWillRetain()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willRetain()Z

    move-result v0

    return v0
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 239
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setCleanSession(Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->cleanSession(Z)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 173
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setClientId(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V

    return-void
.end method

.method public setClientId(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->clientId(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method

.method public setConnectAttemptsMax(J)V
    .locals 0

    .line 335
    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connectAttemptsMax:J

    return-void
.end method

.method public setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-void
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setHost(Ljava/net/URI;)V

    return-void
.end method

.method public setHost(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/net/URI;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tcp://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setHost(Ljava/net/URI;)V

    return-void
.end method

.method public setHost(Ljava/net/URI;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->host:Ljava/net/URI;

    return-void
.end method

.method public setKeepAlive(S)V
    .locals 1

    .line 180
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->keepAlive(S)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method

.method public setLocalAddress(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setLocalAddress(Ljava/net/URI;)V

    return-void
.end method

.method public setLocalAddress(Ljava/net/URI;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->localAddress:Ljava/net/URI;

    return-void
.end method

.method public setMaxReadRate(I)V
    .locals 0

    .line 266
    iput p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxReadRate:I

    return-void
.end method

.method public setMaxWriteRate(I)V
    .locals 0

    .line 274
    iput p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxWriteRate:I

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 184
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setPassword(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V

    return-void
.end method

.method public setPassword(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->password(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0

    .line 282
    iput p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->receiveBufferSize:I

    return-void
.end method

.method public setReconnectAttemptsMax(J)V
    .locals 0

    .line 343
    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    return-void
.end method

.method public setReconnectBackOffMultiplier(D)V
    .locals 0

    .line 351
    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectBackOffMultiplier:D

    return-void
.end method

.method public setReconnectDelay(J)V
    .locals 0

    .line 359
    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelay:J

    return-void
.end method

.method public setReconnectDelayMax(J)V
    .locals 0

    .line 367
    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelayMax:J

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0

    .line 303
    iput p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->sendBufferSize:I

    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->sslContext:Ljavax/net/ssl/SSLContext;

    return-void
.end method

.method public setTracer(Lnet/aihelp/core/net/mqtt/client/Tracer;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 0

    .line 319
    iput p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->trafficClass:I

    return-void
.end method

.method public setUseLocalHost(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->useLocalHost:Z

    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0

    .line 191
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setUserName(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V

    return-void
.end method

.method public setUserName(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V
    .locals 1

    .line 194
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->userName(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "3.1"

    .line 209
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version(I)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    goto :goto_0

    :cond_0
    const-string v0, "3.1.1"

    .line 211
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->version(I)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    :cond_1
    :goto_0
    return-void
.end method

.method public setWillMessage(Ljava/lang/String;)V
    .locals 1

    .line 198
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method

.method public setWillMessage(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willMessage(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method

.method public setWillQos(Lnet/aihelp/core/net/mqtt/client/QoS;)V
    .locals 1

    .line 205
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willQos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method

.method public setWillRetain(Z)V
    .locals 1

    .line 224
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willRetain(Z)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method

.method public setWillTopic(Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setWillTopic(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V

    return-void
.end method

.method public setWillTopic(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V
    .locals 1

    .line 231
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/MQTT;->connect:Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/CONNECT;->willTopic(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/CONNECT;

    return-void
.end method
