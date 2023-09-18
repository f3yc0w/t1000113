.class public Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;
.super Ljava/lang/Object;
.source "NERtcVideoWatermarkImageConfig.java"


# instance fields
.field public fps:I

.field public imagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public loop:Z

.field public offsetX:I

.field public offsetY:I

.field public wmAlpha:F

.field public wmHeight:I

.field public wmWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->wmAlpha:F

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->wmWidth:I

    .line 57
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->wmHeight:I

    .line 68
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->offsetX:I

    .line 79
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->offsetY:I

    .line 89
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->imagePaths:Ljava/util/ArrayList;

    .line 102
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->fps:I

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->loop:Z

    return-void
.end method


# virtual methods
.method public toJson()Lorg/json/JSONObject;
    .locals 4

    .line 116
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "image_paths"

    .line 118
    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->imagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wm_alpha"

    .line 119
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->wmAlpha:F

    float-to-double v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "wm_width"

    .line 120
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->wmWidth:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "wm_height"

    .line 121
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->wmHeight:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "offset_x"

    .line 122
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->offsetX:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "offset_y"

    .line 123
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->offsetY:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "fps"

    .line 124
    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->fps:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "loop"

    .line 125
    iget-boolean v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->loop:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 127
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 136
    invoke-virtual {p0}, Lcom/netease/lava/nertc/sdk/watermark/NERtcVideoWatermarkImageConfig;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
