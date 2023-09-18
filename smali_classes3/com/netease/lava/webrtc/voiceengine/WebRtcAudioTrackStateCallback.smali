.class public Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;
.super Ljava/lang/Object;
.source "WebRtcAudioTrackStateCallback.java"

# interfaces
.implements Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;


# instance fields
.field private final nativeAudioTrackStateCallback:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeAudioTrackStateCallback:J

    return-void
.end method

.method private static native nativeOnWebRtcAudioTrackClosed(J)V
.end method

.method private static native nativeOnWebRtcAudioTrackError(JLjava/lang/String;)V
.end method

.method private static native nativeOnWebRtcAudioTrackInitError(JLjava/lang/String;)V
.end method

.method private static native nativeOnWebRtcAudioTrackOpened(J)V
.end method

.method private static native nativeOnWebRtcAudioTrackStartError(JILjava/lang/String;)V
.end method


# virtual methods
.method public onWebRtcAudioTrackClosed()V
    .locals 2

    .line 15
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeAudioTrackStateCallback:J

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeOnWebRtcAudioTrackClosed(J)V

    return-void
.end method

.method public onWebRtcAudioTrackError(Ljava/lang/String;)V
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeAudioTrackStateCallback:J

    invoke-static {v0, v1, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeOnWebRtcAudioTrackError(JLjava/lang/String;)V

    return-void
.end method

.method public onWebRtcAudioTrackInitError(Ljava/lang/String;)V
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeAudioTrackStateCallback:J

    invoke-static {v0, v1, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeOnWebRtcAudioTrackInitError(JLjava/lang/String;)V

    return-void
.end method

.method public onWebRtcAudioTrackOpened()V
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeAudioTrackStateCallback:J

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeOnWebRtcAudioTrackOpened(J)V

    return-void
.end method

.method public onWebRtcAudioTrackStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 35
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeAudioTrackStateCallback:J

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrackStateCallback;->nativeOnWebRtcAudioTrackStartError(JILjava/lang/String;)V

    return-void
.end method
