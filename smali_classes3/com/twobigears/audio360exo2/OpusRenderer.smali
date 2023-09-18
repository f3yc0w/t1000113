.class public final Lcom/twobigears/audio360exo2/OpusRenderer;
.super Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;
.source "OpusRenderer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer<",
        "Lcom/twobigears/audio360exo2/OpusDecoder;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_INPUT_BUFFER_SIZE:I = 0x1680

.field private static final NUM_BUFFERS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "OpusRenderer"


# instance fields
.field private channelCount:I

.field private sampleRate:I


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioSink;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, v0, v0, p1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;-><init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/audio/AudioSink;)V

    const/4 p1, 0x0

    .line 29
    iput p1, p0, Lcom/twobigears/audio360exo2/OpusRenderer;->channelCount:I

    .line 30
    iput p1, p0, Lcom/twobigears/audio360exo2/OpusRenderer;->sampleRate:I

    return-void
.end method


# virtual methods
.method protected bridge synthetic createDecoder(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/CryptoConfig;)Lcom/google/android/exoplr2avp/decoder/Decoder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/decoder/DecoderException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/twobigears/audio360exo2/OpusRenderer;->createDecoder(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/CryptoConfig;)Lcom/twobigears/audio360exo2/OpusDecoder;

    move-result-object p1

    return-object p1
.end method

.method protected createDecoder(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/CryptoConfig;)Lcom/twobigears/audio360exo2/OpusDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/twobigears/audio360exo2/OpusDecoderException;
        }
    .end annotation

    .line 65
    new-instance p2, Lcom/twobigears/audio360exo2/OpusDecoder;

    iget-object p1, p1, Lcom/google/android/exoplr2avp/Format;->initializationData:Ljava/util/List;

    const/16 v0, 0x10

    const/16 v1, 0x1680

    invoke-direct {p2, v0, v0, v1, p1}, Lcom/twobigears/audio360exo2/OpusDecoder;-><init>(IIILjava/util/List;)V

    .line 67
    invoke-virtual {p2}, Lcom/twobigears/audio360exo2/OpusDecoder;->getChannelCount()I

    move-result p1

    iput p1, p0, Lcom/twobigears/audio360exo2/OpusRenderer;->channelCount:I

    .line 68
    invoke-virtual {p2}, Lcom/twobigears/audio360exo2/OpusDecoder;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/twobigears/audio360exo2/OpusRenderer;->sampleRate:I

    return-object p2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "OpusRenderer"

    return-object v0
.end method

.method protected bridge synthetic getOutputFormat(Lcom/google/android/exoplr2avp/decoder/Decoder;)Lcom/google/android/exoplr2avp/Format;
    .locals 0

    .line 22
    check-cast p1, Lcom/twobigears/audio360exo2/OpusDecoder;

    invoke-virtual {p0, p1}, Lcom/twobigears/audio360exo2/OpusRenderer;->getOutputFormat(Lcom/twobigears/audio360exo2/OpusDecoder;)Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    return-object p1
.end method

.method protected getOutputFormat(Lcom/twobigears/audio360exo2/OpusDecoder;)Lcom/google/android/exoplr2avp/Format;
    .locals 1

    .line 77
    new-instance p1, Lcom/google/android/exoplr2avp/Format$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/Format$Builder;-><init>()V

    const-string v0, "audio/raw"

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    iget v0, p0, Lcom/twobigears/audio360exo2/OpusRenderer;->channelCount:I

    .line 78
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/Format$Builder;->setChannelCount(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    iget v0, p0, Lcom/twobigears/audio360exo2/OpusRenderer;->sampleRate:I

    .line 79
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/Format$Builder;->setSampleRate(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    const/4 v0, 0x2

    .line 80
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/Format$Builder;->setPcmEncoding(I)Lcom/google/android/exoplr2avp/Format$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Format$Builder;->build()Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    return-object p1
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 94
    sget-object v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplr2avp/PlaybackParameters;

    return-object v0
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public setPlaybackSpeed(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected supportsFormatInternal(Lcom/google/android/exoplr2avp/Format;)I
    .locals 3

    .line 51
    sget-boolean v0, Lcom/twobigears/audio360exo2/OpusJNI;->IS_AVAILABLE:Z

    .line 52
    iget-object v1, p1, Lcom/google/android/exoplr2avp/Format;->sampleMimeType:Ljava/lang/String;

    const-string v2, "audio/opus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 p1, 0x4

    return p1

    .line 55
    :cond_0
    iget-object p1, p1, Lcom/google/android/exoplr2avp/Format;->drmInitData:Lcom/google/android/exoplr2avp/drm/DrmInitData;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
