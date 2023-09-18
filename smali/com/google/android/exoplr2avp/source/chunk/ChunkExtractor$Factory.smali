.class public interface abstract Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$Factory;
.super Ljava/lang/Object;
.source "ChunkExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract createProgressiveMediaExtractor(ILcom/google/android/exoplr2avp/Format;ZLjava/util/List;Lcom/google/android/exoplr2avp/extractor/TrackOutput;Lcom/google/android/exoplr2avp/analytics/PlayerId;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/exoplr2avp/Format;",
            "Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/Format;",
            ">;",
            "Lcom/google/android/exoplr2avp/extractor/TrackOutput;",
            "Lcom/google/android/exoplr2avp/analytics/PlayerId;",
            ")",
            "Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor;"
        }
    .end annotation
.end method
