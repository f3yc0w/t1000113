.class final Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;
.super Lcom/google/android/exoplr2avp/extractor/flv/TagPayloadReader;
.source "VideoTagPayloadReader.java"


# static fields
.field private static final AVC_PACKET_TYPE_AVC_NALU:I = 0x1

.field private static final AVC_PACKET_TYPE_SEQUENCE_HEADER:I = 0x0

.field private static final VIDEO_CODEC_AVC:I = 0x7

.field private static final VIDEO_FRAME_KEYFRAME:I = 0x1

.field private static final VIDEO_FRAME_VIDEO_INFO:I = 0x5


# instance fields
.field private frameType:I

.field private hasOutputFormat:Z

.field private hasOutputKeyframe:Z

.field private final nalLength:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private final nalStartCode:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

.field private nalUnitLengthFieldLength:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/extractor/TrackOutput;)V
    .locals 1

    .line 55
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/flv/TagPayloadReader;-><init>(Lcom/google/android/exoplr2avp/extractor/TrackOutput;)V

    .line 56
    new-instance p1, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    sget-object v0, Lcom/google/android/exoplr2avp/util/NalUnitUtil;->NAL_START_CODE:[B

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    .line 57
    new-instance p1, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    return-void
.end method


# virtual methods
.method protected parseHeader(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/extractor/flv/TagPayloadReader$UnsupportedFormatException;
        }
    .end annotation

    .line 67
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result p1

    shr-int/lit8 v0, p1, 0x4

    and-int/lit8 v0, v0, 0xf

    and-int/lit8 p1, p1, 0xf

    const/4 v1, 0x7

    if-ne p1, v1, :cond_1

    .line 74
    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->frameType:I

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 72
    :cond_1
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/flv/TagPayloadReader$UnsupportedFormatException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video format not supported: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/extractor/flv/TagPayloadReader$UnsupportedFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parsePayload(Lcom/google/android/exoplr2avp/util/ParsableByteArray;J)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ParserException;
        }
    .end annotation

    .line 80
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v0

    .line 81
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readInt24()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long v4, p2, v1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-nez v0, :cond_0

    .line 85
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-nez v1, :cond_0

    .line 86
    new-instance v0, Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v1

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;-><init>([B)V

    .line 87
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    invoke-virtual {p1, v1, p3, v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readBytes([BII)V

    .line 88
    invoke-static {v0}, Lcom/google/android/exoplr2avp/video/AvcConfig;->parse(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/video/AvcConfig;

    move-result-object p1

    .line 89
    iget v0, p1, Lcom/google/android/exoplr2avp/video/AvcConfig;->nalUnitLengthFieldLength:I

    iput v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    .line 91
    new-instance v0, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    const-string/jumbo v1, "video/avc"

    .line 93
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/exoplr2avp/video/AvcConfig;->codecs:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setCodecs(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplr2avp/video/AvcConfig;->width:I

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setWidth(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplr2avp/video/AvcConfig;->height:I

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setHeight(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget v1, p1, Lcom/google/android/exoplr2avp/video/AvcConfig;->pixelWidthHeightRatio:F

    .line 97
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setPixelWidthHeightRatio(F)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    iget-object p1, p1, Lcom/google/android/exoplr2avp/video/AvcConfig;->initializationData:Ljava/util/List;

    .line 98
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    .line 100
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->format(Lcom/google/android/exoplr2avp/Format;)V

    .line 101
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    return p3

    :cond_0
    if-ne v0, p2, :cond_4

    .line 103
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->hasOutputFormat:Z

    if-eqz v0, :cond_4

    .line 104
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->frameType:I

    if-ne v0, p2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    .line 105
    :goto_0
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    if-nez v0, :cond_2

    if-nez v6, :cond_2

    return p3

    .line 111
    :cond_2
    iget-object v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v0

    .line 112
    aput-byte p3, v0, p3

    .line 113
    aput-byte p3, v0, p2

    const/4 v1, 0x2

    .line 114
    aput-byte p3, v0, v1

    .line 115
    iget v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    const/4 v1, 0x4

    rsub-int/lit8 v0, v0, 0x4

    const/4 v7, 0x0

    .line 121
    :goto_1
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v2

    if-lez v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v2

    iget v3, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalUnitLengthFieldLength:I

    invoke-virtual {p1, v2, v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readBytes([BII)V

    .line 124
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v2, p3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 125
    iget-object v2, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalLength:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedIntToInt()I

    move-result v2

    .line 128
    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-virtual {v3, p3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 129
    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    iget-object v8, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->nalStartCode:Lcom/google/android/exoplr2avp/util/ParsableByteArray;

    invoke-interface {v3, v8, v1}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    add-int/lit8 v7, v7, 0x4

    .line 133
    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    invoke-interface {v3, p1, v2}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleData(Lcom/google/android/exoplr2avp/util/ParsableByteArray;I)V

    add-int/2addr v7, v2

    goto :goto_1

    .line 136
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->output:Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v3 .. v9}, Lcom/google/android/exoplr2avp/extractor/TrackOutput;->sampleMetadata(JIIILcom/google/android/exoplr2avp/extractor/TrackOutput$CryptoData;)V

    .line 138
    iput-boolean p2, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    return p2

    :cond_4
    return p3
.end method

.method public seek()V
    .locals 1

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/flv/VideoTagPayloadReader;->hasOutputKeyframe:Z

    return-void
.end method
