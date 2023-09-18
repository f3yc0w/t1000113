.class public Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;
.super Ljava/lang/Object;
.source "NERtcImageWatermarkConfig.java"


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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->imageWidth:I

    .line 51
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->imageHeight:I

    .line 61
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->offsetX:I

    .line 71
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->offsetY:I

    .line 81
    iput v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->fps:I

    const/4 v0, 0x1

    .line 91
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->loop:Z

    return-void
.end method

.method private getImageStr()Ljava/lang/String;
    .locals 6

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->images:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 106
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    if-nez v4, :cond_0

    const-string v4, "null,"

    .line 108
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    const-string v5, "bitmap["

    .line 110
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "x"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "],"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 114
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 98
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    .line 99
    invoke-direct {p0}, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->getImageStr()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->imageWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->imageHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->offsetX:I

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->offsetY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->fps:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/netease/lava/nertc/sdk/watermark/NERtcImageWatermarkConfig;->loop:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "ImageWatermarkConfig:{images:%s,imageWidth:%d,imageHeight:%doffsetX:%d,offsetY:%d,fps:%d,loop:%b}"

    .line 98
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
