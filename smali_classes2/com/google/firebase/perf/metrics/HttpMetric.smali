.class public Lcom/google/firebase/perf/metrics/HttpMetric;
.super Ljava/lang/Object;
.source "HttpMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/FirebasePerformanceAttributable;


# static fields
.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private isDisabled:Z

.field private isStopped:Z

.field private final mAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

.field private mTimer:Lcom/google/firebase/perf/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Timer;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isStopped:Z

    .line 47
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isDisabled:Z

    .line 57
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mAttributes:Ljava/util/Map;

    .line 58
    iput-object p4, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mTimer:Lcom/google/firebase/perf/util/Timer;

    .line 61
    invoke-static {p3}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->builder(Lcom/google/firebase/perf/transport/TransportManager;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setUrl(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpMethod(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 62
    invoke-virtual {p2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setManualNetworkRequestMetric()V

    .line 64
    invoke-static {}, Lcom/google/firebase/perf/config/ConfigResolver;->getInstance()Lcom/google/firebase/perf/config/ConfigResolver;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/config/ConfigResolver;->isPerformanceMonitoringEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 65
    sget-object p2, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object p3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 p4, 0x1

    new-array v1, p4, [Ljava/lang/Object;

    aput-object p1, v1, v0

    const-string p1, "HttpMetric feature is disabled. URL %s"

    invoke-static {p3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, p3}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    iput-boolean p4, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isDisabled:Z

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Timer;)V
    .locals 0

    .line 78
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/perf/metrics/HttpMetric;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/util/Timer;)V

    return-void
.end method

.method private checkAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 198
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isStopped:Z

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 205
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mAttributes:Ljava/util/Map;

    .line 206
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 211
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Exceeds max limit of number of attributes - %d"

    .line 208
    invoke-static {p2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 213
    :cond_1
    :goto_0
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-direct {v0, p1, p2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 214
    invoke-static {v0}, Lcom/google/firebase/perf/internal/PerfMetricValidator;->validateAttribute(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    .line 216
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 203
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Attribute must not have null key or value."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HttpMetric has been logged already so unable to modify attributes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mAttributes:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public markRequestComplete()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToRequestCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    return-void
.end method

.method public markResponseStart()V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseInitiatedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    return-void
.end method

.method public putAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 172
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/perf/metrics/HttpMetric;->checkAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    sget-object v4, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "Setting attribute \'%s\' to %s on network request \'%s\'"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v3

    aput-object p2, v7, v2

    iget-object v8, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    .line 181
    invoke-virtual {v8}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->getUrl()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    .line 176
    invoke-static {v5, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    .line 175
    invoke-virtual {v4, v5, v6}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 183
    sget-object v5, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    aput-object p2, v1, v2

    .line 189
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "Cannot set attribute \'%s\' with value \'%s\' (%s)"

    .line 184
    invoke-static {v6, v0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    .line 183
    invoke-virtual {v5, v0, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isStopped:Z

    if-eqz v0, :cond_0

    .line 229
    sget-object p1, Lcom/google/firebase/perf/metrics/HttpMetric;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Can\'t remove a attribute from a HttpMetric that\'s stopped."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setHttpResponseCode(I)V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setHttpResponseCode(I)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    return-void
.end method

.method public setRequestPayloadSize(J)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setRequestPayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    return-void
.end method

.method public setResponseContentType(Ljava/lang/String;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    return-void
.end method

.method public setResponsePayloadSize(J)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    return-void
.end method

.method public start()V
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v0}, Lcom/google/firebase/perf/util/Timer;->reset()V

    .line 120
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mTimer:Lcom/google/firebase/perf/util/Timer;

    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setRequestStartTimeMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    return-void
.end method

.method public stop()V
    .locals 3

    .line 148
    iget-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isDisabled:Z

    if-eqz v0, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mMetricBuilder:Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mTimer:Lcom/google/firebase/perf/util/Timer;

    .line 153
    invoke-virtual {v1}, Lcom/google/firebase/perf/util/Timer;->getDurationMicros()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->mAttributes:Ljava/util/Map;

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->setCustomAttributes(Ljava/util/Map;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    const/4 v0, 0x1

    .line 156
    iput-boolean v0, p0, Lcom/google/firebase/perf/metrics/HttpMetric;->isStopped:Z

    return-void
.end method
