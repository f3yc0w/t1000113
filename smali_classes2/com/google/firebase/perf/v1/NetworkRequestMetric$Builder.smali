.class public final Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "NetworkRequestMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/NetworkRequestMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/NetworkRequestMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetric;",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/NetworkRequestMetricOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1357
    invoke-static {}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$000()Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/NetworkRequestMetric$1;)V
    .locals 0

    .line 1350
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPerfSessions(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;)",
            "Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;"
        }
    .end annotation

    .line 2344
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2345
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession$Builder;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2326
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2327
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2328
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/PerfSession;

    .line 2327
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2292
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2293
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession$Builder;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2309
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2310
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2275
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2276
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public clearClientStartTimeUs()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1884
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1885
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearCustomAttributes()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2078
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2079
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1535
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1536
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearHttpResponseCode()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1747
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1748
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearNetworkClientErrorReason()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1695
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1696
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearPerfSessions()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2360
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2361
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$3000(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearRequestPayloadBytes()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1587
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1588
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearResponseContentType()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1813
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1814
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearResponsePayloadBytes()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1639
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1640
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearTimeToRequestCompletedUs()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1940
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1941
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2000(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearTimeToResponseCompletedUs()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2052
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2053
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearTimeToResponseInitiatedUs()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1996
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1997
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public clearUrl()Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1457
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1458
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)V

    return-object p0
.end method

.method public containsCustomAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 2073
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2074
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClientStartTimeUs()J
    .locals 2

    .line 1857
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getClientStartTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCustomAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2103
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomAttributesCount()I
    .locals 1

    .line 2060
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCustomAttributesMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2114
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2115
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 2114
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2130
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2131
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 2132
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :cond_0
    return-object p2
.end method

.method public getCustomAttributesOrThrow(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2146
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2147
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 2148
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2151
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 2149
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;
    .locals 1

    .line 1508
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpMethod()Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public getHttpResponseCode()I
    .locals 1

    .line 1722
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getHttpResponseCode()I

    move-result v0

    return v0
.end method

.method public getNetworkClientErrorReason()Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;
    .locals 1

    .line 1668
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getNetworkClientErrorReason()Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;

    move-result-object v0

    return-object v0
.end method

.method public getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;
    .locals 1

    .line 2226
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object p1

    return-object p1
.end method

.method public getPerfSessionsCount()I
    .locals 1

    .line 2212
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getPerfSessionsCount()I

    move-result v0

    return v0
.end method

.method public getPerfSessionsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;"
        }
    .end annotation

    .line 2196
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2197
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getPerfSessionsList()Ljava/util/List;

    move-result-object v0

    .line 2196
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRequestPayloadBytes()J
    .locals 2

    .line 1562
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getRequestPayloadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResponseContentType()Ljava/lang/String;
    .locals 1

    .line 1774
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponseContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResponseContentTypeBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1787
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponseContentTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getResponsePayloadBytes()J
    .locals 2

    .line 1614
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getResponsePayloadBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeToRequestCompletedUs()J
    .locals 2

    .line 1913
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToRequestCompletedUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeToResponseCompletedUs()J
    .locals 2

    .line 2025
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseCompletedUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeToResponseInitiatedUs()J
    .locals 2

    .line 1969
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getTimeToResponseInitiatedUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1397
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1417
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasClientStartTimeUs()Z
    .locals 1

    .line 1844
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasClientStartTimeUs()Z

    move-result v0

    return v0
.end method

.method public hasHttpMethod()Z
    .locals 1

    .line 1495
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpMethod()Z

    move-result v0

    return v0
.end method

.method public hasHttpResponseCode()Z
    .locals 1

    .line 1710
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasHttpResponseCode()Z

    move-result v0

    return v0
.end method

.method public hasNetworkClientErrorReason()Z
    .locals 1

    .line 1655
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasNetworkClientErrorReason()Z

    move-result v0

    return v0
.end method

.method public hasRequestPayloadBytes()Z
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasRequestPayloadBytes()Z

    move-result v0

    return v0
.end method

.method public hasResponseContentType()Z
    .locals 1

    .line 1762
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasResponseContentType()Z

    move-result v0

    return v0
.end method

.method public hasResponsePayloadBytes()Z
    .locals 1

    .line 1602
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasResponsePayloadBytes()Z

    move-result v0

    return v0
.end method

.method public hasTimeToRequestCompletedUs()Z
    .locals 1

    .line 1900
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToRequestCompletedUs()Z

    move-result v0

    return v0
.end method

.method public hasTimeToResponseCompletedUs()Z
    .locals 1

    .line 2012
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseCompletedUs()Z

    move-result v0

    return v0
.end method

.method public hasTimeToResponseInitiatedUs()Z
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasTimeToResponseInitiatedUs()Z

    move-result v0

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .line 1378
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->hasUrl()Z

    move-result v0

    return v0
.end method

.method public putAllCustomAttributes(Ljava/util/Map;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;"
        }
    .end annotation

    .line 2178
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2179
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putCustomAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2164
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2165
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2166
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeCustomAttributes(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2092
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2093
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2094
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2500(Lcom/google/firebase/perf/v1/NetworkRequestMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removePerfSessions(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2376
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2377
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$3100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;I)V

    return-object p0
.end method

.method public setClientStartTimeUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1870
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1871
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1700(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0
.end method

.method public setHttpMethod(Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1521
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1522
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod;)V

    return-object p0
.end method

.method public setHttpResponseCode(I)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1734
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1735
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1200(Lcom/google/firebase/perf/v1/NetworkRequestMetric;I)V

    return-object p0
.end method

.method public setNetworkClientErrorReason(Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1681
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1682
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1000(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason;)V

    return-object p0
.end method

.method public setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession$Builder;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2258
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2259
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    .line 2260
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/PerfSession;

    .line 2259
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2241
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2242
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public setRequestPayloadBytes(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1574
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1575
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0
.end method

.method public setResponseContentType(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1800
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1801
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1400(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setResponseContentTypeBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1828
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1829
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1600(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setResponsePayloadBytes(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1626
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1627
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$800(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0
.end method

.method public setTimeToRequestCompletedUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1926
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1927
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$1900(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0
.end method

.method public setTimeToResponseCompletedUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 2038
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 2039
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0
.end method

.method public setTimeToResponseInitiatedUs(J)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1982
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1983
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$2100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;J)V

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1437
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1438
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$100(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setUrlBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;
    .locals 1

    .line 1479
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->copyOnWrite()V

    .line 1480
    iget-object v0, p0, Lcom/google/firebase/perf/v1/NetworkRequestMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/NetworkRequestMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/NetworkRequestMetric;->access$300(Lcom/google/firebase/perf/v1/NetworkRequestMetric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
