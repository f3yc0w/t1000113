.class final Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;
.super Ljava/lang/Object;
.source "WavExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$OutputWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PassthroughOutputWriter"
.end annotation


# instance fields
.field private final extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

.field private final format:Lcom/google/android/exoplr2avp/Format;

.field private outputFrameCount:J

.field private pendingOutputBytes:I

.field private startTimeUs:J

.field private final targetSampleSizeBytes:I

.field private final trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

.field private final wavFormat:Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ParserException;
        }
    .end annotation

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    .line 302
    iput-object p2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 303
    iput-object p3, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;

    .line 305
    iget p1, p3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->numChannels:I

    iget p2, p3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->bitsPerSample:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 307
    iget p2, p3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->blockSize:I

    if-ne p2, p1, :cond_0

    .line 313
    iget p2, p3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->frameRateHz:I

    mul-int p2, p2, p1

    mul-int/lit8 p2, p2, 0x8

    .line 314
    iget v0, p3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->frameRateHz:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0xa

    .line 315
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    .line 316
    new-instance v0, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    .line 318
    invoke-virtual {v0, p4}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p4

    .line 319
    invoke-virtual {p4, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setAverageBitrate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p4

    .line 320
    invoke-virtual {p4, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setPeakBitrate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    .line 321
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/Format$Builder;->setMaxInputSize(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->numChannels:I

    .line 322
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    iget p2, p3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->frameRateHz:I

    .line 323
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    .line 324
    invoke-virtual {p1, p5}, Lcom/google/android/exoplr2avp/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    .line 325
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lcom/google/android/exoplr2avp/Format;

    return-void

    .line 308
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Expected block size: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->blockSize:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public init(IJ)V
    .locals 9

    .line 337
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->extractorOutput:Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;

    new-instance v8, Lcom/google/android/exoplr2avp/extractor/wav/WavSeekMap;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/extractor/wav/WavSeekMap;-><init>(Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V

    .line 339
    iget-object p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public reset(J)V
    .locals 0

    .line 330
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    const/4 p1, 0x0

    .line 331
    iput p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    const-wide/16 p1, 0x0

    .line 332
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    return-void
.end method

.method public sampleData(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;J)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    :goto_0
    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_1

    .line 345
    iget v7, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    iget v8, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->targetSampleSizeBytes:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v6, v8

    .line 346
    invoke-static {v6, v7, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 347
    iget-object v6, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-object/from16 v8, p1

    invoke-interface {v6, v8, v7, v3}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/upstream/DataReader;IZ)I

    move-result v3

    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    move-wide v1, v4

    goto :goto_0

    .line 351
    :cond_0
    iget v4, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    add-int/2addr v4, v3

    iput v4, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    .line 359
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;

    iget v1, v1, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->blockSize:I

    .line 360
    iget v2, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    div-int/2addr v2, v1

    if-lez v2, :cond_2

    .line 362
    iget-wide v4, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->startTimeUs:J

    iget-wide v7, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    const-wide/32 v9, 0xf4240

    iget-object v11, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->wavFormat:Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;

    iget v11, v11, Lcom/google/android/exoplr2avp/extractor/wav/WavFormat;->frameRateHz:I

    int-to-long v11, v11

    .line 364
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide v7

    add-long v10, v4, v7

    mul-int v13, v2, v1

    .line 367
    iget v1, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    sub-int/2addr v1, v13

    .line 368
    iget-object v9, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v12, 0x1

    const/4 v15, 0x0

    move v14, v1

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    .line 370
    iget-wide v4, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    int-to-long v7, v2

    add-long/2addr v4, v7

    iput-wide v4, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->outputFrameCount:J

    .line 371
    iput v1, v0, Lcom/google/android/exoplr2avp/extractor/wav/WavExtractor$PassthroughOutputWriter;->pendingOutputBytes:I

    :cond_2
    if-gtz v6, :cond_3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    return v3
.end method
