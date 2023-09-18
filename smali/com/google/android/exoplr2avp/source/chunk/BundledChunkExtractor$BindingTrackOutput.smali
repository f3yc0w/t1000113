.class final Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/TrackOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BindingTrackOutput"
.end annotation


# instance fields
.field private endTimeUs:J

.field private final fakeTrackOutput:Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;

.field private final id:I

.field private final manifestFormat:Lcom/google/android/exoplr2avp/Format;

.field public sampleFormat:Lcom/google/android/exoplr2avp/Format;

.field private trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

.field private final type:I


# direct methods
.method public constructor <init>(IILcom/google/android/exoplr2avp/Format;)V
    .locals 0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p1, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->id:I

    .line 199
    iput p2, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->type:I

    .line 200
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->manifestFormat:Lcom/google/android/exoplr2avp/Format;

    .line 201
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;

    return-void
.end method


# virtual methods
.method public bind(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;J)V
    .locals 0

    if-nez p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    return-void

    .line 209
    :cond_0
    iput-wide p2, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->endTimeUs:J

    .line 210
    iget p2, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->id:I

    iget p3, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->type:I

    invoke-interface {p1, p2, p3}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 211
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplr2avp/Format;

    if-eqz p2, :cond_1

    .line 212
    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    :cond_1
    return-void
.end method

.method public format(Lcom/google/android/exoplr2avp/Format;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->manifestFormat:Lcom/google/android/exoplr2avp/Format;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/Format;->withManifestFormatInfo(Lcom/google/android/exoplr2avp/Format;)Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplr2avp/Format;

    .line 220
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->sampleFormat:Lcom/google/android/exoplr2avp/Format;

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic sampleData(Lcom/google/android/exoplr2avp/upstream/DataReader;IZ)I
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/extractor/TrackOutput$-CC;->$default$sampleData(Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/upstream/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public sampleData(Lcom/google/android/exoplr2avp/upstream/DataReader;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    iget-object p4, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {p4}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/upstream/DataReader;IZ)I

    move-result p1

    return p1
.end method

.method public synthetic sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/TrackOutput$-CC;->$default$sampleData(Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;II)V
    .locals 0

    .line 232
    iget-object p3, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {p3}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    return-void
.end method

.method public sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V
    .locals 8

    .line 242
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->endTimeUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->fakeTrackOutput:Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/BundledChunkExtractor$BindingTrackOutput;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    return-void
.end method
