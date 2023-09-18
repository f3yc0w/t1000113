.class public Lcom/netease/lava/nertc/impl/VideoFrameUtils;
.super Ljava/lang/Object;
.source "VideoFrameUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNeRTCVideoFrame(Lcom/netease/lava/webrtc/VideoFrame;ZLcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;)Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "videoFrame",
            "textureWithI420",
            "rtcVideoFrame"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    const-string v2, " YUV:"

    const/4 v3, 0x0

    const-string v4, "RTCVideoFrame data  length : "

    const-string v5, "VideoEffectUtils"

    if-eqz p1, :cond_5

    .line 98
    :try_start_0
    instance-of p1, v1, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    if-eqz p1, :cond_5

    .line 99
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object p0

    .line 101
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    div-int/lit8 p1, p1, 0x2

    .line 102
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v6

    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v7

    mul-int v6, v6, v7

    .line 103
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v7

    mul-int v7, v7, p1

    .line 104
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v8

    mul-int p1, p1, v8

    .line 106
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result v8

    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v9

    mul-int v8, v8, v9

    mul-int/lit8 v8, v8, 0x3

    div-int/lit8 v8, v8, 0x2

    .line 107
    iget-object v9, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    if-eqz v9, :cond_1

    add-int v9, v6, v7

    add-int/2addr v9, p1

    if-ge v8, v9, :cond_2

    .line 108
    :cond_1
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result p1

    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v6

    mul-int v6, v6, p1

    .line 109
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result p1

    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v7

    mul-int p1, p1, v7

    div-int/lit8 v7, p1, 0x4

    .line 110
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result p1

    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v8

    mul-int p1, p1, v8

    div-int/lit8 p1, p1, 0x4

    .line 112
    :cond_2
    iget-object v8, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    if-eqz v8, :cond_4

    iget-object v8, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length v8, v8

    add-int v9, v6, v7

    add-int v10, v9, p1

    if-ge v8, v10, :cond_3

    goto :goto_0

    .line 120
    :cond_3
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v2, v4, v3, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 121
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v2, v3, v6, v7}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 122
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v2, v3, v9, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 123
    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->release()V

    .line 126
    check-cast v1, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getTextureId()I

    move-result p0

    iput p0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->textureId:I

    .line 128
    sget-object p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_OES:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object p0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    goto/16 :goto_2

    .line 113
    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length p2, p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v6, v7

    add-int/2addr v6, p1

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 131
    :cond_5
    instance-of p1, v1, Lcom/netease/lava/webrtc/TextureBufferImpl;

    if-eqz p1, :cond_6

    .line 132
    move-object p1, v1

    check-cast p1, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {p1}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getTextureId()I

    move-result p1

    iput p1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->textureId:I

    .line 133
    sget-object p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_OES:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object p1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    .line 134
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result p1

    iput p1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->rotation:I

    .line 135
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->timeStamp:J

    .line 136
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result p1

    iput p1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    .line 137
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p0

    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result p0

    iput p0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    .line 138
    check-cast v1, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/lava/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object p0

    iput-object p0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->transformMatrix:[F

    goto/16 :goto_2

    .line 139
    :cond_6
    instance-of p1, v1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;

    if-eqz p1, :cond_7

    .line 140
    move-object p1, v1

    check-cast p1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getTextureId()I

    move-result p1

    iput p1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->textureId:I

    .line 141
    sget-object p1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_RGB:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object p1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    .line 142
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getRotation()I

    move-result p1

    iput p1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->rotation:I

    .line 143
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getTimestampNs()J

    move-result-wide v2

    iput-wide v2, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->timeStamp:J

    .line 144
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result p1

    iput p1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    .line 145
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p0

    invoke-interface {p0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result p0

    iput p0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    .line 146
    check-cast v1, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$WrapTextureBuffer;->getTransformMatrix()Landroid/graphics/Matrix;

    move-result-object p0

    invoke-static {p0}, Lcom/netease/lava/webrtc/RendererCommon;->convertMatrixFromAndroidGraphicsMatrix(Landroid/graphics/Matrix;)[F

    move-result-object p0

    iput-object p0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->transformMatrix:[F

    goto/16 :goto_2

    .line 147
    :cond_7
    instance-of p0, v1, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    if-eqz p0, :cond_a

    .line 149
    check-cast v1, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    .line 151
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    .line 152
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result p1

    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v6

    mul-int p1, p1, v6

    .line 153
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v6

    mul-int v6, v6, p0

    .line 154
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v7

    mul-int p0, p0, v7

    .line 156
    iget-object v7, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    if-eqz v7, :cond_9

    iget-object v7, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length v7, v7

    add-int v8, p1, v6

    add-int v9, v8, p0

    if-ge v7, v9, :cond_8

    goto :goto_1

    .line 161
    :cond_8
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v4, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v2, v4, v3, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 162
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v2

    iget-object v3, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v2, v3, p1, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 163
    invoke-interface {v1}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v1, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {p1, v1, v8, p0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 165
    sget-object p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->I420:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object p0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    goto :goto_2

    .line 157
    :cond_9
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v6

    add-int/2addr p1, p0

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 166
    :cond_a
    instance-of p0, v1, Lcom/netease/lava/webrtc/NV21Buffer;

    if-eqz p0, :cond_b

    .line 167
    check-cast v1, Lcom/netease/lava/webrtc/NV21Buffer;

    invoke-virtual {v1}, Lcom/netease/lava/webrtc/NV21Buffer;->getData()[B

    move-result-object p0

    iput-object p0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    .line 168
    sget-object p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->NV21:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object p0, p2, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 173
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move-object p2, v0

    :cond_b
    :goto_2
    return-object p2

    :cond_c
    :goto_3
    return-object v0
.end method

.method public static getNeRTCVideoFrame(Lcom/netease/lava/webrtc/VideoFrame;ZLcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;Ljava/nio/ByteBuffer;)Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "videoFrame",
            "textureWithI420",
            "rtcVideoFrame",
            "directBuffer"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v10, p3

    const/4 v11, 0x0

    if-eqz p0, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v12

    const-string v1, "VideoEffectUtils"

    const/4 v13, 0x0

    if-eqz p1, :cond_5

    .line 28
    :try_start_0
    instance-of v2, v12, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer;

    if-eqz v2, :cond_5

    .line 29
    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->toI420()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v14

    .line 31
    iget-object v2, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length v2, v2

    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getWidth()I

    move-result v3

    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->getHeight()I

    move-result v4

    mul-int v3, v3, v4

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v14, :cond_3

    if-nez v10, :cond_2

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 41
    invoke-interface {v14}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {v14}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v2

    invoke-interface {v14}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-interface {v14}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v4

    .line 42
    invoke-interface {v14}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v14}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v6

    invoke-interface {v14}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getWidth()I

    move-result v8

    invoke-interface {v14}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v9

    move-object/from16 v7, p3

    .line 41
    invoke-static/range {v1 .. v9}, Lcom/netease/lava/webrtc/YuvHelper;->I420Copy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 43
    invoke-virtual {v10, v13}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 44
    iget-object v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 45
    invoke-interface {v14}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->release()V

    .line 48
    check-cast v12, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {v12}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getTextureId()I

    move-result v1

    iput v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->textureId:I

    .line 50
    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_OES:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    goto/16 :goto_3

    :cond_3
    :goto_0
    return-object v11

    :cond_4
    :goto_1
    const-string v0, "RTCVideoFrame data length illegal"

    .line 32
    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 53
    :cond_5
    instance-of v2, v12, Lcom/netease/lava/webrtc/TextureBufferImpl;

    if-eqz v2, :cond_6

    .line 54
    check-cast v12, Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {v12}, Lcom/netease/lava/webrtc/TextureBufferImpl;->getTextureId()I

    move-result v1

    iput v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->textureId:I

    .line 55
    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->TEXTURE_OES:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    goto/16 :goto_3

    .line 56
    :cond_6
    instance-of v2, v12, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    if-eqz v2, :cond_9

    .line 57
    check-cast v12, Lcom/netease/lava/webrtc/JavaI420Buffer;

    .line 59
    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    .line 60
    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getHeight()I

    move-result v3

    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideY()I

    move-result v4

    mul-int v3, v3, v4

    .line 61
    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideU()I

    move-result v4

    mul-int v4, v4, v2

    .line 62
    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getStrideV()I

    move-result v5

    mul-int v2, v2, v5

    .line 64
    iget-object v5, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    if-eqz v5, :cond_8

    iget-object v5, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length v5, v5

    add-int v6, v3, v4

    add-int v7, v6, v2

    if-ge v5, v7, :cond_7

    goto :goto_2

    .line 69
    :cond_7
    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v5, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v1, v5, v13, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 70
    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v5, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v1, v5, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 71
    invoke-interface {v12}, Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v1, v3, v6, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 73
    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->I420:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    goto :goto_3

    .line 65
    :cond_8
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RTCVideoFrame data  length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length v0, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " YUV:"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v11

    .line 74
    :cond_9
    instance-of v1, v12, Lcom/netease/lava/webrtc/NV21Buffer;

    if-eqz v1, :cond_a

    .line 75
    check-cast v12, Lcom/netease/lava/webrtc/NV21Buffer;

    invoke-virtual {v12}, Lcom/netease/lava/webrtc/NV21Buffer;->getData()[B

    move-result-object v1

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    .line 76
    sget-object v1, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->NV21:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    iput-object v1, v0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v11

    :cond_a
    :goto_3
    return-object v0

    :cond_b
    :goto_4
    return-object v11
.end method

.method public static getWebRtcVideoFrame(Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;Lcom/netease/lava/webrtc/VideoFrame;)Lcom/netease/lava/webrtc/VideoFrame;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtcVideoFrame",
            "originFrame"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 190
    :cond_0
    :try_start_0
    sget-object v1, Lcom/netease/lava/nertc/impl/VideoFrameUtils$1;->$SwitchMap$com$netease$lava$nertc$sdk$video$NERtcVideoFrame$Format:[I

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v2}, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 p1, 0x3

    if-eq v1, p1, :cond_2

    const/4 p1, 0x4

    if-eq v1, p1, :cond_1

    const-string p1, "VideoFrameUtils"

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoFrame format:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->format:Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame$Format;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 232
    :cond_1
    iget p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    .line 233
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    .line 235
    new-instance v2, Lcom/netease/lava/webrtc/NV21Buffer;

    iget-object v3, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-direct {v2, v3, p1, v1, v0}, Lcom/netease/lava/webrtc/NV21Buffer;-><init>([BIILjava/lang/Runnable;)V

    .line 237
    new-instance p1, Lcom/netease/lava/webrtc/VideoFrame;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->rotation:I

    iget-wide v3, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->timeStamp:J

    invoke-direct {p1, v2, v1, v3, v4}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    goto/16 :goto_2

    .line 206
    :cond_2
    iget p1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->width:I

    .line 207
    iget v1, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->height:I

    add-int/lit8 v3, v1, 0x1

    .line 209
    div-int/2addr v3, v2

    add-int/lit8 v4, p1, 0x1

    .line 210
    div-int/2addr v4, v2

    const/4 v5, 0x0

    mul-int v6, p1, v1

    add-int/lit8 v7, v6, 0x0

    mul-int v8, v4, v3

    add-int v9, v7, v8

    mul-int/lit8 v4, v4, 0x2

    mul-int v4, v4, v3

    add-int/2addr v4, v6

    .line 216
    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length v2, v2

    if-ge v2, v4, :cond_3

    goto :goto_0

    .line 222
    :cond_3
    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->allocate(II)Lcom/netease/lava/webrtc/JavaI420Buffer;

    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataY()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v1, v2, v5, v6}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataU()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v1, v2, v7, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/JavaI420Buffer;->getDataV()Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    invoke-virtual {v1, v2, v9, v8}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 228
    new-instance v1, Lcom/netease/lava/webrtc/VideoFrame;

    iget v2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->rotation:I

    iget-wide v3, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->timeStamp:J

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/netease/lava/webrtc/VideoFrame;-><init>(Lcom/netease/lava/webrtc/VideoFrame$Buffer;IJ)V

    move-object p1, v1

    goto :goto_2

    :cond_4
    :goto_0
    const-string p1, "VideoEffectUtils"

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTCVideoFrame data length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->data:[B

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " i420 buffer length: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object p1, v0

    goto :goto_2

    .line 199
    :cond_5
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lcom/netease/lava/webrtc/TextureBufferImpl;

    iget p0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->textureId:I

    invoke-virtual {v1, p0}, Lcom/netease/lava/webrtc/TextureBufferImpl;->setTextureId(I)V

    .line 200
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/TextureBufferImpl;

    sget-object v1, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;->OES:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/netease/lava/webrtc/TextureBufferImpl;->setType(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;)V

    goto :goto_2

    .line 192
    :cond_6
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object v1

    check-cast v1, Lcom/netease/lava/webrtc/TextureBufferImpl;

    iget p0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoFrame;->textureId:I

    invoke-virtual {v1, p0}, Lcom/netease/lava/webrtc/TextureBufferImpl;->setTextureId(I)V

    .line 193
    invoke-virtual {p1}, Lcom/netease/lava/webrtc/VideoFrame;->getBuffer()Lcom/netease/lava/webrtc/VideoFrame$Buffer;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/TextureBufferImpl;

    sget-object v1, Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;->RGB:Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;

    invoke-virtual {p0, v1}, Lcom/netease/lava/webrtc/TextureBufferImpl;->setType(Lcom/netease/lava/webrtc/VideoFrame$TextureBuffer$Type;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object v0, p1

    goto :goto_3

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_3
    return-object v0
.end method
