.class final Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)V
    .locals 0

    .line 899
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$1;)V
    .locals 0

    .line 899
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio sink error"

    .line 937
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 938
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->audioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onOffloadBufferEmptying()V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/Renderer$WakeupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/Renderer$WakeupListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Renderer$WakeupListener;->onWakeup()V

    :cond_0
    return-void
.end method

.method public onOffloadBufferFull()V
    .locals 1

    .line 930
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/Renderer$WakeupListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->access$200(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/Renderer$WakeupListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Renderer$WakeupListener;->onSleep()V

    :cond_0
    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 1

    .line 908
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->positionAdvancing(J)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .line 903
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->onPositionDiscontinuity()V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->skipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7

    .line 913
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;->access$100(Lcom/google/android/exoplr2avp/audio/MediaCodecAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->underrun(IJJ)V

    return-void
.end method
