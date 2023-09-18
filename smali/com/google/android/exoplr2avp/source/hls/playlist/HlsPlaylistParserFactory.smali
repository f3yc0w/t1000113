.class public interface abstract Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;
.super Ljava/lang/Object;
.source "HlsPlaylistParserFactory.java"


# virtual methods
.method public abstract createPlaylistParser()Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser<",
            "Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylist;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createPlaylistParser(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMultivariantPlaylist;Lcom/google/android/exoplr2avp/source/hls/playlist/HlsMediaPlaylist;)Lcom/google/android/exoplr2avp/upstream/ParsingLoadable$Parser;
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
.end method
