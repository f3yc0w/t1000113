.class public Lcom/renderheads/AVPro/Video/Player_ExoPlayer;
.super Lcom/renderheads/AVPro/Video/Player_Base;
.source "Player_ExoPlayer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Player$Listener;
.implements Lcom/google/android/exoplr2avp/source/MediaSourceEventListener;
.implements Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;
.implements Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;
.implements Lcom/renderheads/AVPro/Video/AudioInfoListener;
.implements Lcom/google/android/exoplr2avp/offline/DownloadManager$Listener;
.implements Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;
.implements Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;


# static fields
.field private static m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

.field private static s_DatabaseProvider:Lcom/google/android/exoplr2avp/database/StandaloneDatabaseProvider;

.field private static s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

.field private static s_HttpDataSourceFactory_ForDownload:Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

.field private static s_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

.field private static s_iCacheReferenceCount:I


# instance fields
.field private final Caching_Cached:I

.field private final Caching_Caching:I

.field private final Caching_Failed:I

.field private final Caching_NotCached:I

.field private final Caching_Paused:I

.field private final Caching_StoppedState_NotStopped:I

.field private final Caching_StoppedState_Paused:I

.field private final Caching_StoppedState_Stopped:I

.field private final TIMELINE_CHANGE_REASON_PLAYLIST_CHANGED:I

.field private final TIMELINE_CHANGE_REASON_SOURCE_UPDATE:I

.field private m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

.field private m_BandwidthMeter:Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

.field private m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

.field private m_EventLogger:Lcom/google/android/exoplr2avp/util/EventLogger;

.field private m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

.field private m_ForcedFileFormat:I

.field private m_LastAbsoluteTime:J

.field private m_LastPresentationTimeNS:J

.field private m_LimitedAdaptiveTrackSelectionFactory:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;

.field private m_LoadControl:Lcom/google/android/exoplr2avp/LoadControl;

.field private m_MainHandler:Landroid/os/Handler;

.field private m_MediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

.field public m_RenderersFactory:Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

.field private m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

.field private m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

.field private m_Surface:Landroid/view/Surface;

.field private m_Surface_ToBeReleased:Landroid/view/Surface;

.field private m_TextCues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;"
        }
    .end annotation
.end field

.field private m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

.field private m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

.field private m_UserAgent:Ljava/lang/String;

.field private m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

.field private m_aAudioTrackInfoReturn:[Ljava/lang/String;

.field private m_aTextTrackInfoReturn:[Ljava/lang/String;

.field private m_aVideoTrackInfoReturn:[Ljava/lang/String;

.field private m_bCreatedExoPlayer:Z

.field private m_bDebugLogStateChange:Z

.field private m_bIsPlaying:Z

.field private m_bPreferSoftwareDecoder:Z

.field private m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_iAudio360ChannelIndex:I

.field private m_iBufferForPlaybackAfterRebufferMs:I

.field private m_iBufferForPlaybackMs:I

.field private m_iMaxBufferMs:I

.field private m_iMaxCacheFileSize:I

.field private m_iMaxCacheSize:I

.field private m_iMaxHeight:I

.field private m_iMaxWidth:I

.field private m_iMinBufferMs:I

.field private m_iPeakBitrateBps:I

.field private m_iUnityAudioSampleRate:I

.field private m_textureTransform:[F


# direct methods
.method public constructor <init>(IZLjava/util/Random;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "playerIndex",
            "watermarked",
            "random",
            "bUltraBuild"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/renderheads/AVPro/Video/Player_Base;-><init>(IZLjava/util/Random;Z)V

    .line 2
    new-instance p1, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    invoke-direct {p1}, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;-><init>()V

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    .line 20
    new-instance p1, Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    invoke-direct {p1}, Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;-><init>()V

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    const/4 p1, 0x0

    .line 54
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    const/4 p2, 0x0

    .line 57
    iput-object p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TextCues:Ljava/util/List;

    const-wide/16 p2, 0x0

    .line 59
    iput-wide p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastPresentationTimeNS:J

    const p2, 0xc350

    .line 62
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMinBufferMs:I

    .line 63
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxBufferMs:I

    const/16 p2, 0x9c4

    .line 64
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iBufferForPlaybackMs:I

    const/16 p2, 0x1388

    .line 65
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iBufferForPlaybackAfterRebufferMs:I

    .line 83
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->Caching_NotCached:I

    const/4 p2, 0x1

    .line 84
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->Caching_Caching:I

    const/4 p3, 0x2

    .line 85
    iput p3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->Caching_Cached:I

    const/4 p4, 0x3

    .line 86
    iput p4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->Caching_Failed:I

    const/4 p4, 0x4

    .line 87
    iput p4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->Caching_Paused:I

    .line 89
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->Caching_StoppedState_NotStopped:I

    .line 90
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->Caching_StoppedState_Stopped:I

    .line 91
    iput p3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->Caching_StoppedState_Paused:I

    const-string p3, "0"

    const-string p4, ""

    .line 2387
    filled-new-array {p3, p4, p4, p4, p4}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    const-string v1, "0"

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    .line 2482
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    .line 2578
    filled-new-array {p3, p4, p4, p4}, [Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    .line 3864
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->TIMELINE_CHANGE_REASON_PLAYLIST_CHANGED:I

    .line 3865
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->TIMELINE_CHANGE_REASON_SOURCE_UPDATE:I

    .line 3866
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3867
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3869
    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3870
    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3872
    sget-object p1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    if-nez p1, :cond_0

    .line 3874
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->initChannelMap()V

    :cond_0
    return-void
.end method

.method private BuildDataSourceFactory(ZZZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bIsHttp",
            "useCache",
            "useBandwidthMeter",
            "httpHeaderMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BuildDataSourceFactory called | bIsHttp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | useCache = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " | httpHeaderMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, p3, p4}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BuildHttpDataSourceFactory(ZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    move-result-object p4

    goto :goto_0

    :cond_0
    new-instance p4, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_UserAgent:Ljava/lang/String;

    invoke-direct {p4, v0, v1}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    move-object v8, p4

    const/4 p4, 0x0

    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 9
    sget-object p2, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2, p0}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->addListener(Lcom/google/android/exoplr2avp/offline/DownloadManager$Listener;)V

    .line 14
    :cond_1
    new-instance p2, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;

    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    sget-object v4, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxCacheFileSize:I

    int-to-long v5, v0

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

    move-object v7, p1

    goto :goto_1

    :cond_2
    move-object v7, p4

    :goto_1
    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Lcom/renderheads/AVPro/Video/CacheDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;JLcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    return-object p2

    .line 17
    :cond_3
    new-instance p2, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    iget-object p4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

    :cond_4
    invoke-direct {p2, v0, p4, v8}, Lcom/google/android/exoplr2avp/upstream/DefaultDataSourceFactory;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/upstream/TransferListener;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    return-object p2
.end method

.method private BuildHttpDataSourceFactory(ZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "useBandwidthMeter",
            "httpHeaderMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;-><init>()V

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_UserAgent:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setAllowCrossProtocolRedirects(Z)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setTransferListener(Lcom/google/android/exoplr2avp/upstream/TransferListener;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object p1

    .line 6
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    const-string v0, "User-Agent"

    .line 15
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    :cond_1
    return-object p1
.end method

.method private BuildMediaSource(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fileOffset",
            "httpHeaderJson",
            "useCache",
            "streamKeysFromDownload"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/offline/StreamKey;",
            ">;)",
            "Lcom/google/android/exoplr2avp/source/MediaSource;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    .line 5
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 10
    invoke-static {v7}, Lcom/google/android/exoplr2avp/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v8

    .line 11
    iget v9, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ForcedFileFormat:I

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v13, 0x1

    if-eq v9, v13, :cond_2

    if-eq v9, v11, :cond_1

    if-eq v9, v10, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    .line 18
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const/4 v14, 0x4

    const-string v15, "AVProVideo"

    const/16 v16, 0x0

    if-ne v8, v14, :cond_8

    const-string v14, "rtmp://"

    .line 24
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_6

    const-string v14, "rtsp://"

    .line 25
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v14, "jar:"

    .line 41
    invoke-virtual {v9, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, ".zip!"

    .line 42
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, ".obb!"

    .line 43
    invoke-virtual {v9, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    :cond_4
    :try_start_0
    const-string v14, "/assets/"

    .line 49
    invoke-virtual {v1, v14}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v10, -0x1

    if-eq v14, v10, :cond_5

    add-int/lit8 v14, v14, 0x8

    .line 52
    invoke-virtual {v1, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 55
    iget-object v14, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 58
    invoke-virtual {v14}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 60
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "assets:///"

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 61
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "uri = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " | fileOffset = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    new-instance v11, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v11}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    .line 65
    invoke-virtual {v11, v13}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    const-string v14, "Video Loading: jar|zip|obb"

    .line 67
    invoke-static {v15, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    new-instance v14, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    new-instance v12, Lcom/renderheads/AVPro/Video/DataSourceFactory_Asset;

    iget-object v13, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-direct {v12, v2, v3, v13}, Lcom/renderheads/AVPro/Video/DataSourceFactory_Asset;-><init>(JLandroid/content/Context;)V

    invoke-direct {v14, v12, v11}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    iget-object v11, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    .line 70
    invoke-virtual {v14, v11}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    move-result-object v11

    .line 71
    invoke-static {v10}, Lcom/google/android/exoplr2avp/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v16, v10

    goto :goto_1

    :catch_0
    nop

    :cond_5
    :goto_1
    if-nez v16, :cond_8

    .line 91
    new-instance v10, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v10}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    const/4 v11, 0x1

    .line 92
    invoke-virtual {v10, v11}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    const-string v11, "Video Loading: jar|zip|obb from failed asset section"

    .line 94
    invoke-static {v15, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    new-instance v11, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    new-instance v12, Lcom/renderheads/AVPro/Video/DataSourceFactory_Jar;

    invoke-direct {v12, v1, v2, v3}, Lcom/renderheads/AVPro/Video/DataSourceFactory_Jar;-><init>(Ljava/lang/String;J)V

    invoke-direct {v11, v12, v10}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    iget-object v10, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    .line 97
    invoke-virtual {v11, v10}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    move-result-object v10

    .line 98
    invoke-static {v7}, Lcom/google/android/exoplr2avp/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;

    move-result-object v16

    goto :goto_3

    :cond_6
    :goto_2
    const-string v10, "Video Loading: RTSP/RTMP"

    .line 99
    invoke-static {v15, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v10, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v10}, Lcom/renderheads/AVPro/Video/Player_Base;->GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    invoke-direct {v0, v12, v11, v11, v10}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BuildDataSourceFactory(ZZZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    move-result-object v10

    .line 102
    new-instance v11, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v11}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    .line 103
    new-instance v12, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    invoke-direct {v12, v10, v11}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    .line 104
    iget-object v10, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    if-eqz v10, :cond_7

    .line 106
    invoke-virtual {v12, v10}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    .line 109
    :cond_7
    invoke-static {v7}, Lcom/google/android/exoplr2avp/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v10

    invoke-virtual {v12, v10}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;

    move-result-object v16

    const/4 v10, 0x1

    .line 111
    iput-boolean v10, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    :cond_8
    :goto_3
    if-nez v16, :cond_18

    const-string v10, "http://"

    .line 184
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, "https://"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    goto :goto_5

    :cond_a
    :goto_4
    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    if-eqz v8, :cond_17

    const/4 v10, 0x1

    if-eq v8, v10, :cond_16

    const/4 v10, 0x2

    if-eq v8, v10, :cond_14

    const/4 v10, 0x3

    if-eq v8, v10, :cond_12

    const/4 v6, 0x4

    if-ne v8, v6, :cond_11

    .line 370
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-wide/16 v8, 0x0

    const-string v10, "file:/"

    cmp-long v11, v2, v8

    if-lez v11, :cond_e

    .line 373
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    const-string v8, "file"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 377
    :cond_b
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 379
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 382
    :cond_c
    new-instance v1, Lcom/renderheads/AVPro/Video/DataSourceFactory_File;

    invoke-direct {v1, v2, v3}, Lcom/renderheads/AVPro/Video/DataSourceFactory_File;-><init>(J)V

    .line 383
    new-instance v2, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v2}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    const/4 v3, 0x1

    .line 384
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    const-string v3, "Video Loading: TYPE_OTHER : File offset : local file"

    .line 386
    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v3, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    invoke-direct {v3, v1, v2}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    .line 388
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    if-eqz v1, :cond_d

    .line 390
    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    .line 393
    :cond_d
    invoke-static {v7}, Lcom/google/android/exoplr2avp/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;

    move-result-object v16

    goto/16 :goto_6

    .line 402
    :cond_e
    invoke-virtual {v1, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 404
    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 407
    :cond_f
    iget-boolean v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/renderheads/AVPro/Video/Player_Base;->GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BuildDataSourceFactory(ZZZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    move-result-object v1

    .line 409
    new-instance v2, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    invoke-direct {v2}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;-><init>()V

    .line 410
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;->setMp4ExtractorFlags(I)Lcom/google/android/exoplr2avp/extractor/DefaultExtractorsFactory;

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video Loading: TYPE_OTHER : No file offset | uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    new-instance v3, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    invoke-direct {v3, v1, v2}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Lcom/google/android/exoplr2avp/extractor/ExtractorsFactory;)V

    .line 414
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    if-eqz v1, :cond_10

    .line 416
    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;

    .line 419
    :cond_10
    invoke-static {v7}, Lcom/google/android/exoplr2avp/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/ProgressiveMediaSource;

    move-result-object v16

    goto/16 :goto_6

    .line 369
    :cond_11
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 426
    :cond_12
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Lcom/renderheads/AVPro/Video/Player_Base;->GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v9, v5, v2, v1}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BuildDataSourceFactory(ZZZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    move-result-object v1

    .line 429
    new-instance v2, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    invoke-direct {v2, v1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    .line 431
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    if-eqz v1, :cond_13

    .line 433
    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;

    .line 436
    :cond_13
    invoke-static {v7}, Lcom/google/android/exoplr2avp/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/source/DefaultMediaSourceFactory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object v16

    goto/16 :goto_6

    .line 437
    :cond_14
    new-instance v1, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    .line 438
    invoke-virtual {v1, v7}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    const-string v2, "application/x-mpegURL"

    .line 439
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    .line 441
    invoke-virtual {v1, v6}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    .line 444
    new-instance v2, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;

    invoke-direct {v2, v7}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 447
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    new-array v6, v3, [Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 448
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    .line 450
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v1

    .line 452
    iget-boolean v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    iget-object v6, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lcom/renderheads/AVPro/Video/Player_Base;->GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BuildDataSourceFactory(ZZZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    move-result-object v2

    .line 458
    new-instance v3, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;

    invoke-direct {v3, v2}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    new-instance v2, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;

    invoke-direct {v2, v7, v7}, Lcom/google/android/exoplr2avp/source/hls/DefaultHlsExtractorFactory;-><init>(IZ)V

    .line 459
    invoke-virtual {v3, v2}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->setExtractorFactory(Lcom/google/android/exoplr2avp/source/hls/HlsExtractorFactory;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;

    move-result-object v2

    iget-object v3, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    .line 460
    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;

    move-result-object v2

    .line 463
    iget-boolean v3, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-eqz v3, :cond_15

    .line 466
    iget-object v3, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OverrideDecryptionKey:Ljava/lang/String;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_15

    .line 468
    new-instance v3, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParserFactory;

    iget-object v4, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OverrideDecryptionKey:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/renderheads/AVPro/Video/AESHlsPlaylistParserFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->setPlaylistParserFactory(Lcom/google/android/exoplr2avp/source/hls/playlist/HlsPlaylistParserFactory;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;

    .line 472
    :cond_15
    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/hls/HlsMediaSource;

    move-result-object v16

    goto/16 :goto_6

    .line 473
    :cond_16
    new-instance v1, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    .line 474
    invoke-virtual {v1, v7}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    const-string v2, "application/vnd.ms-sstr+xml"

    .line 475
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    .line 477
    invoke-virtual {v1, v6}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    .line 480
    new-instance v2, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;

    invoke-direct {v2, v7}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 483
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    new-array v6, v3, [Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 484
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    .line 486
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v1

    .line 488
    iget-boolean v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    iget-object v6, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lcom/renderheads/AVPro/Video/Player_Base;->GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BuildDataSourceFactory(ZZZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    move-result-object v2

    .line 489
    new-instance v3, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;

    invoke-direct {v3, v2}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    .line 490
    invoke-virtual {v3, v2}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;

    move-result-object v2

    .line 491
    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/smoothstreaming/SsMediaSource;

    move-result-object v16

    goto :goto_6

    .line 501
    :cond_17
    new-instance v1, Lcom/google/android/exoplr2avp/MediaItem$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;-><init>()V

    .line 502
    invoke-virtual {v1, v7}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    const-string v2, "application/dash+xml"

    .line 503
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setMimeType(Ljava/lang/String;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    .line 505
    invoke-virtual {v1, v6}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setStreamKeys(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    move-result-object v1

    .line 508
    new-instance v2, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;

    invoke-direct {v2, v7}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;-><init>(Landroid/net/Uri;)V

    .line 511
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    move-result-object v2

    const/4 v3, 0x1

    new-array v6, v3, [Lcom/google/android/exoplr2avp/MediaItem$SubtitleConfiguration;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    .line 512
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->setSubtitleConfigurations(Ljava/util/List;)Lcom/google/android/exoplr2avp/MediaItem$Builder;

    .line 514
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/MediaItem$Builder;->build()Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v1

    .line 516
    iget-boolean v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    iget-object v6, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    invoke-virtual {v0, v4, v6}, Lcom/renderheads/AVPro/Video/Player_Base;->GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v0, v2, v5, v3, v4}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BuildDataSourceFactory(ZZZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    move-result-object v2

    .line 517
    new-instance v3, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;

    invoke-direct {v3, v2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;-><init>(Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)V

    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    .line 518
    invoke-virtual {v3, v2}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;

    move-result-object v2

    .line 519
    invoke-virtual {v2, v1}, Lcom/google/android/exoplr2avp/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/dash/DashMediaSource;

    move-result-object v16

    :cond_18
    :goto_6
    return-object v16
.end method

.method private CalculateBufferedTimeRangeForPeriod()[D
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetBufferedTimeRangesResult:[D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    .line 2
    aput-wide v2, v0, v4

    .line 4
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-nez v2, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetBufferedTimeRangesResult:[D

    return-object v0

    .line 17
    :cond_1
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v2

    const/4 v3, -0x1

    const-wide/16 v5, 0x0

    if-le v2, v3, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 20
    new-instance v3, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 22
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v2

    goto :goto_0

    :cond_2
    move-wide v2, v5

    .line 26
    :goto_0
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getContentPosition()J

    move-result-wide v5

    .line 28
    :cond_3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetBufferedTimeRangesResult:[D

    sub-long v2, v5, v2

    long-to-double v2, v2

    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v2, v2, v7

    aput-wide v2, v0, v1

    .line 29
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getContentBufferedPosition()J

    move-result-wide v1

    sub-long/2addr v1, v5

    long-to-double v1, v1

    mul-double v1, v1, v7

    aput-wide v1, v0, v4

    .line 33
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetBufferedTimeRangesResult:[D

    return-object v0
.end method

.method private CalculateSeekableTimeRangeForPeriod()[D
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetSeekableTimeRangesResult:[D

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    .line 2
    aput-wide v2, v0, v4

    .line 4
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-nez v2, :cond_0

    return-object v0

    .line 9
    :cond_0
    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetSeekableTimeRangesResult:[D

    return-object v0

    .line 15
    :cond_1
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentWindowIndex()I

    move-result v2

    .line 16
    new-instance v3, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v3}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v2

    .line 19
    iget-boolean v3, v2, Lcom/google/android/exoplr2avp/Timeline$Window;->isSeekable:Z

    if-nez v3, :cond_2

    .line 21
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetSeekableTimeRangesResult:[D

    return-object v0

    .line 30
    :cond_2
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v3

    const/4 v5, -0x1

    const-wide/16 v6, 0x0

    if-le v3, v5, :cond_3

    .line 31
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 33
    new-instance v5, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v5}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 34
    invoke-virtual {v0, v3, v5}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 35
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowUs()J

    move-result-wide v5

    neg-long v6, v5

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_aGetSeekableTimeRangesResult:[D

    long-to-double v5, v6

    const-wide v7, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    mul-double v5, v5, v7

    aput-wide v5, v0, v1

    .line 41
    iget-wide v1, v2, Lcom/google/android/exoplr2avp/Timeline$Window;->durationUs:J

    long-to-double v1, v1

    mul-double v1, v1, v7

    aput-wide v1, v0, v4

    return-object v0
.end method

.method private CancelAndRemoveDownload(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->setStopReason(Ljava/lang/String;I)V

    .line 9
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->removeDownload(Ljava/lang/String;)V

    .line 12
    :cond_0
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    if-eqz v0, :cond_1

    .line 15
    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->removeResource(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private ClearTrackSelectionForRenderType(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mappedTrackInfo",
            "iRenderType",
            "iTrackIndex"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, -0x1

    if-eq p3, v1, :cond_2

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getRendererType(I)I

    move-result v2

    if-ne v2, p2, :cond_1

    .line 5
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v2

    .line 6
    iget v3, v2, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge p3, v3, :cond_1

    .line 8
    invoke-virtual {v2, p3}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 12
    iput-object p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 13
    iget-object p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {p2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->clearOverride(Lcom/google/android/exoplr2avp/source/TrackGroup;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private CreateExoPlayer(II)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "audioSubsystem",
            "audio360Channels"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bCreatedExoPlayer:Z

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x2

    if-nez v0, :cond_7

    if-ne p1, v3, :cond_2

    .line 10
    iget-boolean v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-nez v4, :cond_2

    const/4 p1, 0x0

    .line 16
    :cond_2
    iget v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iAudioSubsystem:I

    .line 17
    iget v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iAudioSubsystem:I

    if-ne v4, p1, :cond_3

    iget v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iAudio360ChannelIndex:I

    if-eq v4, p2, :cond_7

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->clearVideoSurface()V

    .line 26
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    const/4 v4, 0x0

    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 29
    iput-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 31
    :cond_4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 32
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 34
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_EventLogger:Lcom/google/android/exoplr2avp/util/EventLogger;

    invoke-interface {v0, v5}, Lcom/google/android/exoplr2avp/ExoPlayer;->removeAnalyticsListener(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;)V

    .line 35
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/ExoPlayer;->removeListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    .line 36
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0, v4}, Lcom/google/android/exoplr2avp/ExoPlayer;->setVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V

    .line 38
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->stop()V

    .line 39
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->release()V

    .line 40
    iput-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    .line 43
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    if-eqz v0, :cond_5

    .line 46
    iput-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    :cond_5
    if-eq p1, v3, :cond_6

    .line 52
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_6

    .line 54
    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0, v5}, Lcom/twobigears/audio360/AudioEngine;->destroySpatDecoderQueue(Lcom/twobigears/audio360/SpatDecoderQueue;)V

    .line 55
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->delete()V

    .line 56
    iput-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    .line 57
    iput-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    :cond_6
    const/4 v0, 0x1

    :cond_7
    if-nez v0, :cond_8

    .line 65
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iAudioSubsystem:I

    .line 66
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iAudio360ChannelIndex:I

    return-void

    .line 72
    :cond_8
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_RenderersFactory:Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iAudioSubsystem:I

    if-eq v0, p1, :cond_b

    .line 76
    :cond_9
    new-instance v0, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bPreferSoftwareDecoder:Z

    if-ne p1, v1, :cond_a

    const/4 v8, 0x1

    goto :goto_1

    :cond_a
    const/4 v8, 0x0

    :goto_1
    iget v9, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iUnityAudioSampleRate:I

    iget v10, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iPlayerIndex:I

    move-object v4, v0

    move-object v11, p0

    invoke-direct/range {v4 .. v11}, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;-><init>(Landroid/content/Context;IZZIILcom/renderheads/AVPro/Video/AudioInfoListener;)V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_RenderersFactory:Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

    .line 79
    :cond_b
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_RenderersFactory:Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

    .line 82
    iget-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    const-string v4, "AVProVideo"

    if-eqz v2, :cond_d

    if-ne p1, v3, :cond_d

    .line 84
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-nez v0, :cond_c

    .line 86
    new-instance v0, Lcom/twobigears/audio360/EngineInitSettings;

    invoke-direct {v0}, Lcom/twobigears/audio360/EngineInitSettings;-><init>()V

    .line 87
    invoke-virtual {v0}, Lcom/twobigears/audio360/EngineInitSettings;->getAudioSettings()Lcom/twobigears/audio360/AudioSettings;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/twobigears/audio360/AudioSettings;->setBufferSize(I)V

    .line 88
    invoke-virtual {v0}, Lcom/twobigears/audio360/EngineInitSettings;->getAudioSettings()Lcom/twobigears/audio360/AudioSettings;

    move-result-object v2

    const v3, 0x473b8000    # 48000.0f

    invoke-virtual {v2, v3}, Lcom/twobigears/audio360/AudioSettings;->setSampleRate(F)V

    .line 90
    invoke-virtual {v0}, Lcom/twobigears/audio360/EngineInitSettings;->getMemorySettings()Lcom/twobigears/audio360/MemorySettings;

    move-result-object v2

    const/16 v3, 0x2000

    invoke-virtual {v2, v3}, Lcom/twobigears/audio360/MemorySettings;->setSpatQueueSizePerChannel(I)V

    .line 94
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/twobigears/audio360/AudioEngine;->create(Lcom/twobigears/audio360/EngineInitSettings;Landroid/content/Context;)Lcom/twobigears/audio360/AudioEngine;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    .line 95
    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->createSpatDecoderQueue()Lcom/twobigears/audio360/SpatDecoderQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    .line 104
    :cond_c
    :try_start_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->getOutputLatencyMs()D

    move-result-wide v2

    .line 105
    invoke-direct {p0, p2}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->getChannelMap(I)Lcom/twobigears/audio360/ChannelMap;

    move-result-object v0

    .line 106
    new-instance v5, Lcom/twobigears/audio360exo2/Audio360Sink;

    iget-object v6, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-direct {v5, v6, v0, v2, v3}, Lcom/twobigears/audio360exo2/Audio360Sink;-><init>(Lcom/twobigears/audio360/SpatDecoderQueue;Lcom/twobigears/audio360/ChannelMap;D)V

    iput-object v5, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_2

    :catch_0
    const-string v0, "Failed to initialise Facebook360 audio sink"

    .line 110
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :catch_1
    :goto_2
    new-instance v0, Lcom/renderheads/AVPro/Video/RenderersFactory_Opus;

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_RenderersFactory:Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

    invoke-direct {v0, v2, v3}, Lcom/renderheads/AVPro/Video/RenderersFactory_Opus;-><init>(Lcom/google/android/exoplr2avp/audio/AudioSink;Lcom/google/android/exoplr2avp/RenderersFactory;)V

    .line 124
    :cond_d
    new-instance v2, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/RenderersFactory;)V

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    .line 125
    invoke-virtual {v2, v0}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setTrackSelector(Lcom/google/android/exoplr2avp/trackselection/TrackSelector;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LoadControl:Lcom/google/android/exoplr2avp/LoadControl;

    .line 126
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setLoadControl(Lcom/google/android/exoplr2avp/LoadControl;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

    .line 127
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setBandwidthMeter(Lcom/google/android/exoplr2avp/upstream/BandwidthMeter;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-result-object v0

    new-instance v2, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;

    sget-object v3, Lcom/google/android/exoplr2avp/util/Clock;->DEFAULT:Lcom/google/android/exoplr2avp/util/Clock;

    invoke-direct {v2, v3}, Lcom/google/android/exoplr2avp/analytics/DefaultAnalyticsCollector;-><init>(Lcom/google/android/exoplr2avp/util/Clock;)V

    .line 128
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setAnalyticsCollector(Lcom/google/android/exoplr2avp/analytics/AnalyticsCollector;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-result-object v0

    sget-object v2, Lcom/google/android/exoplr2avp/util/Clock;->DEFAULT:Lcom/google/android/exoplr2avp/util/Clock;

    .line 129
    invoke-virtual {v0, v2}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->setClock(Lcom/google/android/exoplr2avp/util/Clock;)Lcom/google/android/exoplr2avp/ExoPlayer$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/ExoPlayer$Builder;->build()Lcom/google/android/exoplr2avp/ExoPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_e

    const-string v0, "CREATED new ExoPlayer object"

    .line 139
    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bCreatedExoPlayer:Z

    .line 147
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, ""

    invoke-direct {p0, v1, v2, v3, v3}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->buildDrmSessionManager(Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    move-result-object v1

    iput-object v1, v0, Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;->m_DrmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 149
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/ExoPlayer;->addListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    .line 160
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/ExoPlayer;->addListener(Lcom/google/android/exoplr2avp/Player$Listener;)V

    .line 164
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0, p0}, Lcom/google/android/exoplr2avp/ExoPlayer;->setVideoFrameMetadataListener(Lcom/google/android/exoplr2avp/video/VideoFrameMetadataListener;)V

    .line 167
    :cond_e
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iAudioSubsystem:I

    .line 168
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iAudio360ChannelIndex:I

    return-void
.end method

.method private GetDownloadForId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/offline/Download;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    :try_start_0
    sget-object v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->getDownloadIndex()Lcom/google/android/exoplr2avp/offline/DownloadIndex;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, p1}, Lcom/google/android/exoplr2avp/offline/DownloadIndex;->getDownload(Ljava/lang/String;)Lcom/google/android/exoplr2avp/offline/Download;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    return-object p1

    :catch_0
    move-exception v1

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get download status for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with exception: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AVProVideo"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0
.end method

.method private static GetJsonAsMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 6
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t parse json:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private LogDownloadHelper(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadHelper",
            "id"
        }
    .end annotation

    const/4 p2, 0x0

    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getPeriodCount()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getMappedTrackInfo(I)Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 6
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 10
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v3

    const/4 v4, 0x0

    .line 11
    :goto_2
    iget v5, v3, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v4, v5, :cond_3

    .line 13
    invoke-virtual {v3, v4}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v5

    .line 14
    iget v6, v5, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    invoke-virtual {v1, v2, v4, p2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getAdaptiveSupport(IIZ)I

    move-result v7

    invoke-static {v6, v7}, Lcom/renderheads/AVPro/Video/PlayerEventListener;->getAdaptiveSupportString(II)Ljava/lang/String;

    const/4 v6, 0x0

    .line 18
    :goto_3
    iget v7, v5, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v6, v7, :cond_2

    .line 21
    invoke-virtual {v1, v2, v4, v6}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v7

    invoke-static {v7}, Lcom/google/android/exoplr2avp/util/Util;->getFormatSupportString(I)Ljava/lang/String;

    .line 22
    invoke-virtual {v5, v6}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v7

    .line 23
    invoke-static {v7}, Lcom/google/android/exoplr2avp/Format;->toLogString(Lcom/google/android/exoplr2avp/Format;)Ljava/lang/String;

    iget v8, v7, Lcom/google/android/exoplr2avp/Format;->stereoMode:I

    iget-object v8, v7, Lcom/google/android/exoplr2avp/Format;->colorInfo:Lcom/google/android/exoplr2avp/video/ColorInfo;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/google/android/exoplr2avp/video/ColorInfo;->toString()Ljava/lang/String;

    :cond_0
    iget-object v7, v7, Lcom/google/android/exoplr2avp/Format;->codecs:Ljava/lang/String;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private SetTrackSelectionForRenderType(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;II)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mappedTrackInfo",
            "iRenderType",
            "iTrackIndex"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const/4 v1, -0x1

    if-eq p3, v1, :cond_5

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 6
    iget-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v4, v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getRendererType(I)I

    move-result v4

    if-ne v4, p2, :cond_4

    .line 9
    invoke-virtual {p1, v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v4

    .line 11
    iget v5, v4, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    const/4 v5, 0x0

    .line 14
    :goto_1
    iget v6, v4, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v5, v6, :cond_4

    .line 16
    invoke-virtual {v4, v5}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v6

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 22
    :goto_2
    iget v9, v6, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    const/4 v10, 0x1

    if-ge v7, v9, :cond_1

    .line 25
    invoke-virtual {v6, v7}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    .line 27
    invoke-virtual {p1, v2, v5, v7}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v9

    const/4 v11, 0x4

    if-ne v9, v11, :cond_0

    .line 30
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v8, 0x1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    if-eqz v8, :cond_3

    if-ne v3, p3, :cond_2

    .line 40
    new-instance p1, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    invoke-direct {p1, v6, v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;Ljava/util/List;)V

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 42
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;->getType()I

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return v10

    :cond_2
    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method private UpdateLiveFlagForTimeline(Lcom/google/android/exoplr2avp/Timeline;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeline"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentMediaItemIndex()I

    move-result v0

    .line 3
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    .line 4
    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Timeline$Window;->isLive()Z

    move-result p1

    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsLive:Z

    .line 8
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsLive:Z

    :cond_0
    return-void
.end method

.method private UpdatePreferredVideoResolutionAndBitrate()Z
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 13
    :cond_1
    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxWidth:I

    const/4 v3, 0x1

    if-lez v2, :cond_2

    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxHeight:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 15
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 17
    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v5, v4}, Lcom/google/android/exoplr2avp/ExoPlayer;->getRendererType(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 19
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v5

    .line 21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const v7, 0x7fffffff

    .line 26
    iget v8, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    invoke-virtual {v5, v8}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v5

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, -0x1

    .line 27
    :goto_2
    iget v11, v5, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v9, v11, :cond_8

    .line 29
    invoke-virtual {v5, v9}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v11

    .line 31
    iget v12, v11, Lcom/google/android/exoplr2avp/Format;->width:I

    if-lez v12, :cond_7

    iget v13, v11, Lcom/google/android/exoplr2avp/Format;->height:I

    if-lez v13, :cond_7

    if-nez v2, :cond_3

    .line 33
    iget v14, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iPeakBitrateBps:I

    if-gtz v14, :cond_4

    :cond_3
    mul-int v12, v12, v13

    if-ge v12, v7, :cond_4

    move v10, v9

    move v7, v12

    .line 43
    :cond_4
    iget v12, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    invoke-virtual {v0, v4, v12, v9}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_7

    if-eqz v2, :cond_5

    iget v12, v11, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v13, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxWidth:I

    if-gt v12, v13, :cond_7

    iget v12, v11, Lcom/google/android/exoplr2avp/Format;->height:I

    iget v13, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxHeight:I

    if-gt v12, v13, :cond_7

    :cond_5
    iget v12, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iPeakBitrateBps:I

    if-lez v12, :cond_6

    iget v11, v11, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    if-gt v11, v12, :cond_7

    .line 47
    :cond_6
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_8
    if-le v10, v8, :cond_9

    .line 53
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_9

    .line 55
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_9
    new-instance v7, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    invoke-direct {v7, v5, v6}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;Ljava/util/List;)V

    iput-object v7, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 68
    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v5}, Lcom/google/android/exoplr2avp/ExoPlayer;->getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v6

    iget-object v7, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    invoke-virtual {v6, v7}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/android/exoplr2avp/ExoPlayer;->setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_b
    return v3
.end method

.method private _IsPlaying()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->IsSeeking()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic access$000(Lcom/renderheads/AVPro/Video/Player_ExoPlayer;Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->LogDownloadHelper(Lcom/google/android/exoplr2avp/offline/DownloadHelper;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100()Lcom/google/android/exoplr2avp/offline/DownloadManager;
    .locals 1

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    return-object v0
.end method

.method private buildDrmSessionManager(Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "uuid",
            "multiSession",
            "id",
            "value"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;

    invoke-direct {p1}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;-><init>()V

    .line 3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->setMultiSession(Z)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 4
    invoke-virtual {p1, p2}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->setKeyRequestParameters(Ljava/util/Map;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, p0}, Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager$Builder;->build(Lcom/google/android/exoplr2avp/drm/MediaDrmCallback;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    move-result-object p1

    return-object p1
.end method

.method private getChannelMap(I)Lcom/twobigears/audio360/ChannelMap;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channelID"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->initChannelMap()V

    :cond_0
    if-ltz p1, :cond_2

    .line 6
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    array-length v1, v0

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    aget-object p1, v0, p1

    return-object p1

    .line 12
    :cond_2
    :goto_0
    sget-object p1, Lcom/twobigears/audio360/ChannelMap;->TBE_8_2:Lcom/twobigears/audio360/ChannelMap;

    return-object p1
.end method

.method private initChannelMap()V
    .locals 3

    const/16 v0, 0x1d

    :try_start_0
    new-array v0, v0, [Lcom/twobigears/audio360/ChannelMap;

    .line 1
    sput-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 4
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x1

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 5
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x2

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_6_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 6
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x3

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_6:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 7
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x4

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_4_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 8
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x5

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_4:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 9
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x6

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR0:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 10
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/4 v1, 0x7

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR1:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 11
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x8

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 12
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x9

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_8_PAIR3:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 13
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xa

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL0:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 14
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xb

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL1:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 15
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xc

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 16
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xd

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL3:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 17
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xe

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL4:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 18
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0xf

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL5:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 19
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x10

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL6:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 20
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x11

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->TBE_CHANNEL7:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 21
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x12

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->HEADLOCKED_STEREO:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 22
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x13

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->HEADLOCKED_CHANNEL0:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 23
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x14

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->HEADLOCKED_CHANNEL1:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 24
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x15

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_4:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 25
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x16

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_4_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 26
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x17

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_9:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 27
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x18

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_9_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 28
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x19

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_16:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 29
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x1a

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->AMBIX_16_2:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 30
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x1b

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->MONO:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1

    .line 31
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ChannelMap:[Lcom/twobigears/audio360/ChannelMap;

    const/16 v1, 0x1c

    sget-object v2, Lcom/twobigears/audio360/ChannelMap;->STEREO:Lcom/twobigears/audio360/ChannelMap;

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AVProVideo"

    const-string v1, "Failed to initialise channel map"

    .line 35
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static largeLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "content"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xfa0

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->largeLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public AddMediaToCache(Ljava/lang/String;Ljava/lang/String;DII)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "headers",
            "minimumRequiredBitRate",
            "minimumRequiredResolutionWidth",
            "minimumRequiredResolutionHeight"
        }
    .end annotation

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    .line 1
    invoke-virtual/range {v0 .. v10}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->AddMediaToCache(Ljava/lang/String;Ljava/lang/String;DIIDII)V

    return-void
.end method

.method public AddMediaToCache(Ljava/lang/String;Ljava/lang/String;DIIDII)V
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "headers",
            "minimumRequiredBitRate",
            "minimumRequiredResolutionWidth",
            "minimumRequiredResolutionHeight",
            "maximumRequiredBitRate",
            "maximumRequiredResolutionWidth",
            "maximumRequiredResolutionHeight"
        }
    .end annotation

    move-object v13, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 2
    iget-boolean v0, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "http://"

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v5, "AVProVideo"

    if-nez v0, :cond_3

    const-string v0, "Not caching media - trying to cache from a local location"

    .line 14
    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20
    :cond_3
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    if-eqz v0, :cond_c

    .line 23
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 24
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 27
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->getDownloadIndex()Lcom/google/android/exoplr2avp/offline/DownloadIndex;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 32
    :try_start_0
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Lcom/google/android/exoplr2avp/offline/DownloadIndex;->getDownload(Ljava/lang/String;)Lcom/google/android/exoplr2avp/offline/Download;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 65
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed whilst preparing to cache video getting  current cache status for url: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_c

    .line 72
    invoke-static {v6}, Lcom/google/android/exoplr2avp/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    .line 73
    iget v1, v13, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ForcedFileFormat:I

    const/4 v5, 0x3

    const/4 v8, 0x2

    if-eq v1, v4, :cond_7

    if-eq v1, v8, :cond_6

    if-eq v1, v5, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    goto :goto_3

    :cond_7
    const/4 v0, 0x2

    .line 80
    :goto_3
    sget-object v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_HttpDataSourceFactory_ForDownload:Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    .line 82
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 84
    iget-object v1, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/renderheads/AVPro/Video/Player_Base;->GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 86
    sget-object v8, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_HttpDataSourceFactory_ForDownload:Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setDefaultRequestProperties(Ljava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    const-string v8, "User-Agent"

    .line 89
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_8

    .line 92
    sget-object v8, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_HttpDataSourceFactory_ForDownload:Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    invoke-virtual {v8, v1}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    :cond_8
    const/4 v1, 0x4

    if-eq v0, v1, :cond_a

    if-eq v0, v5, :cond_a

    const-wide/16 v0, 0x0

    cmpl-double v5, p3, v0

    if-gtz v5, :cond_9

    if-gtz p5, :cond_9

    if-gtz p6, :cond_9

    cmpl-double v5, p7, v0

    if-gtz v5, :cond_9

    if-gtz p9, :cond_9

    if-lez p10, :cond_a

    :cond_9
    const/4 v0, 0x1

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_b

    .line 104
    iget-object v0, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    invoke-virtual {p0, v2, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v4, v3, v4, v0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BuildDataSourceFactory(ZZZLjava/util/Map;)Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;

    move-result-object v0

    .line 105
    invoke-static {v6}, Lcom/google/android/exoplr2avp/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplr2avp/MediaItem;

    move-result-object v1

    iget-object v2, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-static {v2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;->getDefaults(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v2

    iget-object v3, v13, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_RenderersFactory:Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

    invoke-static {v1, v2, v3, v0}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->forMediaItem(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;Lcom/google/android/exoplr2avp/RenderersFactory;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;)Lcom/google/android/exoplr2avp/offline/DownloadHelper;

    move-result-object v0

    .line 107
    iget-object v1, v13, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->getDefaultTrackSelectorParameters(Landroid/content/Context;)Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;

    move-result-object v12

    .line 110
    new-instance v14, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;

    move-object v1, v14

    move-object v2, p0

    move-object v3, v6

    move-wide/from16 v4, p3

    move/from16 v6, p6

    move/from16 v7, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer$1;-><init>(Lcom/renderheads/AVPro/Video/Player_ExoPlayer;Landroid/net/Uri;DIIDIILcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector$Parameters;)V

    invoke-virtual {v0, v14}, Lcom/google/android/exoplr2avp/offline/DownloadHelper;->prepare(Lcom/google/android/exoplr2avp/offline/DownloadHelper$Callback;)V

    goto :goto_5

    .line 261
    :cond_b
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    new-instance v1, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;

    invoke-direct {v1, v7, v6}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/offline/DownloadRequest$Builder;->build()Lcom/google/android/exoplr2avp/offline/DownloadRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->addDownload(Lcom/google/android/exoplr2avp/offline/DownloadRequest;)V

    :cond_c
    :goto_5
    return-void
.end method

.method public BindSurfaceToPlayer()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 4
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_1

    const-string v0, "AVProVideo"

    const-string v1, "BindSurfaceToPlayer called"

    .line 13
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public CanPlay()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public CancelDownloadOfMediaToCache(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->CancelAndRemoveDownload(Ljava/lang/String;)V

    return-void
.end method

.method public CloseVideoOnPlayer()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    .line 20
    iput-wide v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastAbsoluteTime:J

    .line 25
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->_stop()V

    .line 40
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {v0, p0}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->removeListener(Lcom/google/android/exoplr2avp/offline/DownloadManager$Listener;)V

    .line 45
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_2

    .line 47
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->clearVideoSurface()V

    .line 49
    :cond_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    .line 51
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 52
    iput-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 55
    :cond_3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    iput-boolean v5, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bCreatedExoPlayer:Z

    .line 60
    iput-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_MediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    .line 61
    iput-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 63
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 65
    iput-boolean v5, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bIsPlaying:Z

    .line 67
    iput-wide v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastPresentationTimeNS:J

    .line 98
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public DeinitializeVideoPlayer()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    sget v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_iCacheReferenceCount:I

    if-lez v0, :cond_1

    sget-object v2, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 6
    sput v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_iCacheReferenceCount:I

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;->release()V

    .line 10
    sput-object v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    .line 12
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->release()V

    .line 15
    sput-object v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    .line 18
    :cond_0
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_HttpDataSourceFactory_ForDownload:Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    if-eqz v0, :cond_1

    .line 20
    sput-object v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_HttpDataSourceFactory_ForDownload:Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    .line 26
    :cond_1
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    .line 27
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_MediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    .line 28
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 31
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_2

    .line 33
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->clearVideoSurface()V

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 37
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 38
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 40
    :cond_3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 43
    iput-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bCreatedExoPlayer:Z

    .line 45
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_4

    .line 53
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->stop()V

    .line 54
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->release()V

    .line 55
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    .line 58
    :cond_4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_6

    .line 60
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    if-eqz v2, :cond_5

    .line 63
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    .line 65
    :cond_5
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0, v2}, Lcom/twobigears/audio360/AudioEngine;->destroySpatDecoderQueue(Lcom/twobigears/audio360/SpatDecoderQueue;)V

    .line 66
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->delete()V

    .line 67
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    .line 68
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    :cond_6
    return-void
.end method

.method public GetAudioBufferedSampleCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_RenderersFactory:Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->GetAudioBufferedSampleCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GetAudioTrackInfo(I)[Ljava/lang/String;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    const-string v6, ""

    .line 2
    aput-object v6, v2, v5

    const/4 v7, 0x2

    .line 3
    aput-object v6, v2, v7

    const/4 v8, 0x3

    .line 4
    aput-object v4, v2, v8

    const/4 v9, 0x4

    .line 5
    aput-object v4, v2, v9

    const/4 v10, 0x5

    .line 6
    aput-object v4, v2, v10

    .line 8
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v2, :cond_b

    iget v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    if-lt v1, v2, :cond_0

    goto/16 :goto_6

    .line 15
    :cond_0
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    if-nez v2, :cond_1

    .line 19
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    return-object v1

    :cond_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 26
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v13

    if-ge v11, v13, :cond_a

    .line 28
    iget-object v13, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v13, v11}, Lcom/google/android/exoplr2avp/ExoPlayer;->getRendererType(I)I

    move-result v13

    if-ne v13, v5, :cond_9

    .line 30
    invoke-virtual {v2, v11}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v13

    const/4 v14, 0x0

    .line 32
    :goto_1
    iget v15, v13, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v14, v15, :cond_9

    .line 34
    invoke-virtual {v13, v14}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v15

    const/4 v10, 0x0

    .line 42
    :goto_2
    iget v7, v15, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v10, v7, :cond_8

    .line 44
    invoke-virtual {v2, v11, v14, v10}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v7

    if-ne v7, v9, :cond_7

    if-ne v12, v1, :cond_6

    .line 48
    iget-object v7, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    const-string v16, "1"

    aput-object v16, v7, v3

    .line 49
    iget v3, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultAudioTrackIndex:I

    if-ne v1, v3, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v16, v4

    :goto_3
    aput-object v16, v7, v8

    .line 51
    invoke-virtual {v15, v10}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 54
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    iget-object v2, v3, Lcom/google/android/exoplr2avp/Format;->label:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_4

    :cond_3
    move-object v2, v6

    :goto_4
    aput-object v2, v1, v5

    .line 55
    iget-object v2, v3, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v6, v2

    :cond_4
    const/4 v2, 0x2

    aput-object v6, v1, v2

    .line 56
    iget v2, v3, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    const/4 v6, -0x1

    if-le v2, v6, :cond_5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    :cond_5
    aput-object v4, v1, v9

    .line 57
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    iget v2, v3, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x5

    aput-object v2, v1, v7

    .line 59
    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/Format;->toString()Ljava/lang/String;

    .line 60
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    aget-object v2, v1, v5

    const/4 v3, 0x2

    aget-object v2, v1, v3

    aget-object v2, v1, v8

    aget-object v2, v1, v9

    aget-object v2, v1, v7

    return-object v1

    :cond_6
    const/4 v3, 0x2

    const/4 v7, 0x5

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_7
    const/4 v3, 0x2

    const/4 v7, 0x5

    :goto_5
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_8
    const/4 v3, 0x2

    const/4 v7, 0x5

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v10, 0x5

    goto :goto_1

    :cond_9
    const/4 v3, 0x2

    const/4 v7, 0x5

    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v10, 0x5

    goto/16 :goto_0

    .line 88
    :cond_a
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    return-object v1

    .line 89
    :cond_b
    :goto_6
    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 90
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aAudioTrackInfoReturn:[Ljava/lang/String;

    return-object v1
.end method

.method public GetBufferedTimeRanges()[D
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->CalculateBufferedTimeRangeForPeriod()[D

    move-result-object v0

    return-object v0
.end method

.method public GetBufferingProgressPercent()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getBufferedPercentage()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fBufferingProgressPercent:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public GetCachedMediaStatus(Ljava/lang/String;)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x1

    .line 2
    aput v2, v0, v3

    .line 4
    iget-boolean v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-nez v4, :cond_0

    return-object v0

    :cond_0
    const-string v0, "http://"

    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "https://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_a

    .line 14
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->GetDownloadForId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/offline/Download;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 20
    iget v0, p1, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v0, :cond_9

    const/4 v5, 0x2

    if-eq v0, v3, :cond_6

    if-eq v0, v5, :cond_9

    const/4 v5, 0x3

    if-eq v0, v5, :cond_5

    const/4 v5, 0x4

    if-eq v0, v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_3

    const/4 v2, 0x7

    if-eq v0, v2, :cond_9

    goto :goto_2

    .line 43
    :cond_3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    aput v2, v0, v1

    goto :goto_2

    .line 44
    :cond_4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    const/high16 v2, 0x40400000    # 3.0f

    aput v2, v0, v1

    goto :goto_2

    .line 45
    :cond_5
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    const/high16 v2, 0x40000000    # 2.0f

    aput v2, v0, v1

    goto :goto_2

    .line 46
    :cond_6
    iget v0, p1, Lcom/google/android/exoplr2avp/offline/Download;->stopReason:I

    if-eqz v0, :cond_8

    if-eq v0, v5, :cond_7

    .line 50
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    aput v2, v0, v1

    goto :goto_2

    .line 51
    :cond_7
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    const/high16 v2, 0x40800000    # 4.0f

    aput v2, v0, v1

    goto :goto_2

    .line 52
    :cond_8
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    aput v4, v0, v1

    goto :goto_2

    .line 53
    :cond_9
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    aput v4, v0, v1

    .line 73
    :goto_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/offline/Download;->getPercentDownloaded()F

    move-result p1

    aput p1, v0, v3

    .line 102
    :cond_a
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_afCachedStatusReturn:[F

    return-object p1
.end method

.method public GetCurrentAbsoluteTimestamp()D
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v3, 0x2

    const-wide v4, 0x408f400000000000L    # 1000.0

    if-ne v0, v3, :cond_1

    .line 8
    iget-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastAbsoluteTime:J

    :goto_0
    long-to-double v0, v0

    div-double/2addr v0, v4

    return-wide v0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    if-nez v0, :cond_2

    .line 15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "[AVProVideoTimestampTest] timeline is null"

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-wide v1

    .line 19
    :cond_2
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v3}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentWindowIndex()I

    move-result v3

    .line 21
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getWindowCount()I

    move-result v6

    if-gt v6, v3, :cond_3

    return-wide v1

    .line 26
    :cond_3
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Window;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Window;-><init>()V

    .line 27
    invoke-virtual {v0, v3, v1}, Lcom/google/android/exoplr2avp/Timeline;->getWindow(ILcom/google/android/exoplr2avp/Timeline$Window;)Lcom/google/android/exoplr2avp/Timeline$Window;

    move-result-object v0

    .line 29
    iget-wide v1, v1, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v6

    if-nez v3, :cond_4

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_4
    iget-wide v0, v0, Lcom/google/android/exoplr2avp/Timeline$Window;->windowStartTimeMs:J

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentPosition()J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_1
    iput-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastAbsoluteTime:J

    goto :goto_0

    :cond_5
    :goto_2
    return-wide v1
.end method

.method public GetCurrentTextCue()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TextCues:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    monitor-enter v1

    const/4 v2, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TextCues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 7
    iget-object v3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TextCues:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/exoplr2avp/text/Cue;

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v3, Lcom/google/android/exoplr2avp/text/Cue;->text:Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_0
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public GetCurrentTimeS()D
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    const-wide/16 v3, 0x0

    if-le v2, v1, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 12
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v3

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    sub-long/2addr v0, v3

    long-to-double v0, v0

    const-wide v2, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v0, v0, v2

    return-wide v0
.end method

.method public GetEstimatedBandwidthUsed()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;->getBitrateEstimate()J

    move-result-wide v0

    return-wide v0
.end method

.method public GetSeekableTimeRanges()[D
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->CalculateSeekableTimeRangeForPeriod()[D

    move-result-object v0

    return-object v0
.end method

.method public GetTextTrackInfo(I)[Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    const-string v2, "0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 3
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    const/4 v2, 0x2

    const-string v5, ""

    aput-object v5, v1, v2

    const/4 v6, 0x3

    .line 4
    aput-object v5, v1, v6

    .line 8
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 12
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    return-object v1

    .line 15
    :cond_1
    iget-object v7, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v7}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentTrackSelections()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;

    move-result-object v7

    if-nez v7, :cond_2

    .line 19
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    return-object v1

    :cond_2
    const/4 v8, 0x0

    .line 22
    :goto_1
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 24
    invoke-virtual {v7, v8}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionArray;->get(I)Lcom/google/android/exoplr2avp/trackselection/TrackSelection;

    .line 26
    iget-object v9, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v9, v8}, Lcom/google/android/exoplr2avp/ExoPlayer;->getRendererType(I)I

    move-result v9

    if-ne v9, v6, :cond_9

    .line 30
    invoke-virtual {v1, v8}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 31
    :goto_2
    iget v12, v9, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v10, v12, :cond_9

    .line 33
    invoke-virtual {v9, v10}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v12

    const/4 v13, 0x0

    .line 38
    :goto_3
    iget v14, v12, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v13, v14, :cond_4

    .line 41
    invoke-virtual {v12, v13}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    .line 43
    invoke-virtual {v1, v8, v10, v13}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v14

    const/4 v15, 0x4

    if-ne v14, v15, :cond_3

    const/4 v14, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_4
    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_4
    if-eqz v14, :cond_8

    move/from16 v14, p1

    if-ne v11, v14, :cond_7

    .line 55
    invoke-virtual {v12, v13}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v12

    if-eqz v12, :cond_7

    .line 58
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    const-string v7, "1"

    aput-object v7, v1, v3

    .line 59
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 60
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    iget-object v3, v12, Lcom/google/android/exoplr2avp/Format;->label:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_5

    :cond_5
    move-object v3, v5

    :goto_5
    aput-object v3, v1, v2

    .line 61
    iget-object v3, v12, Lcom/google/android/exoplr2avp/Format;->language:Ljava/lang/String;

    if-eqz v3, :cond_6

    move-object v5, v3

    :cond_6
    aput-object v5, v1, v6

    .line 63
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    aget-object v2, v1, v2

    aget-object v2, v1, v6

    return-object v1

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_8
    move/from16 v14, p1

    :goto_6
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_9
    move/from16 v14, p1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 74
    :cond_a
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aTextTrackInfoReturn:[Ljava/lang/String;

    return-object v1
.end method

.method public GetVideoTrackInfo(I)[Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "0"

    aput-object v4, v2, v3

    const/4 v5, 0x1

    const-string v6, ""

    .line 2
    aput-object v6, v2, v5

    const/4 v7, 0x2

    .line 3
    aput-object v6, v2, v7

    const/4 v8, 0x3

    .line 4
    aput-object v4, v2, v8

    const/4 v9, 0x4

    .line 5
    aput-object v4, v2, v9

    .line 8
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v2

    if-nez v2, :cond_0

    .line 11
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    return-object v1

    :cond_0
    const/4 v10, 0x0

    .line 15
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v11

    if-ge v10, v11, :cond_7

    .line 17
    iget-object v11, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v11, v10}, Lcom/google/android/exoplr2avp/ExoPlayer;->getRendererType(I)I

    move-result v11

    if-ne v11, v7, :cond_6

    .line 19
    invoke-virtual {v2, v10}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 22
    :goto_1
    iget v14, v11, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge v12, v14, :cond_6

    .line 24
    invoke-virtual {v11, v12}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v14

    const/4 v15, 0x0

    .line 29
    :goto_2
    iget v8, v14, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v15, v8, :cond_2

    .line 31
    invoke-virtual {v2, v10, v12, v15}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v8

    if-ne v8, v9, :cond_1

    const/4 v8, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v8, :cond_5

    if-ne v13, v1, :cond_4

    .line 43
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    const-string v8, "1"

    aput-object v8, v2, v3

    .line 44
    aput-object v6, v2, v5

    .line 45
    aput-object v6, v2, v7

    .line 46
    iget v3, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultVideoTrackIndex:I

    if-ne v1, v3, :cond_3

    goto :goto_4

    :cond_3
    move-object v8, v4

    :goto_4
    const/4 v14, 0x3

    aput-object v8, v2, v14

    .line 47
    aput-object v4, v2, v9

    .line 74
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    aget-object v2, v1, v5

    aget-object v2, v1, v7

    aget-object v2, v1, v14

    aget-object v2, v1, v9

    return-object v1

    :cond_4
    const/4 v14, 0x3

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_5
    const/4 v14, 0x3

    :goto_5
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x3

    goto :goto_1

    :cond_6
    const/4 v14, 0x3

    add-int/lit8 v10, v10, 0x1

    const/4 v8, 0x3

    goto :goto_0

    .line 85
    :cond_7
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_aVideoTrackInfoReturn:[Ljava/lang/String;

    return-object v1
.end method

.method public GrabAudio(II)[F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sampleCount",
            "channelCount"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_RenderersFactory:Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->GrabAudio(II)[F

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public InitialisePlayer(ZIIIZIIIIIII)Z
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "preferSoftwareDecoder",
            "audioSubsystem",
            "audio360Channels",
            "iUnityAudioSampleRate",
            "bForceStartHighestBitrate",
            "iMinBufferMs",
            "iMaxBufferMs",
            "iBufferForPlaybackMs",
            "iBufferForPlaybackAfterRebufferMs",
            "peakBitrateBps",
            "maxWidth",
            "maxHeight"
        }
    .end annotation

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 10
    iget-object v3, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 11
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "?"

    .line 17
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AVProMobileVideo/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Linux;Android "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") ExoPlayerLib/"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2.18.0"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_UserAgent:Ljava/lang/String;

    const/high16 v1, 0xfa00000

    .line 20
    iput v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxCacheSize:I

    const/high16 v1, 0x6400000

    .line 21
    iput v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxCacheFileSize:I

    .line 23
    iget-boolean v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 25
    sget-object v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    if-nez v1, :cond_1

    .line 29
    new-instance v1, Lcom/google/android/exoplr2avp/database/StandaloneDatabaseProvider;

    iget-object v4, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/google/android/exoplr2avp/database/StandaloneDatabaseProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DatabaseProvider:Lcom/google/android/exoplr2avp/database/StandaloneDatabaseProvider;

    .line 33
    new-instance v1, Lcom/google/android/exoplr2avp/upstream/cache/NoOpCacheEvictor;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/upstream/cache/NoOpCacheEvictor;-><init>()V

    .line 34
    new-instance v4, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    new-instance v5, Ljava/io/File;

    iget-object v6, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "AVProMediaCache"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v6, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DatabaseProvider:Lcom/google/android/exoplr2avp/database/StandaloneDatabaseProvider;

    invoke-direct {v4, v5, v1, v6}, Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/google/android/exoplr2avp/upstream/cache/CacheEvictor;Lcom/google/android/exoplr2avp/database/DatabaseProvider;)V

    sput-object v4, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    .line 37
    new-instance v1, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;-><init>()V

    iget-object v4, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_UserAgent:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;->setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    move-result-object v9

    sput-object v9, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_HttpDataSourceFactory_ForDownload:Lcom/google/android/exoplr2avp/upstream/DefaultHttpDataSource$Factory;

    .line 38
    new-instance v1, Lcom/google/android/exoplr2avp/offline/DownloadManager;

    iget-object v6, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    sget-object v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DatabaseProvider:Lcom/google/android/exoplr2avp/database/StandaloneDatabaseProvider;

    sget-object v8, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_SimpleCache:Lcom/google/android/exoplr2avp/upstream/cache/SimpleCache;

    sget-object v10, Lcom/renderheads/AVPro/Video/-$$Lambda$PNiE7SuEFxRjAZH7pJpZIFOFjWg;->INSTANCE:Lcom/renderheads/AVPro/Video/-$$Lambda$PNiE7SuEFxRjAZH7pJpZIFOFjWg;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/google/android/exoplr2avp/offline/DownloadManager;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/database/DatabaseProvider;Lcom/google/android/exoplr2avp/upstream/cache/Cache;Lcom/google/android/exoplr2avp/upstream/DataSource$Factory;Ljava/util/concurrent/Executor;)V

    sput-object v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    .line 42
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->resumeDownloads()V

    .line 45
    :cond_1
    sget v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_iCacheReferenceCount:I

    add-int/2addr v1, v3

    sput v1, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_iCacheReferenceCount:I

    :cond_2
    if-eqz p5, :cond_3

    .line 50
    new-instance v1, Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter$Builder;

    iget-object v4, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter$Builder;-><init>(Landroid/content/Context;)V

    const-wide/32 v4, 0x7fffffff

    invoke-virtual {v1, v4, v5}, Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter$Builder;->setInitialBitrateEstimate(J)Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter$Builder;->build()Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

    move-result-object v1

    goto :goto_1

    :cond_3
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;->getSingletonInstance(Landroid/content/Context;)Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

    move-result-object v1

    :goto_1
    iput-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_BandwidthMeter:Lcom/google/android/exoplr2avp/upstream/DefaultBandwidthMeter;

    .line 59
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_DrmSessionManagerProvider:Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v6, ""

    invoke-direct {p0, v4, v5, v6, v6}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->buildDrmSessionManager(Ljava/util/UUID;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/exoplr2avp/drm/DefaultDrmSessionManager;

    move-result-object v4

    iput-object v4, v1, Lcom/renderheads/AVPro/Video/AVProDrmSessionManagerProvider;->m_DrmSessionManager:Lcom/google/android/exoplr2avp/drm/DrmSessionManager;

    .line 61
    new-instance v1, Landroid/os/Handler;

    iget-object v4, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_MainHandler:Landroid/os/Handler;

    .line 66
    new-instance v1, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;

    .line 67
    sget-object v11, Lcom/google/android/exoplr2avp/util/Clock;->DEFAULT:Lcom/google/android/exoplr2avp/util/Clock;

    const/16 v6, 0x2710

    const/16 v7, 0x61a8

    const/16 v8, 0x61a8

    const v9, 0x3f333333    # 0.7f

    const/high16 v10, 0x3f400000    # 0.75f

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;-><init>(IIIFFLcom/google/android/exoplr2avp/util/Clock;)V

    .line 68
    iput-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LimitedAdaptiveTrackSelectionFactory:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;

    .line 69
    iget-object v4, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    .line 70
    iput-object v4, v1, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$Factory;->m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    .line 71
    new-instance v4, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    iget-object v5, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;-><init>(Landroid/content/Context;Lcom/google/android/exoplr2avp/trackselection/ExoTrackSelection$Factory;)V

    iput-object v4, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    const/4 v1, 0x0

    .line 73
    iput-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 75
    new-instance v1, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;-><init>()V

    .line 76
    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->setPrioritizeTimeOverSizeThresholds(Z)Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;

    move/from16 v2, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move/from16 v6, p9

    .line 77
    invoke-virtual {v1, v2, v4, v5, v6}, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->setBufferDurationsMs(IIII)Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;

    .line 78
    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/DefaultLoadControl$Builder;->build()Lcom/google/android/exoplr2avp/DefaultLoadControl;

    move-result-object v1

    iput-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LoadControl:Lcom/google/android/exoplr2avp/LoadControl;

    .line 80
    new-instance v1, Lcom/google/android/exoplr2avp/util/EventLogger;

    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    const-string v4, "AVProVideo: EventLogger"

    invoke-direct {v1, v2, v4}, Lcom/google/android/exoplr2avp/util/EventLogger;-><init>(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_EventLogger:Lcom/google/android/exoplr2avp/util/EventLogger;

    move v1, p1

    .line 85
    iput-boolean v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bPreferSoftwareDecoder:Z

    move/from16 v1, p4

    .line 86
    iput v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iUnityAudioSampleRate:I

    move/from16 v1, p10

    .line 88
    iput v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iPeakBitrateBps:I

    move/from16 v1, p11

    .line 89
    iput v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxWidth:I

    move/from16 v1, p12

    .line 90
    iput v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxHeight:I

    move v1, p2

    move v2, p3

    .line 93
    invoke-direct {p0, p2, p3}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->CreateExoPlayer(II)V

    return v3
.end method

.method public IsFinished()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsMediaCachingSupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public IsPaused()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public IsPlaying()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bIsPlaying:Z

    return v0
.end method

.method public IsSeeking()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    return v0
.end method

.method public NumberOfChannelsChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iChannels"
        }
    .end annotation

    .line 3
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    return-void
.end method

.method public OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;III)Z
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "filePath",
            "fileOffset",
            "httpHeaderJson",
            "forcedFileFormat",
            "audioSubsystem",
            "audio360Channels"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v1, p1

    .line 1
    iget-boolean v0, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    const-string v2, " | m_VideoState = "

    const-string v3, "AVProVideo"

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OpenVideoFromFileInternal | m_ExoPlayer.getPlaybackState() = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlaybackState()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v7, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " | m_SurfaceTexture = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " | m_bSurfaceTextureBound = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move/from16 v0, p6

    move/from16 v5, p7

    .line 7
    invoke-direct {p0, v0, v5}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->CreateExoPlayer(II)V

    move/from16 v0, p5

    .line 9
    iput v0, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ForcedFileFormat:I

    const/4 v8, 0x0

    .line 11
    iput-boolean v8, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bIsPlaying:Z

    const-wide/16 v9, 0x0

    .line 12
    iput-wide v9, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastPresentationTimeNS:J

    .line 14
    iget-object v0, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    .line 16
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BindSurfaceToPlayer()V

    :cond_2
    const-string v0, "http://"

    .line 19
    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v11, 0x1

    if-nez v0, :cond_4

    const-string v0, "https://"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 21
    :goto_2
    iget-boolean v5, v7, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-eqz v5, :cond_6

    move-object/from16 v5, p4

    goto :goto_4

    :cond_6
    move-object v5, v4

    .line 26
    :goto_4
    iget-object v6, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    const/4 v12, -0x1

    if-eqz v6, :cond_f

    iget v13, v7, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v14, 0x2

    if-eq v13, v14, :cond_f

    .line 28
    invoke-interface {v6}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlaybackState()I

    move-result v6

    const/4 v13, 0x3

    if-eq v6, v11, :cond_7

    iget-object v6, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v6}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlaybackState()I

    move-result v6

    if-ne v6, v13, :cond_f

    :cond_7
    iget-object v6, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_f

    if-eqz v0, :cond_d

    .line 45
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-direct {p0, v2}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->GetDownloadForId(Ljava/lang/String;)Lcom/google/android/exoplr2avp/offline/Download;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 54
    iget v6, v2, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    .line 57
    iget v6, v2, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    if-eqz v6, :cond_a

    if-eq v6, v11, :cond_9

    if-eq v6, v14, :cond_a

    if-eq v6, v13, :cond_a

    const/4 v13, 0x4

    if-eq v6, v13, :cond_9

    const/4 v13, 0x5

    if-eq v6, v13, :cond_9

    const/4 v13, 0x7

    if-eq v6, v13, :cond_8

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "OpenVideoFromFileInternal: Unknown download state : "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 108
    :cond_8
    iget v2, v2, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    .line 117
    iget-object v2, v7, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    move v6, v0

    move-object v13, v4

    const/4 v0, 0x0

    goto :goto_7

    .line 129
    :cond_9
    iget v0, v2, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    goto :goto_5

    .line 141
    :cond_a
    iget-object v3, v2, Lcom/google/android/exoplr2avp/offline/Download;->request:Lcom/google/android/exoplr2avp/offline/DownloadRequest;

    if-eqz v3, :cond_b

    iget-object v4, v3, Lcom/google/android/exoplr2avp/offline/DownloadRequest;->streamKeys:Ljava/util/List;

    .line 143
    :cond_b
    iget v3, v2, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    iget-object v2, v2, Lcom/google/android/exoplr2avp/offline/Download;->request:Lcom/google/android/exoplr2avp/offline/DownloadRequest;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/offline/DownloadRequest;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_6

    :cond_c
    :goto_5
    move-object v13, v4

    const/4 v0, 0x1

    const/4 v6, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    move v6, v0

    move-object v13, v4

    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_11

    .line 263
    iget-object v0, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0, v8}, Lcom/google/android/exoplr2avp/ExoPlayer;->setPlayWhenReady(Z)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object v4, v5

    move v5, v6

    move-object v6, v13

    .line 265
    invoke-direct/range {v0 .. v6}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->BuildMediaSource(Ljava/lang/String;JLjava/lang/String;ZLjava/util/List;)Lcom/google/android/exoplr2avp/source/MediaSource;

    move-result-object v0

    iput-object v0, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_MediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    if-eqz v0, :cond_e

    .line 268
    iput-wide v9, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastAbsoluteTime:J

    .line 271
    iput v14, v7, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 272
    iget-object v1, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v1, v0, v11}, Lcom/google/android/exoplr2avp/ExoPlayer;->setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V

    .line 273
    iget-object v0, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->prepare()V

    const/4 v8, 0x1

    goto :goto_9

    .line 279
    :cond_e
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[AVProVideo] error failed to prepare"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 301
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OpenVideoFromFileInternal WILL RETURN FALSE: m_ExoPlayer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | m_ExoPlayer.getPlaybackState() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlaybackState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_8

    :cond_10
    const-string v1, "NULL"

    :goto_8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | m_bSurfaceTextureBound.get() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v7, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 305
    :cond_11
    :goto_9
    iget-object v0, v7, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v12}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return v8
.end method

.method public PauseDownloadOfMediaToCache(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->setStopReason(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public PlayerRenderUpdate()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->UpdateVideoMetadata()V

    .line 4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->clearVideoSurface()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 14
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface_ToBeReleased:Landroid/view/Surface;

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 22
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_2

    .line 24
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->clearVideoSurface()V

    .line 26
    :cond_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_3

    .line 28
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 29
    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 32
    :cond_3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_5

    .line 34
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    if-nez v0, :cond_4

    .line 36
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    .line 40
    :cond_4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Surface:Landroid/view/Surface;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v1, :cond_5

    .line 42
    invoke-interface {v1, v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->setVideoSurface(Landroid/view/Surface;)V

    .line 43
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bSurfaceTextureBound:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bUpdateSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 52
    :cond_5
    invoke-super {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->PlayerRenderUpdate()V

    .line 55
    invoke-direct {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->_IsPlaying()Z

    move-result v0

    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bIsPlaying:Z

    return-void
.end method

.method public PlayerRendererSetup()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/renderheads/AVPro/Video/Player_Base;->PlayerRendererSetup()V

    return-void
.end method

.method public RemoveMediaFromCache(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-nez v0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->CancelAndRemoveDownload(Ljava/lang/String;)V

    return-void
.end method

.method public ResumeDownloadOfMediaToCache(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bUltraBuild:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 10
    sget-object v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->s_DownloadManager:Lcom/google/android/exoplr2avp/offline/DownloadManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplr2avp/offline/DownloadManager;->setStopReason(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public SetAudioTrack(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTrackIndex"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 18
    :cond_1
    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    const/4 v3, 0x1

    invoke-direct {p0, v0, v3, v2}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->ClearTrackSelectionForRenderType(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;II)Z

    move-result v2

    const/4 v4, 0x0

    .line 19
    iput-object v4, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    const/4 v4, -0x1

    .line 20
    iput v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    if-ltz p1, :cond_5

    .line 22
    iget v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    if-lt p1, v4, :cond_2

    goto :goto_1

    .line 29
    :cond_2
    invoke-direct {p0, v0, v3, p1}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->SetTrackSelectionForRenderType(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;II)Z

    move-result v0

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    .line 35
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    .line 37
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    return v3

    :cond_5
    :goto_1
    return v1
.end method

.method public SetFocusEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {v0, p1, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->enableFocus(ZZ)V

    :cond_0
    return-void
.end method

.method public SetFocusProps(FF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offFocusLevel",
            "widthDegrees"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/twobigears/audio360/SpatDecoderQueue;->setFocusProperties(FF)V

    :cond_0
    return-void
.end method

.method public SetFocusRotation(FFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/twobigears/audio360/TBQuat;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/twobigears/audio360/TBQuat;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->setFocusOrientationQuat(Lcom/twobigears/audio360/TBQuat;)V

    :cond_0
    return-void
.end method

.method public SetHeadRotation(FFFF)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/twobigears/audio360/TBQuat;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/twobigears/audio360/TBQuat;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/AudioEngine;->setListenerRotation(Lcom/twobigears/audio360/TBQuat;)V

    :cond_0
    return-void
.end method

.method public SetLooping(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bLooping"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bLooping:Z

    .line 3
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->UpdateLooping()V

    goto :goto_0

    .line 10
    :cond_0
    sget p1, Lcom/renderheads/AVPro/Video/Player_Base;->VideoCommand_SetLooping:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/renderheads/AVPro/Video/Player_Base;->AddVideoCommandInt(II)V

    :goto_0
    return-void
.end method

.method public SetPositionTrackingEnabled(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lcom/twobigears/audio360/TBVector;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/twobigears/audio360/TBVector;-><init>(FFF)V

    invoke-virtual {v0, p1, v1}, Lcom/twobigears/audio360/AudioEngine;->enablePositionalTracking(ZLcom/twobigears/audio360/TBVector;)Lcom/twobigears/audio360/EngineError;

    :cond_0
    return-void
.end method

.method public SetPreferredVideoResolutionAndBitrate(III)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "iNewMaxWidth",
            "iNewMaxHeight",
            "iNewPeakBitrateBps"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxWidth:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxHeight:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iPeakBitrateBps:I

    if-eq p3, v0, :cond_3

    .line 5
    :cond_0
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxWidth:I

    .line 6
    iput p2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxHeight:I

    .line 7
    iput p3, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iPeakBitrateBps:I

    .line 12
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_VideoStreamLimiter:Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;

    .line 13
    iget v2, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxWidth:I

    if-ne v2, p1, :cond_2

    iget v2, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxHeight:I

    if-ne v2, p2, :cond_2

    iget v2, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxBitrate:I

    if-eq v2, p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_bDirty:Z

    .line 15
    iput p1, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxWidth:I

    .line 16
    iput p2, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxHeight:I

    .line 17
    iput p3, v0, Lcom/renderheads/AVPro/Video/LimitedAdaptiveTrackSelection$VideoStreamLimiter;->m_iMaxBitrate:I

    :cond_3
    return v1
.end method

.method public SetTextTrack(I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTrackIndex"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 19
    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    const/4 v3, 0x3

    invoke-direct {p0, v0, v3, v2}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->ClearTrackSelectionForRenderType(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;II)Z

    move-result v2

    const/4 v4, -0x1

    .line 20
    iput v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    if-ltz p1, :cond_5

    .line 22
    iget v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    if-lt p1, v4, :cond_2

    goto :goto_1

    .line 29
    :cond_2
    invoke-direct {p0, v0, v3, p1}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->SetTrackSelectionForRenderType(Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;II)Z

    move-result v0

    if-nez v2, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    .line 35
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    .line 37
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_1
    return v1
.end method

.method public SetVideoTrack(I)Z
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iTrackIndex"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    if-ne p1, v0, :cond_0

    goto/16 :goto_3

    :cond_0
    if-ltz p1, :cond_c

    .line 7
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    if-lt p1, v0, :cond_1

    goto/16 :goto_3

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 34
    :cond_2
    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxWidth:I

    const/4 v3, 0x1

    if-lez v2, :cond_3

    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxHeight:I

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 37
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getRendererCount()I

    move-result v5

    if-ge v4, v5, :cond_c

    .line 39
    iget-object v5, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v5, v4}, Lcom/google/android/exoplr2avp/ExoPlayer;->getRendererType(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 41
    invoke-virtual {v0, v4}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackGroups(I)Lcom/google/android/exoplr2avp/source/TrackGroupArray;

    move-result-object v5

    .line 42
    iget v6, v5, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->length:I

    if-ge p1, v6, :cond_b

    .line 44
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const v7, 0x7fffffff

    .line 49
    invoke-virtual {v5, p1}, Lcom/google/android/exoplr2avp/source/TrackGroupArray;->get(I)Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v5

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 50
    :goto_2
    iget v10, v5, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v1, v10, :cond_9

    .line 52
    invoke-virtual {v5, v1}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v10

    .line 54
    iget v11, v10, Lcom/google/android/exoplr2avp/Format;->width:I

    if-lez v11, :cond_8

    iget v12, v10, Lcom/google/android/exoplr2avp/Format;->height:I

    if-lez v12, :cond_8

    if-nez v2, :cond_4

    .line 56
    iget v13, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iPeakBitrateBps:I

    if-gtz v13, :cond_5

    :cond_4
    mul-int v11, v11, v12

    if-ge v11, v7, :cond_5

    move v9, v1

    move v7, v11

    .line 66
    :cond_5
    invoke-virtual {v0, v4, p1, v1}, Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;->getTrackSupport(III)I

    move-result v11

    const/4 v12, 0x4

    if-ne v11, v12, :cond_8

    if-eqz v2, :cond_6

    iget v11, v10, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v12, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxWidth:I

    if-gt v11, v12, :cond_8

    iget v11, v10, Lcom/google/android/exoplr2avp/Format;->height:I

    iget v12, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxHeight:I

    if-gt v11, v12, :cond_8

    :cond_6
    iget v11, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iPeakBitrateBps:I

    if-lez v11, :cond_7

    iget v10, v10, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    if-gt v10, v11, :cond_8

    .line 70
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    if-le v9, v8, :cond_a

    .line 76
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 78
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_a
    new-instance v0, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    invoke-direct {v0, v5, v6}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;Ljava/util/List;)V

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 90
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    .line 92
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    return v3

    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_3
    return v1
.end method

.method public UpdateAPITextureTimestampNS()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastPresentationTimeNS:J

    return-wide v0
.end method

.method public UpdateAudioVolumes()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    iget-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioMuted:Z

    if-nez v2, :cond_0

    .line 7
    iget v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioVolume:F

    .line 9
    :cond_0
    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setVolume(F)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_RenderersFactory:Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;

    if-eqz v0, :cond_2

    .line 14
    iget v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_AudioPan:F

    invoke-virtual {v0, v1}, Lcom/renderheads/AVPro/Video/RenderersFactory_CustomDefault;->setAudioPan(F)V

    :cond_2
    return-void
.end method

.method public UpdateLooping()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bLooping:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setRepeatMode(I)V

    :cond_1
    return-void
.end method

.method public UpdateVideoMetadata()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget v1, v0, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    .line 10
    iget v1, v0, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceVideoBitrate:I

    .line 11
    iget-object v1, v0, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceVideoId:Ljava/lang/String;

    .line 14
    iget v0, v0, Lcom/google/android/exoplr2avp/Format;->stereoMode:I

    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceVideoStereoMode:I

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getAudioFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    iget v1, v0, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceAudioBitrate:I

    .line 26
    iget-object v0, v0, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceAudioId:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public _pause()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_pause called : m_VideoState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 10
    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x7

    .line 11
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 12
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->suspend()Lcom/twobigears/audio360/EngineError;

    :cond_1
    return-void
.end method

.method public _play()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_0

    const-string v0, "AVProVideo"

    const-string v1, "_play called"

    .line 3
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_2

    .line 8
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 10
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 13
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 14
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_MediaSource:Lcom/google/android/exoplr2avp/source/MediaSource;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->setMediaSource(Lcom/google/android/exoplr2avp/source/MediaSource;Z)V

    .line 15
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->prepare()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    .line 19
    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 23
    :goto_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setPlayWhenReady(Z)V

    .line 24
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_2

    .line 26
    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->start()Lcom/twobigears/audio360/EngineError;

    :cond_2
    return-void
.end method

.method public _seek(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->reset()V

    .line 4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 13
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    const-wide/16 v3, 0x0

    if-le v2, v1, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 16
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v3

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    sget-object v1, Lcom/google/android/exoplr2avp/SeekParameters;->EXACT:Lcom/google/android/exoplr2avp/SeekParameters;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    .line 27
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    add-long/2addr p1, v3

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayer;->seekTo(J)V

    :cond_3
    return-void
.end method

.method public _seekFast(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeMs"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->reset()V

    .line 4
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_3

    .line 12
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 13
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    const-wide/16 v3, 0x0

    if-le v2, v1, :cond_2

    .line 14
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline;->getPeriodCount()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 16
    new-instance v1, Lcom/google/android/exoplr2avp/Timeline$Period;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/Timeline$Period;-><init>()V

    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/google/android/exoplr2avp/Timeline;->getPeriod(ILcom/google/android/exoplr2avp/Timeline$Period;)Lcom/google/android/exoplr2avp/Timeline$Period;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 18
    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v3

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    sget-object v1, Lcom/google/android/exoplr2avp/SeekParameters;->CLOSEST_SYNC:Lcom/google/android/exoplr2avp/SeekParameters;

    invoke-interface {v0, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setSeekParameters(Lcom/google/android/exoplr2avp/SeekParameters;)V

    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    .line 27
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    add-long/2addr p1, v3

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplr2avp/ExoPlayer;->seekTo(J)V

    :cond_3
    return-void
.end method

.method public _setPlaybackRate(F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fRate"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->IsPaused()Z

    move-result p1

    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bPlaybackRateSetPaused:Z

    if-nez p1, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->_pause()V

    .line 12
    :cond_0
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    goto :goto_0

    .line 18
    :cond_1
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->IsPlaying()Z

    iget v2, v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->pitch:F

    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    .line 22
    iget-boolean v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bPlaybackRateSetPaused:Z

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->IsPlaying()Z

    move-result v2

    if-nez v2, :cond_3

    iget v2, v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->pitch:F

    cmpg-float v2, v2, v1

    if-lez v2, :cond_2

    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_3

    .line 26
    :cond_2
    invoke-virtual {p0}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->_play()V

    const/4 v1, 0x0

    .line 27
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bPlaybackRateSetPaused:Z

    .line 30
    :cond_3
    iget-object v1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    new-instance v2, Lcom/google/android/exoplr2avp/PlaybackParameters;

    iget v0, v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->pitch:F

    invoke-direct {v2, p1, v0}, Lcom/google/android/exoplr2avp/PlaybackParameters;-><init>(FF)V

    invoke-interface {v1, v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    .line 32
    :cond_4
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 40
    :goto_0
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fPlaybackRate:F

    :cond_5
    return-void
.end method

.method public _stop()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz v0, :cond_4

    .line 3
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    .line 6
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->setEndOfStream(Z)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_Sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->reset()V

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_AudioEngine:Lcom/twobigears/audio360/AudioEngine;

    invoke-virtual {v0}, Lcom/twobigears/audio360/AudioEngine;->suspend()Lcom/twobigears/audio360/EngineError;

    .line 23
    :cond_2
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    .line 26
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/ExoPlayer;->stop()V

    .line 33
    :cond_3
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    :cond_4
    return-void
.end method

.method public executeKeyRequest(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$KeyRequest;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uuid",
            "keyRequest"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public executeProvisionRequest(Ljava/util/UUID;Lcom/google/android/exoplr2avp/drm/ExoMediaDrm$ProvisionRequest;)[B
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "uuid",
            "provisionRequest"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioAttributesChanged(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onAudioAttributesChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    return-void
.end method

.method public synthetic onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onAudioDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onAudioDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioPositionAdvancing(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/Player$Listener;I)V

    return-void
.end method

.method public synthetic onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioSessionIdChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioSinkError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onAudioUnderrun(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAudioUnderrun(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/Player$Commands;)V

    return-void
.end method

.method public synthetic onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onAvailableCommandsChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$Commands;)V

    return-void
.end method

.method public synthetic onBandwidthEstimate(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onBandwidthEstimate(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJJ)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/text/CueGroup;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/util/List;)V

    return-void
.end method

.method public synthetic onCues(Lcom/google/android/exoplr2avp/text/CueGroup;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onCues(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/text/CueGroup;)V

    return-void
.end method

.method public onCues(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplr2avp/text/Cue;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    monitor-enter v0

    .line 3
    :try_start_0
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TextCues:Ljava/util/List;

    .line 4
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextCuesDirty_Internal:Ljava/lang/Boolean;

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic onDecoderDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V

    return-void
.end method

.method public synthetic onDecoderInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDecoderInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ILcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplr2avp/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceInfoChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDeviceInfoChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/DeviceInfo;)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/Player$Listener;IZ)V

    return-void
.end method

.method public synthetic onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDeviceVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IZ)V

    return-void
.end method

.method public onDownloadChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Lcom/google/android/exoplr2avp/offline/Download;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downloadManager",
            "download",
            "finalException"
        }
    .end annotation

    .line 1
    iget p1, p2, Lcom/google/android/exoplr2avp/offline/Download;->state:I

    invoke-virtual {p2}, Lcom/google/android/exoplr2avp/offline/Download;->getBytesDownloaded()J

    return-void
.end method

.method public onDownloadRemoved(Lcom/google/android/exoplr2avp/offline/DownloadManager;Lcom/google/android/exoplr2avp/offline/Download;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadManager",
            "download"
        }
    .end annotation

    .line 1
    iget p1, p2, Lcom/google/android/exoplr2avp/offline/Download;->stopReason:I

    return-void
.end method

.method public onDownloadsPausedChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadManager",
            "downloadsPaused"
        }
    .end annotation

    return-void
.end method

.method public onDownstreamFormatChanged(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "mediaLoadData"
        }
    .end annotation

    return-void
.end method

.method public synthetic onDownstreamFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDownstreamFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onDrmKeysLoaded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmKeysLoaded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRemoved(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRemoved(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmKeysRestored(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmKeysRestored(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionAcquired(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onDrmSessionManagerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionManagerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onDrmSessionReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onDrmSessionReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public onDroppedFrames(IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "count",
            "elapsedMs"
        }
    .end annotation

    return-void
.end method

.method public onDroppedVideoFrames(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventTime",
            "droppedFrames",
            "elapsedMs"
        }
    .end annotation

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/Player$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onEvents(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/Player$Events;)V

    return-void
.end method

.method public synthetic onEvents(Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onEvents(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/Player;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$Events;)V

    return-void
.end method

.method public onIdle(Lcom/google/android/exoplr2avp/offline/DownloadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadManager"
        }
    .end annotation

    return-void
.end method

.method public onInitialized(Lcom/google/android/exoplr2avp/offline/DownloadManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadManager"
        }
    .end annotation

    return-void
.end method

.method public synthetic onIsLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onIsLoadingChanged(Lcom/google/android/exoplr2avp/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onIsPlayingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onIsPlayingChanged(Lcom/google/android/exoplr2avp/Player$Listener;Z)V

    return-void
.end method

.method public onLoadCanceled(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "loadEventInfo",
            "mediaLoadData"
        }
    .end annotation

    const-string p1, "AVProVideo"

    const-string p2, "onLoadCanceled called"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onLoadCanceled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadCanceled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public onLoadCompleted(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "loadEventInfo",
            "mediaLoadData"
        }
    .end annotation

    return-void
.end method

.method public synthetic onLoadCompleted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadCompleted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public onLoadError(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "loadEventInfo",
            "mediaLoadData",
            "error",
            "wasCanceled"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLoadError (param version) : error = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AVProVideo"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic onLoadError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;Ljava/io/IOException;Z)V

    return-void
.end method

.method public onLoadStarted(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "loadEventInfo",
            "mediaLoadData"
        }
    .end annotation

    return-void
.end method

.method public synthetic onLoadStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/LoadEventInfo;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onLoadingChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onLoadingChanged(Lcom/google/android/exoplr2avp/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/Player$Listener;J)V

    return-void
.end method

.method public synthetic onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMaxSeekToPreviousPositionChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplr2avp/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaItemTransition(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMediaItemTransition(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaItem;I)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMediaMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onMetadata(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onMetadata(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/metadata/Metadata;)V

    return-void
.end method

.method public onMetadata(Lcom/google/android/exoplr2avp/metadata/Metadata;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "metadata"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/metadata/Metadata;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 3
    invoke-virtual {p1, v1}, Lcom/google/android/exoplr2avp/metadata/Metadata;->get(I)Lcom/google/android/exoplr2avp/metadata/Metadata$Entry;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lcom/google/android/exoplr2avp/metadata/id3/TextInformationFrame;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 6
    check-cast v2, Lcom/google/android/exoplr2avp/metadata/id3/TextInformationFrame;

    new-array v3, v4, [Ljava/lang/Object;

    .line 7
    iget-object v4, v2, Lcom/google/android/exoplr2avp/metadata/id3/TextInformationFrame;->id:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v2, v2, Lcom/google/android/exoplr2avp/metadata/id3/TextInformationFrame;->value:Ljava/lang/String;

    aput-object v2, v3, v5

    const-string v2, "%s: value=%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .line 9
    :cond_0
    instance-of v3, v2, Lcom/google/android/exoplr2avp/metadata/id3/UrlLinkFrame;

    if-eqz v3, :cond_1

    .line 11
    check-cast v2, Lcom/google/android/exoplr2avp/metadata/id3/UrlLinkFrame;

    new-array v3, v4, [Ljava/lang/Object;

    .line 12
    iget-object v4, v2, Lcom/google/android/exoplr2avp/metadata/id3/UrlLinkFrame;->id:Ljava/lang/String;

    aput-object v4, v3, v0

    iget-object v2, v2, Lcom/google/android/exoplr2avp/metadata/id3/UrlLinkFrame;->url:Ljava/lang/String;

    aput-object v2, v3, v5

    const-string v2, "%s: url=%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .line 14
    :cond_1
    instance-of v3, v2, Lcom/google/android/exoplr2avp/metadata/id3/PrivFrame;

    const/4 v6, 0x3

    if-eqz v3, :cond_2

    .line 16
    check-cast v2, Lcom/google/android/exoplr2avp/metadata/id3/PrivFrame;

    new-array v3, v6, [Ljava/lang/Object;

    .line 17
    iget-object v6, v2, Lcom/google/android/exoplr2avp/metadata/id3/PrivFrame;->id:Ljava/lang/String;

    aput-object v6, v3, v0

    iget-object v6, v2, Lcom/google/android/exoplr2avp/metadata/id3/PrivFrame;->owner:Ljava/lang/String;

    aput-object v6, v3, v5

    iget-object v2, v2, Lcom/google/android/exoplr2avp/metadata/id3/PrivFrame;->privateData:[B

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    const-string v2, "%s: owner=%s | dataLength=%d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_1

    .line 19
    :cond_2
    instance-of v3, v2, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;

    if-eqz v3, :cond_3

    .line 21
    check-cast v2, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    .line 22
    iget-object v7, v2, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;->id:Ljava/lang/String;

    aput-object v7, v3, v0

    iget-object v7, v2, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;->mimeType:Ljava/lang/String;

    aput-object v7, v3, v5

    iget-object v5, v2, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;->filename:Ljava/lang/String;

    aput-object v5, v3, v4

    iget-object v2, v2, Lcom/google/android/exoplr2avp/metadata/id3/GeobFrame;->description:Ljava/lang/String;

    aput-object v2, v3, v6

    const-string v2, "%s: mimeType=%s, filename=%s, description=%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 24
    :cond_3
    instance-of v3, v2, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;

    if-eqz v3, :cond_4

    .line 26
    check-cast v2, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;

    new-array v3, v6, [Ljava/lang/Object;

    .line 27
    iget-object v6, v2, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;->id:Ljava/lang/String;

    aput-object v6, v3, v0

    iget-object v6, v2, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;->mimeType:Ljava/lang/String;

    aput-object v6, v3, v5

    iget-object v2, v2, Lcom/google/android/exoplr2avp/metadata/id3/ApicFrame;->description:Ljava/lang/String;

    aput-object v2, v3, v4

    const-string v2, "%s: mimeType=%s, description=%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 29
    :cond_4
    instance-of v3, v2, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;

    if-eqz v3, :cond_5

    .line 31
    check-cast v2, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;

    new-array v3, v6, [Ljava/lang/Object;

    .line 32
    iget-object v6, v2, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;->id:Ljava/lang/String;

    aput-object v6, v3, v0

    iget-object v6, v2, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;->language:Ljava/lang/String;

    aput-object v6, v3, v5

    iget-object v2, v2, Lcom/google/android/exoplr2avp/metadata/id3/CommentFrame;->description:Ljava/lang/String;

    aput-object v2, v3, v4

    const-string v2, "%s: language=%s, description=%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 34
    :cond_5
    instance-of v3, v2, Lcom/google/android/exoplr2avp/metadata/id3/Id3Frame;

    if-eqz v3, :cond_6

    .line 36
    check-cast v2, Lcom/google/android/exoplr2avp/metadata/id3/Id3Frame;

    new-array v3, v5, [Ljava/lang/Object;

    .line 37
    iget-object v2, v2, Lcom/google/android/exoplr2avp/metadata/id3/Id3Frame;->id:Ljava/lang/String;

    aput-object v2, v3, v0

    const-string v2, "%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_1

    .line 39
    :cond_6
    instance-of v3, v2, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;

    if-eqz v3, :cond_7

    .line 41
    check-cast v2, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;

    new-array v3, v6, [Ljava/lang/Object;

    .line 42
    iget-object v6, v2, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;->schemeIdUri:Ljava/lang/String;

    aput-object v6, v3, v0

    iget-wide v6, v2, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v3, v5

    iget-object v2, v2, Lcom/google/android/exoplr2avp/metadata/emsg/EventMessage;->value:Ljava/lang/String;

    aput-object v2, v3, v4

    const-string v2, "EMSG: scheme=%s, id=%d, value=%s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlayWhenReadyChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlayWhenReadyChanged(Lcom/google/android/exoplr2avp/Player$Listener;ZI)V

    return-void
.end method

.method public onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playbackParameters"
        }
    .end annotation

    return-void
.end method

.method public synthetic onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_13

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_10

    const/4 v4, 0x3

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_1

    .line 174
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AVProVideo video state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 478
    :cond_0
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    goto/16 :goto_4

    .line 177
    :cond_1
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p1, :cond_2

    .line 179
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AVProVideo video state: ended"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 183
    :cond_2
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {p1, v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->setPlayWhenReady(Z)V

    const/16 p1, 0x8

    .line 185
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 186
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    .line 187
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    goto/16 :goto_4

    .line 188
    :cond_3
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p1, :cond_4

    .line 190
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AVProVideo video state: ready | m_VideoState: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " | m_bIsBuffering: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 194
    :cond_4
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    .line 197
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsSeeking:Z

    .line 200
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    monitor-enter p1

    .line 202
    :try_start_0
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_OpenCloseCommandQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 203
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v2, :cond_5

    .line 212
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p1, :cond_15

    .line 214
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AVProVideo video state: has pending file path"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 219
    :cond_5
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    if-lt p1, v3, :cond_15

    if-ne p1, v3, :cond_6

    goto :goto_0

    :cond_6
    move v4, p1

    .line 221
    :goto_0
    iput v4, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 223
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getCurrentTimeline()Lcom/google/android/exoplr2avp/Timeline;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->UpdateLiveFlagForTimeline(Lcom/google/android/exoplr2avp/Timeline;)V

    .line 225
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getVideoFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object p1

    .line 226
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getAudioFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x6

    if-eqz p1, :cond_e

    .line 231
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    .line 232
    iget v5, p1, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    iput v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    .line 233
    iget v6, p1, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    iput v6, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceVideoBitrate:I

    .line 234
    iget-object v6, p1, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    iput-object v6, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceVideoId:Ljava/lang/String;

    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-lez v6, :cond_7

    .line 238
    iput v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_FrameRate:F

    :cond_7
    if-eqz v2, :cond_8

    .line 243
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    .line 244
    iget v5, v2, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    iput v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceAudioBitrate:I

    .line 245
    iget-object v2, v2, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    iput-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceAudioId:Ljava/lang/String;

    .line 248
    :cond_8
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getDuration()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    .line 253
    iget v2, p1, Lcom/google/android/exoplr2avp/Format;->rotationDegrees:I

    .line 254
    iget v2, p1, Lcom/google/android/exoplr2avp/Format;->rotationDegrees:I

    const/16 v5, 0x5a

    if-eq v2, v5, :cond_9

    const/16 v5, 0x10e

    if-ne v2, v5, :cond_a

    :cond_9
    const/4 v1, 0x1

    :cond_a
    if-eqz v1, :cond_c

    .line 257
    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->height:I

    .line 258
    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->width:I

    .line 260
    iget v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    if-lez v2, :cond_c

    iget v5, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    if-lez v5, :cond_c

    if-ne v1, v2, :cond_b

    if-eq p1, v5, :cond_c

    :cond_b
    iget-object v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_RenderSurfaceCreated:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 262
    monitor-enter p0

    .line 264
    :try_start_1
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    .line 265
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    .line 266
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 267
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 268
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 277
    :cond_c
    :goto_1
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_2

    :cond_d
    const/4 v3, 0x6

    :goto_2
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 278
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :cond_e
    if-eqz v2, :cond_15

    .line 283
    iget p1, v2, Lcom/google/android/exoplr2avp/Format;->frameRate:F

    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_fSourceVideoFrameRate:F

    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DisplayRate_FrameRate:F

    .line 284
    iget p1, v2, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceAudioBitrate:I

    .line 285
    iget-object p1, v2, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceAudioId:Ljava/lang/String;

    .line 287
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    .line 288
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasAudio:Z

    .line 290
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    .line 291
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    .line 293
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getDuration()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    .line 295
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    :cond_f
    const/4 v3, 0x6

    :goto_3
    iput v3, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 296
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_AcceptCommands:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 297
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 298
    :cond_10
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p1, :cond_11

    .line 300
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "AVProVideo video state: buffering"

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 303
    :cond_11
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    if-eq p1, v3, :cond_12

    .line 305
    iput v2, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    .line 307
    :cond_12
    iput-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    goto :goto_4

    .line 308
    :cond_13
    iget-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz p1, :cond_14

    .line 310
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "AVProVideo video state: idle"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 313
    :cond_14
    iput-boolean v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    .line 318
    iput v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    :cond_15
    :goto_4
    return-void
.end method

.method public synthetic onPlaybackStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaybackStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaybackSuppressionReasonChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onPlayerError(Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVProVideo error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/PlaybackException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2
    iget p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    if-lez p1, :cond_0

    const/4 v0, 0x5

    if-ge p1, v0, :cond_0

    const/16 p1, 0x64

    .line 4
    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iLastError:I

    :cond_0
    return-void
.end method

.method public synthetic onPlayerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerErrorChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerErrorChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/PlaybackException;)V

    return-void
.end method

.method public synthetic onPlayerReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;ZI)V

    return-void
.end method

.method public synthetic onPlayerStateChanged(ZI)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlayerStateChanged(Lcom/google/android/exoplr2avp/Player$Listener;ZI)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPlaylistMetadataChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/MediaMetadata;)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player$Listener;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onPositionDiscontinuity(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Player$PositionInfo;Lcom/google/android/exoplr2avp/Player$PositionInfo;I)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic onRenderedFirstFrame(Ljava/lang/Object;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onRenderedFirstFrame(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Ljava/lang/Object;J)V

    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "repeatMode"
        }
    .end annotation

    return-void
.end method

.method public synthetic onRepeatModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onRepeatModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public onRequirementsStateChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Lcom/google/android/exoplr2avp/scheduler/Requirements;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "downloadManager",
            "requirements",
            "notMetRequirements"
        }
    .end annotation

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekBackIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(J)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/Player$Listener;J)V

    return-void
.end method

.method public synthetic onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekForwardIncrementChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;J)V

    return-void
.end method

.method public synthetic onSeekProcessed()V
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplr2avp/Player$Listener;)V

    return-void
.end method

.method public synthetic onSeekProcessed(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekProcessed(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onSeekStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSeekStarted(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;)V

    return-void
.end method

.method public synthetic onShuffleModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onShuffleModeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Z)V

    return-void
.end method

.method public synthetic onSkipSilenceEnabledChanged(Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSkipSilenceEnabledChanged(Lcom/google/android/exoplr2avp/Player$Listener;Z)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(II)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/Player$Listener;II)V

    return-void
.end method

.method public synthetic onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onSurfaceSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;II)V

    return-void
.end method

.method public onTimelineChanged(Lcom/google/android/exoplr2avp/Timeline;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "timeline",
            "reason"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->UpdateLiveFlagForTimeline(Lcom/google/android/exoplr2avp/Timeline;)V

    .line 6
    iget-object p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getDuration()J

    move-result-wide p1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 12
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    .line 13
    iget-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_DurationMs:J

    :cond_0
    return-void
.end method

.method public synthetic onTimelineChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTimelineChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;I)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public synthetic onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onTrackSelectionParametersChanged(Lcom/google/android/exoplr2avp/Player$Listener;Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    return-void
.end method

.method public onTracksChanged(Lcom/google/android/exoplr2avp/Tracks;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tracks"
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 1
    iput-wide v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_TextureTimeStamp:J

    .line 2
    iput-wide v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastPresentationTimeNS:J

    .line 4
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelector:Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/exoplr2avp/trackselection/DefaultTrackSelector;->getCurrentMappedTrackInfo()Lcom/google/android/exoplr2avp/trackselection/MappingTrackSelector$MappedTrackInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 7
    iput v3, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 8
    iput v3, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    .line 9
    iput v3, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    return-void

    .line 24
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/exoplr2avp/Tracks;->getGroups()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 25
    :goto_1
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ge v4, v8, :cond_19

    .line 27
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/exoplr2avp/Tracks$Group;

    if-eqz v8, :cond_2

    .line 28
    invoke-virtual {v1, v4}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/exoplr2avp/Tracks$Group;

    invoke-virtual {v10}, Lcom/google/android/exoplr2avp/Tracks$Group;->getMediaTrackGroup()Lcom/google/android/exoplr2avp/source/TrackGroup;

    move-result-object v10

    goto :goto_2

    :cond_2
    const/4 v10, 0x0

    :goto_2
    if-eqz v10, :cond_18

    .line 31
    invoke-virtual {v8}, Lcom/google/android/exoplr2avp/Tracks$Group;->getType()I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v9, :cond_14

    const/4 v13, 0x2

    if-eq v11, v13, :cond_7

    const/4 v13, 0x3

    if-eq v11, v13, :cond_3

    goto/16 :goto_b

    .line 145
    :cond_3
    invoke-virtual {v8}, Lcom/google/android/exoplr2avp/Tracks$Group;->isSelected()Z

    move-result v11

    const/4 v13, 0x0

    .line 148
    :goto_3
    iget v14, v10, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v13, v14, :cond_5

    .line 154
    invoke-virtual {v8, v13}, Lcom/google/android/exoplr2avp/Tracks$Group;->isTrackSupported(I)Z

    move-result v14

    if-eqz v14, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_18

    .line 163
    iget v8, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    if-ne v8, v12, :cond_6

    if-eqz v11, :cond_6

    .line 166
    iput v7, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    .line 167
    iput v7, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultTextTrackIndex:I

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b

    .line 168
    :cond_7
    invoke-virtual {v8}, Lcom/google/android/exoplr2avp/Tracks$Group;->isSelected()Z

    move-result v11

    const/4 v13, 0x0

    .line 170
    :goto_5
    iget v14, v10, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v13, v14, :cond_9

    .line 174
    invoke-virtual {v8, v13}, Lcom/google/android/exoplr2avp/Tracks$Group;->isTrackSupported(I)Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v13, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_9
    const/4 v13, 0x0

    :goto_6
    if-eqz v13, :cond_b

    .line 183
    iget v13, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    if-ne v13, v12, :cond_a

    if-eqz v11, :cond_a

    .line 185
    iput v5, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    .line 186
    iput v5, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultVideoTrackIndex:I

    :cond_a
    add-int/lit8 v5, v5, 0x1

    :cond_b
    if-eqz v11, :cond_18

    .line 194
    iget v11, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxWidth:I

    if-lez v11, :cond_c

    iget v11, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxHeight:I

    if-lez v11, :cond_c

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    :goto_7
    if-nez v9, :cond_d

    .line 195
    iget v11, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iPeakBitrateBps:I

    if-lez v11, :cond_18

    :cond_d
    iget v11, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultVideoTrackIndex:I

    if-le v11, v12, :cond_18

    .line 197
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const v13, 0x7fffffff

    const/4 v14, 0x0

    const/4 v15, -0x1

    .line 202
    :goto_8
    iget v2, v10, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v14, v2, :cond_12

    .line 204
    invoke-virtual {v10, v14}, Lcom/google/android/exoplr2avp/source/TrackGroup;->getFormat(I)Lcom/google/android/exoplr2avp/Format;

    move-result-object v2

    .line 206
    iget v3, v2, Lcom/google/android/exoplr2avp/Format;->width:I

    if-lez v3, :cond_11

    iget v12, v2, Lcom/google/android/exoplr2avp/Format;->height:I

    if-lez v12, :cond_11

    mul-int v3, v3, v12

    if-ge v3, v13, :cond_e

    move v13, v3

    move v15, v14

    .line 215
    :cond_e
    invoke-virtual {v8, v14}, Lcom/google/android/exoplr2avp/Tracks$Group;->isTrackSupported(I)Z

    move-result v3

    if-eqz v3, :cond_11

    if-eqz v9, :cond_f

    iget v3, v2, Lcom/google/android/exoplr2avp/Format;->width:I

    iget v12, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxWidth:I

    if-gt v3, v12, :cond_11

    iget v3, v2, Lcom/google/android/exoplr2avp/Format;->height:I

    iget v12, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iMaxHeight:I

    if-gt v3, v12, :cond_11

    :cond_f
    iget v3, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_iPeakBitrateBps:I

    if-lez v3, :cond_10

    iget v2, v2, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    if-gt v2, v3, :cond_11

    .line 219
    :cond_10
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const/4 v12, -0x1

    goto :goto_8

    :cond_12
    const/4 v2, -0x1

    if-le v15, v2, :cond_13

    .line 225
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_13

    .line 227
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_13
    new-instance v2, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    invoke-direct {v2, v10, v11}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;-><init>(Lcom/google/android/exoplr2avp/source/TrackGroup;Ljava/util/List;)V

    iput-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    .line 239
    iget-object v2, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v2}, Lcom/google/android/exoplr2avp/ExoPlayer;->getTrackSelectionParameters()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;->buildUpon()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v3

    iget-object v8, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_TrackSelectionOverride:Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;

    invoke-virtual {v3, v8}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->setOverrideForType(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionOverride;)Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters$Builder;->build()Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/exoplr2avp/ExoPlayer;->setTrackSelectionParameters(Lcom/google/android/exoplr2avp/trackselection/TrackSelectionParameters;)V

    goto :goto_b

    .line 240
    :cond_14
    invoke-virtual {v8}, Lcom/google/android/exoplr2avp/Tracks$Group;->isSelected()Z

    move-result v2

    const/4 v3, 0x0

    .line 244
    :goto_9
    iget v11, v10, Lcom/google/android/exoplr2avp/source/TrackGroup;->length:I

    if-ge v3, v11, :cond_16

    .line 247
    invoke-virtual {v8, v3}, Lcom/google/android/exoplr2avp/Tracks$Group;->isTrackSupported(I)Z

    move-result v11

    if-eqz v11, :cond_15

    goto :goto_a

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_16
    const/4 v9, 0x0

    :goto_a
    if-eqz v9, :cond_18

    .line 256
    iget v3, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    const/4 v8, -0x1

    if-ne v3, v8, :cond_17

    if-eqz v2, :cond_17

    .line 259
    iput v6, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    .line 260
    iput v6, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iDefaultAudioTrackIndex:I

    :cond_17
    add-int/lit8 v6, v6, 0x1

    :cond_18
    :goto_b
    add-int/lit8 v4, v4, 0x1

    const/4 v3, 0x0

    goto/16 :goto_1

    .line 564
    :cond_19
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_ExoPlayer:Lcom/google/android/exoplr2avp/ExoPlayer;

    invoke-interface {v1}, Lcom/google/android/exoplr2avp/ExoPlayer;->getAudioFormat()Lcom/google/android/exoplr2avp/Format;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 567
    iget v2, v1, Lcom/google/android/exoplr2avp/Format;->bitrate:I

    iput v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iSourceAudioBitrate:I

    .line 568
    iget-object v2, v1, Lcom/google/android/exoplr2avp/Format;->id:Ljava/lang/String;

    iput-object v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_SourceAudioId:Ljava/lang/String;

    .line 569
    iget v1, v1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    iput v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    .line 573
    :cond_1a
    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    .line 574
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideoTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    if-eq v2, v5, :cond_1b

    const/4 v2, 0x1

    goto :goto_c

    :cond_1b
    const/4 v2, 0x0

    :goto_c
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 577
    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 578
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bAudioTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    if-eq v2, v6, :cond_1c

    const/4 v2, 0x1

    goto :goto_d

    :cond_1c
    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 581
    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    .line 582
    iget-object v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bTextTracksDirty_Internal:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    if-eq v2, v7, :cond_1d

    const/4 v3, 0x1

    goto :goto_e

    :cond_1d
    const/4 v3, 0x0

    :goto_e
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 584
    iput v6, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    .line 585
    iput v5, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    .line 586
    iput v7, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    .line 589
    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberAudioTracks:I

    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrackIndex:I

    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentAudioTrack_NumChannels:I

    .line 592
    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberVideoTracks:I

    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentVideoTrackIndex:I

    .line 595
    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iNumberTextTracks:I

    iget v1, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentTextTrackIndex:I

    return-void
.end method

.method public synthetic onTracksChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onTracksChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Tracks;)V

    return-void
.end method

.method public onUpstreamDiscarded(ILcom/google/android/exoplr2avp/source/MediaSource$MediaPeriodId;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "windowIndex",
            "mediaPeriodId",
            "mediaLoadData"
        }
    .end annotation

    return-void
.end method

.method public synthetic onUpstreamDiscarded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onUpstreamDiscarded(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/source/MediaLoadData;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoCodecError(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoCodecError(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoDecoderInitialized(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Ljava/lang/String;JJ)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDecoderReleased(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoDecoderReleased(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onVideoDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoDisabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoDisabled(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic onVideoEnabled(Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoEnabled(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/decoder/DecoderCounters;)V

    return-void
.end method

.method public onVideoFrameAboutToBeRendered(JJLcom/google/android/exoplr2avp/Format;Landroid/media/MediaFormat;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "presentationTimeUs",
            "releaseTimeNs",
            "format",
            "mediaFormat"
        }
    .end annotation

    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    mul-float p1, p1, p2

    float-to-long p1, p1

    .line 1
    iput-wide p1, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_LastPresentationTimeNS:J

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;JI)V

    return-void
.end method

.method public synthetic onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoFrameProcessingOffset(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;JI)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/video/VideoRendererEventListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/video/VideoRendererEventListener;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "decoderReuseEvaluation"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/Format;->toString()Ljava/lang/String;

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;)V

    return-void
.end method

.method public synthetic onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoInputFormatChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/decoder/DecoderReuseEvaluation;)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;IIIF)V

    return-void
.end method

.method public synthetic onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVideoSizeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;Lcom/google/android/exoplr2avp/video/VideoSize;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/google/android/exoplr2avp/video/VideoSize;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoSize"
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    iget v1, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->width:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    iget v1, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->height:I

    if-eq v0, v1, :cond_5

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Changing video size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AVProVideo"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget v0, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->unappliedRotationDegrees:I

    const/16 v1, 0x5a

    const/4 v2, 0x6

    if-eq v0, v1, :cond_3

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10e

    if-eq v0, v1, :cond_1

    .line 9
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_4

    const-string v0, "AVProVideo"

    const-string v1, "NO texture transform set"

    .line 11
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-array v0, v2, [F

    .line 29
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_textureTransform:[F

    .line 30
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_4

    const-string v0, "AVProVideo"

    const-string v1, "Texture transform set for 270 degrees"

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-array v0, v2, [F

    .line 33
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_textureTransform:[F

    .line 34
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_4

    const-string v0, "AVProVideo"

    const-string v1, "Texture transform set for 180 degrees"

    .line 36
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-array v0, v2, [F

    .line 37
    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_textureTransform:[F

    .line 38
    iget-boolean v0, p0, Lcom/renderheads/AVPro/Video/Player_ExoPlayer;->m_bDebugLogStateChange:Z

    if-eqz v0, :cond_4

    const-string v0, "AVProVideo"

    const-string v1, "Texture transform set for 90 degrees"

    .line 40
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_4
    :goto_0
    monitor-enter p0

    .line 63
    :try_start_0
    iget v0, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->width:I

    iput v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Width:I

    .line 64
    iget p1, p1, Lcom/google/android/exoplr2avp/video/VideoSize;->height:I

    iput p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_Height:I

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bSourceHasVideo:Z

    .line 66
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_CreateRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    iget-object v0, p0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bVideo_DestroyRenderSurface:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    monitor-exit p0

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :array_0
    .array-data 4
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public synthetic onVolumeChanged(F)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/Player$Listener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplr2avp/Player$Listener;F)V

    return-void
.end method

.method public synthetic onVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$-CC;->$default$onVolumeChanged(Lcom/google/android/exoplr2avp/analytics/AnalyticsListener;Lcom/google/android/exoplr2avp/analytics/AnalyticsListener$EventTime;F)V

    return-void
.end method

.method public onWaitingForRequirementsChanged(Lcom/google/android/exoplr2avp/offline/DownloadManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadManager",
            "waitingForRequirements"
        }
    .end annotation

    return-void
.end method
