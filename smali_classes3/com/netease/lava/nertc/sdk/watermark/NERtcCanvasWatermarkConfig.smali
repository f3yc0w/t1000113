.class public Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;
.super Ljava/lang/Object;
.source "NERtcCanvasWatermarkConfig.java"


# instance fields
.field public imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

.field public textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

.field public timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->textWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 63
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    if-eqz v5, :cond_0

    .line 65
    invoke-virtual {v5}, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v5, "TextWatermarkConfig:null,"

    .line 67
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "textWatermarks:null,"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_2
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;

    if-eqz v1, :cond_3

    .line 75
    invoke-virtual {v1}, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, "timestampWatermark:null,"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    :goto_2
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcCanvasWatermarkConfig;->imageWatermarks:[Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;

    if-eqz v1, :cond_5

    .line 80
    array-length v3, v1

    :goto_3
    if-ge v2, v3, :cond_6

    aget-object v4, v1, v2

    if-eqz v4, :cond_4

    .line 82
    invoke-virtual {v4}, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    const-string v4, "ImageWatermarkConfig:null,"

    .line 84
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    const-string v1, "NERtcImageWatermarkConfig:null"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
