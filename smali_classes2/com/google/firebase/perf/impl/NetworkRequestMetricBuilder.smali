.class public final Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
.super Lcom/google/firebase/perf/internal/AppStateUpdateHandler;
.source "NetworkRequestMetricBuilder.java"

# interfaces
.implements Lcom/google/firebase/perf/internal/SessionAwareObject;


# static fields
.field private static final HIGHEST_ASCII_CHAR:C = '\u007f'

.field private static final HIGHEST_CONTROL_CHAR:C = '\u001f'

.field private static final logger:Lcom/google/firebase/perf/logging/AndroidLogger;


# instance fields
.field private final gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

.field private isManualNetworkRequestMetric:Z

.field private isReportSent:Z

.field private final networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

.field private final sessions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/internal/PerfSession;",
            ">;"
        }
    .end annotation
.end field

.field private final transportManager:Lcom/google/firebase/perf/transport/TransportManager;

.field private userAgent:Ljava/lang/String;

.field private final weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/firebase/perf/internal/SessionAwareObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    invoke-static {}, Lcom/google/firebase/perf/logging/AndroidLogger;->getInstance()Lcom/google/firebase/perf/logging/AndroidLogger;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/perf/transport/TransportManager;)V
    .locals 2

    .line 100
    invoke-static {}, Lcom/google/firebase/perf/internal/AppStateMonitor;->getInstance()Lcom/google/firebase/perf/internal/AppStateMonitor;

    move-result-object v0

    invoke-static {}, Lcom/google/firebase/perf/internal/GaugeManager;->getInstance()Lcom/google/firebase/perf/internal/GaugeManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;-><init>(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/internal/AppStateMonitor;Lcom/google/firebase/perf/internal/GaugeManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/perf/transport/TransportManager;Lcom/google/firebase/perf/internal/AppStateMonitor;Lcom/google/firebase/perf/internal/GaugeManager;)V
    .locals 0

    .line 111
    invoke-direct {p0, p2}, Lcom/google/firebase/perf/internal/AppStateUpdateHandler;-><init>(Lcom/google/firebase/perf/internal/AppStateMonitor;)V

    .line 66
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->newBuilder()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    move-result-object p2

    iput-object p2, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    .line 73
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->weakReference:Ljava/lang/ref/WeakReference;

    .line 113
    iput-object p1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    .line 114
    iput-object p3, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    .line 115
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->sessions:Ljava/util/List;

    .line 117
    invoke-virtual {p0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->registerForAppState()V

    return-void
.end method

.method public static builder(Lcom/google/firebase/perf/transport/TransportManager;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 1

    .line 92
    new-instance v0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;

    invoke-direct {v0, p0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;-><init>(Lcom/google/firebase/perf/transport/TransportManager;)V

    return-object v0
.end method

.method private hasStarted()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->hasClientStartTimeUs()Z

    move-result v0

    return v0
.end method

.method private isStopped()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->hasTimeToResponseCompletedUs()Z

    move-result v0

    return v0
.end method

.method private static isValidContentType(Ljava/lang/String;)Z
    .locals 4

    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x80

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 401
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 402
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public build()Lcom/google/firebase/perf/v1/NetworkRequestMetric;
    .locals 4

    .line 321
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/internal/SessionManager;->unregisterForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    .line 322
    invoke-virtual {p0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->unregisterForAppState()V

    .line 325
    invoke-virtual {p0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->getSessions()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/perf/internal/PerfSession;->buildAndSort(Ljava/util/List;)[Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 327
    iget-object v1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->addAllPerfSessions(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 332
    iget-object v1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->userAgent:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/firebase/perf/network/NetworkRequestMetricBuilderUtil;->isAllowedUserAgent(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 333
    sget-object v1, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Dropping network request from a \'User-Agent\' that is not allowed"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 337
    :cond_1
    iget-boolean v1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->isReportSent:Z

    if-nez v1, :cond_2

    .line 338
    iget-object v1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->transportManager:Lcom/google/firebase/perf/transport/TransportManager;

    invoke-virtual {p0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->getAppState()Lcom/google/firebase/perf/v1/ApplicationProcessState;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/firebase/perf/transport/TransportManager;->log(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/ApplicationProcessState;)V

    const/4 v1, 0x1

    .line 339
    iput-boolean v1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->isReportSent:Z

    return-object v0

    .line 343
    :cond_2
    iget-boolean v1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->isManualNetworkRequestMetric:Z

    if-eqz v1, :cond_3

    .line 344
    sget-object v1, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "This metric has already been queued for transmission.  Please create a new HttpMetric for each request/response"

    invoke-virtual {v1, v3, v2}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method clearBuilderFields()V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->clear()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    return-void
.end method

.method getSessions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/internal/PerfSession;",
            ">;"
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->sessions:Ljava/util/List;

    monitor-enter v0

    .line 365
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 368
    iget-object v2, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->sessions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/firebase/perf/internal/PerfSession;

    if-eqz v3, :cond_0

    .line 370
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 373
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 374
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getTimeToResponseInitiatedMicros()J
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->getTimeToResponseInitiatedUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasHttpResponseCode()Z
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->hasHttpResponseCode()Z

    move-result v0

    return v0
.end method

.method isReportSent()Z
    .locals 1

    .line 379
    iget-boolean v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->isReportSent:Z

    return v0
.end method

.method public setCustomAttributes(Ljava/util/Map;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;"
        }
    .end annotation

    .line 224
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->clearCustomAttributes()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->putAllCustomAttributes(Ljava/util/Map;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object p0
.end method

.method public setHttpMethod(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 2

    if-eqz p1, :cond_9

    .line 158
    sget-object v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->HTTP_METHOD_UNKNOWN:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "DELETE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "CONNECT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    goto :goto_0

    :sswitch_2
    const-string v1, "TRACE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :sswitch_3
    const-string v1, "PATCH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_4
    const-string v1, "POST"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_5
    const-string v1, "HEAD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "PUT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "GET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_8
    const-string v1, "OPTIONS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 197
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->HTTP_METHOD_UNKNOWN:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    goto :goto_1

    .line 173
    :pswitch_0
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->DELETE:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    goto :goto_1

    .line 193
    :pswitch_1
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->CONNECT:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    goto :goto_1

    .line 189
    :pswitch_2
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->TRACE:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    goto :goto_1

    .line 181
    :pswitch_3
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->PATCH:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    goto :goto_1

    .line 169
    :pswitch_4
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->POST:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    goto :goto_1

    .line 177
    :pswitch_5
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->HEAD:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    goto :goto_1

    .line 165
    :pswitch_6
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->PUT:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    goto :goto_1

    .line 161
    :pswitch_7
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->GET:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    goto :goto_1

    .line 185
    :pswitch_8
    sget-object p1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;->OPTIONS:Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    .line 200
    :goto_1
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setHttpMethod(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    :cond_9
    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x1faded82 -> :sswitch_8
        0x11336 -> :sswitch_7
        0x136ef -> :sswitch_6
        0x21c5e0 -> :sswitch_5
        0x2590a0 -> :sswitch_4
        0x4862828 -> :sswitch_3
        0x4c5f925 -> :sswitch_2
        0x638004ca -> :sswitch_1
        0x77f979ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setHttpResponseCode(I)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setHttpResponseCode(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object p0
.end method

.method public setManualNetworkRequestMetric()V
    .locals 1

    const/4 v0, 0x1

    .line 128
    iput-boolean v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->isManualNetworkRequestMetric:Z

    return-void
.end method

.method public setNetworkClientErrorReason()Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    sget-object v1, Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;->GENERIC_CLIENT_ERROR:Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;

    invoke-virtual {v0, v1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setNetworkClientErrorReason(Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object p0
.end method

.method setReportSent()V
    .locals 1

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->isReportSent:Z

    return-void
.end method

.method public setRequestPayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setRequestPayloadBytes(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object p0
.end method

.method public setRequestStartTimeMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 3

    .line 238
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/SessionManager;->perfSession()Lcom/google/firebase/perf/internal/PerfSession;

    move-result-object v0

    .line 240
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Lcom/google/firebase/perf/internal/SessionManager;->registerForSessionUpdates(Ljava/lang/ref/WeakReference;)V

    .line 242
    iget-object v1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v1, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setClientStartTimeUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    .line 243
    invoke-virtual {p0, v0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->updateSession(Lcom/google/firebase/perf/internal/PerfSession;)V

    .line 245
    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 246
    iget-object p1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-virtual {v0}, Lcom/google/firebase/perf/internal/PerfSession;->getTimer()Lcom/google/firebase/perf/util/Timer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    :cond_0
    return-object p0
.end method

.method public setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 3

    if-nez p1, :cond_0

    .line 297
    iget-object p1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->clearResponseContentType()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object p0

    .line 301
    :cond_0
    invoke-static {p1}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->isValidContentType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 302
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    goto :goto_0

    .line 304
    :cond_1
    sget-object v0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The content type of the response is not a valid content-type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public setResponsePayloadBytes(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setResponsePayloadBytes(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object p0
.end method

.method public setTimeToRequestCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 1

    .line 254
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setTimeToRequestCompletedUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object p0
.end method

.method public setTimeToResponseCompletedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setTimeToResponseCompletedUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    .line 281
    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/SessionManager;->perfSession()Lcom/google/firebase/perf/internal/PerfSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/perf/internal/PerfSession;->isGaugeAndEventCollectionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 282
    iget-object p1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->gaugeManager:Lcom/google/firebase/perf/internal/GaugeManager;

    invoke-static {}, Lcom/google/firebase/perf/internal/SessionManager;->getInstance()Lcom/google/firebase/perf/internal/SessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/internal/SessionManager;->perfSession()Lcom/google/firebase/perf/internal/PerfSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/firebase/perf/internal/PerfSession;->getTimer()Lcom/google/firebase/perf/util/Timer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/perf/internal/GaugeManager;->collectGaugeMetricOnce(Lcom/google/firebase/perf/util/Timer;)V

    :cond_0
    return-object p0
.end method

.method public setTimeToResponseInitiatedMicros(J)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setTimeToResponseInitiatedUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 2

    if-eqz p1, :cond_0

    .line 135
    invoke-static {p1}, Lcom/google/firebase/perf/util/Utils;->stripSensitiveInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 138
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->networkRequestMetricBuilder:Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    const/16 v1, 0x7d0

    invoke-static {p1, v1}, Lcom/google/firebase/perf/util/Utils;->truncateURL(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->setUrl(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;

    :cond_0
    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->userAgent:Ljava/lang/String;

    return-object p0
.end method

.method public updateSession(Lcom/google/firebase/perf/internal/PerfSession;)V
    .locals 2

    if-nez p1, :cond_0

    .line 81
    sget-object p1, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->logger:Lcom/google/firebase/perf/logging/AndroidLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Unable to add new SessionId to the Network Trace. Continuing without it."

    invoke-virtual {p1, v1, v0}, Lcom/google/firebase/perf/logging/AndroidLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->isStopped()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/google/firebase/perf/impl/NetworkRequestMetricBuilder;->sessions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
