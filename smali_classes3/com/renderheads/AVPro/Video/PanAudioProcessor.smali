.class public Lcom/renderheads/AVPro/Video/PanAudioProcessor;
.super Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;
.source "PanAudioProcessor.java"


# instance fields
.field private m_AudioInfoListener:Lcom/renderheads/AVPro/Video/AudioInfoListener;

.field private m_fPan:F


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/AudioInfoListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "audioInfoListener"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/renderheads/AVPro/Video/PanAudioProcessor;->m_fPan:F

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/PanAudioProcessor;->m_AudioInfoListener:Lcom/renderheads/AVPro/Video/AudioInfoListener;

    .line 8
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/PanAudioProcessor;->m_AudioInfoListener:Lcom/renderheads/AVPro/Video/AudioInfoListener;

    return-void
.end method


# virtual methods
.method public onConfigure(Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;)Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputAudioFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/PanAudioProcessor;->m_AudioInfoListener:Lcom/renderheads/AVPro/Video/AudioInfoListener;

    if-eqz v0, :cond_0

    .line 3
    iget v1, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-interface {v0, v1}, Lcom/renderheads/AVPro/Video/AudioInfoListener;->NumberOfChannelsChanged(I)V

    .line 16
    :cond_0
    iget v0, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 21
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v2, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget p1, p1, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v0, v2, p1, v1}, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;-><init>(III)V

    return-object v0

    .line 22
    :cond_1
    new-instance v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;)V

    throw v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "inputBuffer"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v0, v0, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_2

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 9
    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    div-int/2addr v2, v3

    .line 10
    iget-object v3, p0, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->outputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->bytesPerFrame:I

    mul-int v2, v2, v3

    .line 11
    invoke-virtual {p0, v2}, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 16
    iget v3, p0, Lcom/renderheads/AVPro/Video/PanAudioProcessor;->m_fPan:F

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 17
    iget v6, p0, Lcom/renderheads/AVPro/Video/PanAudioProcessor;->m_fPan:F

    add-float/2addr v6, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    :goto_0
    if-ge v0, v1, :cond_2

    const/4 v5, 0x0

    move v6, v3

    .line 24
    :goto_1
    iget-object v7, p0, Lcom/google/android/exoplr2avp/audio/BaseAudioProcessor;->inputAudioFormat:Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;

    iget v7, v7, Lcom/google/android/exoplr2avp/audio/AudioProcessor$AudioFormat;->channelCount:I

    if-ge v5, v7, :cond_1

    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v0

    .line 26
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v6

    float-to-int v6, v7

    int-to-short v6, v6

    .line 27
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v5, v5, 0x1

    move v6, v4

    goto :goto_1

    :cond_1
    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v0, v7

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 36
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_2
    return-void
.end method

.method public setPan(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pan"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/renderheads/AVPro/Video/PanAudioProcessor;->m_fPan:F

    return-void
.end method
