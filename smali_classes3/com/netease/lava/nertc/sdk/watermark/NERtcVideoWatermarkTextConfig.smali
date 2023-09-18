.class public Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;
.super Ljava/lang/Object;
.source "NERtcVideoWatermarkTextConfig.java"


# instance fields
.field public content:Ljava/lang/String;

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
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->fontColor:I

    const/16 v0, 0xf

    .line 56
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->fontSize:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 67
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmAlpha:F

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmWidth:I

    const v1, -0x77777778

    .line 91
    iput v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmColor:I

    .line 102
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmHeight:I

    .line 113
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->offsetX:I

    .line 123
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->offsetY:I

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 5

    const-string v0, "0x"

    .line 127
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "content"

    .line 129
    iget-object v3, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->content:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "font_path"

    .line 130
    iget-object v3, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->fontNameOrPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "font_size"

    .line 131
    iget v3, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->fontSize:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "wm_color"

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmColor:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "font_color"

    .line 133
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->fontColor:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "wm_alpha"

    .line 134
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmAlpha:F

    float-to-double v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "wm_width"

    .line 135
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmWidth:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "wm_height"

    .line 136
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->wmHeight:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "offset_x"

    .line 137
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->offsetX:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "offset_y"

    .line 138
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->offsetY:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkTextConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
