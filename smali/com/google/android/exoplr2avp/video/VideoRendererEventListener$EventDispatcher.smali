.class public final Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;

.field private final listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 168
    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    .line 169
    iput-object p2, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    return-void
.end method


# virtual methods
.method public decoderInitialized(Ljava/lang/String;JJ)V
    .locals 9

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 183
    new-instance v8, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$OEmQ588yEQnh7raua1LIduSsilU;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$OEmQ588yEQnh7raua1LIduSsilU;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public decoderReleased(Ljava/lang/String;)V
    .locals 2

    .line 242
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 243
    new-instance v1, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$-Q0OMCoQHHBQwH0eaMUsZ8Lin-E;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$-Q0OMCoQHHBQwH0eaMUsZ8Lin-E;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public disabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 2

    .line 249
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->ensureUpdated()V

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 251
    new-instance v1, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$GDYCMl0Ox7FXqAnFwyjpYudVJb8;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$GDYCMl0Ox7FXqAnFwyjpYudVJb8;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public droppedFrames(IJ)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 210
    new-instance v1, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$HonFgwW-Va7loMwczF_W8o7c210;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$HonFgwW-Va7loMwczF_W8o7c210;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public enabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 175
    new-instance v1, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Jo8JBy6q1_yH5AeqQlQJn2icaoc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$Jo8JBy6q1_yH5AeqQlQJn2icaoc;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public inputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 199
    new-instance v1, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$f16WPRxDkicVTcL5QQblg9euwfI;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$f16WPRxDkicVTcL5QQblg9euwfI;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public synthetic lambda$decoderInitialized$1$VideoRendererEventListener$EventDispatcher(Ljava/lang/String;JJ)V
    .locals 7

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 186
    invoke-interface/range {v1 .. v6}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic lambda$decoderReleased$7$VideoRendererEventListener$EventDispatcher(Ljava/lang/String;)V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$disabled$8$VideoRendererEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 1

    .line 253
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/decoder/DecoderCounters;->ensureUpdated()V

    .line 254
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onVideoDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic lambda$droppedFrames$3$VideoRendererEventListener$EventDispatcher(IJ)V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    return-void
.end method

.method public synthetic lambda$enabled$0$VideoRendererEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onVideoEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic lambda$inputFormatChanged$2$VideoRendererEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;)V

    .line 202
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic lambda$renderedFirstFrame$6$VideoRendererEventListener$EventDispatcher(Ljava/lang/Object;J)V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic lambda$reportVideoFrameProcessingOffset$4$VideoRendererEventListener$EventDispatcher(JI)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    .line 220
    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onVideoFrameProcessingOffset(JI)V

    return-void
.end method

.method public synthetic lambda$videoCodecError$9$VideoRendererEventListener$EventDispatcher(Ljava/lang/Exception;)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic lambda$videoSizeChanged$5$VideoRendererEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->listener:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;->onVideoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V

    return-void
.end method

.method public renderedFirstFrame(Ljava/lang/Object;)V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 235
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 236
    iget-object v2, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$pp_1jcNz4Dm3q0DsfjoRnruZyms;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$pp_1jcNz4Dm3q0DsfjoRnruZyms;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public reportVideoFrameProcessingOffset(JI)V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 217
    new-instance v1, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$qXnVK5VIy9WInC4bf8D6DGCX2Gk;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$qXnVK5VIy9WInC4bf8D6DGCX2Gk;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoCodecError(Ljava/lang/Exception;)V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 262
    new-instance v1, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$MOOemA2eYPd-mMjFFjeqqpeqMOc;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$MOOemA2eYPd-mMjFFjeqqpeqMOc;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public videoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$N_8Bun_FpDlgnC63VHdmB2nB3CA;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$N_8Bun_FpDlgnC63VHdmB2nB3CA;-><init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/video/VideoSize;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
