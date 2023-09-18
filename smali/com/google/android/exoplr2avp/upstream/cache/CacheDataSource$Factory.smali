.class public final Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
.super Ljava/lang/Object;
.source "CacheDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private cache:Lcom/google/android/exoplr2avp/upstream/cache/Cache;

.field private cacheIsReadOnly:Z

.field private cacheKeyFactory:Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;

.field private cacheReadDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private cacheWriteDataSinkFactory:Lcom/google/android/exoplr2avp/upstream/DataSink$Factory;

.field private eventListener:Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$EventListener;

.field private flags:I

.field private upstreamDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private upstreamPriority:I

.field private upstreamPriorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/FileDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/FileDataSource$Factory;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheReadDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 78
    sget-object v0, Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;->DEFAULT:Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheKeyFactory:Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;

    return-void
.end method

.method private createDataSourceInternal(Lcom/google/android/exoplr2avp/upstream/DataSource;II)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;
    .locals 12

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cache:Lcom/google/android/exoplr2avp/upstream/cache/Cache;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/exoplr2avp/upstream/cache/Cache;

    .line 291
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheIsReadOnly:Z

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplr2avp/upstream/DataSink$Factory;

    if-eqz v0, :cond_1

    .line 294
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSink$Factory;->createDataSink()Lcom/google/android/exoplr2avp/upstream/DataSink;

    move-result-object v0

    goto :goto_1

    .line 296
    :cond_1
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSink$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSink$Factory;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSink$Factory;->setCache(Lcom/google/android/exoplr2avp/upstream/cache/Cache;)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSink$Factory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSink$Factory;->createDataSink()Lcom/google/android/exoplr2avp/upstream/DataSink;

    move-result-object v0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    move-object v5, v0

    .line 298
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheReadDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 301
    invoke-interface {v1}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v4

    iget-object v6, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheKeyFactory:Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;

    iget-object v8, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->upstreamPriorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    iget-object v10, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->eventListener:Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$EventListener;

    const/4 v11, 0x0

    move-object v1, v0

    move-object v3, p1

    move v7, p2

    move v9, p3

    invoke-direct/range {v1 .. v11}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplr2avp/upstream/cache/Cache;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSink;Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;ILcom/google/android/exoplr2avp/util/PriorityTaskManager;ILcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$EventListener;Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$1;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;
    .locals 3

    .line 245
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->upstreamDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->flags:I

    iget v2, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->upstreamPriority:I

    .line 244
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->createDataSourceInternal(Lcom/google/android/exoplr2avp/upstream/DataSource;II)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSourceForDownloading()Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;
    .locals 3

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->upstreamDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->flags:I

    or-int/lit8 v1, v1, 0x1

    const/16 v2, -0x3e8

    .line 262
    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->createDataSourceInternal(Lcom/google/android/exoplr2avp/upstream/DataSource;II)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSourceForRemovingDownload()Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;
    .locals 3

    .line 283
    iget v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->flags:I

    or-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    const/16 v2, -0x3e8

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->createDataSourceInternal(Lcom/google/android/exoplr2avp/upstream/DataSource;II)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public getCache()Lcom/google/android/exoplr2avp/upstream/cache/Cache;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cache:Lcom/google/android/exoplr2avp/upstream/cache/Cache;

    return-object v0
.end method

.method public getCacheKeyFactory()Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheKeyFactory:Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;

    return-object v0
.end method

.method public getUpstreamPriorityTaskManager()Lcom/google/android/exoplr2avp/util/PriorityTaskManager;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->upstreamPriorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    return-object v0
.end method

.method public setCache(Lcom/google/android/exoplr2avp/upstream/cache/Cache;)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cache:Lcom/google/android/exoplr2avp/upstream/cache/Cache;

    return-object p0
.end method

.method public setCacheKeyFactory(Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheKeyFactory:Lcom/google/android/exoplr2avp/upstream/cache/CacheKeyFactory;

    return-object p0
.end method

.method public setCacheReadDataSourceFactory(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheReadDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    return-object p0
.end method

.method public setCacheWriteDataSinkFactory(Lcom/google/android/exoplr2avp/upstream/DataSink$Factory;)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheWriteDataSinkFactory:Lcom/google/android/exoplr2avp/upstream/DataSink$Factory;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 130
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->cacheIsReadOnly:Z

    return-object p0
.end method

.method public setEventListener(Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$EventListener;)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->eventListener:Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$EventListener;

    return-object p0
.end method

.method public setFlags(I)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
    .locals 0

    .line 225
    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->flags:I

    return-object p0
.end method

.method public setUpstreamDataSourceFactory(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->upstreamDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    return-object p0
.end method

.method public setUpstreamPriority(I)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
    .locals 0

    .line 212
    iput p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->upstreamPriority:I

    return-object p0
.end method

.method public setUpstreamPriorityTaskManager(Lcom/google/android/exoplr2avp/util/PriorityTaskManager;)Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$Factory;->upstreamPriorityTaskManager:Lcom/google/android/exoplr2avp/util/PriorityTaskManager;

    return-object p0
.end method
