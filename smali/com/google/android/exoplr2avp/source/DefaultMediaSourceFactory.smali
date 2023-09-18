.class public final Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;,
        Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;,
        Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$AdsLoaderProvider;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DMediaSourceFactory"


# instance fields
.field private adViewProvider:Lcom/google/android/exoplr2avp/ui/AdViewProvider;

.field private adsLoaderProvider:Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;

.field private dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

.field private final delegateFactoryLoader:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

.field private liveMaxOffsetMs:J

.field private liveMaxSpeed:F

.field private liveMinOffsetMs:J

.field private liveMinSpeed:F

.field private liveTargetOffsetMs:J

.field private loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

.field private serverSideAdInsertionMediaSourceFactory:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

.field private useProgressiveMediaSourceForSubtitles:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 128
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V
    .locals 1

    .line 142
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource$Factory;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSource$Factory;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0, p2}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V
    .locals 1

    .line 155
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V
    .locals 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    .line 173
    new-instance v0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-direct {v0, p2}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;-><init>(Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    .line 174
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDataSourceFactory(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 175
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    .line 176
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    .line 177
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    const p1, -0x800001

    .line 178
    iput p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    .line 179
    iput p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 98
    invoke-static {p0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/Class;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 98
    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->newInstance(Ljava/lang/Class;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$createMediaSource$0(Lcom/google/android/exoplr2avp/Format;)[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplr2avp/extractor/Extractor;

    .line 446
    sget-object v1, Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;

    invoke-interface {v1, p0}, Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    new-instance v1, Lcom/google/android/exoplr2avp/text/SubtitleExtractor;

    sget-object v2, Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;->DEFAULT:Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;

    .line 448
    invoke-interface {v2, p0}, Lcom/google/android/exoplr2avp/text/SubtitleDecoderFactory;->createDecoder(Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/text/SubtitleDecoder;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/exoplr2avp/text/SubtitleExtractor;-><init>(Lcom/google/android/exoplr2avp/text/SubtitleDecoder;Lcom/google/android/exoplr2avp/Format;)V

    goto :goto_0

    .line 449
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;

    invoke-direct {v1, p0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;-><init>(Lcom/google/android/exoplr2avp/Format;)V

    :goto_0
    const/4 p0, 0x0

    aput-object v1, v0, p0

    return-object v0
.end method

.method private static maybeClipMediaSource(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/MediaSource;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 10

    .line 479
    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->startPositionMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->endPositionMs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    iget-boolean v0, v0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    if-nez v0, :cond_0

    return-object p1

    .line 484
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->startPositionMs:J

    .line 486
    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v3

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    iget-wide v1, v1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->endPositionMs:J

    .line 487
    invoke-static {v1, v2}, Lcom/google/android/exoplr2avp/util/Util;->msToUs(J)J

    move-result-wide v5

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    iget-boolean v1, v1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->startsAtKeyFrame:Z

    xor-int/lit8 v7, v1, 0x1

    iget-object v1, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    iget-boolean v8, v1, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->relativeToLiveWindow:Z

    iget-object p0, p0, Lcom/google/android/exoplr2avp/MediaItem;->clippingConfiguration:Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;

    iget-boolean v9, p0, Lcom/google/android/exoplr2avp/MediaItem$ClippingConfiguration;->relativeToDefaultPosition:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/google/android/exoplr2avp/source/ClippingMediaSource;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource;JJZZZ)V

    return-object v0
.end method

.method private maybeWrapWithAdsMediaSource(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/MediaSource;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 9

    .line 494
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->adsConfiguration:Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;

    if-nez v0, :cond_0

    return-object p2

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->adsLoaderProvider:Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;

    .line 501
    iget-object v8, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->adViewProvider:Lcom/google/android/exoplr2avp/ui/AdViewProvider;

    const-string v2, "DMediaSourceFactory"

    if-eqz v1, :cond_4

    if-nez v8, :cond_1

    goto :goto_1

    .line 509
    :cond_1
    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;->getAdsLoader(Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;)Lcom/google/android/exoplr2avp/source/ads/AdsLoader;

    move-result-object v7

    if-nez v7, :cond_2

    const-string p1, "Playing media without ads, as no AdsLoader was provided."

    .line 511
    invoke-static {v2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    .line 514
    :cond_2
    new-instance v1, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;

    new-instance v4, Lcom/google/android/exoplr2avp/upstream/DataSpec;

    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-direct {v4, v2}, Lcom/google/android/exoplr2avp/upstream/DataSpec;-><init>(Landroid/net/Uri;)V

    .line 517
    iget-object v2, v0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 518
    iget-object p1, v0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;->adsId:Ljava/lang/Object;

    goto :goto_0

    .line 519
    :cond_3
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem;->mediaId:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$AdsConfiguration;->adTagUri:Landroid/net/Uri;

    invoke-static {v2, p1, v0}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    :goto_0
    move-object v5, p1

    move-object v2, v1

    move-object v3, p2

    move-object v6, p0

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplr2avp/source/ads/AdsMediaSource;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/upstream/DataSpec;Ljava/lang/Object;Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/source/ads/AdsLoader;Lcom/google/android/exoplr2avp/ui/AdViewProvider;)V

    return-object v1

    :cond_4
    :goto_1
    const-string p1, "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider."

    .line 503
    invoke-static {v2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2
.end method

.method private static newInstance(Ljava/lang/Class;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            ">;)",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 712
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 714
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static newInstance(Ljava/lang/Class;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            ">;",
            "Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;",
            ")",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 704
    const-class v2, Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 706
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public clearLocalAdInsertionComponents()Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 1

    const/4 v0, 0x0

    .line 263
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->adsLoaderProvider:Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;

    .line 264
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->adViewProvider:Lcom/google/android/exoplr2avp/ui/AdViewProvider;

    return-object p0
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 8

    .line 388
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "ssai"

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->serverSideAdInsertionMediaSourceFactory:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object p1

    return-object p1

    .line 394
    :cond_0
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->uri:Landroid/net/Uri;

    iget-object v1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->mimeType:Ljava/lang/String;

    .line 395
    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/util/Util;->inferContentTypeForUriAndMimeType(Landroid/net/Uri;Ljava/lang/String;)I

    move-result v0

    .line 398
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->getMediaSourceFactory(I)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    move-result-object v1

    .line 399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No suitable media source factory found for content type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    .line 403
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    move-result-object v0

    .line 404
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->targetOffsetMs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    .line 405
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setTargetOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    .line 407
    :cond_1
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget v2, v2, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->minPlaybackSpeed:F

    const v3, -0x800001

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 408
    iget v2, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMinPlaybackSpeed(F)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    .line 410
    :cond_2
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget v2, v2, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->maxPlaybackSpeed:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    .line 411
    iget v2, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMaxPlaybackSpeed(F)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    .line 413
    :cond_3
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->minOffsetMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 414
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMinOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    .line 416
    :cond_4
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    iget-wide v2, v2, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->maxOffsetMs:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_5

    .line 417
    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->setMaxOffsetMs(J)Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;

    .line 419
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    move-result-object v0

    .line 421
    iget-object v2, p1, Lcom/google/android/exoplr2avp/MediaItem;->liveConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 422
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem;->buildUpon()Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setLiveConfiguration(Lcom/google/android/exoplr2avp/MediaItem$LiveConfiguration;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object p1

    .line 425
    :cond_6
    invoke-interface {v1, p1}, Lcom/google/android/exoplr2avp/source/MediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object v0

    .line 427
    iget-object v1, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    .line 428
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;->subtitleConfigurations:Lcom/google/common/collect/ImmutableList;

    .line 429
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    .line 430
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplr2avp/source/MediaSource;

    const/4 v3, 0x0

    .line 431
    aput-object v0, v2, v3

    .line 432
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_a

    .line 433
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->useProgressiveMediaSourceForSubtitles:Z

    if-eqz v0, :cond_8

    .line 434
    new-instance v0, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    .line 436
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 437
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->language:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/Format$Builder;->setLanguage(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 438
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    iget v6, v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->selectionFlags:I

    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/Format$Builder;->setSelectionFlags(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 439
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    iget v6, v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->roleFlags:I

    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/Format$Builder;->setRoleFlags(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 440
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->label:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/Format$Builder;->setLabel(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 441
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    iget-object v6, v6, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->id:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/Format$Builder;->setId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    .line 443
    new-instance v6, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$UWWgh17tLDQrLf3S43ClpDQEoNA;

    invoke-direct {v6, v0}, Lcom/google/android/exoplr2avp/source/-$$Lambda$DefaultMediaSourceFactory$UWWgh17tLDQrLf3S43ClpDQEoNA;-><init>(Lcom/google/android/exoplr2avp/Format;)V

    .line 451
    new-instance v0, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    iget-object v7, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-direct {v0, v7, v6}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    .line 453
    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    if-eqz v6, :cond_7

    .line 454
    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    :cond_7
    add-int/lit8 v6, v3, 0x1

    .line 458
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    iget-object v7, v7, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;->uri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/exoplr2avp/MediaItem;->fromUri(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v7

    .line 457
    invoke-virtual {v0, v7}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;

    move-result-object v0

    aput-object v0, v2, v6

    goto :goto_1

    .line 460
    :cond_8
    new-instance v0, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;

    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    invoke-direct {v0, v6}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    .line 462
    iget-object v6, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    if-eqz v6, :cond_9

    .line 463
    invoke-virtual {v0, v6}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;

    :cond_9
    add-int/lit8 v6, v3, 0x1

    .line 467
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    .line 466
    invoke-virtual {v0, v7, v4, v5}, Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;J)Lcom/google/android/exoplr2avp/source/SingleSampleMediaSource;

    move-result-object v0

    aput-object v0, v2, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 471
    :cond_a
    new-instance v0, Lcom/google/android/exoplr2avp/source/MergingMediaSource;

    invoke-direct {v0, v2}, Lcom/google/android/exoplr2avp/source/MergingMediaSource;-><init>([Lcom/google/android/exoplr2avp/source/MediaSource;)V

    .line 473
    :cond_b
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->maybeClipMediaSource(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/MediaSource;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->maybeWrapWithAdsMediaSource(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/MediaSource;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object p1

    return-object p1
.end method

.method public experimentalUseProgressiveMediaSourceForSubtitles(Z)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0

    .line 195
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->useProgressiveMediaSourceForSubtitles:Z

    return-object p0
.end method

.method public getSupportedTypes()[I
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->getSupportedTypes()[I

    move-result-object v0

    return-object v0
.end method

.method public setAdViewProvider(Lcom/google/android/exoplr2avp/ui/AdViewProvider;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->adViewProvider:Lcom/google/android/exoplr2avp/ui/AdViewProvider;

    return-object p0
.end method

.method public setAdsLoaderProvider(Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 214
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->adsLoaderProvider:Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;

    return-object p0
.end method

.method public setDataSourceFactory(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->dataSourceFactory:Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    return-object p0
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    const-string v1, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 360
    invoke-static {p1, v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;

    .line 359
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)V

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setLiveMaxOffsetMs(J)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0

    .line 328
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMaxOffsetMs:J

    return-object p0
.end method

.method public setLiveMaxSpeed(F)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0

    .line 352
    iput p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMaxSpeed:F

    return-object p0
.end method

.method public setLiveMinOffsetMs(J)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0

    .line 316
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMinOffsetMs:J

    return-object p0
.end method

.method public setLiveMinSpeed(F)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0

    .line 340
    iput p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveMinSpeed:F

    return-object p0
.end method

.method public setLiveTargetOffsetMs(J)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0

    .line 304
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->liveTargetOffsetMs:J

    return-object p0
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 1

    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 372
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->loadErrorHandlingPolicy:Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;

    .line 377
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->delegateFactoryLoader:Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$DelegateFactoryLoader;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)V

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    move-result-object p1

    return-object p1
.end method

.method public setLocalAdInsertionComponents(Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;Lcom/google/android/exoplr2avp/ui/AdViewProvider;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0

    .line 248
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->adsLoaderProvider:Lcom/google/android/exoplr2avp/source/ads/AdsLoader$Provider;

    .line 249
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/ui/AdViewProvider;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->adViewProvider:Lcom/google/android/exoplr2avp/ui/AdViewProvider;

    return-object p0
.end method

.method public setServerSideAdInsertionMediaSourceFactory(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->serverSideAdInsertionMediaSourceFactory:Lcom/google/android/exoplr2avp/source/MediaSource$Factory;

    return-object p0
.end method
