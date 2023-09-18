.class Lcom/netease/lava/webrtc/NativeCapturerObserver;
.super Ljava/lang/Object;
.source "NativeCapturerObserver.java"

# interfaces
.implements Lcom/netease/lava/webrtc/CapturerObserver;


# instance fields
.field private final nativeSource:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/netease/lava/webrtc/NativeCapturerObserver;->nativeSource:J

    return-void
.end method

.method private static native nativeCapturerStarted(JZ)V
.end method

.method private static native nativeCapturerStopped(J)V
.end method

.method private static native nativeOnFrameCaptured(JIIIJLcom/netease/lava/webrtc/VideoFrame$Buffer;)V
.end method


# virtual methods
.method public onCapturerStarted(Z)V
    .locals 2

    .line 31
    iget-wide v0, p0, Lcom/netease/lava/webrtc/NativeCapturerObserver;->nativeSource:J

    invoke-static {v0, v1, p1}, Lcom/netease/lava/webrtc/NativeCapturerObserver;->nativeCapturerStarted(JZ)V

    return-void
.end method

.method public onCapturerStopped()V
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/netease/lava/webrtc/NativeCapturerObserver;->nativeSource:J

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/NativeCapturerObserver;->nativeCapturerStopped(J)V

    return-void
.end method

.method public onFrameCaptured(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 8

    .line 41
    iget-wide v0, p0, Lcom/netease/lava/webrtc/NativeCapturerObserver;->nativeSource:J

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v2

    invoke-interface {v2}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v3

    .line 42
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v4

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v5

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v7

    .line 41
    invoke-static/range {v0 .. v7}, Lcom/netease/lava/webrtc/NativeCapturerObserver;->nativeOnFrameCaptured(JIIIJLcom/netease/lava/webrtc/VideoFrame$Buffer;)V

    return-void
.end method
