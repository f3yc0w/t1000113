.class Lcom/google/android/exoplr2avp/offline/DownloadHelper$1;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;


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

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onDroppedFrames(IJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onDroppedFrames(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;IJ)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/video/VideoSize;)V

    return-void
.end method
