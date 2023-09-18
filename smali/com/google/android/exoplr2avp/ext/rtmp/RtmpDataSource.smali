.class public final Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;
.super Lcom/google/android/exoplr2avp/upstream/BaseDataSource;
.source "RtmpDataSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource$Factory;
    }
.end annotation


# instance fields
.field private rtmpClient:Lio/antmedia/rtmp_client/RtmpClient;

.field private uri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "goog.exo.rtmp"

    .line 36
    invoke-static {v0}, Lcom/google/android/exoplr2avp/ExoPlayerLibraryInfo;->registerModule(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 73
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/BaseDataSource;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->uri:Landroid/net/Uri;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 100
    iput-object v1, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->uri:Landroid/net/Uri;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->transferEnded()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->rtmpClient:Lio/antmedia/rtmp_client/RtmpClient;

    if-eqz v0, :cond_1

    .line 104
    invoke-virtual {v0}, Lio/antmedia/rtmp_client/RtmpClient;->close()V

    .line 105
    iput-object v1, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->rtmpClient:Lio/antmedia/rtmp_client/RtmpClient;

    :cond_1
    return-void
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/antmedia/rtmp_client/RtmpClient$RtmpIOException;
        }
    .end annotation

    .line 78
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->transferInitializing(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    .line 79
    new-instance v0, Lio/antmedia/rtmp_client/RtmpClient;

    invoke-direct {v0}, Lio/antmedia/rtmp_client/RtmpClient;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->rtmpClient:Lio/antmedia/rtmp_client/RtmpClient;

    .line 80
    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/antmedia/rtmp_client/RtmpClient;->open(Ljava/lang/String;Z)V

    .line 82
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->uri:Landroid/net/Uri;

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->transferStarted(Lcom/google/android/exoplr2avp/upstream/DataSpec;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->rtmpClient:Lio/antmedia/rtmp_client/RtmpClient;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/antmedia/rtmp_client/RtmpClient;

    invoke-virtual {v0, p1, p2, p3}, Lio/antmedia/rtmp_client/RtmpClient;->read([BII)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    .line 93
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/ext/rtmp/RtmpDataSource;->bytesTransferred(I)V

    return p1
.end method
