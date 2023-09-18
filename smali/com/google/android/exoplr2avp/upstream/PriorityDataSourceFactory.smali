.class public final Lcom/google/android/exoplr2avp/upstream/PriorityDataSourceFactory;
.super Ljava/lang/Object;
.source "PriorityDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

.field private final upstreamFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/util/PriorityTaskManager;I)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 40
    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSourceFactory;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    .line 41
    iput p3, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSourceFactory;->priority:I

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/PriorityDataSourceFactory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;
    .locals 4

    .line 46
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSourceFactory;->upstreamFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 47
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSourceFactory;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    iget v3, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSourceFactory;->priority:I

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/util/PriorityTaskManager;I)V

    return-object v0
.end method
