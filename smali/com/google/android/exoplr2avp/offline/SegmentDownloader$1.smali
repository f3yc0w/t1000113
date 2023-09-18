.class Lcom/google/android/exoplr2avp/offline/SegmentDownloader$1;
.super Lcom/google/android/exoplr2avp/util/RunnableFutureTask;
.source "SegmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/offline/SegmentDownloader;->getManifest(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Z)Lcom/google/android/exoplr2avp/offline/FilterableManifest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplr2avp/util/RunnableFutureTask<",
        "TM;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/offline/SegmentDownloader;

.field final synthetic val$dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field final synthetic val$dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/offline/SegmentDownloader;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$1;->this$0:Lcom/google/android/exoplr2avp/offline/SegmentDownloader;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$1;->val$dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$1;->val$dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected doWork()Lcom/google/android/exoplr2avp/offline/FilterableManifest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$1;->val$dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$1;->this$0:Lcom/google/android/exoplr2avp/offline/SegmentDownloader;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/offline/SegmentDownloader;->access$000(Lcom/google/android/exoplr2avp/offline/SegmentDownloader;)Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$1;->val$dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    const/4 v3, 0x4

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->load(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/upstream/DataSpec;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/offline/FilterableManifest;

    return-object v0
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 310
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$1;->doWork()Lcom/google/android/exoplr2avp/offline/FilterableManifest;

    move-result-object v0

    return-object v0
.end method
