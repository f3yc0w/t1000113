.class public final synthetic Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$lUJFJPjHTfCkgN9SFPZJdgomAws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/Format;

.field public final synthetic f$2:Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$lUJFJPjHTfCkgN9SFPZJdgomAws;->f$0:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$lUJFJPjHTfCkgN9SFPZJdgomAws;->f$1:Lcom/google/android/exoplr2avp/Format;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$lUJFJPjHTfCkgN9SFPZJdgomAws;->f$2:Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$lUJFJPjHTfCkgN9SFPZJdgomAws;->f$0:Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$lUJFJPjHTfCkgN9SFPZJdgomAws;->f$1:Lcom/google/android/exoplr2avp/Format;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/audio/-$$Lambda$AudioRendererEventListener$EventDispatcher$lUJFJPjHTfCkgN9SFPZJdgomAws;->f$2:Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplr2avp/audio/AudioRendererEventListener$EventDispatcher;->lambda$inputFormatChanged$2$AudioRendererEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method
