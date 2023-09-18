.class final Lcom/google/android/exoplr2avp/source/CompositeMediaSource$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "CompositeMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/CompositeMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final caller:Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lcom/google/android/exoplr2avp/source/CompositeMediaSource$ForwardingEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplr2avp/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;"
        }
    .end annotation
.end field

.field public final mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplr2avp/source/CompositeMediaSource$ForwardingEventListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/MediaSource;",
            "Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;",
            "Lcom/google/android/exoplr2avp/source/CompositeMediaSource<",
            "TT;>.ForwardingEvent",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/CompositeMediaSource$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    .line 212
    iput-object p2, p0, Lcom/google/android/exoplr2avp/source/CompositeMediaSource$MediaSourceAndListener;->caller:Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;

    .line 213
    iput-object p3, p0, Lcom/google/android/exoplr2avp/source/CompositeMediaSource$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplr2avp/source/CompositeMediaSource$ForwardingEventListener;

    return-void
.end method
