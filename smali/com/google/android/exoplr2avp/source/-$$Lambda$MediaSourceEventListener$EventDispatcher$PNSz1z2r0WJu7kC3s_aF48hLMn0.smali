.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

.field public final synthetic f$1:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

.field public final synthetic f$2:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

.field public final synthetic f$3:Lcom/google/android/exoplr2avp/source/MediaLoadData;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;->f$0:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;->f$1:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;->f$2:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iput-object p4, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;->f$3:Lcom/google/android/exoplr2avp/source/MediaLoadData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;->f$0:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;->f$1:Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;

    iget-object v2, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;->f$2:Lcom/google/android/exoplr2avp/source/LoadEventInfo;

    iget-object v3, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$MediaSourceEventListener$EventDispatcher$PNSz1z2r0WJu7kC3s_aF48hLMn0;->f$3:Lcom/google/android/exoplr2avp/source/MediaLoadData;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplr2avp/source/MediaSourceEventListener$EventDispatcher;->lambda$loadCanceled$2$MediaSourceEventListener$EventDispatcher(Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method