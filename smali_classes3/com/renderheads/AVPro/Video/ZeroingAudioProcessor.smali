.class public final Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;
.super Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;
.source "ZeroingAudioProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;
    }
.end annotation


# instance fields
.field private m_AudioBufferSink:Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;

.field private m_DebugRunningCount:J

.field private m_DebugRunningLog:I

.field private m_DebugRunningTime:D

.field private m_OutputBuffer:Ljava/nio/ByteBuffer;

.field private m_Resampler:Lcom/renderheads/resamplerh/Resample;

.field private m_TempOutBuffer:[F

.field private m_afPullSamplesCachedBuffer:[F

.field private m_iOutputSampleRate:I

.field private m_iPlayerIndex:I

.field private m_iPullSamplesCachedBufferSize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_AudioBufferSink:Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;

    .line 3
    sget-object v1, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_OutputBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    .line 8
    new-instance v1, Lcom/renderheads/resamplerh/Resample;

    invoke-direct {v1}, Lcom/renderheads/resamplerh/Resample;-><init>()V

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_Resampler:Lcom/renderheads/resamplerh/Resample;

    .line 10
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    .line 12
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_afPullSamplesCachedBuffer:[F

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPullSamplesCachedBufferSize:I

    const v1, 0xbb80

    .line 15
    iput v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iOutputSampleRate:I

    const-wide/16 v1, 0x0

    .line 17
    iput-wide v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_DebugRunningTime:D

    const-wide/16 v1, 0x0

    .line 18
    iput-wide v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_DebugRunningCount:J

    .line 19
    iput v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_DebugRunningLog:I

    return-void
.end method

.method public constructor <init>(ILcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "iPlayerIndex",
            "audioBufferSink"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_AudioBufferSink:Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;

    .line 22
    sget-object v1, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->EMPTY_BUFFER:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_OutputBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, -0x1

    .line 26
    iput v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    .line 27
    new-instance v1, Lcom/renderheads/resamplerh/Resample;

    invoke-direct {v1}, Lcom/renderheads/resamplerh/Resample;-><init>()V

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_Resampler:Lcom/renderheads/resamplerh/Resample;

    .line 29
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    .line 31
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_afPullSamplesCachedBuffer:[F

    const/4 v0, 0x0

    .line 32
    iput v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPullSamplesCachedBufferSize:I

    const v1, 0xbb80

    .line 34
    iput v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iOutputSampleRate:I

    const-wide/16 v1, 0x0

    .line 36
    iput-wide v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_DebugRunningTime:D

    const-wide/16 v1, 0x0

    .line 37
    iput-wide v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_DebugRunningCount:J

    .line 38
    iput v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_DebugRunningLog:I

    .line 48
    iput p1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    .line 49
    invoke-static {p2}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_AudioBufferSink:Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;

    const/16 p1, 0x800

    .line 51
    iput p1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPullSamplesCachedBufferSize:I

    new-array p1, p1, [F

    .line 52
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_afPullSamplesCachedBuffer:[F

    return-void
.end method

.method private CreateAudioBuffer(IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "encoding",
            "channelCount",
            "sampleRateHz",
            "outputEncoding"
        }
    .end annotation

    const/4 p1, 0x5

    int-to-float p1, p1

    mul-int p3, p3, p2

    int-to-float p2, p3

    const/16 p3, 0x10

    int-to-float p3, p3

    const/high16 p4, 0x41000000    # 8.0f

    div-float/2addr p3, p4

    mul-float p2, p2, p3

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 1
    iget p2, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    .line 7
    invoke-static {p2, p1}, Lcom/renderheads/AVPro/Video/Manager;->AudioCaptureBuffer_Initialise(II)V

    return-void
.end method

.method private OfferBufferToAudioBuffer(Ljava/nio/ByteBuffer;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iOutputSampleRate:I

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v1, v1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->sampleRate:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_5

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    .line 13
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_0
    move-object v4, v2

    if-eqz v4, :cond_1

    .line 15
    array-length v0, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    :goto_0
    div-int/lit8 v0, v0, 0x2

    move v8, v0

    int-to-float v0, v8

    .line 18
    iget v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iOutputSampleRate:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v3, v2, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->sampleRate:I

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 19
    iget v1, v2, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    div-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    mul-int v10, v1, v0

    .line 21
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    array-length v1, v0

    mul-int/lit8 v2, v10, 0x2

    if-ge v1, v2, :cond_3

    .line 23
    array-length v0, v0

    :goto_1
    if-ge v0, v2, :cond_2

    add-int/lit16 v0, v0, 0x2800

    goto :goto_1

    .line 25
    :cond_2
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    :cond_3
    const/4 v9, 0x0

    if-eqz v4, :cond_4

    .line 30
    iget v3, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    iget-object v7, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    const/4 v5, 0x0

    move v6, v8

    move v8, v10

    .line 31
    invoke-static/range {v3 .. v9}, Lcom/renderheads/resamplerh/Resample;->Resample(I[BII[FIZ)I

    move-result p1

    goto :goto_2

    :cond_4
    iget v5, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    .line 32
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v7

    iget-object v9, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Lcom/renderheads/resamplerh/Resample;->Resample(I[BII[FIZ)I

    move-result p1

    .line 36
    :goto_2
    iget v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    invoke-static {v0, v1, p1}, Lcom/renderheads/AVPro/Video/Manager;->AudioCaptureBuffer_OfferBytes(I[FI)Z

    goto/16 :goto_9

    .line 61
    :cond_5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_6

    .line 64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v2, v0, [B

    .line 65
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :cond_6
    if-eqz v2, :cond_7

    .line 70
    array-length v0, v2

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 73
    :goto_3
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    array-length v3, v1

    if-ge v3, v0, :cond_9

    .line 75
    array-length v1, v1

    :goto_4
    if-ge v1, v0, :cond_8

    add-int/lit16 v1, v1, 0x2800

    goto :goto_4

    .line 77
    :cond_8
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    :cond_9
    const v0, 0x38000100

    const/high16 v1, 0x38000000

    const/4 v3, 0x0

    const v4, 0xffff

    const v5, 0xff00

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    if-nez v2, :cond_c

    .line 89
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    const/4 v9, 0x0

    :goto_5
    if-ge v6, v2, :cond_10

    add-int/lit8 v10, v6, 0x1

    .line 93
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    int-to-short v10, v10

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v10, v5

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v11

    int-to-short v11, v11

    and-int/lit16 v11, v11, 0xff

    and-int/2addr v11, v4

    or-int/2addr v10, v11

    int-to-short v10, v10

    if-lez v10, :cond_a

    .line 96
    iget-object v11, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    int-to-float v10, v10

    mul-float v10, v10, v0

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v11, v9

    goto :goto_6

    :cond_a
    if-gez v10, :cond_b

    .line 100
    iget-object v11, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    int-to-float v10, v10

    mul-float v10, v10, v1

    invoke-static {v10, v8}, Ljava/lang/Math;->min(FF)F

    move-result v10

    invoke-static {v10, v7}, Ljava/lang/Math;->max(FF)F

    move-result v10

    aput v10, v11, v9

    goto :goto_6

    .line 104
    :cond_b
    iget-object v10, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    aput v3, v10, v9

    :goto_6
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v6, v6, 0x2

    goto :goto_5

    :cond_c
    const/4 p1, 0x0

    .line 112
    :goto_7
    array-length v9, v2

    if-ge v6, v9, :cond_f

    add-int/lit8 v9, v6, 0x1

    .line 114
    aget-byte v9, v2, v9

    int-to-short v9, v9

    shl-int/lit8 v9, v9, 0x8

    and-int/2addr v9, v5

    aget-byte v10, v2, v6

    int-to-short v10, v10

    and-int/lit16 v10, v10, 0xff

    and-int/2addr v10, v4

    or-int/2addr v9, v10

    int-to-short v9, v9

    if-lez v9, :cond_d

    .line 117
    iget-object v10, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    int-to-float v9, v9

    mul-float v9, v9, v0

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v10, p1

    goto :goto_8

    :cond_d
    if-gez v9, :cond_e

    .line 121
    iget-object v10, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    int-to-float v9, v9

    mul-float v9, v9, v1

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v10, p1

    goto :goto_8

    .line 125
    :cond_e
    iget-object v9, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    aput v3, v9, p1

    :goto_8
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v6, v6, 0x2

    goto :goto_7

    :cond_f
    move v9, p1

    .line 133
    :cond_10
    iget p1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    invoke-static {p1, v0, v9}, Lcom/renderheads/AVPro/Video/Manager;->AudioCaptureBuffer_OfferBytes(I[FI)Z

    :goto_9
    return-void
.end method

.method private flushSinkIfActive()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->isActive()Z

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_AudioBufferSink:Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v2, v1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v3, v1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v1, v1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-interface {v0, v2, v3, v1}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor$AudioBufferSink;->flush(III)V

    .line 8
    iget v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    invoke-static {v0}, Lcom/renderheads/resamplerh/Resample;->Flush(I)V

    .line 11
    iget v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Manager;->AudioCaptureBuffer_Reset(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public GetAudioBufferedSampleCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Manager;->AudioCaptureBuffer_GetSpaceUsed(I)I

    move-result v0

    return v0
.end method

.method public PullAudioFromBuffer(II)[F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleCount",
            "channelCount"
        }
    .end annotation

    .line 1
    iget p2, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    invoke-static {p2}, Lcom/renderheads/AVPro/Video/Manager;->AudioCaptureBuffer_GetSpaceUsed(I)I

    move-result p2

    if-gt p1, p2, :cond_1

    .line 5
    iget p2, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPullSamplesCachedBufferSize:I

    if-le p1, p2, :cond_0

    .line 9
    iput p1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPullSamplesCachedBufferSize:I

    .line 10
    new-array p2, p1, [F

    iput-object p2, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_afPullSamplesCachedBuffer:[F

    .line 14
    :cond_0
    iget-object p2, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_afPullSamplesCachedBuffer:[F

    invoke-static {p2, p1}, Lcom/renderheads/AVPro/Video/Manager;->AudioCaptureBuffer_Poll([FI)I

    move-result p2

    if-ne p2, p1, :cond_1

    .line 18
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_afPullSamplesCachedBuffer:[F

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public SetOutputSampleRate(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iOutputSampleRate"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iOutputSampleRate:I

    if-eq p1, v0, :cond_0

    .line 4
    iput p1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iOutputSampleRate:I

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v1, v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-lez v1, :cond_0

    .line 8
    iget v0, v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->encoding:I

    invoke-direct {p0, v0, v1, p1, v0}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->CreateAudioBuffer(IIII)V

    .line 9
    iget p1, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v1, v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v2, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iOutputSampleRate:I

    iget v0, v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    const/4 v3, 0x0

    invoke-static {p1, v1, v2, v0, v3}, Lcom/renderheads/resamplerh/Resample;->Initialise(IIIII)V

    :cond_0
    return-void
.end method

.method public onConfigure(Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "passedInputAudioFormat"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    if-gez v0, :cond_0

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->toString()Ljava/lang/String;

    .line 8
    iget v0, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->encoding:I

    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    iget v2, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iOutputSampleRate:I

    invoke-direct {p0, v0, v1, v2, v0}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->CreateAudioBuffer(IIII)V

    .line 10
    iget v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iPlayerIndex:I

    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget v2, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_iOutputSampleRate:I

    iget v3, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/renderheads/resamplerh/Resample;->Initialise(IIIII)V

    const v0, 0x8000

    new-array v0, v0, [F

    .line 12
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->m_TempOutBuffer:[F

    return-object p1
.end method

.method public onFlush()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->flushSinkIfActive()V

    return-void
.end method

.method public onQueueEndOfStream()V
    .locals 0

    return-void
.end method

.method public onReset()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->flushSinkIfActive()V

    return-void
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 7
    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/ZeroingAudioProcessor;->OfferBufferToAudioBuffer(Ljava/nio/ByteBuffer;)V

    .line 8
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 18
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method
