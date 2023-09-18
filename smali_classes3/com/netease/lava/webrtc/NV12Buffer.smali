.class public Lcom/netease/lava/webrtc/NV12Buffer;
.super Ljava/lang/Object;
.source "NV12Buffer.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoFrame$Buffer;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private height:I

.field private oriHeight:I

.field private oriWidth:I

.field private final refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

.field private final sliceHeight:I

.field private final stride:I

.field private width:I


# direct methods
.method public constructor <init>(IIIILjava/nio/ByteBuffer;Ljava/lang/Runnable;)V
    .locals 0
    .param p6    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/netease/lava/webrtc/NV12Buffer;->width:I

    .line 29
    iput p2, p0, Lcom/netease/lava/webrtc/NV12Buffer;->height:I

    .line 30
    iput p1, p0, Lcom/netease/lava/webrtc/NV12Buffer;->oriWidth:I

    .line 31
    iput p2, p0, Lcom/netease/lava/webrtc/NV12Buffer;->oriHeight:I

    .line 32
    iput p3, p0, Lcom/netease/lava/webrtc/NV12Buffer;->stride:I

    .line 33
    iput p4, p0, Lcom/netease/lava/webrtc/NV12Buffer;->sliceHeight:I

    .line 34
    iput-object p5, p0, Lcom/netease/lava/webrtc/NV12Buffer;->buffer:Ljava/nio/ByteBuffer;

    .line 35
    new-instance p1, Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-direct {p1, p6}, Lcom/netease/lava/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/NV12Buffer;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    return-void
.end method

.method private static native nativeCropAndScale(IIIIIILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    .line 86
    invoke-static/range {p5 .. p6}, Lcom/netease/lava/webrtc/JavaI420Buffer;->allocate(II)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v18

    .line 87
    iget-object v7, v0, Lcom/netease/lava/webrtc/NV12Buffer;->buffer:Ljava/nio/ByteBuffer;

    iget v8, v0, Lcom/netease/lava/webrtc/NV12Buffer;->width:I

    iget v9, v0, Lcom/netease/lava/webrtc/NV12Buffer;->height:I

    iget v10, v0, Lcom/netease/lava/webrtc/NV12Buffer;->stride:I

    iget v11, v0, Lcom/netease/lava/webrtc/NV12Buffer;->sliceHeight:I

    .line 88
    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v12

    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getStrideY()I

    move-result v13

    .line 89
    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getStrideU()I

    move-result v15

    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-virtual/range {v18 .. v18}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getStrideV()I

    move-result v17

    .line 87
    invoke-static/range {v1 .. v17}, Lcom/netease/lava/webrtc/NV12Buffer;->nativeCropAndScale(IIIIIILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    return-object v18
.end method

.method public getBufferType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/netease/lava/webrtc/NV12Buffer;->height:I

    return v0
.end method

.method public getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
    .locals 1

    .line 65
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeNV12:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    return-object v0
.end method

.method public getOriHeight()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/netease/lava/webrtc/NV12Buffer;->oriHeight:I

    return v0
.end method

.method public getOriWidth()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/netease/lava/webrtc/NV12Buffer;->oriWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/netease/lava/webrtc/NV12Buffer;->width:I

    return v0
.end method

.method public release()V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/netease/lava/webrtc/NV12Buffer;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/netease/lava/webrtc/NV12Buffer;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/RefCountDelegate;->retain()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/netease/lava/webrtc/NV12Buffer;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/netease/lava/webrtc/NV12Buffer;->width:I

    return-void
.end method

.method public toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 7

    .line 70
    iget v5, p0, Lcom/netease/lava/webrtc/NV12Buffer;->width:I

    iget v6, p0, Lcom/netease/lava/webrtc/NV12Buffer;->height:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v5

    move v4, v6

    invoke-virtual/range {v0 .. v6}, Lcom/netease/lava/webrtc/NV12Buffer;->cropAndScale(IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v0

    check-cast v0, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    return-object v0
.end method
