.class public final Lcom/google/android/exoplr2avp/source/hls/DefaultHlsDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultHlsDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/hls/HlsDataSourceFactory;


# instance fields
.field private final dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    return-void
.end method


# virtual methods
.method public createDataSource(I)Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsDataSourceFactory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object p1

    return-object p1
.end method
