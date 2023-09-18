.class public final Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;
.super Ljava/lang/Object;
.source "RtspMediaSource.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/source/MediaSourceFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# instance fields
.field private debugLoggingEnabled:Z

.field private forceUseRtpTcp:Z

.field private socketFactory:Ljavax/net/SocketFactory;

.field private timeoutMs:J

.field private userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1f40

    .line 74
    iput-wide v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->timeoutMs:J

    const-string v0, "ExoPlayerLib/2.18.0"

    .line 75
    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->userAgent:Ljava/lang/String;

    .line 76
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->socketFactory:Ljavax/net/SocketFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/MediaSource;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;

    move-result-object p1

    return-object p1
.end method

.method public createMediaSource(Lcom/google/android/exoplr2avp/MediaItem;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;
    .locals 7

    .line 174
    iget-object v0, p1, Lcom/google/android/exoplr2avp/MediaItem;->localConfiguration:Lcom/google/android/exoplr2avp/MediaItem$LocalConfiguration;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    new-instance v0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;

    .line 177
    iget-boolean v1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->forceUseRtpTcp:Z

    if-eqz v1, :cond_0

    .line 178
    new-instance v1, Lcom/google/android/exoplr2avp/source/rtsp/TransferRtpDataChannelFactory;

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->timeoutMs:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/source/rtsp/TransferRtpDataChannelFactory;-><init>(J)V

    goto :goto_0

    .line 179
    :cond_0
    new-instance v1, Lcom/google/android/exoplr2avp/source/rtsp/UdpDataSourceRtpDataChannelFactory;

    iget-wide v2, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->timeoutMs:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplr2avp/source/rtsp/UdpDataSourceRtpDataChannelFactory;-><init>(J)V

    :goto_0
    move-object v3, v1

    iget-object v4, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->userAgent:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->socketFactory:Ljavax/net/SocketFactory;

    iget-boolean v6, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->debugLoggingEnabled:Z

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource;-><init>(Lcom/google/android/exoplr2avp/MediaItem;Lcom/google/android/exoplr2avp/source/rtsp/RtpDataChannel$Factory;Ljava/lang/String;Ljavax/net/SocketFactory;Z)V

    return-object v0
.end method

.method public getSupportedTypes()[I
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x3

    aput v2, v0, v1

    return-object v0
.end method

.method public setDebugLoggingEnabled(Z)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;
    .locals 0

    .line 128
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->debugLoggingEnabled:Z

    return-object p0
.end method

.method public bridge synthetic setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setDrmSessionManagerProvider(Lcom/google/android/exoplr2avp/drm/DrmSessionManagerProvider;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method public setForceUseRtpTcp(Z)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->forceUseRtpTcp:Z

    return-object p0
.end method

.method public bridge synthetic setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/MediaSource$Factory;
    .locals 0

    .line 64
    invoke-virtual {p0, p1}, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;

    move-result-object p1

    return-object p1
.end method

.method public setLoadErrorHandlingPolicy(Lcom/google/android/exoplr2avp/upstream/LoadErrorHandlingPolicy;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;
    .locals 0

    return-object p0
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->socketFactory:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public setTimeoutMs(J)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 142
    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkArgument(Z)V

    .line 143
    iput-wide p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->timeoutMs:J

    return-object p0
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/google/android/exoplr2avp/source/rtsp/RtspMediaSource$Factory;->userAgent:Ljava/lang/String;

    return-object p0
.end method
