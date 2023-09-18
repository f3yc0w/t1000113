.class final Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;
.super Ljava/lang/Object;
.source "RtpH265Reader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final FU_PAYLOAD_OFFSET:I = 0x3

.field private static final MEDIA_CLOCK_FREQUENCY:J = 0x15f90L

.field private static final NAL_IDR_N_LP:I = 0x14

.field private static final NAL_IDR_W_RADL:I = 0x13

.field private static final RTP_PACKET_TYPE_AP:I = 0x30

.field private static final RTP_PACKET_TYPE_FU:I = 0x31

.field private static final TAG:Ljava/lang/String; = "RtpH265Reader"


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

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 71
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    sget-object v1, Lcom/google/android/exoplr2avp/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->nalStartCodeArray:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 72
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 73
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 74
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->previousSequenceNumber:I

    return-void
.end method

.method private static getBufferFlagsFromNalType(I)I
    .locals 1

    const/16 v0, 0x13

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private processFragmentationUnitPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_5

    .line 204
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    const/4 v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x7

    .line 205
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v3

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int/lit8 v5, v3, 0x3f

    and-int/lit16 v6, v3, 0x80

    const/4 v7, 0x0

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    and-int/lit8 v3, v3, 0x40

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v6, :cond_2

    .line 212
    iget p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->writeStartCode()I

    move-result v1

    add-int/2addr p2, v1

    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    .line 219
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    shl-int/lit8 v1, v5, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    aput-byte v1, p2, v2

    .line 220
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    int-to-byte v0, v0

    aput-byte v0, p2, v4

    .line 221
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset([B)V

    .line 222
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    goto :goto_2

    .line 225
    :cond_2
    iget v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->previousSequenceNumber:I

    add-int/2addr v0, v2

    const v6, 0xffff

    rem-int/2addr v0, v6

    if-eq p2, v0, :cond_3

    new-array p1, v4, [Ljava/lang/Object;

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, v7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v2

    const-string p2, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 229
    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "RtpH265Reader"

    .line 227
    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 237
    :cond_3
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->reset([B)V

    .line 238
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 241
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result p1

    .line 242
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fuScratchBuffer:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-interface {p2, v0, p1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 243
    iget p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    if-eqz v3, :cond_4

    .line 246
    invoke-static {v5}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->getBufferFlagsFromNalType(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->bufferFlags:I

    :cond_4
    return-void

    :cond_5
    const/4 p1, 0x0

    const-string p2, "Malformed FU header."

    .line 202
    invoke-static {p2, p1}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object p1

    throw p1
.end method

.method private processSingleNalUnitPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 3
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "trackOutput"
        }
    .end annotation

    .line 153
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 154
    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    invoke-direct {p0}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->writeStartCode()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    .line 155
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 156
    iget v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    .line 158
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p1

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    shr-int/lit8 p1, p1, 0x1

    and-int/lit8 p1, p1, 0x3f

    .line 159
    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->getBufferFlagsFromNalType(I)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->bufferFlags:I

    return-void
.end method

.method private static toSampleUs(JJJ)J
    .locals 6

    sub-long v0, p2, p4

    const-wide/32 v2, 0xf4240

    const-wide/32 v4, 0x15f90

    .line 260
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private writeStartCode()I
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->nalStartCodeArray:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 252
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->nalStartCodeArray:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    .line 253
    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->nalStartCodeArray:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

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

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v2

    array-length v2, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v2

    const/4 v4, 0x0

    aget-byte v2, v2, v4

    const/4 v5, 0x1

    shr-int/2addr v2, v5

    and-int/lit8 v2, v2, 0x3f

    .line 95
    iget-object v6, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v6}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v6, 0x30

    if-ltz v2, :cond_0

    if-ge v2, v6, :cond_0

    .line 97
    invoke-direct/range {p0 .. p1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->processSingleNalUnitPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    goto :goto_0

    :cond_0
    if-eq v2, v6, :cond_4

    const/16 v6, 0x31

    if-ne v2, v6, :cond_3

    move-object/from16 v6, p1

    .line 102
    invoke-direct {v0, v6, v1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->processFragmentationUnitPacket(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    :goto_0
    if-eqz p5, :cond_2

    .line 110
    iget-wide v2, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->firstReceivedTimestamp:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    move-wide/from16 v2, p2

    if-nez v7, :cond_1

    .line 111
    iput-wide v2, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->firstReceivedTimestamp:J

    .line 114
    :cond_1
    iget-wide v8, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->startTimeOffsetUs:J

    iget-wide v12, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->firstReceivedTimestamp:J

    move-wide/from16 v10, p2

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->toSampleUs(JJJ)J

    move-result-wide v15

    .line 115
    iget-object v14, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget v2, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->bufferFlags:I

    iget v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v17, v2

    move/from16 v18, v3

    invoke-interface/range {v14 .. v20}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    .line 117
    iput v4, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    .line 120
    :cond_2
    iput v1, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->previousSequenceNumber:I

    return-void

    :cond_3
    new-array v1, v5, [Ljava/lang/Object;

    .line 105
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "RTP H265 payload type [%d] not supported."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 104
    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object v1

    throw v1

    .line 100
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "need to implement processAggregationPacket"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const-string v1, "Empty RTP data packet."

    .line 90
    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedManifest(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object v1

    throw v1
.end method

.method public createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x2

    .line 79
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 80
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

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

    .line 125
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->firstReceivedTimestamp:J

    const/4 p1, 0x0

    .line 126
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->fragmentedSampleSizeBytes:I

    .line 127
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH265Reader;->startTimeOffsetUs:J

    return-void
.end method
