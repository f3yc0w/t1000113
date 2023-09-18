.class public Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;
.super Ljava/lang/Object;
.source "LiteTextWatermarkConfig.java"


# instance fields
.field public content:Ljava/lang/String;

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontSize:I

    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontColor:I

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetX:I

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetY:I

    const v1, -0x77777778

    .line 14
    iput v1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmColor:I

    .line 15
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmWidth:I

    .line 16
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmHeight:I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontColor:I

    return v0
.end method

.method public getFontSize()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontSize:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetY:I

    return v0
.end method

.method public getWmColor()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmColor:I

    return v0
.end method

.method public getWmHeight()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmHeight:I

    return v0
.end method

.method public getWmWidth()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmWidth:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->content:Ljava/lang/String;

    return-void
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

    .line 50
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontColor:I

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

    .line 40
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->fontSize:I

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

    .line 60
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetX:I

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

    .line 70
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->offsetY:I

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

    .line 80
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmColor:I

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

    .line 100
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmHeight:I

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

    .line 90
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;->wmWidth:I

    return-void
.end method
