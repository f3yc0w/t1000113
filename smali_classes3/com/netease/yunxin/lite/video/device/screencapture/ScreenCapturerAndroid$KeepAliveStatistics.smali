.class Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepAliveStatistics"
.end annotation


# instance fields
.field private frameCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 501
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 503
    iput v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;->frameCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$1;)V
    .locals 0

    .line 501
    invoke-direct {p0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;-><init>()V

    return-void
.end method


# virtual methods
.method addFrame()V
    .locals 1

    .line 506
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;->frameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;->frameCount:I

    return-void
.end method

.method getAndResetFrameCount()I
    .locals 2

    .line 510
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;->frameCount:I

    const/4 v1, 0x0

    .line 511
    iput v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;->frameCount:I

    return v0
.end method
