.class final Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;
.super Ljava/lang/Object;
.source "RtpOpusReader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final MEDIA_CLOCK_FREQUENCY:J = 0xbb80L

.field private static final TAG:Ljava/lang/String; = "RtpOpusReader"


# instance fields
.field private firstReceivedTimestamp:J

.field private foundOpusCommentHeader:Z

.field private foundOpusIDHeader:Z

.field private final payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    const-wide/16 v0, -0x1

    .line 61
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->firstReceivedTimestamp:J

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->previousSequenceNumber:I

    return-void
.end method

.method private static toSampleTimeUs(JJJ)J
    .locals 6

    sub-long v0, p2, p4

    const-wide/32 v2, 0xf4240

    const-wide/32 v4, 0xbb80

    .line 152
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method

.method private static validateOpusIdHeader(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V
    .locals 5

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 139
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x12

    if-le v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "ID Header has insufficient data"

    .line 140
    invoke-static {v1, v4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    const/16 v1, 0x8

    .line 141
    invoke-virtual {p0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "OpusHead"

    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "ID Header missing"

    invoke-static {v1, v4}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    const-string/jumbo v1, "version number must always be 1"

    invoke-static {v2, v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 145
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    return-void
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;JIZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 81
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-boolean v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->foundOpusIDHeader:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 89
    invoke-static/range {p1 .. p1}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->validateOpusIdHeader(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)V

    .line 90
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/exoplr2avp/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object v1

    .line 91
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget-object v3, v3, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v3

    .line 92
    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplr2avp/Format$Builder;

    .line 93
    iget-object v1, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    .line 94
    iput-boolean v4, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->foundOpusIDHeader:Z

    goto :goto_0

    .line 95
    :cond_0
    iget-boolean v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->foundOpusCommentHeader:Z

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result v3

    const/16 v6, 0x8

    if-lt v3, v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    const-string v3, "Comment Header has insufficient data"

    .line 98
    invoke-static {v5, v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 99
    invoke-virtual {v1, v6}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpusTags"

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "Comment Header should follow ID Header"

    invoke-static {v1, v3}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    .line 101
    iput-boolean v4, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->foundOpusCommentHeader:Z

    goto :goto_0

    .line 104
    :cond_2
    iget v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->previousSequenceNumber:I

    invoke-static {v3}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 110
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v5

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    const-string v3, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d."

    .line 108
    invoke-static {v3, v6}, Lcom/google/android/exoplr2avp/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "RtpOpusReader"

    .line 106
    invoke-static {v4, v3}, Lcom/google/android/exoplr2avp/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v9

    .line 115
    iget-object v3, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v3, v1, v9}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 116
    iget-wide v10, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->startTimeOffsetUs:J

    iget-wide v14, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->firstReceivedTimestamp:J

    move-wide/from16 v12, p2

    invoke-static/range {v10 .. v15}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->toSampleTimeUs(JJJ)J

    move-result-wide v6

    .line 117
    iget-object v5, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v5 .. v11}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    .line 120
    :goto_0
    iput v2, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->previousSequenceNumber:I

    return-void
.end method

.method public createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x1

    .line 69
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 70
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 0

    .line 75
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->firstReceivedTimestamp:J

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 125
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->firstReceivedTimestamp:J

    .line 126
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpOpusReader;->startTimeOffsetUs:J

    return-void
.end method
