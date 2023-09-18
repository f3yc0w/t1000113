.class public final Lcom/google/android/exoplr2avp/source/smoothstreaming/offline/SsDownloader;
.super Lcom/google/android/exoplr2avp/offline/SegmentDownloader;
.source "SsDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplr2avp/offline/SegmentDownloader<",
        "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            ">;",
            "Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/offline/SegmentDownloader;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;)V
    .locals 1

    .line 70
    sget-object v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/offline/-$$Lambda$PNiE7SuEFxRjAZH7pJpZIFOFjWg;->INSTANCE:Lcom/google/android/exoplr2avp/source/smoothstreaming/offline/-$$Lambda$PNiE7SuEFxRjAZH7pJpZIFOFjWg;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/offline/SsDownloader;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 87
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    .line 90
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    .line 89
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->fixSmoothStreamingIsmManifestUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p1

    new-instance v0, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifestParser;-><init>()V

    .line 85
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/exoplr2avp/source/smoothstreaming/offline/SsDownloader;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic getSegments(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/offline/FilterableManifest;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 60
    check-cast p2, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/smoothstreaming/offline/SsDownloader;->getSegments(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getSegments(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/DataSource;",
            "Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .line 119
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 120
    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest;->streamElements:[Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;

    array-length p3, p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    aget-object v2, p2, v1

    const/4 v3, 0x0

    .line 121
    :goto_1
    iget-object v4, v2, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->formats:[Lcom/google/android/exoplr2avp/Format;

    array-length v4, v4

    if-ge v3, v4, :cond_1

    const/4 v4, 0x0

    .line 122
    :goto_2
    iget v5, v2, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->chunkCount:I

    if-ge v4, v5, :cond_0

    .line 123
    new-instance v5, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;

    .line 125
    invoke-virtual {v2, v4}, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->getStartTimeUs(I)J

    move-result-wide v6

    new-instance v8, Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 126
    invoke-virtual {v2, v3, v4}, Lcom/google/android/exoplr2avp/source/smoothstreaming/manifest/SsManifest$StreamElement;->buildRequestUri(II)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    invoke-direct {v5, v6, v7, v8}, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;)V

    .line 123
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method
