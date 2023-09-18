.class public Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;
.super Ljava/lang/Object;
.source "LiteSDKVideoWatermarkConfig.java"


# instance fields
.field public imageWatermark:Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;

.field public textWatermark:Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;

.field public timestampWatermark:Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;

.field public watermarkType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;->watermarkType:I

    return-void
.end method


# virtual methods
.method public getImageWatermark()Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;->imageWatermark:Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;

    return-object v0
.end method

.method public getTextWatermark()Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;->textWatermark:Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTextConfig;

    return-object v0
.end method

.method public getTimestampWatermark()Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;->timestampWatermark:Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkTimestampConfig;

    return-object v0
.end method

.method public getWatermarkType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkConfig;->watermarkType:I

    return v0
.end method
