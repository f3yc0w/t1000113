.class public Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;
.super Ljava/lang/Object;
.source "LiteSDKVideoWatermarkTimestampConfig.java"


# instance fields
.field public fontColor:I

.field public fontName:Ljava/lang/String;

.field public fontSize:I

.field public offsetX:I

.field public offsetY:I

.field public wmAlpha:F

.field public wmColor:I

.field public wmHeight:I

.field public wmWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIIFIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fontName",
            "fontColor",
            "fontSize",
            "wmColor",
            "wmAlpha",
            "wmWidth",
            "wmHeight",
            "offsetX",
            "offsetY"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->fontName:Ljava/lang/String;

    .line 29
    iput p2, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->fontColor:I

    .line 30
    iput p3, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->fontSize:I

    .line 31
    iput p4, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->wmColor:I

    .line 32
    iput p5, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->wmAlpha:F

    .line 33
    iput p6, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->wmWidth:I

    .line 34
    iput p7, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->wmHeight:I

    .line 35
    iput p8, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->offsetX:I

    .line 36
    iput p9, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->offsetY:I

    return-void
.end method


# virtual methods
.method public getFontColor()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->fontColor:I

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->fontSize:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->offsetY:I

    return v0
.end method

.method public getWmAlpha()F
    .locals 1

    .line 61
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->wmAlpha:F

    return v0
.end method

.method public getWmColor()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->wmColor:I

    return v0
.end method

.method public getWmHeight()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->wmHeight:I

    return v0
.end method

.method public getWmWidth()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;->wmWidth:I

    return v0
.end method
