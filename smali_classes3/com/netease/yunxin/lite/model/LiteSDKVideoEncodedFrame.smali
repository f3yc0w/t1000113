.class public Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;
.super Ljava/lang/Object;
.source "LiteSDKVideoEncodedFrame.java"


# instance fields
.field public codecType:I

.field public frameType:I

.field public height:I

.field public nalData:[B

.field public nalLengths:[I

.field public timestampUs:J

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->codecType:I

    const/4 v0, 0x1

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->frameType:I

    return-void
.end method


# virtual methods
.method public getCodecType()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->codecType:I

    return v0
.end method

.method public getFrameType()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->frameType:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->height:I

    return v0
.end method

.method public getNalData()[B
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->nalData:[B

    return-object v0
.end method

.method public getNalLengths()[I
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->nalLengths:[I

    return-object v0
.end method

.method public getTimestampUs()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->timestampUs:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodedFrame;->width:I

    return v0
.end method
