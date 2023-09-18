.class public final synthetic Lcom/google/android/exoplr2avp/source/-$$Lambda$CompositeMediaSource$Zvrr7TMi4XaN1yQKWgE2lYL5Y7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/source/CompositeMediaSource;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/CompositeMediaSource;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$CompositeMediaSource$Zvrr7TMi4XaN1yQKWgE2lYL5Y7U;->f$0:Lcom/google/android/exoplr2avp/source/CompositeMediaSource;

    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$CompositeMediaSource$Zvrr7TMi4XaN1yQKWgE2lYL5Y7U;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$CompositeMediaSource$Zvrr7TMi4XaN1yQKWgE2lYL5Y7U;->f$0:Lcom/google/android/exoplr2avp/source/CompositeMediaSource;

    iget-object v1, p0, Lcom/google/android/exoplr2avp/source/-$$Lambda$CompositeMediaSource$Zvrr7TMi4XaN1yQKWgE2lYL5Y7U;->f$1:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, Lcom/google/android/exoplr2avp/source/CompositeMediaSource;->lambda$prepareChildSource$0$CompositeMediaSource(Ljava/lang/Object;Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method
