.class public interface abstract Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream$ReleaseCallback;
.super Ljava/lang/Object;
.source "ChunkSampleStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReleaseCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/android/exoplr2avp/source/chunk/ChunkSource;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onSampleStreamReleased(Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/chunk/ChunkSampleStream<",
            "TT;>;)V"
        }
    .end annotation
.end method
