.class public Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
.super Ljava/lang/Object;
.source "CallbackConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;,
        Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;
    }
.end annotation


# static fields
.field private static final DEFAULT_LISTENER:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

.field public static final NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# instance fields
.field private final activeSubs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;",
            "Lnet/aihelp/core/net/mqtt/client/QoS;",
            ">;"
        }
    .end annotation
.end field

.field private disconnected:Z

.field private failure:Ljava/lang/Throwable;

.field private heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

.field private identifier:I

.field private isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private listener:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

.field private final mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

.field private nextMessageId:S

.field private final nextMessageIdLock:Ljava/lang/Object;

.field private onRefillCalled:Z

.field private overflow:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;",
            ">;"
        }
    .end annotation
.end field

.field private pingedAt:J

.field private final processed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Short;",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field

.field private final queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

.field private reconnects:J

.field private refiller:Ljava/lang/Runnable;

.field private requests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Short;",
            "Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;",
            ">;"
        }
    .end annotation
.end field

.field private final suspendChanges:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final suspendCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$1;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->DEFAULT_LISTENER:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    .line 899
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    sput-object v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method

.method public constructor <init>(Lnet/aihelp/core/net/mqtt/client/MQTT;)V
    .locals 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    sget-object v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->DEFAULT_LISTENER:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    .line 97
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->requests:Ljava/util/Map;

    .line 98
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->processed:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    const-wide/16 v1, 0x0

    .line 104
    iput-wide v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnects:J

    .line 105
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspendCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 107
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspendChanges:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->activeSubs:Ljava/util/HashMap;

    .line 111
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->nextMessageIdLock:Ljava/lang/Object;

    .line 432
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->onRefillCalled:Z

    const/4 v0, 0x1

    .line 780
    iput-short v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->nextMessageId:S

    .line 122
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    .line 123
    iget-object v0, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    if-nez v0, :cond_0

    const-string p1, "mqtt client"

    .line 124
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p1

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->dispatchQueue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/IllegalStateException;
    .locals 1

    .line 57
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->createListenerNotSetError()Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/MQTT;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    return-object p0
.end method

.method static synthetic access$1000(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/lang/Throwable;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->handleFatalFailure(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/client/ExtendedListener;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    return-object p0
.end method

.method static synthetic access$1200(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    return p0
.end method

.method static synthetic access$1300()Ljava/lang/IllegalStateException;
    .locals 1

    .line 57
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->createDisconnectedError()Ljava/lang/IllegalStateException;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->drainOverflow()V

    return-void
.end method

.method static synthetic access$1600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object p0
.end method

.method static synthetic access$1700(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 0

    .line 57
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->hex(Ljava/net/SocketAddress;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->processFrame(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V

    return-void
.end method

.method static synthetic access$1900(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Z
    .locals 0

    .line 57
    iget-boolean p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->onRefillCalled:Z

    return p0
.end method

.method static synthetic access$1902(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Z)Z
    .locals 0

    .line 57
    iput-boolean p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->onRefillCalled:Z

    return p1
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/LinkedList;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$2000(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->pingedAt:J

    return-wide v0
.end method

.method static synthetic access$2002(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;J)J
    .locals 0

    .line 57
    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->pingedAt:J

    return-wide p1
.end method

.method static synthetic access$202(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    .line 57
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    return-object p1
.end method

.method static synthetic access$2100(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/Transport;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    return-object p0
.end method

.method static synthetic access$2200(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspendChanges:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$2300(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspendCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method static synthetic access$2400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    return-object p0
.end method

.method static synthetic access$2402(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;)Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;
    .locals 0

    .line 57
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    return-object p1
.end method

.method static synthetic access$2502(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->refiller:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$2800(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/HashMap;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->processed:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/Map;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->requests:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$302(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 57
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->requests:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/HashMap;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->activeSubs:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->send(Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method

.method static synthetic access$700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->send(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)V

    return-void
.end method

.method static synthetic access$800(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)J
    .locals 2

    .line 57
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnects:J

    return-wide v0
.end method

.method static synthetic access$802(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;J)J
    .locals 0

    .line 57
    iput-wide p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnects:J

    return-wide p1
.end method

.method static synthetic access$900(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 57
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private calculateDelay()J
    .locals 7

    .line 146
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-wide v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelay:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 147
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-wide v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectBackOffMultiplier:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 148
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-wide v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelay:J

    iget-wide v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnects:J

    mul-long v0, v0, v2

    long-to-double v0, v0

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-wide v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectBackOffMultiplier:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-long v0, v0

    .line 151
    :cond_0
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-wide v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectDelayMax:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 152
    iget-wide v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnects:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnects:J

    return-wide v0
.end method

.method private completeRequest(SBLjava/lang/Object;)V
    .locals 1

    .line 826
    iget-object p2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->requests:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    if-eqz p2, :cond_1

    .line 829
    invoke-static {p2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    .line 831
    invoke-static {p2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 833
    :cond_0
    invoke-static {p2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object p1

    invoke-interface {p1, p3}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 837
    :cond_1
    new-instance p2, Ljava/net/ProtocolException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Command from server contained an invalid message id: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->handleFatalFailure(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static createDisconnectedError()Ljava/lang/IllegalStateException;
    .locals 2

    .line 994
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Disconnected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalStateException;

    return-object v0
.end method

.method private static createListenerNotSetError()Ljava/lang/IllegalStateException;
    .locals 2

    .line 990
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No connection listener set to handle message received from the server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalStateException;

    return-object v0
.end method

.method private drainOverflow()V
    .locals 3

    .line 794
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    if-nez v0, :cond_0

    goto :goto_1

    .line 798
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    if-eqz v0, :cond_2

    .line 799
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->offer(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 800
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/client/Tracer;->onSend(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V

    .line 801
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 802
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)S

    move-result v1

    if-nez v1, :cond_1

    .line 803
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 804
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 807
    :cond_1
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->requests:Ljava/util/Map;

    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 813
    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 814
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->refiller:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    .line 816
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 818
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private getNextMessageId()S
    .locals 3

    .line 783
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->nextMessageIdLock:Ljava/lang/Object;

    monitor-enter v0

    .line 784
    :try_start_0
    iget-short v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->nextMessageId:S

    add-int/lit8 v2, v1, 0x1

    int-to-short v2, v2

    .line 785
    iput-short v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->nextMessageId:S

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 787
    iput-short v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->nextMessageId:S

    .line 789
    :cond_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 790
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private handleFatalFailure(Ljava/lang/Throwable;)V
    .locals 3

    .line 958
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure:Ljava/lang/Throwable;

    if-nez v0, :cond_4

    .line 959
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure:Ljava/lang/Throwable;

    .line 961
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "Fatal connection failure: %s"

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 963
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->requests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 964
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->requests:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 965
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    .line 966
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 967
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 971
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 972
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 973
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    .line 974
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 975
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v0

    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 979
    :cond_3
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    if-eqz p1, :cond_4

    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    if-nez v0, :cond_4

    .line 981
    :try_start_0
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/client/ExtendedListener;->onFailure(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 983
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static hex(Ljava/net/SocketAddress;)Ljava/lang/String;
    .locals 3

    .line 998
    instance-of v0, p0, Ljava/net/InetSocketAddress;

    if-eqz v0, :cond_0

    .line 999
    check-cast p0, Ljava/net/InetSocketAddress;

    .line 1000
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/hawtbuf/HexSupport;->toHexFromBuffer(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private processFrame(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V
    .locals 5

    .line 843
    :try_start_0
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->messageType()B

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_6

    const/4 v2, 0x5

    const/4 v4, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x6

    if-eq v0, v2, :cond_4

    const/4 v2, 0x7

    if-eq v0, v2, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    const-wide/16 v0, 0x0

    .line 888
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->pingedAt:J

    goto/16 :goto_0

    .line 892
    :cond_0
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected MQTT command type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;->messageType()B

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 883
    :cond_1
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;

    move-result-object p1

    .line 884
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBACK;->messageId()S

    move-result p1

    const/16 v0, 0xa

    invoke-direct {p0, p1, v0, v3}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->completeRequest(SBLjava/lang/Object;)V

    goto/16 :goto_0

    .line 878
    :cond_2
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/SUBACK;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/SUBACK;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/SUBACK;

    move-result-object p1

    .line 879
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->messageId()S

    move-result v0

    const/16 v1, 0x8

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/SUBACK;->grantedQos()[B

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->completeRequest(SBLjava/lang/Object;)V

    goto/16 :goto_0

    .line 873
    :cond_3
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;

    move-result-object p1

    .line 874
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;->messageId()S

    move-result p1

    invoke-direct {p0, p1, v1, v3}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->completeRequest(SBLjava/lang/Object;)V

    goto/16 :goto_0

    .line 850
    :cond_4
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PUBREL;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBREL;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBREL;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBREL;

    move-result-object p1

    .line 851
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->processed:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/PUBREL;->messageId()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/core/net/mqtt/client/Callback;

    .line 852
    new-instance v1, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;

    invoke-direct {v1}, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;-><init>()V

    .line 853
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/PUBREL;->messageId()S

    move-result p1

    invoke-virtual {v1, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;

    .line 854
    new-instance p1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    invoke-virtual {v1}, Lnet/aihelp/core/net/mqtt/codec/PUBCOMP;->encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v1

    invoke-direct {p1, v4, v1, v3}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;-><init>(ILnet/aihelp/core/net/mqtt/codec/MQTTFrame;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->send(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)V

    if-eqz v0, :cond_8

    .line 856
    invoke-interface {v0, v3}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 866
    :cond_5
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PUBREC;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBREC;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBREC;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBREC;

    move-result-object p1

    .line 867
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PUBREL;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBREL;-><init>()V

    .line 868
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/PUBREC;->messageId()S

    move-result p1

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBREL;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/PUBREL;

    .line 869
    new-instance p1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBREL;->encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    invoke-direct {p1, v4, v0, v3}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;-><init>(ILnet/aihelp/core/net/mqtt/codec/MQTTFrame;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->send(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)V

    goto :goto_0

    .line 861
    :cond_6
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PUBACK;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBACK;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBACK;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBACK;

    move-result-object p1

    .line 862
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/PUBACK;->messageId()S

    move-result p1

    invoke-direct {p0, p1, v1, v3}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->completeRequest(SBLjava/lang/Object;)V

    goto :goto_0

    .line 845
    :cond_7
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->decode(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p1

    .line 846
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->toReceiver(Lnet/aihelp/core/net/mqtt/codec/PUBLISH;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 895
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->handleFatalFailure(Ljava/lang/Throwable;)V

    :cond_8
    :goto_0
    return-void
.end method

.method private send(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)V
    .locals 2

    .line 754
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 755
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 756
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object p1

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure:Ljava/lang/Throwable;

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 760
    :cond_0
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)S

    move-result v0

    if-eqz v0, :cond_1

    .line 761
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->requests:Ljava/util/Map;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 765
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->onSend(Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;)V

    .line 766
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)S

    move-result v0

    if-nez v0, :cond_3

    .line 767
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 768
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2600(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)Lnet/aihelp/core/net/mqtt/client/Callback;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 774
    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->requests:Ljava/util/Map;

    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;->access$2700(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->overflow:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private send(Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 2

    .line 746
    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v0

    sget-object v1, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_MOST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    if-eq v0, v1, :cond_0

    .line 747
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getNextMessageId()S

    move-result v0

    .line 748
    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;->messageId(S)Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 750
    :goto_0
    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;->encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object p1

    invoke-direct {v1, v0, p1, p2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;-><init>(ILnet/aihelp/core/net/mqtt/codec/MQTTFrame;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-direct {p0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->send(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)V

    return-void
.end method

.method private toReceiver(Lnet/aihelp/core/net/mqtt/codec/PUBLISH;)V
    .locals 3

    .line 902
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 905
    :try_start_0
    sget-object v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$17;->$SwitchMap$net$aihelp$core$net$mqtt$client$QoS:[I

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->qos()Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/client/QoS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 939
    :cond_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$16;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$16;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V

    goto :goto_0

    .line 922
    :cond_1
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$15;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/codec/PUBLISH;)V

    .line 934
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->processed:Ljava/util/HashMap;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->messageId()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    return-void

    .line 907
    :cond_2
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$14;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$14;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/codec/PUBLISH;)V

    .line 950
    :cond_3
    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->topicName()Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v2

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->payload()Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    move-result-object p1

    invoke-interface {v1, v2, p1, v0}, Lnet/aihelp/core/net/mqtt/client/ExtendedListener;->onPublish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 952
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->handleFatalFailure(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public connect(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 137
    :cond_0
    :try_start_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;Z)V

    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->createTransport(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 141
    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method createTransport(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Lnet/aihelp/core/net/mqtt/tansport/Transport;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Connecting"

    invoke-virtual {v0, v2, v1}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->host:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tcp"

    .line 277
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;-><init>()V

    goto :goto_0

    .line 279
    :cond_0
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport;->protocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 280
    new-instance v0, Lnet/aihelp/core/net/mqtt/tansport/SslTransport;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport;-><init>()V

    .line 281
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->sslContext:Ljavax/net/ssl/SSLContext;

    if-nez v1, :cond_1

    .line 282
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {}, Ljavax/net/ssl/SSLContext;->getDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v2

    iput-object v2, v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 284
    :cond_1
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->sslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/SslTransport;->setSSLContext(Ljavax/net/ssl/SSLContext;)V

    .line 290
    :goto_0
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_2

    .line 291
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/MQTT;->getBlockingThreadPool()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v2

    iput-object v2, v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingExecutor:Ljava/util/concurrent/Executor;

    .line 293
    :cond_2
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v1, v1, Lnet/aihelp/core/net/mqtt/client/MQTT;->blockingExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setBlockingExecutor(Ljava/util/concurrent/Executor;)V

    .line 294
    iget-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setDispatchQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)V

    .line 295
    new-instance v1, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;

    invoke-direct {v1}, Lnet/aihelp/core/net/mqtt/codec/MQTTProtocolCodec;-><init>()V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setProtocolCodec(Lnet/aihelp/core/net/mqtt/tansport/ProtocolCodec;)V

    .line 297
    instance-of v1, v0, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    if-eqz v1, :cond_3

    .line 298
    move-object v1, v0

    check-cast v1, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;

    .line 299
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxReadRate:I

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->setMaxReadRate(I)V

    .line 300
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->maxWriteRate:I

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->setMaxWriteRate(I)V

    .line 301
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->receiveBufferSize:I

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->setReceiveBufferSize(I)V

    .line 302
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->sendBufferSize:I

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->setSendBufferSize(I)V

    .line 303
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->trafficClass:I

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->setTrafficClass(I)V

    .line 304
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-boolean v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->useLocalHost:Z

    invoke-virtual {v1, v2}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->setUseLocalHost(Z)V

    .line 305
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->host:Ljava/net/URI;

    iget-object v3, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object v3, v3, Lnet/aihelp/core/net/mqtt/client/MQTT;->localAddress:Ljava/net/URI;

    invoke-virtual {v1, v2, v3}, Lnet/aihelp/core/net/mqtt/tansport/TcpTransport;->connecting(Ljava/net/URI;Ljava/net/URI;)V

    .line 308
    :cond_3
    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;

    invoke-direct {v1, p0, p1, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$5;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;Lnet/aihelp/core/net/mqtt/tansport/Transport;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setTransportListener(Lnet/aihelp/core/net/mqtt/tansport/TransportListener;)V

    .line 336
    sget-object p1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    invoke-interface {v0, p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->start(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void

    .line 287
    :cond_4
    new-instance p1, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported URI scheme \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public disconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 591
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 593
    invoke-interface {p1, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 598
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    .line 599
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getNextMessageId()S

    move-result v0

    .line 600
    new-instance v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;

    invoke-direct {v2, p0, v0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$9;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;SLnet/aihelp/core/net/mqtt/client/Callback;)V

    .line 627
    new-instance p1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;

    invoke-direct {p1, p0, v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$10;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/lang/Runnable;)V

    .line 650
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    if-eqz v0, :cond_2

    .line 651
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/DISCONNECT;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/DISCONNECT;-><init>()V

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/codec/DISCONNECT;->encode()Lnet/aihelp/core/net/mqtt/codec/MQTTFrame;

    move-result-object v0

    .line 652
    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getNextMessageId()S

    move-result v2

    invoke-direct {v1, v2, v0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;-><init>(ILnet/aihelp/core/net/mqtt/codec/MQTTFrame;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-direct {p0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->send(Lnet/aihelp/core/net/mqtt/client/CallbackConnection$Request;)V

    goto :goto_0

    .line 654
    :cond_2
    invoke-interface {p1, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public failure()Ljava/lang/Throwable;
    .locals 1

    .line 587
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->failure:Ljava/lang/Throwable;

    return-object v0
.end method

.method public full()Z
    .locals 1

    .line 583
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->full()Z

    move-result v0

    return v0
.end method

.method public getDispatchQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 506
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    return-object v0
.end method

.method public getIdentifier()I
    .locals 1

    .line 114
    iget v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->identifier:I

    return v0
.end method

.method handleSessionFailure(Ljava/lang/Throwable;)V
    .locals 5

    .line 219
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-wide v0, v0, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnects:J

    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-wide v2, v2, Lnet/aihelp/core/net/mqtt/client/MQTT;->reconnectAttemptsMax:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    .line 221
    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    iget-object p1, p1, Lnet/aihelp/core/net/mqtt/client/MQTT;->tracer:Lnet/aihelp/core/net/mqtt/client/Tracer;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Reconnecting transport"

    invoke-virtual {p1, v1, v0}, Lnet/aihelp/core/net/mqtt/client/Tracer;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->stop()V

    .line 225
    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    .line 227
    :cond_1
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    .line 228
    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    if-eqz p1, :cond_2

    .line 231
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$3;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$3;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    goto :goto_0

    .line 239
    :cond_2
    invoke-virtual {p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->reconnect()V

    goto :goto_0

    .line 244
    :cond_3
    invoke-direct {p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->handleFatalFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public kill(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 664
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 666
    invoke-interface {p1, v1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x1

    .line 670
    iput-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    .line 671
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    if-eqz v0, :cond_2

    .line 672
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->stop()V

    .line 673
    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    .line 675
    :cond_2
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$11;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$11;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->stop(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public listener(Lnet/aihelp/core/net/mqtt/client/Listener;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
    .locals 1

    .line 540
    instance-of v0, p1, Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    if-eqz v0, :cond_0

    .line 541
    check-cast p1, Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    goto :goto_0

    .line 543
    :cond_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;

    invoke-direct {v0, p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$8;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Listener;)V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    :goto_0
    return-object p0
.end method

.method public onSessionEstablished(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V
    .locals 2

    .line 435
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    .line 436
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspendCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_0

    .line 437
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-interface {p1}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->suspendRead()V

    .line 439
    :cond_0
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$6;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$6;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V

    invoke-interface {p1, v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->setTransportListener(Lnet/aihelp/core/net/mqtt/tansport/TransportListener;)V

    const-wide/16 v0, 0x0

    .line 458
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->pingedAt:J

    .line 459
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/client/MQTT;->getKeepAlive()S

    move-result p1

    if-lez p1, :cond_1

    .line 460
    new-instance p1, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    invoke-direct {p1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;-><init>()V

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    .line 461
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->getKeepAlive()S

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0x2

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->setWriteInterval(J)V

    .line 462
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->setTransport(Lnet/aihelp/core/net/mqtt/tansport/Transport;)V

    .line 463
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->suspendRead()V

    .line 464
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    new-instance v0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;

    invoke-direct {v0, p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$7;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V

    invoke-virtual {p1, v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->setOnKeepAlive(Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    .line 497
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    invoke-virtual {p1}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->start()V

    :cond_1
    return-void
.end method

.method public publish(Ljava/lang/String;[BLnet/aihelp/core/net/mqtt/client/QoS;ZLnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Lnet/aihelp/core/net/mqtt/client/QoS;",
            "Z",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 687
    invoke-static {p1}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;->utf8(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {v2, p2}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;ZLnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method

.method public publish(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;Lnet/aihelp/core/net/mqtt/client/QoS;ZLnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;",
            "Lnet/aihelp/core/net/mqtt/client/QoS;",
            "Z",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 691
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->assertExecuting()V

    .line 692
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 693
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->createDisconnectedError()Ljava/lang/IllegalStateException;

    move-result-object p1

    invoke-interface {p5, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 696
    :cond_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;-><init>()V

    invoke-virtual {v0, p3}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->qos(Lnet/aihelp/core/net/mqtt/client/QoS;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p3

    invoke-virtual {p3, p4}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->retain(Z)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p3

    .line 697
    invoke-virtual {p3, p1}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->topicName(Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    move-result-object p1

    invoke-virtual {p1, p2}, Lnet/aihelp/core/net/mqtt/codec/PUBLISH;->payload(Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;)Lnet/aihelp/core/net/mqtt/codec/PUBLISH;

    .line 698
    invoke-direct {p0, p3, p5}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->send(Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method

.method reconnect()V
    .locals 3

    .line 157
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->calculateDelay()J

    move-result-wide v0

    .line 163
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 170
    :try_start_1
    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;

    new-instance v2, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$2;

    invoke-direct {v2, p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$2;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;)V

    invoke-direct {v1, p0, v2, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$LoginHandler;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;Z)V

    invoke-virtual {p0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->createTransport(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 212
    iget-object v2, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->isReconnecting:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    invoke-direct {p0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->handleFatalFailure(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method reconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Lnet/aihelp/core/net/mqtt/tansport/Transport;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->calculateDelay()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v4, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$4;

    invoke-direct {v4, p0, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$4;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->executeAfter(JLjava/util/concurrent/TimeUnit;Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;)V

    return-void
.end method

.method public refiller(Ljava/lang/Runnable;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;
    .locals 1

    .line 530
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->assertExecuting()V

    .line 531
    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->refiller:Ljava/lang/Runnable;

    return-object p0
.end method

.method public resume()V
    .locals 1

    .line 510
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspendChanges:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 511
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspendCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    if-eqz v0, :cond_0

    .line 512
    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->resumeRead()V

    .line 513
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->resumeRead()V

    :cond_0
    return-void
.end method

.method public setIdentifier(I)V
    .locals 0

    .line 118
    iput p1, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->identifier:I

    return-void
.end method

.method public subscribe([Lnet/aihelp/core/net/mqtt/client/Topic;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/aihelp/core/net/mqtt/client/Topic;",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "[B>;)V"
        }
    .end annotation

    .line 702
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 703
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->createDisconnectedError()Ljava/lang/IllegalStateException;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    :cond_0
    return-void

    .line 706
    :cond_1
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    sget-object v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->DEFAULT_LISTENER:Lnet/aihelp/core/net/mqtt/client/ExtendedListener;

    if-ne v0, v1, :cond_2

    if-eqz p2, :cond_3

    .line 707
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->createListenerNotSetError()Ljava/lang/IllegalStateException;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 709
    :cond_2
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/SUBSCRIBE;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/SUBSCRIBE;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/SUBSCRIBE;->topics([Lnet/aihelp/core/net/mqtt/client/Topic;)Lnet/aihelp/core/net/mqtt/codec/SUBSCRIBE;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;

    invoke-direct {v1, p0, p2, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$12;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;[Lnet/aihelp/core/net/mqtt/client/Topic;)V

    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->send(Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public suspend()V
    .locals 2

    .line 520
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspendChanges:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 521
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->suspendCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    if-eqz v0, :cond_0

    .line 522
    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/tansport/Transport;->suspendRead()V

    .line 523
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->heartBeatMonitor:Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/tansport/HeartBeatMonitor;->suspendRead()V

    :cond_0
    return-void
.end method

.method public transport()Lnet/aihelp/core/net/mqtt/tansport/Transport;
    .locals 1

    .line 502
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->transport:Lnet/aihelp/core/net/mqtt/tansport/Transport;

    return-object v0
.end method

.method public unregisterListener()V
    .locals 1

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p0, v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener(Lnet/aihelp/core/net/mqtt/client/Listener;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    return-void
.end method

.method public unsubscribe([Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;Lnet/aihelp/core/net/mqtt/client/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;",
            "Lnet/aihelp/core/net/mqtt/client/Callback<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 726
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->queue:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;->assertExecuting()V

    .line 727
    iget-boolean v0, p0, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnected:Z

    if-eqz v0, :cond_0

    .line 728
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->createDisconnectedError()Ljava/lang/IllegalStateException;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/aihelp/core/net/mqtt/client/Callback;->onFailure(Ljava/lang/Throwable;)V

    return-void

    .line 731
    :cond_0
    new-instance v0, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;-><init>()V

    invoke-virtual {v0, p1}, Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;->topics([Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)Lnet/aihelp/core/net/mqtt/codec/UNSUBSCRIBE;

    move-result-object v0

    new-instance v1, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$13;

    invoke-direct {v1, p0, p2, p1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection$13;-><init>(Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Lnet/aihelp/core/net/mqtt/client/Callback;[Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;)V

    invoke-direct {p0, v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->send(Lnet/aihelp/core/net/mqtt/codec/MessageSupport$Acked;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    return-void
.end method
