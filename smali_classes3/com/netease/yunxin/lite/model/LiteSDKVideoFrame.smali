.class public Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;
.super Ljava/lang/Object;
.source "LiteSDKVideoFrame.java"


# instance fields
.field public buffer:[B

.field public buffer_length:J

.field public height:I

.field public offset:[I

.field public plane_count:I

.field public rotation:I

.field public stride:[I

.field public timestamp:J

.field public videoFormat:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->videoFormat:I

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->rotation:I

    const-wide/16 v1, 0x0

    .line 11
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->timestamp:J

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->width:I

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->height:I

    const/4 v0, 0x4

    new-array v3, v0, [I

    .line 14
    iput-object v3, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->offset:[I

    new-array v0, v0, [I

    .line 15
    iput-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->stride:[I

    .line 17
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->buffer_length:J

    const/4 v0, 0x1

    .line 18
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->plane_count:I

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->buffer:[B

    return-object v0
.end method

.method public getBuffer_length()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->buffer_length:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->height:I

    return v0
.end method

.method public getOffset()[I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->offset:[I

    return-object v0
.end method

.method public getPlane_count()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->plane_count:I

    return v0
.end method

.method public getRotation()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->rotation:I

    return v0
.end method

.method public getStride()[I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->stride:[I

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->timestamp:J

    return-wide v0
.end method

.method public getVideoFormat()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->videoFormat:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoFrame;->width:I

    return v0
.end method
