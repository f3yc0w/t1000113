.class public final synthetic Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$4mS9y11Uy0O2mwWfeR_O2S_0hXM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$4mS9y11Uy0O2mwWfeR_O2S_0hXM;->f$0:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$4mS9y11Uy0O2mwWfeR_O2S_0hXM;->f$1:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$4mS9y11Uy0O2mwWfeR_O2S_0hXM;->f$0:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$4mS9y11Uy0O2mwWfeR_O2S_0hXM;->f$1:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->lambda$enabled$0$AudioRendererEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method
