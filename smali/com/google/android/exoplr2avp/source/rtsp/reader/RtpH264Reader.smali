.class final Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;
.super Ljava/lang/Object;
.source "RtpH264Reader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final FU_PAYLOAD_OFFSET:I = 0x2

.field private static final MEDIA_CLOCK_FREQUENCY:J = 0x15f90L

.field private static final NAL_UNIT_TYPE_IDR:I = 0x5

.field private static final RTP_PACKET_TYPE_FU_A:I = 0x1c

.field private static final RTP_PACKET_TYPE_STAP_A:I = 0x18

.field private static final TAG:Ljava/lang/String; = "RtpH264Reader"


# instance fields
.field private bufferFlags:I

.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private final fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final nalStartCodeArray:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;)V
    .locals 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplr2avp/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->nalStartCodeArray:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    .line 73
    new-instance p1, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 74
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 75
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->previousSequenceNumber:I

    return-void
.end method

.method private static getBufferFlagsFromNalType(I)I
    .locals 1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private processFragmentationUnitPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V
    .locals 6
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 241
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    .line 242
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v0, v0, 0xe0

    and-int/lit8 v4, v2, 0x1f

    or-int/2addr v0, v4

    and-int/lit16 v4, v2, 0x80

    if-lez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    and-int/lit8 v2, v2, 0x40

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v4, :cond_2

    .line 249
    iget p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->writeStartCode()I

    move-result v1

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 253
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    int-to-byte v1, v0

    aput-byte v1, p2, v3

    .line 254
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset([B)V

    .line 255
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 258
    :cond_2
    iget v4, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->previousSequenceNumber:I

    invoke-static {v4}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v4

    const/4 v5, 0x2

    if-eq p2, v4, :cond_3

    new-array p1, v5, [Ljava/lang/Object;

    .line 265
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 262
    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RtpH264Reader"

    .line 260
    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 270
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset([B)V

    .line 271
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 274
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    .line 275
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-interface {p2, v1, p1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 276
    iget p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    if-eqz v2, :cond_4

    and-int/lit8 p1, v0, 0x1f

    .line 279
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->getBufferFlagsFromNalType(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->bufferFlags:I

    :cond_4
    return-void
.end method

.method private processSingleNalUnitPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 158
    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->writeStartCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 159
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 160
    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 162
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    and-int/lit8 p1, p1, 0x1f

    .line 163
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->getBufferFlagsFromNalType(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->bufferFlags:I

    return-void
.end method

.method private processSingleTimeAggregationPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    .line 199
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 200
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result v0

    .line 201
    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->writeStartCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 202
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 203
    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 207
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->bufferFlags:I

    return-void
.end method

.method private static toSampleUs(JJJ)J
    .locals 6

    sub-long v0, p2, p4

    const-wide/32 v2, 0xf4240

    const-wide/32 v4, 0x15f90

    .line 293
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private writeStartCode()I
    .locals 3

    .line 284
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->nalStartCodeArray:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 285
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->nalStartCodeArray:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 286
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->nalStartCodeArray:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    return v0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;JIZ)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ParserException;
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p4

    const/4 v2, 0x0

    .line 95
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/4 v4, 0x0

    aget-byte v3, v3, v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0x1f

    .line 100
    iget-object v5, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v5}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v5, 0x18

    if-lez v3, :cond_0

    if-ge v3, v5, :cond_0

    .line 102
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->processSingleNalUnitPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    goto :goto_0

    :cond_0
    if-ne v3, v5, :cond_1

    .line 104
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->processSingleTimeAggregationPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    goto :goto_0

    :cond_1
    const/16 v5, 0x1c

    if-ne v3, v5, :cond_4

    move-object/from16 v5, p1

    .line 106
    invoke-direct {v1, v5, v0}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->processFragmentationUnitPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    :goto_0
    if-eqz p5, :cond_3

    .line 114
    iget-wide v2, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    move-wide/from16 v2, p2

    if-nez v7, :cond_2

    .line 115
    iput-wide v2, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    .line 118
    :cond_2
    iget-wide v8, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->startTimeOffsetUs:J

    iget-wide v12, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    move-wide/from16 v10, p2

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->toSampleUs(JJJ)J

    move-result-wide v15

    .line 119
    iget-object v14, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget v2, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->bufferFlags:I

    iget v3, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-interface/range {v14 .. v20}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    .line 121
    iput v4, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 124
    :cond_3
    iput v0, v1, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->previousSequenceNumber:I

    return-void

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    const-string v3, "RTP H264 packetization mode [%d] not supported."

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0, v2}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object v0

    throw v0

    :catch_0
    move-exception v0

    .line 97
    invoke-static {v2, v0}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object v0

    throw v0
.end method

.method public createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x2

    .line 80
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 82
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 0

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 129
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->firstReceivedTimestamp:J

    const/4 p1, 0x0

    .line 130
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->fragmentedSampleSizeBytes:I

    .line 131
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH264Reader;->startTimeOffsetUs:J

    return-void
.end method
