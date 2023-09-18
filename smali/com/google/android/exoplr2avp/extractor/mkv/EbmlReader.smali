.class interface abstract Lcom/google/android/exoplr2avp/extractor/mkv/EbmlReader;
.super Ljava/lang/Object;
.source "EbmlReader.java"


# virtual methods
.method public abstract init(Lcom/google/android/exoplr2avp/extractor/mkv/EbmlProcessor;)V
.end method

.method public abstract read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method
