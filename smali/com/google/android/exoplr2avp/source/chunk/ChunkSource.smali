.class public interface abstract Lcom/google/android/exoplr2avp/source/chunk/ChunkSource;
.super Ljava/lang/Object;
.source "ChunkSource.java"


# virtual methods
.method public abstract getAdjustedSeekPositionUs(JLcom/google/android/exoplr2avp/SeekParameters;)J
.end method

.method public abstract getNextChunk(JJLjava/util/List;Lcom/google/android/exoplr2avp/source/chunk/ChunkHolder;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;",
            "Lcom/google/android/exoplr2avp/source/chunk/ChunkHolder;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getPreferredQueueSize(JLjava/util/List;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;)I"
        }
    .end annotation
.end method

.method public abstract maybeThrowError()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract onChunkLoadCompleted(Lcom/google/android/exoplr2avp/source/chunk/Chunk;)V
.end method

.method public abstract onChunkLoadError(Lcom/google/android/exoplr2avp/source/chunk/Chunk;ZLcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy$LoadErrorInfo;Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Z
.end method

.method public abstract release()V
.end method

.method public abstract shouldCancelLoad(JLcom/google/android/exoplr2avp/source/chunk/Chunk;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/google/android/exoplr2avp/source/chunk/Chunk;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/exoplr2avp/source/chunk/MediaChunk;",
            ">;)Z"
        }
    .end annotation
.end method
