.class public final synthetic Lcom/google/android/exoplr2avp/source/chunk/-$$Lambda$MediaParserChunkExtractor$gH7Ryjlrx8lRX6ch8pwyeDdaEl8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/exoplr2avp/source/chunk/-$$Lambda$MediaParserChunkExtractor$gH7Ryjlrx8lRX6ch8pwyeDdaEl8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/exoplr2avp/source/chunk/-$$Lambda$MediaParserChunkExtractor$gH7Ryjlrx8lRX6ch8pwyeDdaEl8;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/chunk/-$$Lambda$MediaParserChunkExtractor$gH7Ryjlrx8lRX6ch8pwyeDdaEl8;-><init>()V

    sput-object v0, Lcom/google/android/exoplr2avp/source/chunk/-$$Lambda$MediaParserChunkExtractor$gH7Ryjlrx8lRX6ch8pwyeDdaEl8;->INSTANCE:Lcom/google/android/exoplr2avp/source/chunk/-$$Lambda$MediaParserChunkExtractor$gH7Ryjlrx8lRX6ch8pwyeDdaEl8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createProgressiveMediaExtractor(ILcom/google/android/exoplr2avp/Format;ZLjava/util/List;Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;
    .locals 0

    invoke-static/range {p1 .. p6}, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;->lambda$static$0(ILcom/google/android/exoplr2avp/Format;ZLjava/util/List;Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;

    move-result-object p1

    return-object p1
.end method
