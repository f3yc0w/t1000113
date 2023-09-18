.class public final Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;
.super Ljava/lang/Object;
.source "FlacExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/Extractor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor$Flags;
    }
.end annotation


# static fields
.field private static final BUFFER_LENGTH:I = 0x8000

.field public static final FACTORY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

.field public static final FLAG_DISABLE_ID3_METADATA:I = 0x1

.field private static final SAMPLE_NUMBER_UNKNOWN:I = -0x1

.field private static final STATE_GET_FRAME_START_MARKER:I = 0x4

.field private static final STATE_GET_STREAM_MARKER_AND_INFO_BLOCK_BYTES:I = 0x1

.field private static final STATE_READ_FRAMES:I = 0x5

.field private static final STATE_READ_ID3_METADATA:I = 0x0

.field private static final STATE_READ_METADATA_BLOCKS:I = 0x3

.field private static final STATE_READ_STREAM_MARKER:I = 0x2


# instance fields
.field private binarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;

.field private final buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private currentFrameBytesWritten:I

.field private currentFrameFirstSampleNumber:J

.field private extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

.field private frameStartMarker:I

.field private id3Metadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

.field private final id3MetadataDisabled:Z

.field private minFrameSize:I

.field private final sampleNumberHolder:Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;

.field private state:I

.field private final streamMarkerAndInfoBlock:[B

.field private trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Lcom/google/android/exoplr2avp/extractor/flac/-$$Lambda$FlacExtractor$kpXxkjMLjKoaHWAhTme2ZfGij98;->INSTANCE:Lcom/google/android/exoplr2avp/extractor/flac/-$$Lambda$FlacExtractor$kpXxkjMLjKoaHWAhTme2ZfGij98;

    sput-object v0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->FACTORY:Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, v0}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2a

    new-array v0, v0, [B

    .line 137
    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    .line 139
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const v1, 0x8000

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    .line 141
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;

    .line 142
    iput v2, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private findFrame(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Z)J
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 348
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    if-gt v0, v1, :cond_1

    .line 349
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 350
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    iget v2, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;

    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplr2avp/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;ILcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 353
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide p1, p1, Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_5

    .line 378
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result p2

    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->minFrameSize:I

    sub-int/2addr p2, v1

    if-gt v0, p2, :cond_4

    .line 379
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    const/4 p2, 0x0

    .line 382
    :try_start_0
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    iget v2, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->frameStartMarker:I

    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;

    .line 383
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/exoplr2avp/extractor/FlacFrameReader;->checkAndReadFrameHeader(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;ILcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v1, 0x0

    .line 389
    :goto_2
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result v3

    if-le v2, v3, :cond_2

    goto :goto_3

    :cond_2
    move p2, v1

    :goto_3
    if-eqz p2, :cond_3

    .line 396
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 397
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->sampleNumberHolder:Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;

    iget-wide p1, p1, Lcom/google/android/exoplr2avp/extractor/FlacFrameReader$SampleNumberHolder;->sampleNumber:J

    return-wide p1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 402
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    goto :goto_4

    .line 404
    :cond_5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    :goto_4
    const-wide/16 p1, -0x1

    return-wide p1
.end method

.method private getFrameStartMarker(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 238
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader;->getFrameStartMarker(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->frameStartMarker:I

    .line 239
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    .line 242
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    .line 243
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->getLength()J

    move-result-wide v3

    .line 241
    invoke-direct {p0, v1, v2, v3, v4}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->getSeekMap(JJ)Lcom/google/android/exoplr2avp/extractor/SeekMap;

    move-result-object p1

    .line 240
    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    const/4 p1, 0x5

    .line 245
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private getSeekMap(JJ)Lcom/google/android/exoplr2avp/extractor/SeekMap;
    .locals 9

    .line 318
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->seekTable:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata$SeekTable;

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/FlacSeekTableSeekMap;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    invoke-direct {v0, v1, p1, p2}, Lcom/google/android/exoplr2avp/extractor/FlacSeekTableSeekMap;-><init>(Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;J)V

    return-object v0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-eqz v2, :cond_1

    .line 321
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    iget-wide v0, v0, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->totalSamples:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 322
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    iget v4, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->frameStartMarker:I

    move-object v2, v0

    move-wide v5, p1

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;-><init>(Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;IJJ)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;

    .line 325
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;->getSeekMap()Lcom/google/android/exoplr2avp/extractor/SeekMap;

    move-result-object v0

    return-object v0

    .line 327
    :cond_1
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->getDurationUs()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method private getStreamMarkerAndInfoBlockBytes(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->peekFully([BII)V

    .line 210
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->resetPeekPosition()V

    const/4 p1, 0x2

    .line 211
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method static synthetic lambda$static$0()[Lcom/google/android/exoplr2avp/extractor/Extractor;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplr2avp/extractor/Extractor;

    .line 56
    new-instance v1, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private outputSampleMetadata()V
    .locals 11

    .line 411
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/32 v2, 0xf4240

    mul-long v0, v0, v2

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    .line 414
    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    iget v2, v2, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->sampleRate:I

    int-to-long v2, v2

    div-long v5, v0, v2

    .line 415
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget v8, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 416
    invoke-interface/range {v4 .. v10}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method private readFrames(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;->isSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;->handlePendingSeek(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 259
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    const-wide/16 v2, -0x1

    const/4 p2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 260
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    .line 261
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/extractor/FlacFrameReader;->getFirstSampleNumber(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    return p2

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result v0

    const v1, 0x8000

    if-ge v0, v1, :cond_4

    .line 269
    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 271
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v4

    sub-int/2addr v1, v0

    .line 270
    invoke-interface {p1, v4, v0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorInput;->read([BII)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_3

    .line 276
    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setLimit(I)V

    goto :goto_1

    .line 277
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    if-nez p1, :cond_5

    .line 278
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    return v1

    :cond_4
    const/4 v4, 0x0

    .line 284
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result p1

    .line 287
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    iget v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->minFrameSize:I

    if-ge v0, v1, :cond_6

    .line 288
    iget-object v5, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    sub-int/2addr v1, v0

    invoke-virtual {v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v5, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 291
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {p0, v0, v4}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->findFrame(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Z)J

    move-result-wide v0

    .line 292
    iget-object v4, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v4

    sub-int/2addr v4, p1

    .line 293
    iget-object v5, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v5, p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 294
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-interface {p1, v5, v4}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 295
    iget p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    cmp-long p1, v0, v2

    if-eqz p1, :cond_7

    .line 299
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->outputSampleMetadata()V

    .line 300
    iput p2, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 301
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 304
    :cond_7
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_8

    .line 307
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    .line 308
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 309
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v2

    .line 308
    invoke-static {v0, v1, v2, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 311
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setLimit(I)V

    :cond_8
    return p2
.end method

.method private readId3Metadata(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->id3MetadataDisabled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader;->readId3Metadata(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Z)Lcom/google/android/exoplr2avp/metadata/Metadata;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    .line 205
    iput v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private readMetadataBlocks(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader$FlacStreamMetadataHolder;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader$FlacStreamMetadataHolder;-><init>(Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 224
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader;->readMetadataBlock(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader$FlacStreamMetadataHolder;)Z

    move-result v1

    .line 226
    iget-object v2, v0, Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader$FlacStreamMetadataHolder;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    iput-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    goto :goto_0

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    iget p1, p1, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->minFrameSize:I

    const/4 v0, 0x6

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->minFrameSize:I

    .line 231
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->flacStreamMetadata:Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->streamMarkerAndInfoBlock:[B

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->id3Metadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    .line 232
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/FlacStreamMetadata;->getFormat([BLcom/google/android/exoplr2avp/metadata/Metadata;)Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    const/4 p1, 0x4

    .line 234
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->state:I

    return-void
.end method

.method private readStreamMarker(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader;->readStreamMarker(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    const/4 p1, 0x3

    .line 216
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->state:I

    return-void
.end method


# virtual methods
.method public init(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;)V
    .locals 2

    .line 153
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 154
    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 155
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->endTracks()V

    return-void
.end method

.method public read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 161
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->state:I

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->readFrames(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Lcom/google/android/exoplr2avp/extractor/PositionHolder;)I

    move-result p1

    return p1

    .line 180
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 175
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->getFrameStartMarker(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    return v1

    .line 172
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->readMetadataBlocks(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    return v1

    .line 169
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->readStreamMarker(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    return v1

    .line 166
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->getStreamMarkerAndInfoBlockBytes(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    return v1

    .line 163
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->readId3Metadata(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)V

    return v1
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    .line 187
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->state:I

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->binarySearchSeeker:Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p1, p3, p4}, Lcom/google/android/exoplr2avp/extractor/flac/FlacBinarySearchSeeker;->setSeekTargetUs(J)V

    :cond_1
    :goto_0
    cmp-long p1, p3, v1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, -0x1

    .line 191
    :goto_1
    iput-wide v1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameFirstSampleNumber:J

    .line 192
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->currentFrameBytesWritten:I

    .line 193
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flac/FlacExtractor;->buffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset(I)V

    return-void
.end method

.method public sniff(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 147
    invoke-static {p1, v0}, Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader;->peekId3Metadata(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;Z)Lcom/google/android/exoplr2avp/metadata/Metadata;

    .line 148
    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/FlacMetadataReader;->checkAndPeekStreamMarker(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z

    move-result p1

    return p1
.end method
