.class Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;
.super Ljava/lang/Object;
.source "LiteNativeCapturerObserver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->onFrameCaptured(Lcom/netease/lava/webrtc/VideoFrame;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

.field final synthetic val$cameraCaptureTimeNs:J

.field final synthetic val$externalBeautyProcessTimeCost:J

.field final synthetic val$videoFrame:Lcom/netease/lava/webrtc/VideoFrame;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;Lcom/netease/lava/webrtc/VideoFrame;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$externalBeautyProcessTimeCost",
            "val$cameraCaptureTimeNs",
            "val$videoFrame"
        }
    .end annotation

    .line 227
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->val$videoFrame:Lcom/netease/lava/webrtc/VideoFrame;

    iput-wide p3, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->val$cameraCaptureTimeNs:J

    iput-wide p5, p0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->val$externalBeautyProcessTimeCost:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 230
    invoke-static {}, Lcom/netease/lava/webrtc/TimestampAligner;->getRtcTimeNanos()J

    move-result-wide v1

    .line 234
    iget-object v3, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$000(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v3

    if-nez v3, :cond_0

    .line 235
    iget-object v3, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$100()Lcom/netease/lava/webrtc/EglBase$Context;

    move-result-object v4

    sget-object v5, Lcom/netease/lava/webrtc/EglBase;->CONFIG_PIXEL_BUFFER:[I

    invoke-static {v4, v5}, Lcom/netease/lava/webrtc/EglBase$-CC;->create(Lcom/netease/lava/webrtc/EglBase$Context;[I)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$002(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;Lcom/netease/lava/webrtc/EglBase;)Lcom/netease/lava/webrtc/EglBase;

    .line 236
    iget-object v3, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$000(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/lava/webrtc/EglBase;->createDummyPbufferSurface()V

    .line 237
    iget-object v3, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$000(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)Lcom/netease/lava/webrtc/EglBase;

    move-result-object v3

    invoke-interface {v3}, Lcom/netease/lava/webrtc/EglBase;->makeCurrent()V

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    .line 240
    invoke-static {v3, v4, v5}, Landroid/opengl/GLES20;->glGenFramebuffers(I[II)V

    .line 242
    iget-object v3, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    aget v4, v4, v5

    invoke-static {v3, v4}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$202(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;I)I

    .line 243
    iget-object v3, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    const/16 v4, 0xde1

    invoke-static {v4}, Lcom/netease/lava/webrtc/GlUtil;->generateTexture(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$302(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;I)I

    .line 244
    invoke-static {}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFrameCaptured, make current\uff01 Generate fbo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    .line 245
    invoke-static {v5}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$200(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " dstTextureId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v5}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$300(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-static {v3, v4}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v3, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->val$videoFrame:Lcom/netease/lava/webrtc/VideoFrame;

    .line 248
    invoke-virtual {v3}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v4

    instance-of v4, v4, Lcom/netease/lava/webrtc/TextureBufferImpl;

    if-eqz v4, :cond_3

    .line 249
    iget-object v3, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->val$videoFrame:Lcom/netease/lava/webrtc/VideoFrame;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v3

    check-cast v3, Lcom/netease/lava/webrtc/TextureBufferImpl;

    .line 251
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v4}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$500(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v4

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_1

    iget-object v4, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v4}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$600(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v4

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 252
    :cond_1
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$502(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;I)I

    .line 253
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$602(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;I)I

    .line 254
    iget-object v4, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v4}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$300(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v4

    const/16 v5, 0x1907

    iget-object v6, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v6}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$500(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v6

    iget-object v7, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v7}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$600(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v7

    invoke-static {v4, v5, v6, v7}, Lcom/netease/lava/webrtc/GlUtil;->allocateTexture(IIII)V

    .line 256
    :cond_2
    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getTextureId()I

    move-result v4

    iget-object v5, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v5}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$200(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v5

    iget-object v6, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v6}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$300(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v6

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getHeight()I

    move-result v8

    invoke-static {v4, v5, v6, v7, v8}, Lcom/netease/lava/webrtc/GlUtil;->copyTexture(IIIII)V

    .line 258
    new-instance v4, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getWidth()I

    move-result v10

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getHeight()I

    move-result v11

    .line 259
    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getType()Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    move-result-object v12

    iget-object v5, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v5}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$300(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)I

    move-result v13

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object v14

    iget-object v5, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    iget-object v15, v5, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->adapterHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    iget-object v5, v5, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->yuvConverter:Lcom/netease/lava/webrtc/YuvConverter;

    const/16 v17, 0x0

    move-object v9, v4

    move-object/from16 v16, v5

    invoke-direct/range {v9 .. v17}, Lcom/netease/lava/webrtc/TextureBufferImpl;-><init>(IILcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;ILandroid/graphics/Matrix;Landroid/os/Handler;Lcom/netease/lava/webrtc/YuvConverter;Ljava/lang/Runnable;)V

    .line 261
    invoke-virtual {v3}, Lcom/netease/lava/webrtc/TextureBufferImpl;->release()V

    .line 264
    new-instance v3, Lcom/netease/lava/webrtc/VideoFrame;

    invoke-interface {v4}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v4

    iget-object v5, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->val$videoFrame:Lcom/netease/lava/webrtc/VideoFrame;

    invoke-virtual {v5}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v5

    iget-object v6, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->val$videoFrame:Lcom/netease/lava/webrtc/VideoFrame;

    invoke-virtual {v6}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 267
    invoke-static {}, Lcom/netease/lava/webrtc/TimestampAligner;->getRtcTimeNanos()J

    move-result-wide v4

    sub-long/2addr v4, v1

    goto :goto_0

    :cond_3
    const-wide/16 v4, 0x0

    :goto_0
    move-wide v13, v4

    .line 269
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$700(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 270
    iget-object v1, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->this$0:Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$800(Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;)J

    move-result-wide v4

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v6

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v7

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result v8

    iget-wide v9, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->val$cameraCaptureTimeNs:J

    iget-wide v11, v0, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver$1;->val$externalBeautyProcessTimeCost:J

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v15

    invoke-static/range {v4 .. v15}, Lcom/netease/yunxin/lite/video/LiteNativeCapturerObserver;->access$900(JIIIJJJLcom/netease/lava/webrtc/VideoFrame$Buffer;)V

    .line 272
    :cond_4
    invoke-virtual {v3}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    return-void
.end method
