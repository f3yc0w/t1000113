.class public final Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private continueLoadingCheckIntervalBytes:I

.field private customCacheKey:Ljava/lang/String;

.field private final dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private progressiveMediaExtractorFactory:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;

.field private tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 1

    .line 80
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaSource$Factory$duCw3Tl2AO4iXaEx5jNPMY7HBGU;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/source/-$$Lambda$ProgressiveMediaSource$Factory$duCw3Tl2AO4iXaEx5jNPMY7HBGU;-><init>(Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;)V
    .locals 6

    .line 121
    new-instance v3, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManagerProvider;-><init>()V

    new-instance v4, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;

    invoke-direct {v4}, Lcom/google/android/exoplr2avp/upstream/DefaultLoadErrorHandlingPolicy;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;I)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;I)V
    .locals 0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 150
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;

    .line 151
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 152
    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 153
    iput p5, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor;
    .locals 0

    .line 100
    new-instance p1, Lcom/google/android/exoplr2avp/source/BundledExtractorsAdapter;

    invoke-direct {p1, p0}, Lcom/google/android/exoplr2avp/source/BundledExtractorsAdapter;-><init>(Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    return-object p1
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;
    .locals 8

    .line 203
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->tag:Ljava/lang/Object;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->tag:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    iget-object v3, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->customCacheKey:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 208
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 210
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->tag:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setTag(Ljava/lang/Object;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p1

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    .line 212
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->customCacheKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setCustomCacheKey(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p1

    :cond_4
    :goto_2
    move-object v1, p1

    .line 214
    new-instance p1, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->progressiveMediaExtractorFactory:Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 218
    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;->get(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iget v6, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/source/ProgressiveMediaExtractor$Factory;Lcom/google/android/exoplr2avp/drm/DrmSessionManager;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;ILcom/google/android/exoplr2avp/source/ProgressiveMediaSource$1;)V

    return-object p1
.end method

.method public getSupportedTypes()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x4

    aput v2, v0, v1

    return-object v0
.end method

.method public setContinueLoadingCheckIntervalBytes(I)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;
    .locals 0

    .line 178
    iput p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->continueLoadingCheckIntervalBytes:I

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 186
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 159
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    return-object p0
.end method
