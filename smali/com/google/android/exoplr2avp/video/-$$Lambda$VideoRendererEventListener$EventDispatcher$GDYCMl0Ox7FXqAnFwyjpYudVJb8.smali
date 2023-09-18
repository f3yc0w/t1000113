.class public final synthetic Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$GDYCMl0Ox7FXqAnFwyjpYudVJb8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$GDYCMl0Ox7FXqAnFwyjpYudVJb8;->f$0:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$GDYCMl0Ox7FXqAnFwyjpYudVJb8;->f$1:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$GDYCMl0Ox7FXqAnFwyjpYudVJb8;->f$0:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$GDYCMl0Ox7FXqAnFwyjpYudVJb8;->f$1:Lcom/google/android/exoplr2avp/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->lambda$disabled$8$VideoRendererEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method
