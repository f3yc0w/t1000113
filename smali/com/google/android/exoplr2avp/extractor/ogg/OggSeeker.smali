.class interface abstract Lcom/google/android/exoplr2avp/extractor/ogg/OggSeeker;
.super Ljava/lang/Object;
.source "OggSeeker.java"


# virtual methods
.method public abstract createSeekMap()Lcom/google/android/exoplr2avp/extractor/SeekMap;
.end method

.method public abstract read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract startSeek(J)V
.end method
