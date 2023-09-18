.class public final Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;
.super Ljava/lang/Object;
.source "DashMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private final chunkSourceFactory:Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;

.field private compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

.field private fallbackTargetLiveOffsetMs:J

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private final manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;

    .line 152
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 153
    new-instance p1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 154
    new-instance p1, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    const-wide/16 p1, 0x7530

    .line 155
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->fallbackTargetLiveOffsetMs:J

    .line 156
    new-instance p1, Lcom/google/android/exoplr2avp/source/DefaultCompositeSequenceableLoaderFactory;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/source/DefaultCompositeSequenceableLoaderFactory;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 1

    .line 128
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;
    .locals 13

    .line 285
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifestParser;-><init>()V

    .line 290
    :cond_0
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v2, v2, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->streamKeys:Ljava/util/List;

    .line 291
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 292
    new-instance v3, Lcom/google/android/exoplr2avp/offline/FilteringManifestParser;

    invoke-direct {v3, v0, v2}, Lcom/google/android/exoplr2avp/offline/FilteringManifestParser;-><init>(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Ljava/util/List;)V

    move-object v4, v3

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 295
    :goto_0
    new-instance v12, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->manifestDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 302
    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v9, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->fallbackTargetLiveOffsetMs:J

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;)V

    return-object v12
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;
    .locals 2

    .line 238
    new-instance v0, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 241
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v0

    const-string v1, "DashMediaSource"

    .line 242
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMediaId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v0

    const-string v1, "application/dash+xml"

    .line 243
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v0

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;
    .locals 13

    .line 257
    iget-boolean v0, p1, Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;->dynamic:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 259
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/MediaItem;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v0

    const-string v1, "application/dash+xml"

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v0

    .line 260
    iget-object p2, p2, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    if-nez p2, :cond_0

    .line 261
    sget-object p2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    .line 263
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v2

    .line 264
    new-instance p2, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->chunkSourceFactory:Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;

    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 271
    invoke-interface {v0, v2}, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    move-result-object v8

    iget-object v9, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget-wide v10, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->fallbackTargetLiveOffsetMs:J

    const/4 v12, 0x0

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v12}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/source/dash/DashChunkSource$Factory;Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;JLcom/google/android/exoplr2avp/source/dash/DashMediaSource$1;)V

    return-object p2
.end method

.method public getSupportedTypes()[I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    return-object v0
.end method

.method public setCompositeSequenceableLoaderFactory(Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;
    .locals 1

    const-string v0, "DashMediaSource.Factory#setCompositeSequenceableLoaderFactory no longer handles null by instantiating a new DefaultCompositeSequenceableLoaderFactory. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 221
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->compositeSequenceableLoaderFactory:Lcom/google/android/exoplr2avp/source/CompositeSequenceableLoaderFactory;

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 163
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public setFallbackTargetLiveOffsetMs(J)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;
    .locals 0

    .line 192
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->fallbackTargetLiveOffsetMs:J

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 100
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 174
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method

.method public setManifestParser(Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+",
            "Lcom/google/android/exoplr2avp/source/dash/manifest/DashManifest;",
            ">;)",
            "Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;"
        }
    .end annotation

    .line 204
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->manifestParser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    return-object p0
.end method
