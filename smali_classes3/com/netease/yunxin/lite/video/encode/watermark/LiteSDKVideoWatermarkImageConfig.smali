.class public Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;
.super Ljava/lang/Object;
.source "LiteSDKVideoWatermarkImageConfig.java"


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
.method public constructor <init>(FIIIILjava/util/ArrayList;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "wmAlpha",
            "wmWidth",
            "wmHeight",
            "offsetX",
            "offsetY",
            "imagePaths",
            "fps",
            "loop"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FIIII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->wmAlpha:F

    .line 27
    iput p2, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->wmWidth:I

    .line 28
    iput p3, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->wmHeight:I

    .line 29
    iput p4, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->offsetX:I

    .line 30
    iput p5, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->offsetY:I

    .line 31
    iput-object p6, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->imagePaths:Ljava/util/ArrayList;

    .line 32
    iput p7, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->fps:I

    .line 33
    iput-boolean p8, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->loop:Z

    return-void
.end method


# virtual methods
.method public getFps()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->fps:I

    return v0
.end method

.method public getImagePaths()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->imagePaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getOffsetX()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->offsetX:I

    return v0
.end method

.method public getOffsetY()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->offsetY:I

    return v0
.end method

.method public getWmAlpha()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->wmAlpha:F

    return v0
.end method

.method public getWmHeight()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->wmHeight:I

    return v0
.end method

.method public getWmWidth()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->wmWidth:I

    return v0
.end method

.method public isLoop()Z
    .locals 1

    .line 73
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/video/encode/watermark/LiteSDKVideoWatermarkImageConfig;->loop:Z

    return v0
.end method
