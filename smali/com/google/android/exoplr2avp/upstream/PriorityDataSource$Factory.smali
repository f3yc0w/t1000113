.class public final Lcom/google/android/exoplr2avp/upstream/PriorityDataSource$Factory;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

.field private final upstreamFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/util/PriorityTaskManager;I)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource$Factory;->upstreamFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 61
    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource$Factory;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    .line 62
    iput p3, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource$Factory;->priority:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;
    .locals 4

    .line 67
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource$Factory;->upstreamFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 68
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource$Factory;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    iget v3, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource$Factory;->priority:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/util/PriorityTaskManager;I)V

    return-object v0
.end method
