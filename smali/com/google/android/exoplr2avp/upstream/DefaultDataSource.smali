.class public final Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;
.super Ljava/lang/Object;
.source "DefaultDataSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/upstream/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/upstream/DefaultDataSource$Factory;
    }
.end annotation


# static fields
.field private static final SCHEME_ANDROID_RESOURCE:Ljava/lang/String; = "android.resource"

.field private static final SCHEME_ASSET:Ljava/lang/String; = "asset"

.field private static final SCHEME_CONTENT:Ljava/lang/String; = "content"

.field private static final SCHEME_DATA:Ljava/lang/String; = "data"

.field private static final SCHEME_RAW:Ljava/lang/String; = "rawresource"

.field private static final SCHEME_RTMP:Ljava/lang/String; = "rtmp"

.field private static final SCHEME_UDP:Ljava/lang/String; = "udp"

.field private static final TAG:Ljava/lang/String; = "DefaultDataSource"


# instance fields
.field private assetDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private final baseDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private contentDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private final context:Landroid/content/Context;

.field private dataSchemeDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private fileDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private rawResourceDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private rtmpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

.field private final transferListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/upstream/TransferListener;",
            ">;"
        }
    .end annotation
.end field

.field private udpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/DataSource;)V
    .locals 0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->context:Landroid/content/Context;

    .line 212
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/upstream/DataSource;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->baseDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 213
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->transferListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IIZ)V
    .locals 1

    .line 192
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;-><init>()V

    .line 195
    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object p2

    .line 196
    invoke-virtual {p2, p3}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setConnectTimeoutMs(I)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object p2

    .line 197
    invoke-virtual {p2, p4}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setReadTimeoutMs(I)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object p2

    .line 198
    invoke-virtual {p2, p5}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object p2

    .line 199
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->createDataSource()Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource;

    move-result-object p2

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 6

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    .line 165
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6

    const/4 v2, 0x0

    const/16 v3, 0x1f40

    const/16 v4, 0x1f40

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 146
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;-><init>(Landroid/content/Context;Ljava/lang/String;IIZ)V

    return-void
.end method

.method private addListenersToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;)V
    .locals 2

    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/upstream/TransferListener;

    invoke-interface {p1, v1}, Lcom/google/android/exoplr2avp/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getAssetDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->assetDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    .line 306
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/AssetDataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->assetDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 307
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->addListenersToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->assetDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    return-object v0
.end method

.method private getContentDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->contentDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/ContentDataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->contentDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 315
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->addListenersToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->contentDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    return-object v0
.end method

.method private getDataSchemeDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSchemeDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DataSchemeDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/DataSchemeDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSchemeDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 343
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->addListenersToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSchemeDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    return-object v0
.end method

.method private getFileDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->fileDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    .line 298
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->fileDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 299
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->addListenersToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->fileDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    return-object v0
.end method

.method private getRawResourceDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rawResourceDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rawResourceDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 351
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->addListenersToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rawResourceDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    return-object v0
.end method

.method private getRtmpDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 3

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplr2avp.ext.rtmp.RtmpDataSource"

    .line 323
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 324
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 325
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->addListenersToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 328
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->baseDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    return-object v0
.end method

.method private getUdpDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->udpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/UdpDataSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->udpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 291
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->addListenersToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->udpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    return-object v0
.end method

.method private maybeAddListenerToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 365
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V
    .locals 1

    .line 218
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->baseDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DataSource;->addTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 220
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->transferListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->fileDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 222
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->assetDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 223
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->contentDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 224
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rtmpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 225
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->udpDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSchemeDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->rawResourceDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->maybeAddListenerToDataSource(Lcom/google/android/exoplr2avp/upstream/DataSource;Lcom/google/android/exoplr2avp/upstream/TransferListener;)V

    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 281
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 283
    iput-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 284
    throw v0

    :cond_0
    :goto_0
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

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->getResponseHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/upstream/DataSource;->getUri()Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 234
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 235
    iget-object v1, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 236
    iget-object v0, p1, Lcom/google/android/exoplr2avp/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 237
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->getAssetDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    goto/16 :goto_2

    .line 240
    :cond_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->getFileDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    goto :goto_2

    :cond_2
    const-string v1, "asset"

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 243
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->getAssetDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    goto :goto_2

    :cond_3
    const-string v1, "content"

    .line 244
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 245
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->getContentDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    goto :goto_2

    :cond_4
    const-string v1, "rtmp"

    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 247
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->getRtmpDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    goto :goto_2

    :cond_5
    const-string/jumbo v1, "udp"

    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 249
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->getUdpDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    goto :goto_2

    :cond_6
    const-string v1, "data"

    .line 250
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 251
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->getDataSchemeDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    goto :goto_2

    :cond_7
    const-string v1, "rawresource"

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_1

    .line 255
    :cond_8
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->baseDataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    goto :goto_2

    .line 253
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->getRawResourceDataSource()Lcom/google/android/exoplr2avp/upstream/DataSource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    .line 258
    :goto_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DataSource;->open(Lcom/google/android/exoplr2avp/upstream/DataSpec;)J

    move-result-wide v0

    return-wide v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource;->dataSource:Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/DataSource;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/upstream/DataSource;->read([BII)I

    move-result p1

    return p1
.end method
