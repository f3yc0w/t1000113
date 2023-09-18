.class final Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;
.super Ljava/lang/Object;
.source "RtpH263Reader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final I_VOP:I = 0x0

.field private static final MEDIA_CLOCK_FREQUENCY:J = 0x15f90L

.field private static final PICTURE_START_CODE:I = 0x80

.field private static final TAG:Ljava/lang/String; = "RtpH263Reader"


# instance fields
.field private firstReceivedTimestamp:J

.field private fragmentedSampleSizeBytes:I

.field private height:I

.field private isKeyFrame:Z

.field private isOutputFormatSet:Z

.field private final payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

.field private width:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 68
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 69
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->previousSequenceNumber:I

    return-void
.end method

.method private parseVopHeader(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Z)V
    .locals 7

    .line 176
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 185
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedInt()J

    move-result-wide v1

    const/16 v3, 0xa

    shr-long/2addr v1, v3

    const-wide/16 v3, 0x3f

    and-long/2addr v1, v3

    const/4 v3, 0x0

    const-wide/16 v4, 0x20

    cmp-long v6, v1, v4

    if-nez v6, :cond_3

    .line 187
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v1

    shr-int/lit8 v2, v1, 0x1

    const/4 v4, 0x1

    and-int/2addr v2, v4

    if-nez p2, :cond_1

    if-nez v2, :cond_1

    shr-int/lit8 p2, v1, 0x2

    and-int/lit8 p2, p2, 0x7

    if-ne p2, v4, :cond_0

    const/16 p2, 0x80

    .line 199
    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->width:I

    const/16 p2, 0x60

    .line 200
    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->height:I

    goto :goto_0

    :cond_0
    const/16 v1, 0xb0

    add-int/lit8 p2, p2, -0x2

    shl-int/2addr v1, p2

    .line 202
    iput v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->width:I

    const/16 v1, 0x90

    shl-int p2, v1, p2

    .line 203
    iput p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->height:I

    .line 206
    :cond_1
    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    if-nez v2, :cond_2

    const/4 v3, 0x1

    .line 207
    :cond_2
    iput-boolean v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    return-void

    .line 210
    :cond_3
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 211
    iput-boolean v3, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    return-void
.end method

.method private static toSampleUs(JJJ)J
    .locals 6

    sub-long v0, p2, p4

    const-wide/32 v2, 0xf4240

    const-wide/32 v4, 0x15f90

    .line 217
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;JIZ)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 84
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v3

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result v4

    and-int/lit16 v5, v4, 0x400

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    and-int/lit16 v8, v4, 0x200

    const-string v9, "RtpH263Reader"

    if-nez v8, :cond_a

    and-int/lit16 v8, v4, 0x1f8

    if-nez v8, :cond_a

    and-int/lit8 v4, v4, 0x7

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v5, :cond_3

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->peekUnsignedByte()I

    move-result v4

    and-int/lit16 v4, v4, 0xfc

    const/16 v5, 0x80

    if-ge v4, v5, :cond_2

    const-string v1, "Picture start Code (PSC) missing, dropping packet."

    .line 109
    invoke-static {v9, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 113
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v4

    aput-byte v7, v4, v3

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    aput-byte v7, v4, v5

    .line 115
    invoke-virtual {v1, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    goto :goto_1

    .line 118
    :cond_3
    iget v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->previousSequenceNumber:I

    invoke-static {v3}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v3

    if-eq v2, v3, :cond_4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 125
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d. Dropping packet."

    .line 122
    invoke-static {v2, v1}, Lcom/google/android/exoplr2avp/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v9, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 130
    :cond_4
    :goto_1
    iget v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    if-nez v3, :cond_7

    .line 131
    iget-boolean v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->isOutputFormatSet:Z

    invoke-direct {v0, v1, v3}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->parseVopHeader(Lcom/google/android/exoplr2avp/util/ParsableByteArray;Z)V

    .line 132
    iget-boolean v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->isOutputFormatSet:Z

    if-nez v3, :cond_7

    iget-boolean v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    if-eqz v3, :cond_7

    .line 133
    iget v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->width:I

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplr2avp/Format;

    iget v4, v4, Lcom/google/android/exoplr2avp/Format;->width:I

    if-ne v3, v4, :cond_5

    iget v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->height:I

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplr2avp/Format;

    iget v4, v4, Lcom/google/android/exoplr2avp/Format;->height:I

    if-eq v3, v4, :cond_6

    .line 134
    :cond_5
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget-object v4, v4, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplr2avp/Format;

    .line 135
    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v4

    iget v5, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->width:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setWidth(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v4

    iget v5, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->height:I

    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/Format$Builder;->setHeight(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v4

    .line 134
    invoke-interface {v3, v4}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    .line 137
    :cond_6
    iput-boolean v6, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->isOutputFormatSet:Z

    .line 140
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v3

    .line 142
    iget-object v4, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v4, v1, v3}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 143
    iget v1, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    if-eqz p5, :cond_9

    .line 146
    iget-wide v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v3, v5

    move-wide/from16 v3, p2

    if-nez v1, :cond_8

    .line 147
    iput-wide v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    .line 149
    :cond_8
    iget-wide v8, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->startTimeOffsetUs:J

    iget-wide v12, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    move-wide/from16 v10, p2

    invoke-static/range {v8 .. v13}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->toSampleUs(JJJ)J

    move-result-wide v15

    .line 150
    iget-object v14, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 152
    iget-boolean v1, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    iget v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v17, v1

    move/from16 v18, v3

    .line 150
    invoke-interface/range {v14 .. v20}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    .line 156
    iput v7, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 157
    iput-boolean v7, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->isKeyFrame:Z

    .line 159
    :cond_9
    iput v2, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->previousSequenceNumber:I

    return-void

    :cond_a
    :goto_2
    const-string v1, "Dropping packet: video reduncancy coding is not supported, packet header VRC, or PLEN or PEBIT is non-zero"

    .line 98
    invoke-static {v9, v1}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x2

    .line 74
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 75
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

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

    .line 164
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->firstReceivedTimestamp:J

    const/4 p1, 0x0

    .line 165
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->fragmentedSampleSizeBytes:I

    .line 166
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpH263Reader;->startTimeOffsetUs:J

    return-void
.end method
