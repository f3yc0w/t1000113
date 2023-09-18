.class public final synthetic Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$YFdDFj4Eb2HJ3LQ4Pn5-v8HBcCw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

.field public final synthetic f$1:Ljava/io/IOException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$YFdDFj4Eb2HJ3LQ4Pn5-v8HBcCw;->f$0:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$YFdDFj4Eb2HJ3LQ4Pn5-v8HBcCw;->f$1:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$YFdDFj4Eb2HJ3LQ4Pn5-v8HBcCw;->f$0:Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/offline/-$$Lambda$DownloadHelper$YFdDFj4Eb2HJ3LQ4Pn5-v8HBcCw;->f$1:Ljava/io/IOException;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->lambda$onMediaPreparationFailed$5$DownloadHelper(Ljava/io/IOException;)V

    return-void
.end method
