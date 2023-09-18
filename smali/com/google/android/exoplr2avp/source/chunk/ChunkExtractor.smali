.class public interface abstract Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;,
        Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;
    }
.end annotation


# virtual methods
.method public abstract getChunkIndex()Lcom/google/android/exoplr2avp/extractor/ChunkIndex;
.end method

.method public abstract getSampleFormats()[Lcom/google/android/exoplr2avp/Format;
.end method

.method public abstract init(Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;JJ)V
.end method

.method public abstract read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method
