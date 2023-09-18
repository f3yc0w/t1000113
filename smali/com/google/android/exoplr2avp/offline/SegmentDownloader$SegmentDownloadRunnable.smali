.class final Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;
.super Lcom/google/android/exoplr2avp/util/RunnableFutureTask;
.source "SegmentDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/offline/SegmentDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SegmentDownloadRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplr2avp/util/RunnableFutureTask<",
        "Ljava/lang/Void;",
        "Ljava/io/IOException;",
        ">;"
    }
.end annotation


# instance fields
.field private final cacheWriter:Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;

.field public final dataSource:Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;

.field private final progressNotifier:Lcom/google/android/exoplr2avp/offline/SegmentDownloader$ProgressNotifier;

.field public final segment:Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;

.field public final temporaryBuffer:[B


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;Lcom/google/android/exoplr2avp/offline/SegmentDownloader$ProgressNotifier;[B)V
    .locals 1

    .line 466
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/util/RunnableFutureTask;-><init>()V

    .line 467
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;->segment:Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;

    .line 468
    iput-object p2, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;->dataSource:Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;

    .line 469
    iput-object p3, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Lcom/google/android/exoplr2avp/offline/SegmentDownloader$ProgressNotifier;

    .line 470
    iput-object p4, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;->temporaryBuffer:[B

    .line 471
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    invoke-direct {v0, p2, p1, p4, p3}, Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;-><init>(Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;[BLcom/google/android/exoplr2avp/upstream/cache/CacheWriter$ProgressListener;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;

    return-void
.end method


# virtual methods
.method protected cancelWork()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;->cancel()V

    return-void
.end method

.method protected bridge synthetic doWork()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;->doWork()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected doWork()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 477
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;->cacheWriter:Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;->cache()V

    .line 478
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$SegmentDownloadRunnable;->progressNotifier:Lcom/google/android/exoplr2avp/offline/SegmentDownloader$ProgressNotifier;

    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$ProgressNotifier;->onSegmentDownloaded()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
