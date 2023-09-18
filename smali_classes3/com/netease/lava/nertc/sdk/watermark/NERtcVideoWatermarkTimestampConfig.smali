.class public Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;
.super Ljava/lang/Object;
.source "NERtcVideoWatermarkTimestampConfig.java"


# instance fields
.field public fontColor:I

.field public fontNameOrPath:Ljava/lang/String;

.field public fontSize:I

.field public offsetX:I

.field public offsetY:I

.field public wmAlpha:F

.field public wmColor:I

.field public wmHeight:I

.field public wmWidth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->fontColor:I

    const/16 v0, 0xf

    .line 46
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->fontSize:I

    const v0, -0x77777778

    .line 59
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 70
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmAlpha:F

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmWidth:I

    .line 92
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmHeight:I

    .line 103
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->offsetX:I

    .line 114
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->offsetY:I

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "0x"

    .line 117
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "font_name"

    .line 119
    iget-object v3, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->fontNameOrPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "font_size"

    .line 120
    iget v3, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->fontSize:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "wm_color"

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmColor:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "font_color"

    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->fontColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "wm_alpha"

    .line 123
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmAlpha:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "wm_width"

    .line 124
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmWidth:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "wm_height"

    .line 125
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->wmHeight:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "offset_x"

    .line 126
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->offsetX:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "offset_y"

    .line 127
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->offsetY:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 138
    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTimestampConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
