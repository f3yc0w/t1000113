.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;
.super Ljava/lang/Object;
.source "Camera2Session.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 644
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reader"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 650
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v0, "Camera2Session"

    if-nez v2, :cond_0

    :try_start_1
    const-string v3, "failed to acquire Image from ImageReader"

    .line 653
    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_1

    .line 657
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Landroid/media/Image;->getWidth()I

    move-result v14

    .line 658
    invoke-virtual {v2}, Landroid/media/Image;->getHeight()I

    move-result v15

    .line 660
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 661
    array-length v3, v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    goto/16 :goto_0

    .line 665
    :cond_1
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v13, 0x0

    aget-object v3, v3, v13

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    .line 666
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v7

    .line 667
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    const/4 v6, 0x2

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v9

    .line 668
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    .line 669
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v3, v3, v6

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eq v10, v3, :cond_2

    .line 671
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "two chrominance (UV) has different pixel stride U: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " V:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {v2}, Landroid/media/Image;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    .line 676
    :cond_2
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v11

    .line 678
    invoke-static {v14, v15}, Lcom/netease/lava/webrtc/JavaI420Buffer;->allocate(II)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object v0

    .line 680
    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v3

    aget-object v3, v3, v13

    invoke-virtual {v3}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v8

    aget-object v4, v8, v4

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v2}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    .line 681
    invoke-virtual {v0}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v19
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v4, v3

    move-object v6, v8

    move-object/from16 v8, v16

    move-object/from16 p1, v2

    move-wide v2, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v18

    move-object/from16 v13, v19

    .line 680
    :try_start_5
    invoke-static/range {v4 .. v15}, Lcom/netease/lava/webrtc/YuvHelper;->Android420ToI420(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;II)I

    .line 683
    new-instance v4, Lcom/netease/lava/webrtc/VideoFrame;

    iget-object v5, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v5}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$2700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)I

    move-result v5

    invoke-direct {v4, v0, v5, v2, v3}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    .line 685
    iget-object v0, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 686
    invoke-virtual {v4, v0}, Lcom/netease/lava/webrtc/VideoFrame;->setDualFrame(Z)V

    .line 687
    iget-object v0, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object v0

    iget-object v2, v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-interface {v0, v2, v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onFrameCaptured(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Lcom/netease/lava/webrtc/VideoFrame;)V

    .line 690
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 691
    invoke-virtual {v4}, Lcom/netease/lava/webrtc/VideoFrame;->release()V

    return-void

    :cond_4
    :goto_0
    move-object/from16 p1, v2

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object/from16 v2, p1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object/from16 p1, v2

    goto :goto_1

    :catch_3
    move-exception v0

    const/4 v2, 0x0

    .line 693
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz v2, :cond_5

    .line 695
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    :cond_5
    return-void
.end method
