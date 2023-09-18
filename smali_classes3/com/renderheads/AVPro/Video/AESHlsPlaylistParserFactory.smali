.class public Lcom/renderheads/AVPro/Video/AESHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "AESHlsPlaylistParserFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;


# instance fields
.field private final m_Key:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParserFactory;->m_Key:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public createPlaylistParser()Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    const-string v0, "AVProVideo"

    const-string v1, "AESHlsPlaylistParserFactory : createPlaylistParser CALLED"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParserFactory;->m_Key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParser;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public createPlaylistParser(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "multivariantPlaylist",
            "previousMediaPlaylist"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;",
            ")",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    const-string v0, "AVProVideo"

    const-string v1, "AESHlsPlaylistParserFactory : createPlaylistParser(HlsMultivariantPlaylist, @Nullable HlsMediaPlaylist) CALLED"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;-><init>(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;)V

    return-object v0
.end method
