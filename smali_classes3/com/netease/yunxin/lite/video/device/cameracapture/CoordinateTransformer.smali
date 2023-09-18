.class public Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;
.super Ljava/lang/Object;
.source "CoordinateTransformer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CoordinateTransformer"


# instance fields
.field private mAreaSize:I

.field private mPreviewRect:Landroid/graphics/Rect;

.field private mPreviewToCameraTransform:Landroid/graphics/Matrix;

.field private mSensorRectF:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "characteristics",
            "context"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xc8

    .line 29
    iput v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mAreaSize:I

    const-string v0, "CoordinateTransformer"

    if-nez p2, :cond_0

    const-string p1, "context is null"

    .line 41
    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 44
    :cond_0
    invoke-static {p2}, Lcom/netease/yunxin/lite/util/VideoUtils;->getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewRect:Landroid/graphics/Rect;

    .line 45
    invoke-direct {p0, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;

    move-result-object p2

    .line 46
    invoke-direct {p0, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->hasZeroArea(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "previewRect is null"

    .line 47
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_1
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 52
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 54
    :goto_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-nez v1, :cond_3

    const/16 v1, 0x5a

    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 58
    :goto_1
    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 59
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mSensorRectF:Landroid/graphics/RectF;

    .line 61
    invoke-direct {p0, v0, v1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->previewToCameraTransform(ZILandroid/graphics/RectF;)Landroid/graphics/Matrix;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewToCameraTransform:Landroid/graphics/Matrix;

    return-void
.end method

.method private hasZeroArea(Landroid/graphics/RectF;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 132
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private previewToCameraTransform(ZILandroid/graphics/RectF;)Landroid/graphics/Matrix;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mirrorX",
            "sensorOrientation",
            "previewRect"
        }
    .end annotation

    .line 118
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 119
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    neg-int p1, p2

    int-to-float p1, p1

    .line 120
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 121
    invoke-virtual {v0, p3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 122
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 123
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mSensorRectF:Landroid/graphics/RectF;

    sget-object v1, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {p1, p3, p2, v1}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CoordinateTransformer"

    const-string p3, "setRectToRect failed"

    .line 125
    invoke-static {p2, p3}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_1
    invoke-virtual {v0, p1, v0}, Landroid/graphics/Matrix;->setConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    return-object v0
.end method

.method private rectToRectF(Landroid/graphics/Rect;)Landroid/graphics/RectF;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rect"
        }
    .end annotation

    .line 136
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method


# virtual methods
.method public clamp(FFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "min",
            "max"
        }
    .end annotation

    cmpl-float v0, p1, p3

    if-lez v0, :cond_0

    return p3

    :cond_0
    cmpg-float p3, p1, p2

    if-gez p3, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method public getAreaRect(FF)Landroid/graphics/RectF;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 89
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mAreaSize:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sub-float v0, p1, v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mAreaSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->clamp(FFF)F

    move-result v0

    .line 90
    iget v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mAreaSize:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float v1, p2, v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mAreaSize:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->clamp(FFF)F

    move-result v1

    .line 91
    iget v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mAreaSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr p1, v2

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-virtual {p0, p1, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->clamp(FFF)F

    move-result p1

    .line 92
    iget v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mAreaSize:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr p2, v2

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {p0, p2, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->clamp(FFF)F

    move-result p2

    .line 93
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v2
.end method

.method public setAreaSize(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "areaSize"
        }
    .end annotation

    .line 98
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mAreaSize:I

    return-void
.end method

.method public toCameraSpace(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 72
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->mPreviewToCameraTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 74
    invoke-virtual {p0, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/CoordinateTransformer;->toIntRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1
.end method

.method public toIntRect(Landroid/graphics/RectF;)Landroid/graphics/Rect;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rectF"
        }
    .end annotation

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 103
    iget v1, p1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 104
    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 105
    iget v1, p1, Landroid/graphics/RectF;->right:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 106
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method
