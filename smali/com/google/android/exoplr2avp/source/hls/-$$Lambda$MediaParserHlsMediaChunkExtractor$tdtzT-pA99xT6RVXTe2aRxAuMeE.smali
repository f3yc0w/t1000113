.class public final synthetic Lcom/google/android/exoplr2avp/source/hls/-$$Lambda$MediaParserHlsMediaChunkExtractor$tdtzT-pA99xT6RVXTe2aRxAuMeE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/source/hls/-$$Lambda$MediaParserHlsMediaChunkExtractor$tdtzT-pA99xT6RVXTe2aRxAuMeE;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/-$$Lambda$MediaParserHlsMediaChunkExtractor$tdtzT-pA99xT6RVXTe2aRxAuMeE;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/hls/-$$Lambda$MediaParserHlsMediaChunkExtractor$tdtzT-pA99xT6RVXTe2aRxAuMeE;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/hls/-$$Lambda$MediaParserHlsMediaChunkExtractor$tdtzT-pA99xT6RVXTe2aRxAuMeE;->INSTANCE:Lcom/google/android/exoplr2avp/source/hls/-$$Lambda$MediaParserHlsMediaChunkExtractor$tdtzT-pA99xT6RVXTe2aRxAuMeE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createExtractor(Landroid/net/Uri;Lcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaChunkExtractor;
    .locals 0

    invoke-static/range {p1 .. p7}, Lcom/google/android/exoplr2avp/source/hls/MediaParserHlsMediaChunkExtractor;->lambda$static$0(Landroid/net/Uri;Lcom/google/android/exoplr2avp/Format;Ljava/util/List;Lcom/google/android/exoplr2avp/util/TimestampAdjuster;Ljava/util/Map;Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaChunkExtractor;

    move-result-object p1

    return-object p1
.end method
