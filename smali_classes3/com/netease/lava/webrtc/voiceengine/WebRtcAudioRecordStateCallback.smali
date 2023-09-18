.class public Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;
.super Ljava/lang/Object;
.source "WebRtcAudioRecordStateCallback.java"

# interfaces
.implements Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$WebRtcAudioRecordStateCallback;


# instance fields
.field private final mNativeWebRtcAudioRecordStateCallback:J


# direct methods
.method private constructor <init>(J)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-wide p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->mNativeWebRtcAudioRecordStateCallback:J

    return-void
.end method

.method private static native nativeOnWebRtcAudioRecordClosed(J)V
.end method

.method private static native nativeOnWebRtcAudioRecordError(JLjava/lang/String;)V
.end method

.method private static native nativeOnWebRtcAudioRecordInitError(JLjava/lang/String;)V
.end method

.method private static native nativeOnWebRtcAudioRecordOpened(J)V
.end method

.method private static native nativeOnWebRtcAudioRecordStartError(JILjava/lang/String;)V
.end method


# virtual methods
.method public onWebRtcAudioRecordClosed()V
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->mNativeWebRtcAudioRecordStateCallback:J

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->nativeOnWebRtcAudioRecordClosed(J)V

    return-void
.end method

.method public onWebRtcAudioRecordError(Ljava/lang/String;)V
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->mNativeWebRtcAudioRecordStateCallback:J

    invoke-static {v0, v1, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->nativeOnWebRtcAudioRecordError(JLjava/lang/String;)V

    return-void
.end method

.method public onWebRtcAudioRecordInitError(Ljava/lang/String;)V
    .locals 2

    .line 14
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->mNativeWebRtcAudioRecordStateCallback:J

    invoke-static {v0, v1, p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->nativeOnWebRtcAudioRecordInitError(JLjava/lang/String;)V

    return-void
.end method

.method public onWebRtcAudioRecordOpened()V
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->mNativeWebRtcAudioRecordStateCallback:J

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->nativeOnWebRtcAudioRecordOpened(J)V

    return-void
.end method

.method public onWebRtcAudioRecordStartError(Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;Ljava/lang/String;)V
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->mNativeWebRtcAudioRecordStateCallback:J

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecord$AudioRecordStartErrorCode;->ordinal()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioRecordStateCallback;->nativeOnWebRtcAudioRecordStartError(JILjava/lang/String;)V

    return-void
.end method
