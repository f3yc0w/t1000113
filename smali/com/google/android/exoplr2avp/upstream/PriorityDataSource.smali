.class public final Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;
.super Ljava/lang/Object;
.source "PriorityDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/PriorityDataSource$Factory;
    }
.end annotation


# instance fields
.field private final priority:I

.field private final priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

.field private final upstream:Lcom/google/android/exoplr2avp/upstream/DataSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/util/PriorityTaskManager;I)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/DataSource;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->upstream:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 84
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    .line 85
    iput p3, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->priority:I

    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 1

    .line 90
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->upstream:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->upstream:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->close()V

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->upstream:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->upstream:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;->proceedOrThrow(I)V

    .line 97
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->upstream:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DataSource;->open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->priorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->priority:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/PriorityTaskManager;->proceedOrThrow(I)V

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/PriorityDataSource;->upstream:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/upstream/DataSource;->read([BII)I

    move-result p1

    return p1
.end method
