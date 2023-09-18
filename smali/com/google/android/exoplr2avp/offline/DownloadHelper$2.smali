.class Lcom/google/android/exoplr2avp/offline/DownloadHelper$2;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getRendererCapabilities(Lcom/google/android/exoplr2avp/RenderersFactory;)[Lcom/google/android/exoplr2avp/RendererCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAudioCodecError(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioDisabled(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;J)V

    return-void
.end method

.method public synthetic onAudioSinkError(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioUnderrun(IJJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onAudioUnderrun(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;IJJ)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener;Z)V

    return-void
.end method
