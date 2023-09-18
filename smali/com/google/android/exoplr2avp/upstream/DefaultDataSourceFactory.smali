.class public final Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;
.super Ljava/lang/Object;
.source "DefaultDataSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final baseDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private final context:Landroid/content/Context;

.field private final listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    .line 38
    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, p1, v0, p2}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;->context:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;->listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    .line 92
    iput-object p3, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;->baseDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 1

    .line 62
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object p2

    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;

    move-result-object v0

    return-object v0
.end method

.method public createDataSource()Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;
    .locals 3

    .line 97
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;->baseDataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 98
    invoke-interface {v2}, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 99
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;->listener:Lcom/google/android/exoplr2avp/upstream/TransferListener;

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    :cond_0
    return-object v0
.end method