.class public final Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "GaugeMetric.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/GaugeMetricOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/GaugeMetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/GaugeMetric;",
        "Lcom/google/firebase/perf/v1/GaugeMetric$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/GaugeMetricOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 701
    invoke-static {}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$000()Lcom/google/firebase/perf/v1/GaugeMetric;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/GaugeMetric$1;)V
    .locals 0

    .line 694
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllAndroidMemoryReadings(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
            ">;)",
            "Lcom/google/firebase/perf/v1/GaugeMetric$Builder;"
        }
    .end annotation

    .line 1146
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1147
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1600(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllCpuMetricReadings(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;)",
            "Lcom/google/firebase/perf/v1/GaugeMetric$Builder;"
        }
    .end annotation

    .line 996
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 997
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1000(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAllIosMemoryReadings(Ljava/lang/Iterable;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/firebase/perf/v1/IosMemoryReading;",
            ">;)",
            "Lcom/google/firebase/perf/v1/GaugeMetric$Builder;"
        }
    .end annotation

    .line 1296
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1297
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$2200(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1132
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1133
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 1134
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    .line 1133
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1500(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0
.end method

.method public addAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1106
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1107
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1500(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0
.end method

.method public addAndroidMemoryReadings(Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1119
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1120
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0
.end method

.method public addAndroidMemoryReadings(Lcom/google/firebase/perf/v1/AndroidMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1093
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1094
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0
.end method

.method public addCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 982
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 983
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 984
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/CpuMetricReading;

    .line 983
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$900(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0
.end method

.method public addCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 956
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 957
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$900(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0
.end method

.method public addCpuMetricReadings(Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 969
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 970
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/CpuMetricReading;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$800(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0
.end method

.method public addCpuMetricReadings(Lcom/google/firebase/perf/v1/CpuMetricReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 943
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 944
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$800(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0
.end method

.method public addIosMemoryReadings(ILcom/google/firebase/perf/v1/IosMemoryReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1282
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1283
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 1284
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/IosMemoryReading;

    .line 1283
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$2100(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/IosMemoryReading;)V

    return-object p0
.end method

.method public addIosMemoryReadings(ILcom/google/firebase/perf/v1/IosMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1256
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1257
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$2100(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/IosMemoryReading;)V

    return-object p0
.end method

.method public addIosMemoryReadings(Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1269
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1270
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$2000(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/IosMemoryReading;)V

    return-object p0
.end method

.method public addIosMemoryReadings(Lcom/google/firebase/perf/v1/IosMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1243
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1244
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$2000(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/IosMemoryReading;)V

    return-object p0
.end method

.method public clearAndroidMemoryReadings()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1158
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1159
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1700(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0
.end method

.method public clearCpuMetricReadings()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1008
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1009
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1100(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0
.end method

.method public clearGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 870
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 871
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$600(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0
.end method

.method public clearIosMemoryReadings()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1308
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1309
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$2300(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0
.end method

.method public clearSessionId()Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 781
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 782
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$200(Lcom/google/firebase/perf/v1/GaugeMetric;)V

    return-object p0
.end method

.method public getAndroidMemoryReadings(I)Lcom/google/firebase/perf/v1/AndroidMemoryReading;
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->getAndroidMemoryReadings(I)Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    move-result-object p1

    return-object p1
.end method

.method public getAndroidMemoryReadingsCount()I
    .locals 1

    .line 1046
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getAndroidMemoryReadingsCount()I

    move-result v0

    return v0
.end method

.method public getAndroidMemoryReadingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/AndroidMemoryReading;",
            ">;"
        }
    .end annotation

    .line 1034
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 1035
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getAndroidMemoryReadingsList()Ljava/util/List;

    move-result-object v0

    .line 1034
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCpuMetricReadings(I)Lcom/google/firebase/perf/v1/CpuMetricReading;
    .locals 1

    .line 906
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->getCpuMetricReadings(I)Lcom/google/firebase/perf/v1/CpuMetricReading;

    move-result-object p1

    return-object p1
.end method

.method public getCpuMetricReadingsCount()I
    .locals 1

    .line 896
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getCpuMetricReadingsCount()I

    move-result v0

    return v0
.end method

.method public getCpuMetricReadingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/CpuMetricReading;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 885
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getCpuMetricReadingsList()Ljava/util/List;

    move-result-object v0

    .line 884
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getGaugeMetadata()Lcom/google/firebase/perf/v1/GaugeMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getIosMemoryReadings(I)Lcom/google/firebase/perf/v1/IosMemoryReading;
    .locals 1

    .line 1206
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->getIosMemoryReadings(I)Lcom/google/firebase/perf/v1/IosMemoryReading;

    move-result-object p1

    return-object p1
.end method

.method public getIosMemoryReadingsCount()I
    .locals 1

    .line 1196
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getIosMemoryReadingsCount()I

    move-result v0

    return v0
.end method

.method public getIosMemoryReadingsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/perf/v1/IosMemoryReading;",
            ">;"
        }
    .end annotation

    .line 1184
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 1185
    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getIosMemoryReadingsList()Ljava/util/List;

    move-result-object v0

    .line 1184
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 733
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getSessionId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->getSessionIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasGaugeMetadata()Z
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->hasGaugeMetadata()Z

    move-result v0

    return v0
.end method

.method public hasSessionId()Z
    .locals 1

    .line 718
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/GaugeMetric;->hasSessionId()Z

    move-result v0

    return v0
.end method

.method public mergeGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 859
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 860
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$500(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0
.end method

.method public removeAndroidMemoryReadings(I)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1170
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1171
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1800(Lcom/google/firebase/perf/v1/GaugeMetric;I)V

    return-object p0
.end method

.method public removeCpuMetricReadings(I)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1020
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1021
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1200(Lcom/google/firebase/perf/v1/GaugeMetric;I)V

    return-object p0
.end method

.method public removeIosMemoryReadings(I)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1320
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1321
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$2400(Lcom/google/firebase/perf/v1/GaugeMetric;I)V

    return-object p0
.end method

.method public setAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1080
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1081
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 1082
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/AndroidMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/AndroidMemoryReading;

    .line 1081
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1300(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0
.end method

.method public setAndroidMemoryReadings(ILcom/google/firebase/perf/v1/AndroidMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1067
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1068
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1300(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/AndroidMemoryReading;)V

    return-object p0
.end method

.method public setCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 930
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 931
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 932
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/CpuMetricReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/CpuMetricReading;

    .line 931
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$700(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0
.end method

.method public setCpuMetricReadings(ILcom/google/firebase/perf/v1/CpuMetricReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 917
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 918
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$700(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/CpuMetricReading;)V

    return-object p0
.end method

.method public setGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 847
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 848
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-virtual {p1}, Lcom/google/firebase/perf/v1/GaugeMetadata$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/perf/v1/GaugeMetadata;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0
.end method

.method public setGaugeMetadata(Lcom/google/firebase/perf/v1/GaugeMetadata;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 834
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 835
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$400(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/firebase/perf/v1/GaugeMetadata;)V

    return-object p0
.end method

.method public setIosMemoryReadings(ILcom/google/firebase/perf/v1/IosMemoryReading$Builder;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1230
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1231
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    .line 1232
    invoke-virtual {p2}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Lcom/google/firebase/perf/v1/IosMemoryReading;

    .line 1231
    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1900(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/IosMemoryReading;)V

    return-object p0
.end method

.method public setIosMemoryReadings(ILcom/google/firebase/perf/v1/IosMemoryReading;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 1217
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 1218
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$1900(Lcom/google/firebase/perf/v1/GaugeMetric;ILcom/google/firebase/perf/v1/IosMemoryReading;)V

    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 765
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 766
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$100(Lcom/google/firebase/perf/v1/GaugeMetric;Ljava/lang/String;)V

    return-object p0
.end method

.method public setSessionIdBytes(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/perf/v1/GaugeMetric$Builder;
    .locals 1

    .line 799
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->copyOnWrite()V

    .line 800
    iget-object v0, p0, Lcom/google/firebase/perf/v1/GaugeMetric$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/GaugeMetric;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/GaugeMetric;->access$300(Lcom/google/firebase/perf/v1/GaugeMetric;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
