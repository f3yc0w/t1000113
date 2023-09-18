.class public final Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;
.super Ljava/lang/Object;
.source "ParsingLoadable.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/exoplr2avp/upstream/Loader$Loadable;"
    }
.end annotation


# instance fields
.field private final dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

.field public final dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

.field public final loadTaskId:J

.field private final parser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private volatile result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final type:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/DataSource;",
            "Landroid/net/Uri;",
            "I",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 110
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;-><init>()V

    .line 112
    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->setFlags(I)Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/upstream/DataSpec$Builder;->build()Lcom/google/android/exoplr2avp/upstream/DataSpec;

    move-result-object p2

    .line 110
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;ILcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;ILcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/upstream/DataSource;",
            "Lcom/google/android/exoplr2avp/upstream/DataSpec;",
            "I",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+TT;>;)V"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    .line 126
    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    .line 127
    iput p3, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->type:I

    .line 128
    iput-object p4, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    .line 129
    invoke-static {}, Lcom/google/android/exoplr2avp/source/LoadEventInfo;->getNewId()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->loadTaskId:J

    return-void
.end method

.method public static load(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Landroid/net/Uri;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplr2avp/upstream/DataSource;",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+TT;>;",
            "Landroid/net/Uri;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Landroid/net/Uri;ILcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->load()V

    .line 67
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static load(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;Lcom/google/android/exoplr2avp/upstream/DataSpec;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/exoplr2avp/upstream/DataSource;",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "+TT;>;",
            "Lcom/google/android/exoplr2avp/upstream/DataSpec;",
            "I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;ILcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;)V

    .line 84
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->load()V

    .line 85
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->getResult()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->getBytesRead()J

    move-result-wide v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 0

    return-void
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->getLastResponseHeaders()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->getLastOpenedUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final load()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->resetBytesRead()V

    .line 172
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSpec:Lcom/google/android/exoplr2avp/upstream/DataSpec;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    .line 174
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/DataSourceInputStream;->open()V

    .line 175
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->dataSource:Lcom/google/android/exoplr2avp/upstream/StatsDataSource;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/upstream/StatsDataSource;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 176
    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->parser:Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;

    invoke-interface {v2, v1, v0}, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;->parse(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/exoplr2avp/upstream/ParsingLoadable;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 179
    throw v1
.end method
