.class public interface abstract Lcom/google/android/exoplr2avp/offline/DownloadIndex;
.super Ljava/lang/Object;
.source "DownloadIndex.java"


# virtual methods
.method public abstract getDownload(Ljava/lang/String;)Lcom/google/android/exoplr2avp/offline/Download;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public varargs abstract getDownloads([I)Lcom/google/android/exoplr2avp/offline/DownloadCursor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
