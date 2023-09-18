.class public final Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
.super Ljava/lang/Object;
.source "HlsMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private allowChunklessPreparation:Z

.field private compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

.field private elapsedRealTimeOffsetMs:J

.field private extractorFactory:Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;

.field private final hlsDataSourceFactory:Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private metadataType:I

.field private playlistParserFactory:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;

.field private playlistTrackerFactory:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker$Factory;

.field private useSessionKeys:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;)V
    .locals 2

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;

    .line 153
    new-instance p1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 154
    new-instance p1, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistParserFactory;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistParserFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;

    .line 155
    sget-object p1, Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistTracker;->FACTORY:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker$Factory;

    .line 156
    sget-object p1, Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;

    .line 157
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 158
    new-instance p1, Lcom/google/android/exoplr2avp/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    const/4 p1, 0x1

    .line 159
    iput p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->metadataType:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 160
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    .line 161
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 1

    .line 131
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsDataSourceFactory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsDataSourceFactory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 327
    iget-object v1, v2, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;

    .line 329
    iget-object v3, v2, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 330
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 331
    new-instance v4, Lcom/google/android/exoplr2avp/source/hls/playlist/FilteringHlsPlaylistParserFactory;

    invoke-direct {v4, v1, v3}, Lcom/google/android/exoplr2avp/source/hls/playlist/FilteringHlsPlaylistParserFactory;-><init>(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;Ljava/util/List;)V

    move-object v1, v4

    .line 335
    :cond_0
    new-instance v15, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource;

    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;

    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    iget-object v6, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 340
    invoke-interface {v6, v2}, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    move-result-object v6

    iget-object v7, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-object v8, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker$Factory;

    iget-object v9, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->hlsDataSourceFactory:Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;

    .line 342
    invoke-interface {v8, v9, v7, v1}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker$Factory;->createTracker(Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker;

    move-result-object v8

    iget-wide v9, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    iget-boolean v11, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    iget v12, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->metadataType:I

    iget-boolean v13, v0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    const/4 v14, 0x0

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker;JZIZLcom/google/android/exoplr2avp/source/hls/HlsMediaSource$1;)V

    return-object v15
.end method

.method public getSupportedTypes()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput v2, v0, v1

    return-object v0
.end method

.method public setAllowChunklessPreparation(Z)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->allowChunklessPreparation:Z

    return-object p0
.end method

.method public setCompositeSequenceableLoaderFactory(Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 1

    const-string v0, "HlsMediaSource.Factory#setCompositeSequenceableLoaderFactory no longer handles null by instantiating a new DefaultCompositeSequenceableLoaderFactory. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 233
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 296
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method setElapsedRealTimeOffsetMs(J)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 0

    .line 314
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->elapsedRealTimeOffsetMs:J

    return-object p0
.end method

.method public setExtractorFactory(Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    sget-object p1, Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->extractorFactory:Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 96
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 181
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setMetadataType(I)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 0

    .line 274
    iput p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->metadataType:I

    return-object p0
.end method

.method public setPlaylistParserFactory(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 1

    const-string v0, "HlsMediaSource.Factory#setPlaylistParserFactory no longer handles null by instantiating a new DefaultHlsPlaylistParserFactory. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 197
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->playlistParserFactory:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;

    return-object p0
.end method

.method public setPlaylistTrackerFactory(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker$Factory;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 1

    const-string v0, "HlsMediaSource.Factory#setPlaylistTrackerFactory no longer handles null by defaulting to DefaultHlsPlaylistTracker.FACTORY. Explicitly pass a reference to this instance in order to retain the old behavior."

    .line 213
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker$Factory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->playlistTrackerFactory:Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistTracker$Factory;

    return-object p0
.end method

.method public setUseSessionKeys(Z)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;
    .locals 0

    .line 288
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->useSessionKeys:Z

    return-object p0
.end method
