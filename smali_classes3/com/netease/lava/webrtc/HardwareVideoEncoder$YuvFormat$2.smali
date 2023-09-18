.class final enum Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat$2;
.super Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 945
    invoke-direct {p0, p1, p2, v0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder$YuvFormat;-><init>(Ljava/lang/String;ILcom/netease/lava/webrtc/HardwareVideoEncoder$1;)V

    return-void
.end method


# virtual methods
.method fillBuffer(Ljava/nio/ByteBuffer;Lcom/netease/lava/webrtc/VideoFrame$Buffer;)V
    .locals 9

    .line 948
    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 952
    :cond_0
    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v1

    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v3

    .line 953
    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result v7

    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v8

    move-object v6, p1

    .line 952
    invoke-static/range {v0 .. v8}, Lcom/netease/lava/webrtc/YuvHelper;->I420ToNV12(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 954
    invoke-interface {p2}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->release()V

    return-void
.end method
