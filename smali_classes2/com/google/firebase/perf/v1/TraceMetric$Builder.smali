.class public final Lcom/google/firebase/perf/v1/TraceMetric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "TraceMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/TraceMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/TraceMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/TraceMetric;",
        "Lcom/google/firebase/perf/v1/TraceMetric$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/TraceMetricOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 964
    invoke-static {}, Lcom/google/firebase/perf/v1/TraceMetric;->access$000()Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/TraceMetric$1;)V
    .locals 0

    .line 957
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllPerfSessions(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/PerfSession;",
            ">;)",
            "Lcom/google/firebase/perf/v1/TraceMetric$Builder;"
        }
    .end annotation

    .line 1834
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1835
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$2100(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllSubtraces(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/TraceMetric;",
            ">;)",
            "Lcom/google/firebase/perf/v1/TraceMetric$Builder;"
        }
    .end annotation

    .line 1512
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1513
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1400(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession$Builder;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1816
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1817
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1818
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/PerfSession;

    .line 1817
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$2000(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public addPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1782
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1783
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$2000(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession$Builder;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1799
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1800
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/PerfSession;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1900(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public addPerfSessions(Lcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1765
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1766
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1900(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public addSubtraces(ILcom/google/firebase/perf/v1/TraceMetric$Builder;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1495
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1496
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1497
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1496
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1300(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public addSubtraces(ILcom/google/firebase/perf/v1/TraceMetric;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1463
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1464
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1300(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public addSubtraces(Lcom/google/firebase/perf/v1/TraceMetric$Builder;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1479
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1480
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1200(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public addSubtraces(Lcom/google/firebase/perf/v1/TraceMetric;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1447
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1448
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1200(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public clearClientStartTimeUs()Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1178
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1179
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$700(Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public clearCounters()Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1256
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1257
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1000(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearCustomAttributes()Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1568
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1569
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1700(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-object p0
.end method

.method public clearDurationUs()Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1230
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1231
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$900(Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public clearIsAuto()Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1122
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1123
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$500(Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public clearName()Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1044
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1045
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$200(Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public clearPerfSessions()Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1850
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1851
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$2200(Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public clearSubtraces()Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1527
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1528
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1500(Lcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public containsCounters(Ljava/lang/String;)Z
    .locals 1

    .line 1251
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1252
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsCustomAttributes(Ljava/lang/String;)Z
    .locals 1

    .line 1563
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1564
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClientStartTimeUs()J
    .locals 2

    .line 1151
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getClientStartTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1281
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->getCountersMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCountersCount()I
    .locals 1

    .line 1238
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public getCountersMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1292
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1293
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object v0

    .line 1292
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCountersOrDefault(Ljava/lang/String;J)J
    .locals 2

    .line 1307
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1308
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1309
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object v0

    .line 1310
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public getCountersOrThrow(Ljava/lang/String;)J
    .locals 2

    .line 1323
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1324
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1325
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCountersMap()Ljava/util/Map;

    move-result-object v0

    .line 1326
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 1327
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
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

    .line 1593
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomAttributesCount()I
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCustomAttributesMap()Ljava/util/Map;

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

    .line 1604
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1605
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 1604
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getCustomAttributesOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1619
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1620
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1621
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 1622
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

    .line 1635
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1636
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1637
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getCustomAttributesMap()Ljava/util/Map;

    move-result-object v0

    .line 1638
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1641
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1639
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public getDurationUs()J
    .locals 2

    .line 1205
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsAuto()Z
    .locals 1

    .line 1093
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getIsAuto()Z

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 996
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;
    .locals 1

    .line 1716
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getPerfSessions(I)Lcom/google/firebase/perf/v1/PerfSession;

    move-result-object p1

    return-object p1
.end method

.method public getPerfSessionsCount()I
    .locals 1

    .line 1702
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getPerfSessionsCount()I

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

    .line 1686
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1687
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getPerfSessionsList()Ljava/util/List;

    move-result-object v0

    .line 1686
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSubtraces(I)Lcom/google/firebase/perf/v1/TraceMetric;
    .locals 1

    .line 1401
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->getSubtraces(I)Lcom/google/firebase/perf/v1/TraceMetric;

    move-result-object p1

    return-object p1
.end method

.method public getSubtracesCount()I
    .locals 1

    .line 1388
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getSubtracesCount()I

    move-result v0

    return v0
.end method

.method public getSubtracesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/TraceMetric;",
            ">;"
        }
    .end annotation

    .line 1373
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1374
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->getSubtracesList()Ljava/util/List;

    move-result-object v0

    .line 1373
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hasClientStartTimeUs()Z
    .locals 1

    .line 1138
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->hasClientStartTimeUs()Z

    move-result v0

    return v0
.end method

.method public hasDurationUs()Z
    .locals 1

    .line 1193
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->hasDurationUs()Z

    move-result v0

    return v0
.end method

.method public hasIsAuto()Z
    .locals 1

    .line 1079
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->hasIsAuto()Z

    move-result v0

    return v0
.end method

.method public hasName()Z
    .locals 1

    .line 981
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->hasName()Z

    move-result v0

    return v0
.end method

.method public putAllCounters(Ljava/util/Map;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)",
            "Lcom/google/firebase/perf/v1/TraceMetric$Builder;"
        }
    .end annotation

    .line 1356
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1357
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1000(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putAllCustomAttributes(Ljava/util/Map;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/firebase/perf/v1/TraceMetric$Builder;"
        }
    .end annotation

    .line 1668
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1669
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1700(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public putCounters(Ljava/lang/String;J)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1343
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1344
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1000(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public putCustomAttributes(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1653
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1654
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1655
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1656
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1700(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeCounters(Ljava/lang/String;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1270
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1271
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1272
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1000(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removeCustomAttributes(Ljava/lang/String;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1582
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1583
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1584
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1700(Lcom/google/firebase/perf/v1/TraceMetric;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public removePerfSessions(I)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1866
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1867
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$2300(Lcom/google/firebase/perf/v1/TraceMetric;I)V

    return-object p0
.end method

.method public removeSubtraces(I)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1542
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1543
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1600(Lcom/google/firebase/perf/v1/TraceMetric;I)V

    return-object p0
.end method

.method public setClientStartTimeUs(J)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1164
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1165
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$600(Lcom/google/firebase/perf/v1/TraceMetric;J)V

    return-object p0
.end method

.method public setDurationUs(J)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1217
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1218
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$800(Lcom/google/firebase/perf/v1/TraceMetric;J)V

    return-object p0
.end method

.method public setIsAuto(Z)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1107
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1108
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$400(Lcom/google/firebase/perf/v1/TraceMetric;Z)V

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1028
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1029
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$100(Lcom/google/firebase/perf/v1/TraceMetric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setNameBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1062
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1063
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/TraceMetric;->access$300(Lcom/google/firebase/perf/v1/TraceMetric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession$Builder;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1748
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1749
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1750
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/PerfSession$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/PerfSession;

    .line 1749
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1800(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public setPerfSessions(ILcom/google/firebase/perf/v1/PerfSession;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1731
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1732
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1800(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/PerfSession;)V

    return-object p0
.end method

.method public setSubtraces(ILcom/google/firebase/perf/v1/TraceMetric$Builder;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1431
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1432
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1433
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/TraceMetric;

    .line 1432
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1100(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method

.method public setSubtraces(ILcom/google/firebase/perf/v1/TraceMetric;)Lcom/google/firebase/perf/v1/TraceMetric$Builder;
    .locals 1

    .line 1415
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->copyOnWrite()V

    .line 1416
    iget-object v0, p0, Lcom/google/firebase/perf/v1/TraceMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/TraceMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/TraceMetric;->access$1100(Lcom/google/firebase/perf/v1/TraceMetric;ILcom/google/firebase/perf/v1/TraceMetric;)V

    return-object p0
.end method
