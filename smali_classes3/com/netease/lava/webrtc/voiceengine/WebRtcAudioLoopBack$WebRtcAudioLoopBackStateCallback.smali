.class public interface abstract Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$WebRtcAudioLoopBackStateCallback;
.super Ljava/lang/Object;
.source "WebRtcAudioLoopBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebRtcAudioLoopBackStateCallback"
.end annotation


# virtual methods
.method public abstract onWebRtcAudioLoopBackClosed()V
.end method

.method public abstract onWebRtcAudioLoopBackError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioLoopBackInitError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioLoopBackOpened()V
.end method
