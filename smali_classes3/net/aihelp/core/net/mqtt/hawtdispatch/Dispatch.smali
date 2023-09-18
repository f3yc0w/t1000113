.class public Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;
.super Ljava/lang/Object;
.source "Dispatch.java"


# static fields
.field public static final DEFAULT:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

.field private static final DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

.field public static final HIGH:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

.field public static final LOW:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

.field public static final NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    invoke-static {}, Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/DispatcherConfig;->getDefaultDispatcher()Lnet/aihelp/core/net/mqtt/hawtdispatch/internal/HawtDispatcher;

    move-result-object v0

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    .line 55
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->HIGH:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->HIGH:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    .line 56
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->DEFAULT:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DEFAULT:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    .line 57
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;->LOW:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->LOW:Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;

    .line 256
    new-instance v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch$1;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch$1;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->NOOP:Lnet/aihelp/core/net/mqtt/hawtdispatch/Task;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 2

    .line 118
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public static createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 104
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->createQueue(Ljava/lang/String;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p0

    return-object p0
.end method

.method public static createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Event:",
            "Ljava/lang/Object;",
            "MergedEvent:",
            "Ljava/lang/Object;",
            ">(",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator<",
            "TEvent;TMergedEvent;>;",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;",
            ")",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource<",
            "TEvent;TMergedEvent;>;"
        }
    .end annotation

    .line 169
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0, p0, p1}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->createSource(Lnet/aihelp/core/net/mqtt/hawtdispatch/EventAggregator;Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/CustomDispatchSource;

    move-result-object p0

    return-object p0
.end method

.method public static createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;
    .locals 1

    .line 153
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0, p0, p1, p2}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->createSource(Ljava/nio/channels/SelectableChannel;ILnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchSource;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 132
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->getCurrentQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentThreadQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 184
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->getCurrentThreadQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 68
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->getGlobalQueue()Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object v0

    return-object v0
.end method

.method public static getGlobalQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 85
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->getGlobalQueue(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p0

    return-object p0
.end method

.method public static getThreadQueues(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;
    .locals 1

    .line 176
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->getThreadQueues(Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchPriority;)[Lnet/aihelp/core/net/mqtt/hawtdispatch/DispatchQueue;

    move-result-object p0

    return-object p0
.end method

.method public static metrics()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/aihelp/core/net/mqtt/hawtdispatch/Metrics;",
            ">;"
        }
    .end annotation

    .line 236
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->metrics()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static profile(Z)V
    .locals 1

    .line 226
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0, p0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->profile(Z)V

    return-void
.end method

.method public static restart()V
    .locals 1

    .line 250
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->restart()V

    return-void
.end method

.method public static shutdown()V
    .locals 1

    .line 243
    sget-object v0, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatch;->DISPATCHER:Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;

    invoke-interface {v0}, Lnet/aihelp/core/net/mqtt/hawtdispatch/Dispatcher;->shutdown()V

    return-void
.end method
