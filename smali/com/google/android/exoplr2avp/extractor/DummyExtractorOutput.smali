.class public final Lcom/google/android/exoplr2avp/extractor/DummyExtractorOutput;
.super Ljava/lang/Object;
.source "DummyExtractorOutput.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ExtractorOutput;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTracks()V
    .locals 0

    return-void
.end method

.method public seekMap(Lcom/google/android/exoplr2avp/extractor/SeekMap;)V
    .locals 0

    return-void
.end method

.method public track(II)Lcom/google/android/exoplr2avp/extractor/TrackOutput;
    .locals 0

    .line 23
    new-instance p1, Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/extractor/DummyTrackOutput;-><init>()V

    return-object p1
.end method
