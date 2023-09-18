.class public final Lcom/google/android/exoplr2avp/source/dash/DashUtil;
.super Ljava/lang/Object;
.source "DashUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDataSpec(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-static {p0, v0, p1, p2}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object p0

    return-object p0
.end method

.method public static buildDataSpec(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplr2avp/upstream/DataSpec;
    .locals 2

    .line 57
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;-><init>()V

    .line 58
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p1

    iget-wide v0, p2, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;->start:J

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setPosition(J)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p1

    iget-wide v0, p2, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;->length:J

    .line 60
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setLength(J)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p1

    .line 61
    invoke-static {p0, p2}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->resolveCacheKey(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setKey(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p0

    .line 62
    invoke-virtual {p0, p3}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p0

    .line 63
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object p0

    return-object p0
.end method

.method private static getFirstRepresentation(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;I)Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;
    .locals 2

    .line 332
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->getAdaptationSetIndex(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 336
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/Period;->adaptationSets:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;

    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/AdaptationSet;->representations:Ljava/util/List;

    .line 337
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    :goto_0
    return-object v0
.end method

.method public static loadChunkIndex(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;)Lcom/google/android/exoplr2avp/extractor/ChunkIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 216
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->loadChunkIndex(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;I)Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    move-result-object p0

    return-object p0
.end method

.method public static loadChunkIndex(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;I)Lcom/google/android/exoplr2avp/extractor/ChunkIndex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 186
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->newChunkExtractor(ILcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    move-result-object p1

    const/4 v0, 0x1

    .line 191
    :try_start_0
    invoke-static {p1, p0, p2, p3, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->release()V

    .line 196
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->getChunkIndex()Lcom/google/android/exoplr2avp/extractor/ChunkIndex;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 194
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->release()V

    .line 195
    throw p0
.end method

.method public static loadFormatWithDrmInitData(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/Period;)Lcom/google/android/exoplr2avp/Format;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 106
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->getFirstRepresentation(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;I)Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 109
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->getFirstRepresentation(Lcom/google/android/exoplr2avp/source/dash/manifest/Period;I)Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 114
    :cond_0
    iget-object p1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->format:Lcom/google/android/exoplr2avp/Format;

    .line 116
    invoke-static {p0, v0, v1}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->loadSampleFormat(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;)Lcom/google/android/exoplr2avp/Format;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/Format;->withManifestFormatInfo(Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static loadInitializationData(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    if-eqz p4, :cond_2

    .line 240
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getIndexUri()Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v1, p2, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 247
    invoke-virtual {v1, p3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-virtual {v0, p4, v1}, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;->attemptMerge(Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v1

    if-nez v1, :cond_1

    .line 249
    invoke-static {p1, p2, p3, p0, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;ILcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)V

    move-object v0, p4

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 256
    :cond_2
    :goto_0
    invoke-static {p1, p2, p3, p0, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;ILcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)V

    return-void
.end method

.method public static loadInitializationData(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    invoke-static {p0, p1, p2, v0, p3}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;IZ)V

    return-void
.end method

.method private static loadInitializationData(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;ILcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    iget-object v0, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    .line 291
    invoke-virtual {v0, p2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 289
    invoke-static {p1, p2, p4, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->buildDataSpec(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Ljava/lang/String;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;I)Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object v3

    .line 294
    new-instance p2, Lcom/google/android/exoplr2avp/source/chunk/InitializationChunk;

    iget-object v4, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->format:Lcom/google/android/exoplr2avp/Format;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/source/chunk/InitializationChunk;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Lcom/google/android/exoplr2avp/Format;ILjava/lang/Object;Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;)V

    .line 302
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/chunk/InitializationChunk;->load()V

    return-void
.end method

.method public static loadManifest(Lcom/google/android/exoplr2avp/upstream/DataSource;Landroid/net/Uri;)Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;-><init>()V

    const/4 v1, 0x4

    invoke-static {p0, v0, p1, v1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->load(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Landroid/net/Uri;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;

    return-object p0
.end method

.method public static loadSampleFormat(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;)Lcom/google/android/exoplr2avp/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 166
    invoke-static {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->loadSampleFormat(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;I)Lcom/google/android/exoplr2avp/Format;

    move-result-object p0

    return-object p0
.end method

.method public static loadSampleFormat(Lcom/google/android/exoplr2avp/upstream/DataSource;ILcom/google/android/exoplr2avp/source/dash/manifest/Representation;I)Lcom/google/android/exoplr2avp/Format;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getInitializationUri()Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->newChunkExtractor(ILcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    move-result-object p1

    const/4 v0, 0x0

    .line 143
    :try_start_0
    invoke-static {p1, p0, p2, p3, v0}, Lcom/google/android/exoplr2avp/source/dash/DashUtil;->loadInitializationData(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->release()V

    .line 148
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->getSampleFormats()[Lcom/google/android/exoplr2avp/Format;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/google/android/exoplr2avp/Format;

    aget-object p0, p0, v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 146
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;->release()V

    .line 147
    throw p0
.end method

.method private static newChunkExtractor(ILcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;
    .locals 2

    .line 321
    iget-object v0, p1, Lcom/google/android/exoplr2avp/Format;->containerMimeType:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string/jumbo v1, "video/webm"

    .line 324
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/webm"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 326
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/mkv/MatroskaExtractor;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/mkv/MatroskaExtractor;-><init>()V

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/mp4/FragmentedMp4Extractor;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/mp4/FragmentedMp4Extractor;-><init>()V

    .line 327
    :goto_1
    new-instance v1, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor;

    invoke-direct {v1, v0, p0, p1}, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor;-><init>(Lcom/google/android/exoplr2avp/extractor/Extractor;ILcom/google/android/exoplr2avp/Format;)V

    return-object v1
.end method

.method public static resolveCacheKey(Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;)Ljava/lang/String;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/Representation;->baseUrls:Lcom/google/common/collect/ImmutableList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;

    iget-object p0, p0, Lcom/google/android/exoplr2avp/source/dash/manifest/BaseUrl;->url:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/google/android/exoplr2avp/source/dash/manifest/RangedUri;->resolveUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
