.class public Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;
.super Ljava/lang/Object;
.source "CameraEnumerationAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$ClosestComparator;,
        Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;
    }
.end annotation


# static fields
.field public static final COMMON_RESOLUTIONS:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/lava/webrtc/Size;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CameraEnumerationAndroid"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    new-array v1, v1, [Lcom/netease/lava/webrtc/Size;

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v3, 0xa0

    const/16 v4, 0x78

    invoke-direct {v2, v3, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v4, 0xf0

    invoke-direct {v2, v4, v3}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v3, 0x140

    invoke-direct {v2, v3, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/4 v5, 0x2

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v5, 0x190

    invoke-direct {v2, v5, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v4, 0x1e0

    invoke-direct {v2, v4, v3}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v3, 0x280

    const/16 v5, 0x168

    invoke-direct {v2, v3, v5}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/4 v5, 0x5

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    invoke-direct {v2, v3, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/4 v5, 0x6

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v5, 0x300

    invoke-direct {v2, v5, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/4 v5, 0x7

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v5, 0x356

    invoke-direct {v2, v5, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v4, 0x8

    aput-object v2, v1, v4

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v4, 0x320

    const/16 v5, 0x258

    invoke-direct {v2, v4, v5}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v4, 0x9

    aput-object v2, v1, v4

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v4, 0x3c0

    const/16 v6, 0x21c

    invoke-direct {v2, v4, v6}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v6, 0xa

    aput-object v2, v1, v6

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    invoke-direct {v2, v4, v3}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v3, 0x400

    const/16 v4, 0x240

    invoke-direct {v2, v3, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v4, 0xc

    aput-object v2, v1, v4

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    invoke-direct {v2, v3, v5}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v4, 0xd

    aput-object v2, v1, v4

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v4, 0x500

    const/16 v5, 0x2d0

    invoke-direct {v2, v4, v5}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v5, 0xe

    aput-object v2, v1, v5

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    invoke-direct {v2, v4, v3}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v3, 0x780

    const/16 v4, 0x438

    invoke-direct {v2, v3, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v4, 0x10

    aput-object v2, v1, v4

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v4, 0x5a0

    invoke-direct {v2, v3, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v3, 0xa00

    invoke-direct {v2, v3, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    new-instance v2, Lcom/netease/lava/webrtc/Size;

    const/16 v3, 0xf00

    const/16 v4, 0x870

    invoke-direct {v2, v3, v4}, Lcom/netease/lava/webrtc/Size;-><init>(II)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->COMMON_RESOLUTIONS:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClosestSupportedFramerateRange(Ljava/util/List;IZ)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "supportedFramerates",
            "requestedFps",
            "fpsPreferUpBound"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
            ">;IZ)",
            "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 216
    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->getClosestSupportedFramerateRangeWebRTC(Ljava/util/List;I)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object p0

    goto :goto_0

    .line 218
    :cond_0
    invoke-static {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid;->getClosestSupportedFramerateRangeG1(Ljava/util/List;I)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getClosestSupportedFramerateRangeG1(Ljava/util/List;I)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "supportedFramerates",
            "requestedFps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
            ">;I)",
            "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;"
        }
    .end annotation

    mul-int/lit16 p1, p1, 0x3e8

    mul-int/lit8 v0, p1, 0x64

    .line 198
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    .line 199
    iget v3, v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->min:I

    sub-int v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 200
    iget v4, v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;->max:I

    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-ge v3, v0, :cond_0

    move-object v1, v2

    move v0, v3

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static getClosestSupportedFramerateRangeWebRTC(Ljava/util/List;I)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "supportedFramerates",
            "requestedFps"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;",
            ">;I)",
            "Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;"
        }
    .end annotation

    .line 162
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;

    invoke-direct {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$1;-><init>(I)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat$FramerateRange;

    return-object p0
.end method

.method public static getClosestSupportedSize(Ljava/util/List;II)Lcom/netease/lava/webrtc/Size;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "supportedSizes",
            "requestedWidth",
            "requestedHeight"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/netease/lava/webrtc/Size;",
            ">;II)",
            "Lcom/netease/lava/webrtc/Size;"
        }
    .end annotation

    .line 226
    new-instance v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$2;

    invoke-direct {v0, p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$2;-><init>(II)V

    invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/netease/lava/webrtc/Size;

    return-object p0
.end method
