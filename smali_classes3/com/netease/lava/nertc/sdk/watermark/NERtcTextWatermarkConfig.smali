.class public Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;
.super Ljava/lang/Object;
.source "NERtcTextWatermarkConfig.java"


# instance fields
.field public content:Ljava/lang/String;

.field public fontColor:I

.field public fontSize:I

.field public offsetX:I

.field public offsetY:I

.field public wmColor:I

.field public wmHeight:I

.field public wmWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 46
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->fontSize:I

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->fontColor:I

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->offsetX:I

    .line 76
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->offsetY:I

    const v1, -0x77777778

    .line 86
    iput v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->wmColor:I

    .line 96
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->wmWidth:I

    .line 106
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->wmHeight:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 113
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->content:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->fontSize:I

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->fontColor:I

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->offsetX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->offsetY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->wmColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->wmWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTextWatermarkConfig;->wmHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "TextWatermarkConfig:{content:%s,fontSize:%d,fontColor:%d,offsetX:%d,offsetY:%d,wmColor:%d,wmWidth:%d,wmHeight:%d}, "

    .line 113
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
