.class public final synthetic Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$pp_1jcNz4Dm3q0DsfjoRnruZyms;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$pp_1jcNz4Dm3q0DsfjoRnruZyms;->f$0:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$pp_1jcNz4Dm3q0DsfjoRnruZyms;->f$1:Ljava/lang/Object;

    iput-wide p3, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$pp_1jcNz4Dm3q0DsfjoRnruZyms;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$pp_1jcNz4Dm3q0DsfjoRnruZyms;->f$0:Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$pp_1jcNz4Dm3q0DsfjoRnruZyms;->f$1:Ljava/lang/Object;

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/video/-$$Lambda$VideoRendererEventListener$EventDispatcher$pp_1jcNz4Dm3q0DsfjoRnruZyms;->f$2:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$EventDispatcher;->lambda$renderedFirstFrame$6$VideoRendererEventListener$EventDispatcher(Ljava/lang/Object;J)V

    return-void
.end method
