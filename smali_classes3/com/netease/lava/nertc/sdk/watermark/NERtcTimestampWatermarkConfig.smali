.class public Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;
.super Ljava/lang/Object;
.source "NERtcTimestampWatermarkConfig.java"


# instance fields
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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 31
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->fontSize:I

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->fontColor:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->offsetX:I

    .line 62
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->offsetY:I

    const v1, -0x77777778

    .line 72
    iput v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->wmColor:I

    .line 82
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->wmWidth:I

    .line 92
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->wmHeight:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 99
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->fontSize:I

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->fontColor:I

    .line 101
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->offsetX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->offsetY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->wmColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->wmWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcTimestampWatermarkConfig;->wmHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "TimestampWatermarkConfig:{fontSize:%d,fontColor:%d,offsetX:%d,offsetY:%d,wmColor:%d,wmWidth:%d,wmHeight:%d}"

    .line 99
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
