.class public Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;
.super Ljava/lang/Object;
.source "NERtcVideoWatermarkConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;
    }
.end annotation


# instance fields
.field public imageWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;

.field public textWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;

.field public timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;

.field public watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    sget-object v0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeImage:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    return-void
.end method


# virtual methods
.method public isValid()Z
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    sget-object v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeImage:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->imageWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;

    if-nez v0, :cond_0

    return v2

    .line 81
    :cond_0
    iget-object v0, v0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->imagePaths:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return v2

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    sget-object v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeText:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    if-ne v0, v1, :cond_2

    .line 88
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->textWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;

    if-nez v0, :cond_2

    return v2

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    sget-object v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeTimestamp:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    if-ne v0, v1, :cond_3

    .line 95
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;

    if-nez v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    sget-object v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeImage:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->imageWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    sget-object v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeText:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->textWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {v0}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    sget-object v1, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;->kNERtcWatermarkTypeTimestamp:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->timestampWatermark:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {v0}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 113
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    :try_start_0
    const-string v1, "watermark_type"

    .line 116
    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->watermarkType:Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig$WatermarkType;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 118
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
