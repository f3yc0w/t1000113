.class Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;
.super Ljava/lang/Object;
.source "MediaParserChunkExtractor.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackOutputProviderAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor$1;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;-><init>(Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;)V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;->access$400(Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplr2avp/source/mediaparser/OutputConsumerAdapterV30;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/source/mediaparser/OutputConsumerAdapterV30;->getSampleFormats()[Lcom/google/android/exoplr2avp/Format;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;->access$302(Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;[Lcom/google/android/exoplr2avp/Format;)[Lcom/google/android/exoplr2avp/Format;

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;->access$100(Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;->access$100(Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/chunk/ChunkExtractor$TrackOutputProvider;->track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor$TrackOutputProviderAdapter;->this$0:Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;->access$200(Lcom/google/android/exoplr2avp/source/chunk/MediaParserChunkExtractor;)Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;

    move-result-object p1

    :goto_0
    return-object p1
.end method
