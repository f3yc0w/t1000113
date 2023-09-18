.class public final Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;
.super Lcom/google/android/exoplr2avp/offline/SegmentDownloader;
.source "DashDownloader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplr2avp/offline/SegmentDownloader<",
        "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            ">;",
            "Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 120
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/offline/SegmentDownloader;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    .line 121
    new-instance p1, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/google/android/exoplr2avp/source/dash/offline/-$$Lambda$PNiE7SuEFxRjAZH7pJpZIFOFjWg;->INSTANCE:Lcom/google/android/exoplr2avp/source/dash/offline/-$$Lambda$PNiE7SuEFxRjAZH7pJpZIFOFjWg;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 101
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private addSegmentsForAdaptationSet(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/DataSource;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;",
            "JJZ",
            "Ljava/util/ArrayList<",
            "Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p7

    move-object/from16 v10, p8

    const/4 v0, 0x0

    const/4 v11, 0x0

    .line 150
    :goto_0
    iget-object v0, v8, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_6

    .line 151
    iget-object v0, v8, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    .line 154
    :try_start_0
    iget v1, v8, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->type:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object/from16 v12, p1

    :try_start_1
    invoke-direct {v7, v12, v1, v0, v9}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->getSegmentIndex(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;Z)Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    move-result-object v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v13, :cond_3

    move-wide/from16 v14, p5

    .line 167
    invoke-interface {v13, v14, v15}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getSegmentCount(J)J

    move-result-wide v16

    const-wide/16 v1, -0x1

    cmp-long v3, v16, v1

    if-eqz v3, :cond_2

    .line 172
    iget-object v1, v7, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->baseUrlExclusionList:Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/source/dash/BaseUrlExclusionList;->selectBaseUrl(Ljava/util/List;)Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object v6, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    .line 173
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v1, p0

    move-object v2, v0

    move-object v3, v6

    move-wide/from16 v4, p3

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    .line 175
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->createSegment(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;JLcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-object/from16 v19, v6

    .line 177
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v6

    if-eqz v6, :cond_1

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v19

    move-wide/from16 v4, p3

    .line 179
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->createSegment(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;JLcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;

    move-result-object v1

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_1
    invoke-interface {v13}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getFirstSegmentNum()J

    move-result-wide v1

    add-long v16, v1, v16

    const-wide/16 v20, 0x1

    sub-long v16, v16, v20

    move-wide v4, v1

    :goto_2
    cmp-long v1, v4, v16

    if-gtz v1, :cond_4

    .line 188
    invoke-interface {v13, v4, v5}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getTimeUs(J)J

    move-result-wide v1

    add-long v22, p3, v1

    .line 189
    invoke-interface {v13, v4, v5}, Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;->getSegmentUrl(J)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v0

    move-object/from16 v3, v19

    move-wide/from16 v24, v4

    move-wide/from16 v4, v22

    .line 185
    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->createSegment(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;JLcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;

    move-result-object v1

    .line 184
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-long v4, v24, v20

    goto :goto_2

    .line 169
    :cond_2
    new-instance v0, Lcom/google/android/exoplr2avp/offline/DownloadException;

    const-string v1, "Unbounded segment index"

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move-wide/from16 v14, p5

    .line 157
    :try_start_2
    new-instance v0, Lcom/google/android/exoplr2avp/offline/DownloadException;

    const-string v1, "Missing segment index"

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/offline/DownloadException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v12, p1

    :goto_3
    move-wide/from16 v14, p5

    :goto_4
    if-eqz v9, :cond_5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 161
    :cond_5
    throw v0

    :cond_6
    return-void
.end method

.method private createSegment(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;JLcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-static {p1, p2, p5, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object p1

    .line 197
    new-instance p2, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;

    invoke-direct {p2, p3, p4, p1}, Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;-><init>(JLcom/google/android/exoplr2avp/upstream/DataSpec;)V

    return-object p2
.end method

.method private getSegmentIndex(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;Z)Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 204
    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndex()Lcom/google/android/exoplr2avp/source/dash/DashSegmentIndex;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 208
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader$1;-><init>(Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;)V

    .line 215
    invoke-virtual {p0, v0, p4}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->execute(Lcom/google/android/exoplr2avp/util/RunnableFutureTask;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 218
    :cond_1
    new-instance p2, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;

    iget-wide p3, p3, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->presentationTimeOffsetUs:J

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplr2avp/source/dash/DashWrappingSegmentIndex;-><init>(Lcom/google/android/exoplr2avp/extractor/ChunkIndex;J)V

    move-object p1, p2

    :goto_0
    return-object p1
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

    .line 74
    check-cast p2, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->getSegments(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getSegments(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Z)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/DataSource;",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 128
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 129
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodCount()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 130
    invoke-virtual {v0, v12}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriod(I)Lcom/google/android/exoplr2avp/source/dash/manifest/Period;

    move-result-object v1

    .line 131
    iget-wide v2, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->startMs:J

    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v13

    .line 132
    invoke-virtual {v0, v12}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->getPeriodDurationUs(I)J

    move-result-wide v15

    .line 133
    iget-object v9, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    const/4 v8, 0x0

    .line 134
    :goto_1
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-ge v8, v1, :cond_0

    .line 136
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide v4, v13

    move-wide v6, v15

    move/from16 v17, v8

    move/from16 v8, p3

    move-object/from16 v18, v9

    move-object v9, v10

    .line 135
    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplr2avp/source/dash/offline/DashDownloader;->addSegmentsForAdaptationSet(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;JJZLjava/util/ArrayList;)V

    add-int/lit8 v8, v17, 0x1

    move-object/from16 v9, v18

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-object v10
.end method
