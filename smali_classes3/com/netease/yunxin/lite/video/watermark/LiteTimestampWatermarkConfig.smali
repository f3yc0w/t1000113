.class public Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;
.super Ljava/lang/Object;
.source "LiteTimestampWatermarkConfig.java"


# instance fields
.field public fontColor:I

.field public fontSize:I

.field public offsetX:I

.field public offsetY:I

.field public wmColor:I

.field public wmHeight:I

.field public wmWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontSize:I

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontColor:I

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetX:I

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetY:I

    const v1, -0x77777778

    .line 13
    iput v1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmColor:I

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmWidth:I

    .line 15
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmHeight:I

    return-void
.end method


# virtual methods
.method public getFontColor()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontColor:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontSize:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetY:I

    return v0
.end method

.method public getWmColor()I
    .locals 1

    .line 64
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmColor:I

    return v0
.end method

.method public getWmHeight()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmHeight:I

    return v0
.end method

.method public getWmWidth()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmWidth:I

    return v0
.end method

.method public setFontColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontColor"
        }
    .end annotation

    .line 39
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontColor:I

    return-void
.end method

.method public setFontSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fontSize"
        }
    .end annotation

    .line 29
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->fontSize:I

    return-void
.end method

.method public setOffsetX(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetX"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetX:I

    return-void
.end method

.method public setOffsetY(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "offsetY"
        }
    .end annotation

    .line 59
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->offsetY:I

    return-void
.end method

.method public setWmColor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wmColor"
        }
    .end annotation

    .line 69
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmColor:I

    return-void
.end method

.method public setWmHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wmHeight"
        }
    .end annotation

    .line 89
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmHeight:I

    return-void
.end method

.method public setWmWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wmWidth"
        }
    .end annotation

    .line 79
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;->wmWidth:I

    return-void
.end method
