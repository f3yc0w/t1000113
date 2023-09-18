.class final Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DelegateFactoryLoader"
.end annotation


# instance fields
.field private dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

.field private final extractorsFactory:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private final mediaSourceFactories:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaSourceFactorySuppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field private final supportedTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V
    .locals 0

    .line 538
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    .line 540
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    .line 541
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    .line 542
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    return-void
.end method

.method private ensureAllSuppliersAreLoaded()V
    .locals 1

    const/4 v0, 0x0

    .line 598
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x1

    .line 599
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x2

    .line 600
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x3

    .line 601
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    const/4 v0, 0x4

    .line 602
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    return-void
.end method

.method static synthetic lambda$maybeLoadSupplier$3(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 638
    invoke-static {p0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->access$000(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method private maybeLoadSupplier(I)Lcom/google/common/base/Supplier;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/base/Supplier<",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            ">;"
        }
    .end annotation

    .line 607
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/base/Supplier;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 641
    :cond_1
    :try_start_0
    new-instance v1, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$l6Ux47aXDdY8eCJiULyqzGuvCo0;

    invoke-direct {v1, p0}, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$l6Ux47aXDdY8eCJiULyqzGuvCo0;-><init>(Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;)V

    move-object v0, v1

    goto :goto_1

    :cond_2
    const-string v1, "com.google.android.exoplr2avp.source.rtsp.RtspMediaSource$Factory"

    .line 636
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 637
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 638
    new-instance v2, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$Y4aeZ_nwzvYuXPMdzEBZr3oDxL8;

    invoke-direct {v2, v1}, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$Y4aeZ_nwzvYuXPMdzEBZr3oDxL8;-><init>(Ljava/lang/Class;)V

    goto :goto_0

    :cond_3
    const-string v1, "com.google.android.exoplr2avp.source.hls.HlsMediaSource$Factory"

    .line 630
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 631
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 632
    new-instance v2, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$kyJ7LV-o9571-8cwTmewIdrQsGY;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$kyJ7LV-o9571-8cwTmewIdrQsGY;-><init>(Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)V

    goto :goto_0

    :cond_4
    const-string v1, "com.google.android.exoplr2avp.source.smoothstreaming.SsMediaSource$Factory"

    .line 623
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 625
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 626
    new-instance v2, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$rFNDC6Fk8amfSEz-szZpHGiICng;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$rFNDC6Fk8amfSEz-szZpHGiICng;-><init>(Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)V

    goto :goto_0

    :cond_5
    const-string v1, "com.google.android.exoplr2avp.source.dash.DashMediaSource$Factory"

    .line 617
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 618
    invoke-virtual {v1, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    .line 619
    new-instance v2, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$klS40fWQChB5MbUSA5m0lQG6lxA;

    invoke-direct {v2, p0, v1}, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$DelegateFactoryLoader$klS40fWQChB5MbUSA5m0lQG6lxA;-><init>(Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, v2

    goto :goto_1

    :catch_0
    nop

    .line 652
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactorySuppliers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 654
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method


# virtual methods
.method public getMediaSourceFactory(I)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    if-eqz v0, :cond_0

    return-object v0

    .line 558
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->maybeLoadSupplier(I)Lcom/google/common/base/Supplier;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 563
    :cond_1
    invoke-interface {v0}, Lcom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 564
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    if-eqz v1, :cond_2

    .line 565
    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 567
    :cond_2
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    if-eqz v1, :cond_3

    .line 568
    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 570
    :cond_3
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 1

    .line 546
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->ensureAllSuppliersAreLoaded()V

    .line 547
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->supportedTypes:Ljava/util/Set;

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->toArray(Ljava/util/Collection;)[I

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$maybeLoadSupplier$0$DefaultMediaSourceFactory$DelegateFactoryLoader(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 1

    .line 619
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$maybeLoadSupplier$1$DefaultMediaSourceFactory$DelegateFactoryLoader(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$maybeLoadSupplier$2$DefaultMediaSourceFactory$DelegateFactoryLoader(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 1

    .line 632
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->access$100(Ljava/lang/Class;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$maybeLoadSupplier$4$DefaultMediaSourceFactory$DelegateFactoryLoader()Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 3

    .line 643
    new-instance v0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 644
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->extractorsFactory:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    return-object v0
.end method

.method public setDataSourceFactory(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    if-eq p1, v0, :cond_0

    .line 576
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 579
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)V
    .locals 2

    .line 584
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->drmSessionManagerProvider:Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 585
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 586
    invoke-interface {v1, p1}, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)V
    .locals 2

    .line 591
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 592
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->mediaSourceFactories:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    .line 593
    invoke-interface {v1, p1}, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    goto :goto_0

    :cond_0
    return-void
.end method
