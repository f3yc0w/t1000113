.class public final Lcom/google/android/exoplr2avp/MetadataRetriever;
.super Ljava/lang/Object;
.source "MetadataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrieveMetadata(Landroid/content/Context;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplr2avp/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/google/android/exoplr2avp/util/Clock;->DEFAULT:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplr2avp/MetadataRetriever;->retrieveMetadata(Landroid/content/Context;Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method static retrieveMetadata(Landroid/content/Context;Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            "Lcom/google/android/exoplr2avp/util/Clock;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplr2avp/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 82
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    const/4 v1, 0x6

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    move-result-object v0

    .line 86
    new-instance v1, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    invoke-direct {v1, p0, v0}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    .line 88
    invoke-static {v1, p1, p2}, Lcom/google/android/exoplr2avp/MetadataRetriever;->retrieveMetadata(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public static retrieveMetadata(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplr2avp/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 76
    sget-object v0, Lcom/google/android/exoplr2avp/util/Clock;->DEFAULT:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-static {p0, p1, v0}, Lcom/google/android/exoplr2avp/MetadataRetriever;->retrieveMetadata(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method private static retrieveMetadata(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/MediaSource$Factory;",
            "Lcom/google/android/exoplr2avp/MediaItem;",
            "Lcom/google/android/exoplr2avp/util/Clock;",
            ")",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Lcom/google/android/exoplr2avp/source/TrackGroupArray;",
            ">;"
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal;

    invoke-direct {v0, p0, p2}, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal;-><init>(Lcom/google/android/exoplr2avp/source/MediaSource$Factory;Lcom/google/android/exoplr2avp/util/Clock;)V

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/MetadataRetriever$MetadataRetrieverInternal;->retrieveMetadata(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
