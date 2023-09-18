.class public Lcom/netease/lava/webrtc/NV21Buffer;
.super Ljava/lang/Object;
.source "NV21Buffer.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoFrame$Buffer;


# instance fields
.field private final data:[B

.field private height:I

.field private oriHeight:I

.field private oriWidth:I

.field private final refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

.field private width:I


# direct methods
.method public constructor <init>([BIILjava/lang/Runnable;)V
    .locals 0
    .param p4    # Ljava/lang/Runnable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/netease/lava/webrtc/NV21Buffer;->data:[B

    .line 27
    iput p2, p0, Lcom/netease/lava/webrtc/NV21Buffer;->width:I

    .line 28
    iput p3, p0, Lcom/netease/lava/webrtc/NV21Buffer;->height:I

    .line 29
    iput p2, p0, Lcom/netease/lava/webrtc/NV21Buffer;->oriWidth:I

    .line 30
    iput p3, p0, Lcom/netease/lava/webrtc/NV21Buffer;->oriHeight:I

    .line 31
    new-instance p1, Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-direct {p1, p4}, Lcom/netease/lava/webrtc/RefCountDelegate;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/netease/lava/webrtc/NV21Buffer;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    return-void
.end method

.method private static native nativeCropAndScale(IIIIII[BIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V
.end method


# virtual methods
.method public cropAndScale(IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;
    .locals 17

    move-object/from16 v0, p0

    .line 88
    invoke-static/range {p5 .. p6}, Lcom/netease/lava/webrtc/JavaI420Buffer;->allocate(II)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v1

    .line 89
    iget-object v8, v0, Lcom/netease/lava/webrtc/NV21Buffer;->data:[B

    iget v9, v0, Lcom/netease/lava/webrtc/NV21Buffer;->width:I

    iget v10, v0, Lcom/netease/lava/webrtc/NV21Buffer;->height:I

    .line 90
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getStrideY()I

    move-result v12

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 91
    invoke-virtual {v1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getStrideU()I

    move-result v14

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v15

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getStrideV()I

    move-result v16

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    .line 89
    invoke-static/range {v2 .. v16}, Lcom/netease/lava/webrtc/NV21Buffer;->nativeCropAndScale(IIIIII[BIILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;I)V

    return-object v1
.end method

.method public getBufferType()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netease/lava/webrtc/NV21Buffer;->data:[B

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/netease/lava/webrtc/NV21Buffer;->height:I

    return v0
.end method

.method public getInternalBufferType()Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;
    .locals 1

    .line 65
    sget-object v0, Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;->kBufferTypeNV21:Lcom/netease/lava/webrtc/VideoFrame$Buffer$BufferType;

    return-object v0
.end method

.method public getOriHeight()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/netease/lava/webrtc/NV21Buffer;->oriHeight:I

    return v0
.end method

.method public getOriWidth()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/netease/lava/webrtc/NV21Buffer;->oriWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/netease/lava/webrtc/NV21Buffer;->width:I

    return v0
.end method

.method public release()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/netease/lava/webrtc/NV21Buffer;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/RefCountDelegate;->release()V

    return-void
.end method

.method public retain()V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/netease/lava/webrtc/NV21Buffer;->refCountDelegate:Lcom/netease/lava/webrtc/RefCountDelegate;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/RefCountDelegate;->retain()V

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 102
    iput p1, p0, Lcom/netease/lava/webrtc/NV21Buffer;->height:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/netease/lava/webrtc/NV21Buffer;->width:I

    return-void
.end method

.method public toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;
    .locals 7

    .line 71
    iget v5, p0, Lcom/netease/lava/webrtc/NV21Buffer;->width:I

    iget v6, p0, Lcom/netease/lava/webrtc/NV21Buffer;->height:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v5

    move v4, v6

    invoke-virtual/range {v0 .. v6}, Lcom/netease/lava/webrtc/NV21Buffer;->cropAndScale(IIIIII)Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v0

    check-cast v0, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    return-object v0
.end method
