.class public Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;
.super Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;
.source "UdpTransport.java"

# interfaces
.implements Lnet/aihelp/core/net/mqtt/tansport/Transport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$OneWay;,
        Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELED;,
        Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CANCELING;,
        Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;,
        Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;,
        Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$DISCONNECTED;,
        Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;
    }
.end annotation


# static fields
.field public static final ANY_ADDRESS:Ljava/net/SocketAddress;

.field public static final IPTOS_LOWCOST:I = 0x2

.field public static final IPTOS_LOWDELAY:I = 0x10

.field public static final IPTOS_RELIABILITY:I = 0x4

.field public static final IPTOS_THROUGHPUT:I = 0x8


# instance fields
.field private final CANCEL_HANDLER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field blockingExecutor:Ljava/util/concurrent/Executor;

.field protected channel:Ljava/nio/channels/DatagramChannel;

.field protected codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

.field protected dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field protected drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

.field localAddress:Ljava/net/SocketAddress;

.field protected localLocation:Ljava/net/URI;

.field onDispose:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

.field private readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

.field receiveBufferSize:I

.field rejectingOffers:Z

.field remoteAddress:Ljava/net/SocketAddress;

.field protected remoteLocation:Ljava/net/URI;

.field sendBufferSize:I

.field protected socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

.field trafficClass:I

.field protected useLocalHost:Z

.field writeResumedForCodecFlush:Z

.field private writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

.field protected yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$1;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->ANY_ADDRESS:Ljava/net/SocketAddress;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase;-><init>()V

    .line 170
    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$DISCONNECTED;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$DISCONNECTED;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    const/4 v0, 0x1

    .line 178
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->useLocalHost:Z

    const/high16 v0, 0x10000

    .line 180
    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->receiveBufferSize:I

    .line 181
    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->sendBufferSize:I

    const/16 v0, 0x8

    .line 189
    iput v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->trafficClass:I

    .line 192
    sget-object v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->ANY_ADDRESS:Ljava/net/SocketAddress;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->remoteAddress:Ljava/net/SocketAddress;

    .line 195
    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$2;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$2;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->CANCEL_HANDLER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    const/4 v0, 0x0

    .line 443
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeResumedForCodecFlush:Z

    return-void
.end method

.method private _resumeRead()V
    .locals 2

    .line 542
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->resume()V

    .line 543
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$9;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$9;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->trace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;
    .locals 0

    .line 32
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    return-object p0
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;
    .locals 0

    .line 32
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->dispose()V

    return-void
.end method

.method private assertConnected()Z
    .locals 2

    .line 518
    :try_start_0
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 519
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not connected."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 523
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->onTransportFailure(Ljava/io/IOException;)V

    const/4 v0, 0x0

    return v0
.end method

.method private dispose()V
    .locals 2

    .line 390
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    .line 392
    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    .line 395
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_1

    .line 396
    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->cancel()V

    .line 397
    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    .line 399
    :cond_1
    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    .line 400
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->onDispose:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    if-eqz v0, :cond_2

    .line 401
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    .line 402
    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->onDispose:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    :cond_2
    return-void
.end method

.method private trace(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public _start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 3

    .line 268
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->blockingExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$3;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$4;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$4;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->execute(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_0

    .line 328
    :cond_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot be started.  socket state is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    .line 332
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;->run()V

    .line 334
    :cond_3
    throw v0
.end method

.method public _stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V
    .locals 2

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopping.. at state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->trace(Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;->onStop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public connected(Ljava/nio/channels/DatagramChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    .line 213
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->initializeChannel()V

    .line 214
    new-instance p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;

    invoke-direct {p1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    return-void
.end method

.method public connecting(Ljava/net/URI;Ljava/net/URI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 246
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    .line 247
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->initializeChannel()V

    .line 248
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->remoteLocation:Ljava/net/URI;

    .line 249
    iput-object p2, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->localLocation:Ljava/net/URI;

    .line 250
    new-instance p1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;

    invoke-direct {p1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTING;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    return-void
.end method

.method public drainInbound()V
    .locals 7

    .line 477
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->isSuspended()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 481
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getReadCounter()J

    move-result-wide v0

    .line 484
    :cond_1
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v2}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getReadCounter()J

    move-result-wide v2

    sub-long/2addr v2, v0

    iget-object v4, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v4}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->getReadBufferSize()I

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_3

    .line 485
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v2}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->read()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    .line 488
    :try_start_1
    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v3, v2}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportCommand(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 490
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 491
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Transport listener failure."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->onTransportFailure(Ljava/io/IOException;)V

    .line 495
    :goto_0
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v2

    sget-object v3, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->STOPPED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    invoke-interface {v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->isSuspended()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_2
    return-void

    .line 502
    :cond_3
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->merge(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->onTransportFailure(Ljava/io/IOException;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public flush()V
    .locals 2

    .line 449
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->STARTED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 453
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->flush()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->EMPTY:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->transportFlush()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 454
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeResumedForCodecFlush:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 455
    iput-boolean v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeResumedForCodecFlush:Z

    .line 456
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->suspendWrite()V

    .line 458
    :cond_1
    iput-boolean v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->rejectingOffers:Z

    .line 459
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onRefill()V

    goto :goto_0

    .line 462
    :cond_2
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeResumedForCodecFlush:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 463
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeResumedForCodecFlush:Z

    .line 464
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->resumeWrite()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 468
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->onTransportFailure(Ljava/io/IOException;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public full()Z
    .locals 1

    .line 413
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->full()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public getBlockingExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 643
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getDatagramChannel()Ljava/nio/channels/DatagramChannel;
    .locals 1

    .line 607
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 255
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object v0
.end method

.method public getLocalAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 509
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->localAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getProtocolCodec()Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;
    .locals 1

    .line 571
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    return-object v0
.end method

.method public getReadChannel()Ljava/nio/channels/ReadableByteChannel;
    .locals 1

    .line 611
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method public getReceiveBufferSize()I
    .locals 1

    .line 627
    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->receiveBufferSize:I

    return v0
.end method

.method public getRemoteAddress()Ljava/net/SocketAddress;
    .locals 1

    .line 513
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->remoteAddress:Ljava/net/SocketAddress;

    return-object v0
.end method

.method public getSendBufferSize()I
    .locals 1

    .line 635
    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->sendBufferSize:I

    return v0
.end method

.method public getTrafficClass()I
    .locals 1

    .line 619
    iget v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->trafficClass:I

    return v0
.end method

.method public getTransportListener()Lnet/aihelp/core/net/mqtt/tansport/TransportListener;
    .locals 1

    .line 563
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    return-object v0
.end method

.method public getWriteChannel()Ljava/nio/channels/WritableByteChannel;
    .locals 1

    .line 615
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    return-object v0
.end method

.method protected initializeChannel()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 219
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->socket()Ljava/net/DatagramSocket;

    move-result-object v0

    const/4 v1, 0x1

    .line 221
    :try_start_0
    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :catch_0
    :try_start_1
    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->trafficClass:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setTrafficClass(I)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1

    .line 229
    :catch_1
    :try_start_2
    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->receiveBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setReceiveBufferSize(I)V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2

    .line 233
    :catch_2
    :try_start_3
    iget v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->sendBufferSize:I

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSendBufferSize(I)V
    :try_end_3
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    :catch_3
    nop

    .line 236
    :goto_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->initializeCodec()V

    :cond_0
    return-void
.end method

.method protected initializeCodec()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v0, p0}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->setTransport(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V

    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 586
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->STOPPED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConnected()Z
    .locals 2

    .line 582
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    const-class v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public isUseLocalHost()Z
    .locals 1

    .line 590
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->useLocalHost:Z

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    .line 420
    :try_start_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    const-class v2, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$CONNECTED;

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;->is(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 423
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->getServiceState()Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    move-result-object v1

    sget-object v2, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->STARTED:Lnet/aihelp/core/net/mqtt/tansport/ServiceBase$State;

    if-ne v1, v2, :cond_1

    .line 427
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v1, p1}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->write(Ljava/lang/Object;)Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;

    move-result-object p1

    .line 428
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    invoke-interface {v1}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;->full()Z

    move-result v1

    iput-boolean v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->rejectingOffers:Z

    .line 429
    sget-object v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$10;->$SwitchMap$net$aihelp$core$net$mqtt$tansport$ProtocolCodec$BufferState:[I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec$BufferState;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    .line 433
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->merge(Ljava/lang/Object;)V

    return v1

    :cond_0
    return v0

    .line 424
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Not running."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 421
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v1, "Not connected."

    invoke-direct {p1, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 437
    invoke-virtual {p0, p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->onTransportFailure(Ljava/io/IOException;)V

    return v0
.end method

.method protected onConnected()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->INTEGER_ADD:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    .line 354
    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$5;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$5;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 359
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    .line 360
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregators;->INTEGER_ADD:Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    .line 361
    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$6;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$6;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 366
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->resume()V

    .line 368
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    const/4 v2, 0x1

    invoke-static {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    .line 369
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    .line 371
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->CANCEL_HANDLER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 372
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->CANCEL_HANDLER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setCancelHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 374
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$7;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$7;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 379
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    new-instance v1, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$8;

    invoke-direct {v1, p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$8;-><init>(Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setEventHandler(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 384
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportConnected()V

    return-void
.end method

.method public onTransportFailure(Ljava/io/IOException;)V
    .locals 1

    .line 407
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/TransportListener;->onTransportFailure(Ljava/io/IOException;)V

    .line 408
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->socketState:Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport$SocketState;->onCanceled()V

    return-void
.end method

.method protected resolveHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 343
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->isUseLocalHost()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 345
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "localhost"

    :cond_0
    return-object p1
.end method

.method public resumeRead()V
    .locals 1

    .line 536
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_0

    .line 537
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->_resumeRead()V

    :cond_0
    return-void
.end method

.method protected resumeWrite()V
    .locals 1

    .line 557
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->resume()V

    :cond_0
    return-void
.end method

.method public setBlockingExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 647
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->blockingExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V
    .locals 1

    .line 259
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    .line 260
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    .line 262
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->drainOutboundSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    .line 263
    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->yieldSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;->setTargetQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    :cond_3
    return-void
.end method

.method public setProtocolCodec(Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 575
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->codec:Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;

    .line 576
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->channel:Ljava/nio/channels/DatagramChannel;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 577
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->initializeCodec()V

    :cond_0
    return-void
.end method

.method public setReceiveBufferSize(I)V
    .locals 0

    .line 631
    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->receiveBufferSize:I

    return-void
.end method

.method public setSendBufferSize(I)V
    .locals 0

    .line 639
    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->sendBufferSize:I

    return-void
.end method

.method public setTrafficClass(I)V
    .locals 0

    .line 623
    iput p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->trafficClass:I

    return-void
.end method

.method public setTransportListener(Lnet/aihelp/core/net/mqtt/tansport/TransportListener;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->listener:Lnet/aihelp/core/net/mqtt/tansport/TransportListener;

    return-void
.end method

.method public setUseLocalHost(Z)V
    .locals 0

    .line 599
    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->useLocalHost:Z

    return-void
.end method

.method public suspendRead()V
    .locals 1

    .line 529
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->readSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_0

    .line 530
    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->suspend()V

    :cond_0
    return-void
.end method

.method protected suspendWrite()V
    .locals 1

    .line 551
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/tansport/UdpTransport;->writeSource:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    if-eqz v0, :cond_0

    .line 552
    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;->suspend()V

    :cond_0
    return-void
.end method

.method protected transportFlush()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
