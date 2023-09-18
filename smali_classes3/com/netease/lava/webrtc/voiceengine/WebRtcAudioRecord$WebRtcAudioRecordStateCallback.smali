.class public interface abstract Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;
.super Ljava/lang/Object;
.source "WebRtcAudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebRtcAudioRecordStateCallback"
.end annotation


# virtual methods
.method public abstract onWebRtcAudioRecordClosed()V
.end method

.method public abstract onWebRtcAudioRecordError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioRecordInitError(Ljava/lang/String;)V
.end method

.method public abstract onWebRtcAudioRecordOpened()V
.end method

.method public abstract onWebRtcAudioRecordStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V
.end method
