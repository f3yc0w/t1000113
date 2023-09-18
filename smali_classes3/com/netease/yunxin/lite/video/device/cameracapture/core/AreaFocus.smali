.class public Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;
.super Ljava/lang/Object;
.source "AreaFocus.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCamera:Landroid/hardware/Camera;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mCurrentRect:Landroid/graphics/Rect;

.field private mIsFocus:Z

.field private mSetParam:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AreaFocus"

    .line 29
    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mIsFocus:Z

    .line 40
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mSetParam:Z

    .line 43
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mContext:Landroid/content/Context;

    .line 44
    new-instance p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;

    invoke-direct {p1, p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mSetParam:Z

    return p0
.end method

.method static synthetic access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Ljava/lang/String;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Landroid/graphics/Rect;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCurrentRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mIsFocus:Z

    return p0
.end method

.method static synthetic access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Landroid/hardware/Camera;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method private calculateTapArea(FFFI)Landroid/graphics/Rect;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "coefficient",
            "focusAreaSize"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    int-to-float v0, p4

    mul-float v0, v0, p3

    .line 142
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Float;->intValue()I

    move-result p3

    .line 146
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->getRotation()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 148
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 149
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 150
    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x2

    div-int/2addr p4, v4

    int-to-float p4, p4

    sub-float v5, p1, p4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-float v6, p2, p4

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-float v7, p1, p4

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    add-float/2addr p4, p2

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    invoke-direct {v3, v5, v6, v7, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCurrentRect:Landroid/graphics/Rect;

    const/4 p4, 0x0

    const/high16 v3, 0x44fa0000    # 2000.0f

    const/high16 v5, 0x447a0000    # 1000.0f

    if-eqz v0, :cond_3

    const/4 v6, 0x1

    if-eq v0, v6, :cond_2

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 p1, 0x0

    goto :goto_2

    :cond_1
    neg-float p1, p1

    int-to-float p4, v2

    div-float/2addr p1, p4

    mul-float p1, p1, v3

    add-float/2addr p1, v5

    goto :goto_0

    :cond_2
    neg-float p1, p1

    int-to-float p4, v2

    div-float/2addr p1, p4

    mul-float p1, p1, v3

    add-float/2addr p1, v5

    float-to-int p4, p1

    neg-float p1, p2

    int-to-float p2, v1

    div-float/2addr p1, p2

    mul-float p1, p1, v3

    add-float/2addr p1, v5

    float-to-int p1, p1

    goto :goto_1

    :cond_3
    int-to-float p4, v2

    div-float/2addr p1, p4

    mul-float p1, p1, v3

    sub-float/2addr p1, v5

    :goto_0
    float-to-int p4, p1

    int-to-float p1, v1

    div-float/2addr p2, p1

    mul-float p2, p2, v3

    sub-float/2addr p2, v5

    float-to-int p1, p2

    :goto_1
    move v8, p4

    move p4, p1

    move p1, v8

    .line 169
    :goto_2
    div-int/lit8 p2, p3, 0x2

    sub-int/2addr p4, p2

    const/16 v0, -0x3e8

    const/16 v1, 0x3e8

    invoke-direct {p0, p4, v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->clamp(III)I

    move-result p4

    sub-int/2addr p1, p2

    .line 170
    invoke-direct {p0, p1, v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->clamp(III)I

    move-result p1

    add-int p2, p4, p3

    int-to-float p2, p2

    const/high16 v0, -0x3b860000    # -1000.0f

    cmpl-float v1, p2, v5

    if-lez v1, :cond_4

    const/high16 p2, 0x447a0000    # 1000.0f

    goto :goto_3

    :cond_4
    cmpg-float v1, p2, v0

    if-gez v1, :cond_5

    const/high16 p2, -0x3b860000    # -1000.0f

    :cond_5
    :goto_3
    add-int/2addr p3, p1

    int-to-float p3, p3

    cmpl-float v1, p3, v5

    if-lez v1, :cond_6

    goto :goto_4

    :cond_6
    cmpg-float v1, p3, v0

    if-gez v1, :cond_7

    const/high16 v5, -0x3b860000    # -1000.0f

    goto :goto_4

    :cond_7
    move v5, p3

    .line 185
    :goto_4
    new-instance p3, Landroid/graphics/RectF;

    int-to-float p4, p4

    int-to-float p1, p1

    invoke-direct {p3, p4, p1, p2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 186
    new-instance p1, Landroid/graphics/Rect;

    iget p2, p3, Landroid/graphics/RectF;->left:F

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iget p4, p3, Landroid/graphics/RectF;->top:F

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    iget v0, p3, Landroid/graphics/RectF;->right:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    invoke-direct {p1, p2, p4, v0, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private clamp(III)I
    .locals 0
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

    if-le p1, p3, :cond_0

    return p3

    :cond_0
    if-ge p1, p2, :cond_1

    return p2

    :cond_1
    return p1
.end method

.method private getRotation()I
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "window"

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 133
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    return v0
.end method


# virtual methods
.method destory()V
    .locals 1

    const/4 v0, 0x0

    .line 84
    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mContext:Landroid/content/Context;

    .line 85
    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCamera:Landroid/hardware/Camera;

    .line 86
    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 87
    iput-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    return-void
.end method

.method focusArea(FFIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "size",
            "onlyMetering"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 96
    :try_start_0
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->calculateTapArea(FFFI)Landroid/graphics/Rect;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 98
    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    const/high16 v2, 0x3f800000    # 1.0f

    .line 99
    invoke-direct {p0, p1, p2, v2, p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->calculateTapArea(FFFI)Landroid/graphics/Rect;

    move-result-object p1

    const-string p2, "macro"

    .line 100
    invoke-virtual {v1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumFocusAreas()I

    move-result p2

    const/16 p3, 0x320

    if-lez p2, :cond_1

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    new-instance v2, Landroid/hardware/Camera$Area;

    invoke-direct {v2, p1, p3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {v1, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 107
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getMaxNumMeteringAreas()I

    move-result p1

    if-lez p1, :cond_2

    if-eqz p4, :cond_2

    .line 108
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance p2, Landroid/hardware/Camera$Area;

    invoke-direct {p2, v0, p3}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v1, p1}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_2
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 113
    :try_start_1
    iput-boolean p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mSetParam:Z

    if-nez p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 114
    :goto_0
    iput-boolean p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mIsFocus:Z

    .line 115
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p2, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 117
    :try_start_2
    iput-boolean p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mSetParam:Z

    .line 118
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "focusArea failed: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCamera:Landroid/hardware/Camera;

    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 123
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Camera AreaFocus failed:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method setCamera(Landroid/hardware/Camera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCamera:Landroid/hardware/Camera;

    return-void
.end method

.method setFocusCallback(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->mCallback:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    return-void
.end method
