.class final Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;
.super Ljava/lang/Object;
.source "MediaSourceList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/MediaSourceList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaSourceAndListener"
.end annotation


# instance fields
.field public final caller:Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;

.field public final eventListener:Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;

.field public final mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;)V
    .locals 0

    .line 517
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    iput-object p1, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->mediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    .line 519
    iput-object p2, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->caller:Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;

    .line 520
    iput-object p3, p0, Lcom/google/android/exoplr2avp/MediaSourceList$MediaSourceAndListener;->eventListener:Lcom/google/android/exoplr2avp/MediaSourceList$ForwardingEventListener;

    return-void
.end method
