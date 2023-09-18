.class public final synthetic Lcom/google/android/exoplr2avp/-$$Lambda$MediaSourceList$SWw0paWS_sejqRzCKbL3f73uuHw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSource$MediaSourceCaller;


# instance fields
.field public final synthetic f$0:Lcom/google/android/exoplr2avp/MediaSourceList;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/exoplr2avp/MediaSourceList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/-$$Lambda$MediaSourceList$SWw0paWS_sejqRzCKbL3f73uuHw;->f$0:Lcom/google/android/exoplr2avp/MediaSourceList;

    return-void
.end method


# virtual methods
.method public final onSourceInfoRefreshed(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/-$$Lambda$MediaSourceList$SWw0paWS_sejqRzCKbL3f73uuHw;->f$0:Lcom/google/android/exoplr2avp/MediaSourceList;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/MediaSourceList;->lambda$prepareChildSource$0$MediaSourceList(Lcom/google/android/exoplr2avp/source/MediaSource;Lcom/google/android/exoplr2avp/Timeline;)V

    return-void
.end method
