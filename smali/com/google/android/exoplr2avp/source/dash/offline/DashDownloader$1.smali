.class Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;
.super Lcom/google/android/exoplr2avp/util/RunnableFutureTask;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->getSegmentIndex(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;Z)Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplr2avp/util/RunnableFutureTask<",
        "Lcom/google/android/exoplr2avp/extractor/ChunkIndex;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;

.field final synthetic val$dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field final synthetic val$representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

.field final synthetic val$trackType:I


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;->this$0:Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;->val$dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iput p3, p0, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;->val$trackType:I

    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;->val$representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doWork()Lcom/google/android/exoplr2avp/extractor/ChunkIndex;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;->val$dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iget v1, p0, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;->val$trackType:I

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;->val$representation:Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    invoke-static {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->loadChunkIndex(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;)Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;->doWork()Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    move-result-object v0

    return-object v0
.end method
