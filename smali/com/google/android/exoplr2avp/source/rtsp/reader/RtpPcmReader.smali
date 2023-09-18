.class public final Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;
.super Ljava/lang/Object;
.source "RtpPcmReader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPayloadReader;


# static fields
.field private static final TAG:Ljava/lang/String; = "RtpPcmReader"


# instance fields
.field private firstReceivedTimestamp:J

.field private final payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

.field private previousSequenceNumber:I

.field private startTimeOffsetUs:J

.field private trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;)V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 46
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->firstReceivedTimestamp:J

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->startTimeOffsetUs:J

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->previousSequenceNumber:I

    return-void
.end method

.method private static toSampleUs(JJJI)J
    .locals 6

    sub-long v0, p2, p4

    int-to-long v4, p6

    const-wide/32 v2, 0xf4240

    .line 99
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplr2avp/util/Util;->scaleLargeTimestamp(JJJ)J

    move-result-wide p2

    add-long/2addr p0, p2

    return-wide p0
.end method


# virtual methods
.method public consume(Lcom/google/android/exoplr2avp/util/ParsableByteArray;JIZ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p4

    .line 66
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget v2, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->previousSequenceNumber:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 68
    invoke-static {v2}, Lcom/google/android/exoplr2avp/source/rtsp/RtpPacket;->getNextSequenceNumber(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 74
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Received RTP packet with unexpected sequence number. Expected: %d; received: %d."

    .line 72
    invoke-static {v2, v3}, Lcom/google/android/exoplr2avp/util/Util;->formatInvariant(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "RtpPcmReader"

    .line 70
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_0
    iget-wide v4, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->startTimeOffsetUs:J

    iget-wide v8, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->firstReceivedTimestamp:J

    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget v10, v2, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->clockRate:I

    move-wide/from16 v6, p2

    .line 79
    invoke-static/range {v4 .. v10}, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->toSampleUs(JJJI)J

    move-result-wide v12

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v15

    .line 81
    iget-object v2, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-object/from16 v3, p1

    invoke-interface {v2, v3, v15}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    .line 82
    iget-object v11, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-interface/range {v11 .. v17}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    .line 85
    iput v1, v0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->previousSequenceNumber:I

    return-void
.end method

.method public createTracks(Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;I)V
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-interface {p1, p2, v0}, Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->trackOutput:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    .line 55
    iget-object p2, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->payloadFormat:Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;

    iget-object p2, p2, Lcom/google/android/exoplr2avp/source/rtsp/RtpPayloadFormat;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public onReceivingFirstPacket(JI)V
    .locals 0

    .line 60
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->firstReceivedTimestamp:J

    return-void
.end method

.method public seek(JJ)V
    .locals 0

    .line 91
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->firstReceivedTimestamp:J

    .line 92
    iput-wide p3, p0, Lcom/google/android/exoplr2avp/source/rtsp/reader/RtpPcmReader;->startTimeOffsetUs:J

    return-void
.end method
