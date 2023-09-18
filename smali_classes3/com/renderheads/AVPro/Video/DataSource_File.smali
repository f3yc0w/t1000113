.class public final Lcom/renderheads/AVPro/Video/DataSource_File;
.super Ljava/lang/Object;
.source "DataSource_File.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource;


# instance fields
.field private bytesRemaining:J

.field private dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

.field private file:Ljava/io/RandomAccessFile;

.field private final listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

.field private m_FileOffset:J

.field private opened:Z

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/DataSource_File;-><init>(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileOffset"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/renderheads/AVPro/Video/DataSource_File;-><init>(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 3
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->m_FileOffset:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transferListener"
        }
    .end annotation

    return-void
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->file:Ljava/io/RandomAccessFile;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_0
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->file:Ljava/io/RandomAccessFile;

    .line 16
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->opened:Z

    if-eqz v0, :cond_1

    .line 18
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->opened:Z

    .line 19
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz v0, :cond_1

    .line 21
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    invoke-interface {v0, p0, v2, v1}, Lcom/google/android/exoplr2avp/upstream/TransferListener;->onTransferEnd(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 22
    :try_start_1
    new-instance v3, Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v3, v2}, Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Exception;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    :goto_0
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->file:Ljava/io/RandomAccessFile;

    .line 27
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->opened:Z

    if-eqz v0, :cond_2

    .line 29
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->opened:Z

    .line 30
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz v0, :cond_2

    .line 32
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    invoke-interface {v0, p0, v3, v1}, Lcom/google/android/exoplr2avp/upstream/TransferListener;->onTransferEnd(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Z)V

    .line 35
    :cond_2
    throw v2
.end method

.method public synthetic getResponseHeaders()Ljava/util/Map;
    .locals 1

    invoke-static {p0}, Lcom/google/android/exoplr2avp/upstream/DataSource$-CC;->$default$getResponseHeaders(Lcom/google/android/exoplr2avp/upstream/DataSource;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataSpec"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->uri:Landroid/net/Uri;

    .line 3
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "r"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->file:Ljava/io/RandomAccessFile;

    .line 5
    iget-wide v1, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    iget-wide v3, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->m_FileOffset:J

    add-long/2addr v1, v3

    .line 6
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 8
    iget-wide v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->length:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->position:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->m_FileOffset:J

    sub-long/2addr v0, v2

    :cond_0
    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->bytesRemaining:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->opened:Z

    .line 20
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 22
    invoke-interface {v0, p0, p1, v1}, Lcom/google/android/exoplr2avp/upstream/TransferListener;->onTransferStart(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Z)V

    .line 25
    :cond_1
    iget-wide v0, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->bytesRemaining:J

    return-wide v0

    .line 26
    :cond_2
    :try_start_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    .line 31
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "buffer",
            "offset",
            "readLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 1
    :cond_0
    iget-wide v1, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->bytesRemaining:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const/4 p1, -0x1

    return p1

    .line 10
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->file:Ljava/io/RandomAccessFile;

    int-to-long v4, p3

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p1, :cond_2

    .line 19
    iget-wide p2, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->bytesRemaining:J

    int-to-long v1, p1

    sub-long/2addr p2, v1

    iput-wide p2, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->bytesRemaining:J

    .line 20
    iget-object p2, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz p2, :cond_2

    .line 22
    iget-object p3, p0, Lcom/renderheads/AVPro/Video/DataSource_File;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    invoke-interface {p2, p0, p3, v0, p1}, Lcom/google/android/exoplr2avp/upstream/TransferListener;->onBytesTransferred(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;ZI)V

    :cond_2
    return p1

    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;

    invoke-direct {p2, p1}, Lcom/google/android/exoplr2avp/upstream/FileDataSource$FileDataSourceException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method
