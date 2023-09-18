.class public Lcom/netease/yunxin/lite/util/VideoUtils;
.super Ljava/lang/Object;
.source "VideoUtils.java"


# static fields
.field private static ALIGNMENT:I = 0x2

.field private static final ALIGNMENT_DEFAULT:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alignment(D)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 60
    sget v0, Lcom/netease/yunxin/lite/util/VideoUtils;->ALIGNMENT:I

    int-to-double v1, v0

    div-double/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    double-to-int p0, p0

    mul-int v0, v0, p0

    return v0
.end method

.method public static getDisplaySize(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    const-string v0, "window"

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 49
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 50
    iget p0, v0, Landroid/graphics/Point;->x:I

    .line 51
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 53
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method public static scaleSizeWithAlignment(IIII)Lcom/netease/lava/webrtc/Size;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "inputW",
            "inputH",
            "maxW",
            "maxH"
        }
    .end annotation

    mul-int v0, p0, p1

    mul-int v0, v0, p2

    mul-int v0, v0, p3

    if-nez v0, :cond_0

    .line 20
    new-instance p2, Lcom/netease/lava/webrtc/Size;

    invoke-direct {p2, p0, p1}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    return-object p2

    .line 23
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 24
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 25
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 26
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    int-to-float p3, v0

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v3, p3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v1, v1

    mul-float v5, v1, v0

    int-to-float v6, p2

    div-float/2addr v5, v6

    cmpl-float v3, v5, v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    int-to-double v2, p2

    .line 35
    invoke-static {v2, v3}, Lcom/netease/yunxin/lite/util/VideoUtils;->alignment(D)I

    move-result p2

    mul-float v6, v6, v0

    mul-float v6, v6, p3

    div-float/2addr v6, v1

    float-to-double v0, v6

    .line 36
    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/VideoUtils;->alignment(D)I

    move-result p3

    goto :goto_1

    :cond_2
    mul-float v4, v4, v0

    mul-float v4, v4, v1

    div-float/2addr v4, p3

    float-to-double p2, v4

    .line 38
    invoke-static {p2, p3}, Lcom/netease/yunxin/lite/util/VideoUtils;->alignment(D)I

    move-result p2

    int-to-double v0, v2

    .line 39
    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/util/VideoUtils;->alignment(D)I

    move-result p3

    :goto_1
    if-le p0, p1, :cond_3

    .line 42
    new-instance p0, Lcom/netease/lava/webrtc/Size;

    invoke-direct {p0, p2, p3}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/netease/lava/webrtc/Size;

    invoke-direct {p0, p3, p2}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    :goto_2
    return-object p0
.end method
