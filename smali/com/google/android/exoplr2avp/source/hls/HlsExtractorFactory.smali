.class public interface abstract Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;
.super Ljava/lang/Object;
.source "HlsExtractorFactory.java"


# static fields
.field public static final DEFAULT:Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;->DEFAULT:Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;

    return-void
.end method


# virtual methods
.method public abstract createExtractor(Landroid/net/Uri;Lcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaChunkExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Lcom/google/android/exoplr2avp/Format;",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;",
            "Lcom/google/android/exoplr2avp/util/TimestampAdjuster;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/google/android/exoplr2avp/extractor/ExtractorInput;",
            "Lcom/google/android/exoplr2avp/analytics/PlayerId;",
            ")",
            "Lcom/google/android/exoplr2avp/source/hls/HlsMediaChunkExtractor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
