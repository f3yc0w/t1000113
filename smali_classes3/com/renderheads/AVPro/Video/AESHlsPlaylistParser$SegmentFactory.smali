.class public Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;
.super Ljava/lang/Object;
.source "AESHlsPlaylistParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SegmentFactory"
.end annotation


# instance fields
.field public aNewSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public aOldSegments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->aOldSegments:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->aNewSegments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public GetSegment(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldSegment",
            "newURI"
        }
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->aOldSegments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->aOldSegments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    if-eqz v1, :cond_0

    if-ne v1, p1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->aNewSegments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 18
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;

    iget-object v2, p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->url:Ljava/lang/String;

    iget-wide v3, p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeOffset:J

    iget-wide v5, p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->byteRangeLength:J

    iget-object v8, p1, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    move-object v1, v0

    move-object v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist$Segment;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->aOldSegments:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser$SegmentFactory;->aNewSegments:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method
