.class final Lcom/netease/lava/webrtc/VideoEncoderWrapper$1;
.super Ljava/lang/Object;
.source "VideoEncoderWrapper.java"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoEncoder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/VideoEncoderWrapper;->createEncoderCallback(J)Lcom/netease/lava/webrtc/VideoEncoder$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nativeEncoder:J


# direct methods
.method constructor <init>(J)V
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/netease/lava/webrtc/VideoEncoderWrapper$1;->val$nativeEncoder:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEncodedFrame(Lcom/netease/lava/webrtc/EncodedImage;Lcom/netease/lava/webrtc/VideoEncoder$CodecSpecificInfo;)V
    .locals 13

    .line 46
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoEncoderWrapper$1;->val$nativeEncoder:J

    iget-object v2, p1, Lcom/netease/lava/webrtc/EncodedImage;->buffer:Ljava/nio/ByteBuffer;

    iget v3, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedWidth:I

    iget v4, p1, Lcom/netease/lava/webrtc/EncodedImage;->encodedHeight:I

    iget-wide v5, p1, Lcom/netease/lava/webrtc/EncodedImage;->captureTimeNs:J

    iget-object p2, p1, Lcom/netease/lava/webrtc/EncodedImage;->frameType:Lcom/netease/lava/webrtc/EncodedImage$FrameType;

    .line 47
    invoke-virtual {p2}, Lcom/netease/lava/webrtc/EncodedImage$FrameType;->getNative()I

    move-result v7

    iget v8, p1, Lcom/netease/lava/webrtc/EncodedImage;->rotation:I

    iget-boolean v9, p1, Lcom/netease/lava/webrtc/EncodedImage;->completeFrame:Z

    iget-object v10, p1, Lcom/netease/lava/webrtc/EncodedImage;->qp:Ljava/lang/Integer;

    iget-wide v11, p1, Lcom/netease/lava/webrtc/EncodedImage;->targetEncBps:J

    .line 46
    invoke-static/range {v0 .. v12}, Lcom/netease/lava/webrtc/VideoEncoderWrapper;->access$000(JLjava/nio/ByteBuffer;IIJIIZLjava/lang/Integer;J)V

    return-void
.end method

.method public onUpdateEncoderFormat(Z)V
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/netease/lava/webrtc/VideoEncoderWrapper$1;->val$nativeEncoder:J

    invoke-static {v0, v1, p1}, Lcom/netease/lava/webrtc/VideoEncoderWrapper;->access$100(JZ)V

    return-void
.end method
