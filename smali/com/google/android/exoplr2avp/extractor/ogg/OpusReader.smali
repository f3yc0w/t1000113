.class final Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;
.super Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader;
.source "OpusReader.java"


# static fields
.field private static final OPUS_COMMENT_HEADER_SIGNATURE:[B

.field private static final OPUS_ID_HEADER_SIGNATURE:[B


# instance fields
.field private firstCommentHeaderSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x8

    new-array v1, v0, [B

    .line 36
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    new-array v0, v0, [B

    .line 37
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x48t
        0x65t
        0x61t
        0x64t
    .end array-data

    :array_1
    .array-data 1
        0x4ft
        0x70t
        0x75t
        0x73t
        0x54t
        0x61t
        0x67t
        0x73t
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader;-><init>()V

    return-void
.end method

.method private getPacketDurationUs([B)J
    .locals 6

    const/4 v0, 0x0

    .line 131
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v1, v0, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    .line 142
    aget-byte p1, p1, v3

    and-int/lit8 v2, p1, 0x3f

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    const/4 p1, 0x3

    shr-int/2addr v0, p1

    and-int/lit8 v1, v0, 0x3

    const/16 v4, 0x10

    if-lt v0, v4, :cond_2

    const/16 p1, 0x9c4

    shl-int/2addr p1, v1

    goto :goto_1

    :cond_2
    const/16 v4, 0xc

    const/16 v5, 0x2710

    if-lt v0, v4, :cond_3

    and-int/lit8 p1, v1, 0x1

    shl-int p1, v5, p1

    goto :goto_1

    :cond_3
    if-ne v1, p1, :cond_4

    const p1, 0xea60

    goto :goto_1

    :cond_4
    shl-int p1, v5, v1

    :goto_1
    int-to-long v0, v2

    int-to-long v2, p1

    mul-long v0, v0, v2

    return-wide v0
.end method

.method private static peekPacketStartsWith(Lcom/google/android/exoplr2avp/util/ParsableByteArray;[B)Z
    .locals 4

    .line 168
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->bytesLeft()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    .line 171
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v0

    .line 172
    array-length v1, p1

    new-array v1, v1, [B

    .line 173
    array-length v3, p1

    invoke-virtual {p0, v1, v2, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readBytes([BII)V

    .line 174
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 175
    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public static verifyBitstreamType(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Z
    .locals 1

    .line 44
    sget-object v0, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p0, v0}, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->peekPacketStartsWith(Lcom/google/android/exoplr2avp/util/ParsableByteArray;[B)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected preparePayload(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)J
    .locals 2

    .line 57
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->getPacketDurationUs([B)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->convertTimeToGranule(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected readHeaders(Lcom/google/android/exoplr2avp/util/ParsableByteArray;JLcom/google/android/exoplr2avp/extractor/ogg/StreamReader$SetupData;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNullIf;
        expression = {
            "#3.format"
        }
        result = false
    .end annotation

    .line 64
    sget-object p2, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->OPUS_ID_HEADER_SIGNATURE:[B

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->peekPacketStartsWith(Lcom/google/android/exoplr2avp/util/ParsableByteArray;[B)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    .line 65
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->limit()I

    move-result p1

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p1

    .line 66
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/OpusUtil;->getChannelCount([B)I

    move-result p2

    .line 67
    invoke-static {p1}, Lcom/google/android/exoplr2avp/audio/OpusUtil;->buildInitializationData([B)Ljava/util/List;

    move-result-object p1

    .line 69
    iget-object v0, p4, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplr2avp/Format;

    if-eqz v0, :cond_0

    return p3

    .line 78
    :cond_0
    new-instance v0, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    const-string v1, "audio/opus"

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p2}, Lcom/google/android/exoplr2avp/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    const v0, 0xbb80

    .line 82
    invoke-virtual {p2, v0}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    .line 83
    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/Format$Builder;->setInitializationData(Ljava/util/List;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplr2avp/Format;

    return p3

    .line 86
    :cond_1
    sget-object p2, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->OPUS_COMMENT_HEADER_SIGNATURE:[B

    invoke-static {p1, p2}, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->peekPacketStartsWith(Lcom/google/android/exoplr2avp/util/ParsableByteArray;[B)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 89
    iget-object v0, p4, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    if-eqz v0, :cond_2

    return p3

    .line 98
    :cond_2
    iput-boolean p3, p0, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    .line 99
    array-length p2, p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 101
    invoke-static {p1, v1, v1}, Lcom/google/android/exoplr2avp/extractor/VorbisUtil;->readVorbisCommentHeader(Lcom/google/android/exoplr2avp/util/ParsableByteArray;ZZ)Lcom/google/android/exoplr2avp/extractor/VorbisUtil$CommentHeader;

    move-result-object p1

    .line 104
    iget-object p1, p1, Lcom/google/android/exoplr2avp/extractor/VorbisUtil$CommentHeader;->comments:[Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/extractor/VorbisUtil;->parseVorbisComments(Ljava/util/List;)Lcom/google/android/exoplr2avp/metadata/Metadata;

    move-result-object p1

    if-nez p1, :cond_3

    return p3

    .line 109
    :cond_3
    iget-object p2, p4, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplr2avp/Format;

    .line 112
    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/Format;->buildUpon()Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p2

    iget-object v0, p4, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplr2avp/Format;

    iget-object v0, v0, Lcom/google/android/exoplr2avp/Format;->metadata:Lcom/google/android/exoplr2avp/metadata/Metadata;

    .line 113
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/metadata/Metadata;->copyWithAppendedEntriesFrom(Lcom/google/android/exoplr2avp/metadata/Metadata;)Lcom/google/android/exoplr2avp/metadata/Metadata;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/exoplr2avp/Format$Builder;->setMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    iput-object p1, p4, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplr2avp/Format;

    return p3

    .line 119
    :cond_4
    iget-object p1, p4, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$SetupData;->format:Lcom/google/android/exoplr2avp/Format;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkStateNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method protected reset(Z)V
    .locals 0

    .line 49
    invoke-super {p0, p1}, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader;->reset(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 51
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/extractor/ogg/OpusReader;->firstCommentHeaderSeen:Z

    :cond_0
    return-void
.end method
