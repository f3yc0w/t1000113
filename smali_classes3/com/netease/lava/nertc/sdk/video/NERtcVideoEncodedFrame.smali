.class public Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;
.super Ljava/lang/Object;
.source "NERtcVideoEncodedFrame.java"


# instance fields
.field public codecType:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

.field public frameType:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

.field public height:I

.field public nalData:[B

.field public nalLengths:[I

.field public timestampUs:J

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalid()Z
    .locals 7

    .line 49
    iget v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->width:I

    const/4 v1, 0x1

    if-lez v0, :cond_7

    iget v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->height:I

    if-gtz v0, :cond_0

    goto :goto_1

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->codecType:Lcom/netease/lava/nertc/sdk/video/NERtcVideoCodecType;

    if-nez v0, :cond_1

    return v1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->frameType:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    if-nez v0, :cond_2

    return v1

    .line 60
    :cond_2
    sget-object v2, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->NAL_FRAME_TYPE_IDR:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->frameType:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    sget-object v2, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->NAL_FRAME_TYPE_I:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->frameType:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    sget-object v2, Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;->NAL_FRAME_TYPE_P:Lcom/netease/lava/nertc/sdk/video/NERtcNalFrameType;

    if-ne v0, v2, :cond_6

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->nalLengths:[I

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->nalData:[B

    if-nez v2, :cond_4

    goto :goto_1

    .line 68
    :cond_4
    array-length v2, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v4, v2, :cond_5

    aget v6, v0, v4

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 72
    :cond_5
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/video/NERtcVideoEncodedFrame;->nalData:[B

    array-length v0, v0

    if-le v5, v0, :cond_6

    return v1

    :cond_6
    return v3

    :cond_7
    :goto_1
    return v1
.end method
