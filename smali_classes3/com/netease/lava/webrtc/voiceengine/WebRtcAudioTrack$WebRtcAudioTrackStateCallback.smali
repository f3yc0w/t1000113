.class public interface abstract Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$WebRtcAudioTrackStateCallback;
.super Ljava/lang/Object;
.source "WebRtcAudioTrack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebRtcAudioTrackStateCallback"
.end annotation


# virtual methods
.method public abstract onWebRtcAudioTrackClosed()V
.end method

.method public abstract onWebRtcAudioTrackError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioTrackInitError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioTrackOpened()V
.end method

.method public abstract onWebRtcAudioTrackStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioTrack$AudioTrackStartErrorCode;Ljava/lang/String;)V
.end method
