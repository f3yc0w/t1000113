.class final Lcom/google/firebase/perf/transport/CctTransport;
.super Ljava/lang/Object;
.source "CctTransport.java"


# static fields
.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private cctLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

.field private final context:Landroid/content/Context;

.field private final logSourceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/transport/CctTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/google/firebase/perf/transport/CctTransport;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/clearcut/ClearcutLogger;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/clearcut/ClearcutLogger;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/firebase/perf/transport/CctTransport;->context:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/google/firebase/perf/transport/CctTransport;->logSourceName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/google/firebase/perf/transport/CctTransport;->cctLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    return-void
.end method

.method private initializeCctTransportClient()Z
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/google/firebase/perf/transport/CctTransport;->cctLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/CctTransport;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/firebase/perf/transport/CctTransport;->logSourceName:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/google/android/gms/clearcut/ClearcutLogger;->anonymousLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/clearcut/ClearcutLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/perf/transport/CctTransport;->cctLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    sget-object v3, Lcom/google/firebase/perf/transport/CctTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    const-string v0, "Init Cct Logger failed with exception: %s"

    invoke-virtual {v3, v0, v4}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/CctTransport;->cctLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method


# virtual methods
.method public log(Lcom/google/firebase/perf/v1/PerfMetric;)V
    .locals 3

    .line 53
    invoke-direct {p0}, Lcom/google/firebase/perf/transport/CctTransport;->initializeCctTransportClient()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 54
    sget-object p1, Lcom/google/firebase/perf/transport/CctTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Unable to dispatch event because Cct Logger is not available"

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 59
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/perf/transport/CctTransport;->cctLogger:Lcom/google/android/gms/clearcut/ClearcutLogger;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfMetric;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/clearcut/ClearcutLogger;->newEvent([B)Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/clearcut/ClearcutLogger$LogEventBuilder;->log()V

    .line 60
    sget-object p1, Lcom/google/firebase/perf/transport/CctTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const-string v0, "Event is dispatched via Cct Transport"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 63
    sget-object v0, Lcom/google/firebase/perf/transport/CctTransport;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "Dispatch with Cct Logger failed with exception: %s"

    invoke-virtual {v0, p1, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
