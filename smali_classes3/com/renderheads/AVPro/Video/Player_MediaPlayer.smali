.class public Lcom/renderheads/AVPro/Video/Player_MediaPlayer;
.super Lcom/renderheads/AVPro/Video/Player_Base;
.source "Player_MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# instance fields
.field private m_FirstTimeStamp:J

.field private m_MediaExtractor:Landroid/media/MediaExtractor;

.field private m_MediaPlayer:Landroid/media/MediaPlayer;

.field private m_aAudioTrackInfoReturn:[Ljava/lang/String;

.field private m_aTextTrackInfoReturn:[Ljava/lang/String;

.field private m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

.field private m_aVideoTrackInfoReturn:[Ljava/lang/String;

.field private m_bGotFirstTimeStamp:Z


# direct methods
.method public constructor <init>(IZLjava/util/Random;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerIndex",
            "watermarked",
            "random",
            "bUltraBuild"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/renderheads/AVPro/Video/Player_Base;-><init>(IZLjava/util/Random;Z)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_FirstTimeStamp:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_bGotFirstTimeStamp:Z

    const-string p1, "0"

    const-string p2, ""

    .line 738
    filled-new-array {p1, p2, p2, p2, p2}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    const-string v0, "0"

    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    .line 759
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    .line 784
    filled-new-array {p1, p2, p2, p2}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    const/4 p1, 0x0

    .line 785
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    return-void
.end method

.method private static GetJsonAsMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t parse json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private GetTrackInfo(II)Landroid/media/MediaPlayer$TrackInfo;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iTrackType",
            "iTrackIndex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, v0, v2

    if-eqz v4, :cond_1

    .line 3
    invoke-virtual {v4}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v5

    if-ne v5, p1, :cond_1

    if-ne v3, p2, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private ResetPlaybackFrameRate()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_FrameRate:F

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_NumberFrames:J

    .line 4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_LastSystemTimeMS:J

    return-void
.end method

.method private UpdateGetDuration()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    .line 5
    :cond_0
    iget-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    return-void
.end method

.method public static synthetic access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;[Landroid/media/MediaPlayer$TrackInfo;)[Landroid/media/MediaPlayer$TrackInfo;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    return-object p1
.end method

.method public static synthetic access$202(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_FirstTimeStamp:J

    return-wide p1
.end method

.method public static synthetic access$302(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_bGotFirstTimeStamp:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->setMediaPlayerDataSourceFromZip(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public static synthetic access$500(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaExtractor;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    return-object p0
.end method

.method public static synthetic access$502(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    return-object p1
.end method

.method private setMediaPlayerDataSourceFromZip(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "zipFileName",
            "fileNameInZip",
            "fileOffset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 9
    :try_start_0
    new-instance v1, Lcom/android/vending/expansion/zipfile/ZipResourceFile;

    invoke-direct {v1, p1}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 13
    invoke-static {v1, p2}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->zipFindFile(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object p2

    .line 14
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    iget-wide v4, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    add-long v5, v4, p3

    iget-wide v7, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    sub-long/2addr v7, p3

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 18
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v1, v3, :cond_1

    .line 20
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    .line 24
    :try_start_2
    iget-wide v4, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mOffset:J

    add-long v5, v4, p3

    iget-wide v7, p2, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mUncompressedLength:J

    sub-long/2addr v7, p3

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 28
    :catch_0
    :try_start_3
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {p1}, Landroid/media/MediaExtractor;->release()V

    .line 29
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 38
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 40
    :cond_2
    throw p1
.end method

.method private static zipFindFile(Lcom/android/vending/expansion/zipfile/ZipResourceFile;Ljava/lang/String;)Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "zip",
            "fileNameInZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/vending/expansion/zipfile/ZipResourceFile;->getAllEntries()[Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    .line 3
    iget-object v4, v3, Lcom/android/vending/expansion/zipfile/ZipResourceFile$ZipEntryRO;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    const-string p1, "File \"%s\"not found in zip"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public AddMediaToCache(Ljava/lang/String;Ljava/lang/String;DII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "headers",
            "minimumRequiredBitRate",
            "minimumRequiredResolutionWidth",
            "minimumRequiredResolutionHeight"
        }
    .end annotation

    return-void
.end method

.method public AddMediaToCache(Ljava/lang/String;Ljava/lang/String;DIIDII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "headers",
            "minimumRequiredBitRate",
            "minimumRequiredResolutionWidth",
            "minimumRequiredResolutionHeight",
            "maximumRequiredBitRate",
            "maximumRequiredResolutionWidth",
            "maximumRequiredResolutionHeight"
        }
    .end annotation

    return-void
.end method

.method public BindSurfaceToPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 5
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 6
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    :cond_0
    return-void
.end method

.method public CanPlay()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public CancelDownloadOfMediaToCache(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public CloseVideoOnPlayer()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->_pause()V

    .line 6
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->_stop()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 16
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    .line 19
    :cond_1
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_FirstTimeStamp:J

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_bGotFirstTimeStamp:Z

    .line 24
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 26
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 34
    new-instance v0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$1;-><init>(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)V

    .line 48
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 49
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    return-void
.end method

.method public DeinitializeVideoPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 5
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 6
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 7
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public GetAudioBufferedSampleCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public GetAudioTrackInfo(I)[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v3, ""

    .line 2
    aput-object v3, v0, v1

    const/4 v4, 0x2

    .line 3
    aput-object v3, v0, v4

    .line 4
    iget v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultAudioTrackIndex:I

    const-string v5, "0"

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    .line 5
    aput-object v5, v0, v2

    const/4 v6, 0x5

    .line 6
    aput-object v5, v0, v6

    .line 8
    invoke-direct {p0, v4, p1}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->GetTrackInfo(II)Landroid/media/MediaPlayer$TrackInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 11
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v4

    .line 13
    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    if-eqz p1, :cond_1

    const-string v5, "channel-count"

    invoke-virtual {p1, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    aput-object v5, v0, v6

    .line 17
    :cond_2
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    aget-object v0, p1, v1

    aget-object v0, p1, v4

    aget-object v0, p1, v3

    aget-object v0, p1, v2

    aget-object v0, p1, v6

    return-object p1
.end method

.method public GetBufferedTimeRanges()[D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetBufferedTimeRangesResult:[D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 2
    aput-wide v2, v0, v1

    return-object v0
.end method

.method public GetBufferingProgressPercent()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fBufferingProgressPercent:F

    return v0
.end method

.method public GetCachedMediaStatus(Ljava/lang/String;)[F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x0

    aput v1, p1, v0

    return-object p1
.end method

.method public GetCurrentAbsoluteTimestamp()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public GetCurrentTextCue()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public GetCurrentTimeS()D
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 3
    iget v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/16 v2, 0x8

    if-gt v1, v2, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 8
    iget-wide v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    move-wide v0, v2

    :cond_0
    long-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v0, v0, v2

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public GetSeekableTimeRanges()[D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetSeekableTimeRangesResult:[D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 2
    aput-wide v2, v0, v1

    return-object v0
.end method

.method public GetTextTrackInfo(I)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    .line 2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v3, ""

    aput-object v3, v0, v1

    const/4 v4, 0x3

    .line 4
    aput-object v3, v0, v4

    const/4 v0, 0x4

    .line 6
    invoke-direct {p0, v0, p1}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->GetTrackInfo(II)Landroid/media/MediaPlayer$TrackInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    aget-object v0, p1, v2

    aget-object v0, p1, v1

    aget-object v0, p1, v4

    return-object p1
.end method

.method public GetVideoTrackInfo(I)[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "1"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v3, ""

    .line 2
    aput-object v3, v0, v1

    const/4 v4, 0x2

    .line 3
    aput-object v3, v0, v4

    .line 4
    iget v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultVideoTrackIndex:I

    const-string v5, "0"

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v5

    :goto_0
    const/4 v3, 0x3

    aput-object v2, v0, v3

    const/4 v2, 0x4

    .line 5
    aput-object v5, v0, v2

    .line 7
    invoke-direct {p0, v1, p1}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->GetTrackInfo(II)Landroid/media/MediaPlayer$TrackInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/media/MediaPlayer$TrackInfo;->getLanguage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v4

    .line 13
    :cond_1
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    aget-object v0, p1, v1

    aget-object v0, p1, v4

    aget-object v0, p1, v3

    aget-object v0, p1, v2

    return-object p1
.end method

.method public GrabAudio(II)[F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleCount",
            "channelCount"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public InitialisePlayer(ZIIIZIIIIIII)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "preferSoftware",
            "audioSubsystem",
            "audio360Channels",
            "iUnityAudioSampleRate",
            "bForceStartHighestBitrate",
            "iMinBufferMs",
            "iMaxBufferMs",
            "iBufferForPlaybackMs",
            "iBufferForPlaybackAfterRebufferMs",
            "peakBitrateBps",
            "maxWidth",
            "maxHeight"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    .line 3
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iAudioSubsystem:I

    const/4 p1, 0x1

    return p1
.end method

.method public IsFinished()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsMediaCachingSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public IsPaused()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsPlaying()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsSeeking()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;III)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fileOffset",
            "httpHeader",
            "forcedFileFormat",
            "audioSubsystem",
            "audio360Channels"
        }
    .end annotation

    .line 3
    iget-object p5, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p5, :cond_0

    .line 7
    new-instance p5, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move-wide v4, p2

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;-><init>(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Ljava/lang/String;Ljava/lang/String;JLcom/renderheads/AVPro/Video/Player_MediaPlayer;)V

    .line 264
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public PauseDownloadOfMediaToCache(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public PlayerRenderUpdate()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->PlayerRenderUpdate()V

    return-void
.end method

.method public PlayerRendererSetup()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->PlayerRendererSetup()V

    return-void
.end method

.method public RemoveMediaFromCache(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public ResumeDownloadOfMediaToCache(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    return-void
.end method

.method public SetAudioTrack(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTrackIndex"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-le v0, v2, :cond_8

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    if-eq p1, v2, :cond_8

    .line 6
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x2

    if-ge v3, v2, :cond_1

    aget-object v6, v0, v3

    if-eqz v6, :cond_0

    .line 8
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v7

    if-ne v7, v5, :cond_0

    .line 10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Audio track "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 16
    :cond_1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_4

    if-gez p1, :cond_4

    .line 20
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v3, v0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v8, v0, v4

    if-eqz v8, :cond_3

    .line 22
    invoke-virtual {v8}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v8

    if-ne v8, v5, :cond_3

    .line 24
    iget v8, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    if-ne v6, v8, :cond_2

    .line 26
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->deselectTrack(I)V

    .line 27
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    .line 28
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-le p1, v2, :cond_8

    .line 37
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    if-ge p1, v0, :cond_8

    .line 41
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    :goto_3
    if-ge v3, v2, :cond_8

    aget-object v7, v0, v3

    if-eqz v7, :cond_7

    .line 43
    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v8

    if-ne v8, v5, :cond_7

    if-ne v4, p1, :cond_6

    .line 47
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->selectTrack(I)V

    .line 48
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    .line 50
    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v0, "channel-count"

    .line 53
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    .line 56
    :cond_5
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    const/4 p1, 0x1

    return p1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    :cond_7
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    return v1
.end method

.method public SetFocusEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    return-void
.end method

.method public SetFocusProps(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offFocusLevel",
            "widthDegrees"
        }
    .end annotation

    return-void
.end method

.method public SetFocusRotation(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    return-void
.end method

.method public SetHeadRotation(FFFF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    return-void
.end method

.method public SetLooping(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bLooping"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bLooping:Z

    .line 3
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->UpdateLooping()V

    goto :goto_0

    .line 9
    :cond_0
    sget p1, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_SetLooping:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandInt(II)V

    :goto_0
    return-void
.end method

.method public SetPositionTrackingEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    return-void
.end method

.method public SetPreferredVideoResolutionAndBitrate(III)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "iNewMaxWidth",
            "iNewMaxHeight",
            "iNewPeakBitrateBps"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public SetTextTrack(I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTrackIndex"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-le v0, v2, :cond_5

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_5

    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    if-eq p1, v2, :cond_5

    const/4 v3, 0x4

    const/4 v4, -0x1

    if-le v2, v4, :cond_2

    if-gez p1, :cond_2

    .line 10
    array-length v2, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v5, v2, :cond_2

    aget-object v8, v0, v5

    if-eqz v8, :cond_1

    .line 12
    invoke-virtual {v8}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v8

    if-ne v8, v3, :cond_1

    .line 14
    iget v8, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    if-ne v6, v8, :cond_0

    .line 16
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->deselectTrack(I)V

    .line 17
    iput v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-le p1, v4, :cond_5

    .line 27
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    if-ge p1, v0, :cond_5

    .line 31
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_2
    if-ge v4, v2, :cond_5

    aget-object v7, v0, v4

    if-eqz v7, :cond_4

    .line 33
    invoke-virtual {v7}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v7

    if-ne v7, v3, :cond_4

    if-ne v5, p1, :cond_3

    .line 37
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v6}, Landroid/media/MediaPlayer;->selectTrack(I)V

    .line 38
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :cond_4
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    return v1
.end method

.method public SetVideoTrack(I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTrackIndex"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xf

    if-le v0, v2, :cond_2

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    if-eq p1, v2, :cond_2

    const/4 v2, -0x1

    if-le p1, v2, :cond_2

    .line 28
    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    if-ge p1, v2, :cond_2

    .line 32
    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v6, v0, v3

    if-eqz v6, :cond_1

    .line 34
    invoke-virtual {v6}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    if-ne v4, p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v5}, Landroid/media/MediaPlayer;->selectTrack(I)V

    .line 39
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    return v7

    :cond_0
    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public UpdateAPITextureTimestampNS()J
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTimestamp()Landroid/media/MediaTimestamp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaTimestamp;->getAnchorMediaTimeUs()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    .line 8
    iget-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_bGotFirstTimeStamp:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_FirstTimeStamp:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_bGotFirstTimeStamp:Z

    .line 11
    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_FirstTimeStamp:J

    .line 13
    :cond_2
    iget-wide v2, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_FirstTimeStamp:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public UpdateAudioVolumes()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioMuted:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    .line 15
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioPan:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 16
    iget v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioPan:F

    add-float/2addr v3, v2

    invoke-static {v3, v2}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 18
    iget v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioVolume:F

    mul-float v0, v0, v3

    mul-float v1, v1, v3

    cmpl-float v3, v0, v2

    if-lez v3, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :cond_0
    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v1, v0

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 31
    :goto_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 34
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_3
    return-void
.end method

.method public UpdateLooping()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bLooping:Z

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_0
    return-void
.end method

.method public UpdateVideoMetadata()V
    .locals 0

    return-void
.end method

.method public _pause()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 3
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->ResetPlaybackFrameRate()V

    const/4 v0, 0x7

    .line 14
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    :cond_1
    return-void
.end method

.method public _play()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->ResetPlaybackFrameRate()V

    const/4 v0, 0x5

    .line 8
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    return-void
.end method

.method public _seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    .line 6
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    .line 12
    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public _seekFast(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, p1, p2, v1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    goto :goto_0

    :cond_0
    long-to-int p2, p1

    .line 11
    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public _setPlaybackRate(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fRate"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-le v0, v1, :cond_3

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_3

    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->IsPaused()Z

    move-result p1

    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bPlaybackRateSetPaused:Z

    if-nez p1, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->_pause()V

    :cond_0
    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    goto :goto_0

    .line 25
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->IsPlaying()Z

    move-result v0

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bPlaybackRateSetPaused:Z

    .line 29
    new-instance v1, Landroid/media/PlaybackParams;

    invoke-direct {v1}, Landroid/media/PlaybackParams;-><init>()V

    .line 30
    invoke-virtual {v1, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 31
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v1}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    .line 32
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    .line 35
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->_play()V

    if-nez v0, :cond_2

    .line 38
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->_pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 47
    :cond_2
    :goto_0
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    :cond_3
    return-void
.end method

.method public _stop()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->ResetPlaybackFrameRate()V

    .line 11
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    :cond_1
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mp",
            "percent"
        }
    .end annotation

    int-to-float p1, p2

    .line 2
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fBufferingProgressPercent:F

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bLooping:Z

    if-nez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/16 v0, 0x8

    if-ge p1, v0, :cond_0

    .line 5
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    .line 14
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xc8

    .line 32
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iLastError:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x64

    .line 33
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iLastError:I

    :goto_0
    return p2
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "what",
            "extra"
        }
    .end annotation

    const/4 p1, 0x0

    const/16 p3, 0x2bd

    if-eq p2, p3, :cond_1

    const/16 p3, 0x2be

    if-eq p2, p3, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 15
    iput-boolean p2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    :goto_0
    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mp"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x3

    .line 1
    iput v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->UpdateGetDuration()V

    .line 10
    iget-boolean v3, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 12
    iput v4, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 13
    iput-boolean v4, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    .line 18
    :cond_0
    iget-object v3, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaPlayer:Landroid/media/MediaPlayer;

    const/4 v5, 0x4

    if-eqz v3, :cond_f

    .line 21
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-le v6, v7, :cond_f

    .line 25
    :try_start_0
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v3

    iput-object v3, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_aTrackInfo:[Landroid/media/MediaPlayer$TrackInfo;

    if-eqz v3, :cond_f

    .line 28
    array-length v6, v3

    .line 30
    array-length v6, v3

    if-lez v6, :cond_f

    .line 32
    iput v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    .line 33
    iput v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 34
    iput v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    .line 41
    array-length v6, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_0
    if-ge v8, v6, :cond_b

    aget-object v13, v3, v8

    if-eqz v13, :cond_a

    .line 45
    invoke-virtual {v13}, Landroid/media/MediaPlayer$TrackInfo;->toString()Ljava/lang/String;

    .line 47
    invoke-virtual {v13}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "is-default"

    const/16 v2, 0x13

    if-eq v14, v4, :cond_6

    const/4 v7, 0x2

    if-eq v14, v7, :cond_4

    if-eq v14, v0, :cond_3

    if-eq v14, v5, :cond_1

    goto :goto_1

    .line 98
    :cond_1
    :try_start_1
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_2

    .line 100
    invoke-virtual {v13}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 103
    invoke-virtual {v2, v15}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 105
    iget v12, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    .line 110
    :cond_2
    iget v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    goto :goto_1

    .line 111
    :cond_3
    iput-boolean v4, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasTimedText:Z

    goto :goto_1

    .line 135
    :cond_4
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_5

    .line 137
    invoke-virtual {v13}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 140
    invoke-virtual {v2, v15}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 142
    iget v9, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 146
    :cond_5
    iget v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    :goto_1
    const/16 v7, 0xf

    goto :goto_3

    .line 147
    :cond_6
    iget v7, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "frame-rate"

    const/16 v16, 0x0

    cmpl-float v7, v7, v16

    if-nez v7, :cond_7

    :try_start_2
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v7, v2, :cond_7

    .line 150
    invoke-virtual {v13}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 153
    invoke-virtual {v2, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v7

    int-to-float v7, v7

    iput v7, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    .line 154
    iget v7, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    .line 156
    invoke-virtual {v2, v15}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v4, :cond_7

    .line 158
    iget v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    move v11, v2

    .line 165
    :cond_7
    iget v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    cmpl-float v2, v2, v16

    if-nez v2, :cond_8

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-le v2, v7, :cond_9

    .line 168
    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    if-eqz v2, :cond_9

    .line 170
    invoke-virtual {v2, v10}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v2

    .line 172
    invoke-virtual {v2, v14}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    .line 173
    iget v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    .line 175
    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    invoke-virtual {v2}, Landroid/media/MediaExtractor;->release()V

    const/4 v2, 0x0

    .line 176
    iput-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->m_MediaExtractor:Landroid/media/MediaExtractor;

    goto :goto_2

    :cond_8
    const/16 v7, 0xf

    .line 180
    :cond_9
    :goto_2
    iget v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 182
    iget v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    add-int/2addr v2, v4

    iput v2, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    :cond_a
    :goto_3
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 234
    :cond_b
    iget v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    if-lez v0, :cond_c

    const/4 v0, 0x0

    .line 236
    invoke-virtual {v1, v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->SetAudioTrack(I)Z

    .line 237
    iput-boolean v4, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    .line 238
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    iput v9, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultAudioTrackIndex:I

    .line 241
    :cond_c
    iget v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 243
    invoke-virtual {v1, v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->SetVideoTrack(I)Z

    .line 244
    iput-boolean v4, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    .line 245
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    iput v11, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultVideoTrackIndex:I

    .line 248
    :cond_d
    iget v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    if-lez v0, :cond_e

    const/4 v0, 0x0

    .line 250
    invoke-virtual {v1, v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->SetTextTrack(I)Z

    .line 251
    iput-boolean v4, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasSubtitles:Z

    .line 252
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    iput v12, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultTextTrackIndex:I

    .line 255
    :cond_e
    iget v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 256
    iget v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    .line 257
    iget v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 270
    :cond_f
    :goto_4
    iget-boolean v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    if-nez v0, :cond_10

    iget v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    if-gtz v0, :cond_10

    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 272
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_11

    .line 275
    :cond_10
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 276
    iget v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_11

    if-eq v0, v5, :cond_11

    const/4 v0, 0x6

    .line 279
    iput v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 287
    :cond_11
    iget-boolean v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    if-eqz v0, :cond_12

    iget v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    if-lez v0, :cond_13

    .line 293
    :cond_12
    iget-boolean v0, v1, Lcom/renderheads/AVPro/Video/Player_Base;->m_bShowPosterFrame:Z

    if-eqz v0, :cond_13

    const-wide/16 v2, 0x0

    .line 295
    invoke-virtual {v1, v2, v3}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->_seek(J)V

    :cond_13
    return-void
.end method

.method public onRenderersError(Ljava/lang/Exception;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR - onRenderersError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mediaPlayer"
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mp",
            "width",
            "height"
        }
    .end annotation

    .line 1
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    if-ne p1, p2, :cond_0

    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    if-eq p1, p3, :cond_1

    .line 6
    :cond_0
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    .line 7
    iput p3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    .line 11
    iget-object p2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object p2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void
.end method
