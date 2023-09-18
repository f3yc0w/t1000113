.class public Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;
.super Ljava/lang/Object;
.source "MemoryGaugeCollector.java"


# static fields
.field public static final INVALID_MEMORY_COLLECTION_FREQUENCY:J = -0x1L

.field private static final UNSET_MEMORY_METRIC_COLLECTION_RATE:I = -0x1

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;

.field private static final sharedInstance:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;


# instance fields
.field private memoryMetricCollectionRateMs:J

.field private final memoryMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private memoryMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

.field public final memoryMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
            ">;"
        }
    .end annotation
.end field

.field private final runtime:Ljava/lang/Runtime;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    .line 47
    new-instance v0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    invoke-direct {v0}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;-><init>()V

    sput-object v0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->sharedInstance:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runtime;)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runtime;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    .line 64
    iput-wide v0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectionRateMs:J

    .line 72
    iput-object p1, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 73
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 74
    iput-object p2, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->runtime:Ljava/lang/Runtime;

    return-void
.end method

.method private getCurrentUsedAppJavaHeapMemoryKb()I
    .locals 5

    .line 193
    sget-object v0, Lcom/google/firebase/perf/util/StorageUnit;->BYTES:Lcom/google/firebase/perf/util/StorageUnit;

    iget-object v1, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->runtime:Ljava/lang/Runtime;

    .line 194
    invoke-virtual {v1}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->runtime:Ljava/lang/Runtime;

    invoke-virtual {v3}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/util/StorageUnit;->toKilobytes(J)J

    move-result-wide v0

    .line 193
    invoke-static {v0, v1}, Lcom/google/firebase/perf/util/Utils;->saturatedIntCast(J)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;
    .locals 1

    .line 79
    sget-object v0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->sharedInstance:Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;

    return-object v0
.end method

.method public static isInvalidCollectionFrequency(J)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-gtz v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$scheduleMemoryMetricCollectionOnce$1(Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->syncCollectMemoryMetric(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method static synthetic lambda$scheduleMemoryMetricCollectionWithRate$0(Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    .line 142
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->syncCollectMemoryMetric(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 144
    iget-object p0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricReadings:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private declared-synchronized scheduleMemoryMetricCollectionOnce(Lcom/google/firebase/perf/util/Timer;)V
    .locals 4

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0, p1}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector$$Lambda$4;->lambdaFactory$(Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;Lcom/google/firebase/perf/util/Timer;)Ljava/lang/Runnable;

    move-result-object p1

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 159
    invoke-interface {v0, p1, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 169
    :try_start_1
    sget-object v0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to collect Memory Metric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized scheduleMemoryMetricCollectionWithRate(JLcom/google/firebase/perf/util/Timer;)V
    .locals 7

    monitor-enter p0

    .line 136
    :try_start_0
    iput-wide p1, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectionRateMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    iget-object v0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectorExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {p0, p3}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector$$Lambda$1;->lambdaFactory$(Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;Lcom/google/firebase/perf/util/Timer;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x0

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v4, p1

    .line 140
    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 151
    :try_start_2
    sget-object p2, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to start collecting Memory Metrics: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private syncCollectMemoryMetric(Lcom/google/firebase/perf/util/Timer;)Lcom/google/firebase/perf/v1/AndroidMemoryReading;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/perf/util/Timer;->getCurrentTimestampMicros()J

    move-result-wide v0

    .line 181
    invoke-static {}, Lcom/google/firebase/perf/v1/AndroidMemoryReading;->newBuilder()Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->setClientTimeUs(J)Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;

    move-result-object p1

    .line 183
    invoke-direct {p0}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->getCurrentUsedAppJavaHeapMemoryKb()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->setUsedAppJavaHeapMemoryKb(I)Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    return-object p1
.end method


# virtual methods
.method public collectOnce(Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->scheduleMemoryMetricCollectionOnce(Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method public startCollecting(JLcom/google/firebase/perf/util/Timer;)V
    .locals 3

    .line 95
    invoke-static {p1, p2}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->isInvalidCollectionFrequency(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_2

    .line 100
    iget-wide v0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectionRateMs:J

    cmp-long v2, v0, p1

    if-eqz v2, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->stopCollecting()V

    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->scheduleMemoryMetricCollectionWithRate(JLcom/google/firebase/perf/util/Timer;)V

    :cond_1
    return-void

    .line 108
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->scheduleMemoryMetricCollectionWithRate(JLcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method public stopCollecting()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 117
    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectorJob:Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v0, -0x1

    .line 119
    iput-wide v0, p0, Lcom/google/firebase/perf/gauges/MemoryGaugeCollector;->memoryMetricCollectionRateMs:J

    return-void
.end method
