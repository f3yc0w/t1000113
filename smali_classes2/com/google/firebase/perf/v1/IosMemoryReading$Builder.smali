.class public final Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "IosMemoryReading.java"

# interfaces
.implements Lcom/google/firebase/perf/v1/IosMemoryReadingOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/perf/v1/IosMemoryReading;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/google/firebase/perf/v1/IosMemoryReading;",
        "Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;",
        ">;",
        "Lcom/google/firebase/perf/v1/IosMemoryReadingOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 274
    invoke-static {}, Lcom/google/firebase/perf/v1/IosMemoryReading;->access$000()Lcom/google/firebase/perf/v1/IosMemoryReading;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/perf/v1/IosMemoryReading$1;)V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearClientTimeUs()Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;
    .locals 1

    .line 329
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->copyOnWrite()V

    .line 330
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/IosMemoryReading;->access$200(Lcom/google/firebase/perf/v1/IosMemoryReading;)V

    return-object p0
.end method

.method public clearFreeAppHeapMemoryKb()Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;
    .locals 1

    .line 433
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->copyOnWrite()V

    .line 434
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/IosMemoryReading;->access$600(Lcom/google/firebase/perf/v1/IosMemoryReading;)V

    return-object p0
.end method

.method public clearUsedAppHeapMemoryKb()Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;
    .locals 1

    .line 381
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->copyOnWrite()V

    .line 382
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-static {v0}, Lcom/google/firebase/perf/v1/IosMemoryReading;->access$400(Lcom/google/firebase/perf/v1/IosMemoryReading;)V

    return-object p0
.end method

.method public getClientTimeUs()J
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosMemoryReading;->getClientTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getFreeAppHeapMemoryKb()I
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosMemoryReading;->getFreeAppHeapMemoryKb()I

    move-result v0

    return v0
.end method

.method public getUsedAppHeapMemoryKb()I
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosMemoryReading;->getUsedAppHeapMemoryKb()I

    move-result v0

    return v0
.end method

.method public hasClientTimeUs()Z
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosMemoryReading;->hasClientTimeUs()Z

    move-result v0

    return v0
.end method

.method public hasFreeAppHeapMemoryKb()Z
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosMemoryReading;->hasFreeAppHeapMemoryKb()Z

    move-result v0

    return v0
.end method

.method public hasUsedAppHeapMemoryKb()Z
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-virtual {v0}, Lcom/google/firebase/perf/v1/IosMemoryReading;->hasUsedAppHeapMemoryKb()Z

    move-result v0

    return v0
.end method

.method public setClientTimeUs(J)Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;
    .locals 1

    .line 315
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->copyOnWrite()V

    .line 316
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-static {v0, p1, p2}, Lcom/google/firebase/perf/v1/IosMemoryReading;->access$100(Lcom/google/firebase/perf/v1/IosMemoryReading;J)V

    return-object p0
.end method

.method public setFreeAppHeapMemoryKb(I)Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;
    .locals 1

    .line 420
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->copyOnWrite()V

    .line 421
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosMemoryReading;->access$500(Lcom/google/firebase/perf/v1/IosMemoryReading;I)V

    return-object p0
.end method

.method public setUsedAppHeapMemoryKb(I)Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->copyOnWrite()V

    .line 369
    iget-object v0, p0, Lcom/google/firebase/perf/v1/IosMemoryReading$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/google/firebase/perf/v1/IosMemoryReading;

    invoke-static {v0, p1}, Lcom/google/firebase/perf/v1/IosMemoryReading;->access$300(Lcom/google/firebase/perf/v1/IosMemoryReading;I)V

    return-object p0
.end method
