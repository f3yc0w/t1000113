.class Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader$1;
.super Lcom/google/android/exoplr2avp/util/RunnableFutureTask;
.source "ProgressiveDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;->download(Lcom/google/android/exoplr2avp/offline/Downloader$ProgressListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;


# direct methods
.method constructor <init>(Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader$1;->this$0:Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/util/RunnableFutureTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelWork()V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader$1;->this$0:Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;->access$000(Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;)Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;

    move-result-object v0

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

    .line 92
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader$1;->doWork()Ljava/lang/Void;

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

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader$1;->this$0:Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;->access$000(Lcom/google/android/exoplr2avp/offline/ProgressiveDownloader;)Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/cache/CacheWriter;->cache()V

    const/4 v0, 0x0

    return-object v0
.end method
