.class final Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;
.super Ljava/lang/Object;
.source "DecoderAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AudioSinkListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;)V
    .locals 0

    .line 766
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$1;)V
    .locals 0

    .line 766
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;-><init>(Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;)V

    return-void
.end method


# virtual methods
.method public onAudioSinkError(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "DecoderAudioRenderer"

    const-string v1, "Audio sink error"

    .line 790
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplr2avp/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 791
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->access$100(Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->audioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onOffloadBufferEmptying()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener$-CC;->$default$onOffloadBufferEmptying(Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;)V

    return-void
.end method

.method public synthetic onOffloadBufferFull()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener$-CC;->$default$onOffloadBufferFull(Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;)V

    return-void
.end method

.method public onPositionAdvancing(J)V
    .locals 1

    .line 775
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->access$100(Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->positionAdvancing(J)V

    return-void
.end method

.method public onPositionDiscontinuity()V
    .locals 1

    .line 770
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->onPositionDiscontinuity()V

    return-void
.end method

.method public onSkipSilenceEnabledChanged(Z)V
    .locals 1

    .line 785
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->access$100(Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->skipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public onUnderrun(IJJ)V
    .locals 7

    .line 780
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer$AudioSinkListener;->this$0:Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;->access$100(Lcom/google/android/exoplr2avp/audio/DecoderAudioRenderer;)Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    move-result-object v1

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->underrun(IJJ)V

    return-void
.end method
