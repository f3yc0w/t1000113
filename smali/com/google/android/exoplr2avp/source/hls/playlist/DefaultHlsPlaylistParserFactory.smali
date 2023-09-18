.class public final Lcom/google/android/exoplr2avp/source/hls/playlist/DefaultHlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "DefaultHlsPlaylistParserFactory.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPlaylistParser()Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;-><init>()V

    return-object v0
.end method

.method public createPlaylistParser(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .locals 1
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

    .line 33
    new-instance v0, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParser;-><init>(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;)V

    return-object v0
.end method
