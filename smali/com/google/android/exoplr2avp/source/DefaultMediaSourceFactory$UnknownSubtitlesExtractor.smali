.class final Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;
.super Ljava/lang/Object;
.source "DefaultMediaSourceFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnknownSubtitlesExtractor"
.end annotation


# instance fields
.field private final format:Lcom/google/android/exoplr2avp/Format;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    .line 663
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 664
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->format:Lcom/google/android/exoplr2avp/Format;

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 674
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object v0

    .line 675
    new-instance v1, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;-><init>(J)V

    invoke-interface {p1, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    .line 676
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->endTracks()V

    .line 677
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->format:Lcom/google/android/exoplr2avp/Format;

    .line 679
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    const-string/jumbo v1, "text/x-unknown"

    .line 680
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory$UnknownSubtitlesExtractor;->format:Lcom/google/android/exoplr2avp/Format;

    iget-object v1, v1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    .line 681
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    .line 682
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    .line 677
    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const p2, 0x7fffffff

    .line 687
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->skip(I)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    return-void
.end method

.method public sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
