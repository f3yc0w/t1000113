.class public final Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# instance fields
.field private final m_Context:Landroid/content/Context;

.field private final m_DefaultDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private final m_Listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

.field private final m_MaxCacheFileSize:J

.field private final m_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;JLcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
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
            "context",
            "simpleCache",
            "maxFileSize",
            "listener",
            "defaultDatasourceFactory"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_Context:Landroid/content/Context;

    .line 3
    iput-wide p3, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_MaxCacheFileSize:J

    .line 4
    iput-object p2, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    .line 5
    iput-object p5, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_Listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    .line 6
    iput-object p6, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_DefaultDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public Destroy()V
    .locals 0

    return-void
.end method

.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_DefaultDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v2

    new-instance v3, Lcom/google/android/exoplr2avp/upstream/FileDataSource;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/upstream/FileDataSource;-><init>()V

    new-instance v4, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSink;

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    iget-wide v5, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_MaxCacheFileSize:J

    invoke-direct {v4, v0, v5, v6}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSink;-><init>(Lcom/google/android/exoplr2avp/upstream/cache/Cache;J)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;-><init>(Lcom/google/android/exoplr2avp/upstream/cache/Cache;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSink;ILcom/google/android/exoplr2avp/upstream/cache/CacheDataSource$EventListener;)V

    .line 5
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;->m_Listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v7, v0}, Lcom/google/android/exoplr2avp/upstream/cache/CacheDataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    :cond_0
    return-object v7
.end method
