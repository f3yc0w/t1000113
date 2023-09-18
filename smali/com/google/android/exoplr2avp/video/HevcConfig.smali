.class public final Lcom/google/android/exoplr2avp/video/HevcConfig;
.super Ljava/lang/Object;
.source "HevcConfig.java"


# static fields
.field private static final SPS_NAL_UNIT_TYPE:I = 0x21


# instance fields
.field public final codecs:Ljava/lang/String;

.field public final height:I

.field public final initializationData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final nalUnitLengthFieldLength:I

.field public final pixelWidthHeightRatio:F

.field public final width:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIFLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;IIIF",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/HevcConfig;->initializationData:Ljava/util/List;

    .line 145
    iput p2, p0, Lcom/google/android/exoplr2avp/video/HevcConfig;->nalUnitLengthFieldLength:I

    .line 146
    iput p3, p0, Lcom/google/android/exoplr2avp/video/HevcConfig;->width:I

    .line 147
    iput p4, p0, Lcom/google/android/exoplr2avp/video/HevcConfig;->height:I

    .line 148
    iput p5, p0, Lcom/google/android/exoplr2avp/video/HevcConfig;->pixelWidthHeightRatio:F

    .line 149
    iput-object p6, p0, Lcom/google/android/exoplr2avp/video/HevcConfig;->codecs:Ljava/lang/String;

    return-void
.end method

.method public static parse(Lcom/google/android/exoplr2avp/util/ParsableByteArray;)Lcom/google/android/exoplr2avp/video/HevcConfig;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x15

    .line 40
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 44
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v2

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v2, :cond_1

    .line 48
    invoke-virtual {v0, v7}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result v9

    add-int/lit8 v10, v9, 0x4

    add-int/2addr v6, v10

    .line 53
    invoke-virtual {v0, v9}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->setPosition(I)V

    .line 59
    new-array v3, v6, [B

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object/from16 v16, v8

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/high16 v15, 0x3f800000    # 1.0f

    :goto_2
    if-ge v5, v2, :cond_4

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedByte()I

    move-result v9

    and-int/lit8 v9, v9, 0x7f

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_3

    .line 69
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->readUnsignedShort()I

    move-result v12

    .line 70
    sget-object v7, Lcom/google/android/exoplr2avp/util/NalUnitUtil;->NAL_START_CODE:[B

    sget-object v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v4, v4

    move/from16 v17, v2

    const/4 v2, 0x0

    invoke-static {v7, v2, v3, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    sget-object v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil;->NAL_START_CODE:[B

    array-length v4, v4

    add-int/2addr v8, v4

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getData()[B

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->getPosition()I

    move-result v7

    .line 77
    invoke-static {v4, v7, v3, v8, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x21

    if-ne v9, v4, :cond_2

    if-nez v11, :cond_2

    add-int v4, v8, v12

    .line 81
    invoke-static {v3, v8, v4}, Lcom/google/android/exoplr2avp/util/NalUnitUtil;->parseH265SpsNalUnit([BII)Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;

    move-result-object v4

    .line 83
    iget v13, v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->width:I

    .line 84
    iget v14, v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->height:I

    .line 85
    iget v15, v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->pixelWidthHeightRatio:F

    .line 86
    iget v7, v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalProfileSpace:I

    iget-boolean v2, v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalTierFlag:Z

    move/from16 v24, v9

    iget v9, v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalProfileIdc:I

    move/from16 v25, v10

    iget v10, v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalProfileCompatibilityFlags:I

    move/from16 v16, v13

    iget-object v13, v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->constraintBytes:[I

    iget v4, v4, Lcom/google/android/exoplr2avp/util/NalUnitUtil$H265SpsData;->generalLevelIdc:I

    move/from16 v18, v7

    move/from16 v19, v2

    move/from16 v20, v9

    move/from16 v21, v10

    move-object/from16 v22, v13

    move/from16 v23, v4

    .line 87
    invoke-static/range {v18 .. v23}, Lcom/google/android/exoplr2avp/util/CodecSpecificDataUtil;->buildHevcCodecString(IZII[II)Ljava/lang/String;

    move-result-object v2

    move/from16 v13, v16

    move-object/from16 v16, v2

    goto :goto_4

    :cond_2
    move/from16 v24, v9

    move/from16 v25, v10

    :goto_4
    add-int/2addr v8, v12

    .line 96
    invoke-virtual {v0, v12}, Lcom/google/android/exoplr2avp/util/ParsableByteArray;->skipBytes(I)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v2, v17

    move/from16 v9, v24

    move/from16 v10, v25

    const/4 v7, 0x1

    goto :goto_3

    :cond_3
    move/from16 v17, v2

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_5

    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_5
    move-object v11, v0

    .line 102
    new-instance v0, Lcom/google/android/exoplr2avp/video/HevcConfig;

    const/4 v2, 0x1

    add-int/lit8 v12, v1, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Lcom/google/android/exoplr2avp/video/HevcConfig;-><init>(Ljava/util/List;IIIFLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error parsing HEVC config"

    .line 105
    invoke-static {v1, v0}, Lcom/google/android/exoplr2avp/ParserException;->createForMalformedContainer(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/exoplr2avp/ParserException;

    move-result-object v0

    throw v0
.end method
