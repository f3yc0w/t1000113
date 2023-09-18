.class public Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;
.super Ljava/lang/Object;
.source "LiteSDKVideoWatermarkTextConfig.java"


# instance fields
.field public content:Ljava/lang/String;

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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIFIIIII)V
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
            0x0,
            0x0
        }
        names = {
            "content",
            "fontName",
            "fontColor",
            "fontSize",
            "wmAlpha",
            "wmWidth",
            "wmColor",
            "wmHeight",
            "offsetX",
            "offsetY"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->content:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->fontName:Ljava/lang/String;

    .line 30
    iput p3, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->fontColor:I

    .line 31
    iput p4, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->fontSize:I

    .line 32
    iput p5, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->wmAlpha:F

    .line 33
    iput p6, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->wmWidth:I

    .line 34
    iput p7, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->wmColor:I

    .line 35
    iput p8, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->wmHeight:I

    .line 36
    iput p9, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->offsetX:I

    .line 37
    iput p10, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->offsetY:I

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getFontColor()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->fontColor:I

    return v0
.end method

.method public getFontName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->fontName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontSize()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->fontSize:I

    return v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->offsetY:I

    return v0
.end method

.method public getWmAlpha()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->wmAlpha:F

    return v0
.end method

.method public getWmColor()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->wmColor:I

    return v0
.end method

.method public getWmHeight()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->wmHeight:I

    return v0
.end method

.method public getWmWidth()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;->wmWidth:I

    return v0
.end method
