.class public interface abstract Lcom/google/android/exoplr2avp/extractor/BinarySearchSeeker$TimestampSeeker;
.super Ljava/lang/Object;
.source "BinarySearchSeeker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/BinarySearchSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60c
    name = "TimestampSeeker"
.end annotation


# virtual methods
.method public abstract onSeekFinished()V
.end method

.method public abstract searchForTimestamp(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;J)Lcom/google/android/exoplr2avp/extractor/BinarySearchSeeker$TimestampSearchResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
