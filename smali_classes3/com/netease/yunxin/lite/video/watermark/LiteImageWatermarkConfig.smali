.class public Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;
.super Ljava/lang/Object;
.source "LiteImageWatermarkConfig.java"


# instance fields
.field public fps:I

.field public imageHeight:I

.field public imageWidth:I

.field public images:[Landroid/graphics/Bitmap;

.field public loop:Z

.field public offsetX:I

.field public offsetY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageWidth:I

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageHeight:I

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetX:I

    .line 15
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetY:I

    .line 16
    iput v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->fps:I

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->loop:Z

    return-void
.end method


# virtual methods
.method public getFps()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->fps:I

    return v0
.end method

.method public getImageHeight()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageHeight:I

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageWidth:I

    return v0
.end method

.method public getImages()[Landroid/graphics/Bitmap;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetY:I

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->loop:Z

    return v0
.end method

.method public setFps(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fps"
        }
    .end annotation

    .line 81
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->fps:I

    return-void
.end method

.method public setImageHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageHeight"
        }
    .end annotation

    .line 51
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageHeight:I

    return-void
.end method

.method public setImageWidth(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageWidth"
        }
    .end annotation

    .line 41
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->imageWidth:I

    return-void
.end method

.method public setImages([Landroid/graphics/Bitmap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "images"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    return-void
.end method

.method public setLoop(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "loop"
        }
    .end annotation

    .line 91
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->loop:Z

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

    .line 61
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetX:I

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

    .line 71
    iput p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;->offsetY:I

    return-void
.end method
