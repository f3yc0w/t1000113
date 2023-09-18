.class Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;
.super Ljava/lang/Object;
.source "WrappedNativeI420Buffer.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;


# instance fields
.field private final dataU:Ljava/nio/ByteBuffer;

.field private final dataV:Ljava/nio/ByteBuffer;

.field private final dataY:Ljava/nio/ByteBuffer;

.field private height:I

.field private final nativeBuffer:J

.field private oriHeight:I

.field private oriWidth:I

.field private final strideU:I

.field private final strideV:I

.field private final strideY:I

.field private width:I


# direct methods
.method constructor <init>(IILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IJ)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->width:I

    .line 36
    iput p2, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->height:I

    .line 37
    iput p1, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->oriWidth:I

    .line 38
    iput p2, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->oriHeight:I

    .line 39
    iput-object p3, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    .line 40
    iput p4, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->strideY:I

    .line 41
    iput-object p5, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    .line 42
    iput p6, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->strideU:I

    .line 43
    iput-object p7, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    .line 44
    iput p8, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->strideV:I

    .line 45
    iput-wide p9, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->nativeBuffer:J

    .line 47
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->retain()V

    return-void
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 0

    .line 143
    invoke-static/range {p0 .. p6}, Lcom/netease/lava/webrtc/JavaI420Buffer;->cropAndScaleI420(Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    return-object p1
.end method

.method public getBufferType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDataU()Ljava/nio/ByteBuffer;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->dataU:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataV()Ljava/nio/ByteBuffer;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->dataV:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getDataY()Ljava/nio/ByteBuffer;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->dataY:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->height:I

    return v0
.end method

.method public getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
    .locals 1

    .line 111
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeI420:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    return-object v0
.end method

.method public getOriHeight()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->oriHeight:I

    return v0
.end method

.method public getOriWidth()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->oriWidth:I

    return v0
.end method

.method public getStrideU()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->strideU:I

    return v0
.end method

.method public getStrideV()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->strideV:I

    return v0
.end method

.method public getStrideY()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->strideY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->width:I

    return v0
.end method

.method public release()V
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/JniCommon;->nativeReleaseRef(J)V

    return-void
.end method

.method public retain()V
    .locals 2

    .line 132
    iget-wide v0, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->nativeBuffer:J

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/JniCommon;->nativeAddRef(J)V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->width:I

    return-void
.end method

.method public toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/WrappedNativeI420Buffer;->retain()V

    return-object p0
.end method
