.class final Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$UnseekableOggSeeker;
.super Ljava/lang/Object;
.source "StreamReader.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/extractor/ogg/OggSeeker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnseekableOggSeeker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$1;)V
    .locals 0

    .line 283
    invoke-direct {p0}, Lcom/google/android/exoplr2avp/extractor/ogg/StreamReader$UnseekableOggSeeker;-><init>()V

    return-void
.end method


# virtual methods
.method public createSeekMap()Lcom/google/android/exoplr2avp/extractor/SeekMap;
    .locals 3

    .line 297
    new-instance v0, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2}, Lcom/google/android/exoplr2avp/extractor/SeekMap$Unseekable;-><init>(J)V

    return-object v0
.end method

.method public read(Lcom/google/android/exoplr2avp/extractor/ExtractorInput;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public startSeek(J)V
    .locals 0

    return-void
.end method
