.class public final Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput;
.super Ljava/lang/Object;
.source "StartOffsetExtractorOutput.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;


# instance fields
.field private final extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private final startOffset:J


# direct methods
.method public constructor <init>(JLcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    .line 39
    iput-object p3, p0, Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput;)J
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput;->startOffset:J

    return-wide v0
.end method


# virtual methods
.method public endTracks()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    new-instance v1, Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput$1;-><init>(Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput;Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    return-void
.end method

.method public track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/jpeg/StartOffsetExtractorOutput;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    return-object p1
.end method
