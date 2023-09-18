.class public Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;
.super Ljava/lang/Object;
.source "LiteCanvasWatermarkConfig.java"


# instance fields
.field public imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

.field public textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

.field public timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getImageWatermarks()[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    return-object v0
.end method

.method public getTextWatermarks()[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    return-object v0
.end method

.method public getTimestampWatermark()Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    return-object v0
.end method

.method public setImageWatermarks([Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imageWatermarks"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteImageWatermarkConfig;

    return-void
.end method

.method public setTextWatermarks([Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "textWatermarks"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/yunxin/lite/video/watermark/LiteTextWatermarkConfig;

    return-void
.end method

.method public setTimestampWatermark(Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timestampWatermark"
        }
    .end annotation

    .line 45
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/watermark/LiteCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/watermark/LiteTimestampWatermarkConfig;

    return-void
.end method
