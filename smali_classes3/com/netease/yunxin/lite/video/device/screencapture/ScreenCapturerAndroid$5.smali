.class Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private deliverCachedBufferCount:I

.field private freezePeriodCount:I

.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 516
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 520
    iput p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->deliverCachedBufferCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 524
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1400(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$KeepAliveStatistics;->getAndResetFrameCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 527
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->freezePeriodCount:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->freezePeriodCount:I

    mul-int/lit16 v0, v0, 0x1f4

    const/16 v3, 0x7d0

    if-le v0, v3, :cond_2

    .line 529
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1500(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Z

    move-result v0

    const-string v3, "ScreenCapturerAndroid"

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/lava/webrtc/device/HardwareLevel;->level()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Screen Capture freeze ,sending Cached frame. width: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    .line 531
    invoke-static {v4}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v4}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " orientationFramesCount: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v4}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1000(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " deliverCachedBufferCount: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->deliverCachedBufferCount:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iget v4, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->freezePeriodCount:I

    mul-int/lit16 v4, v4, 0x1f4

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->deliverCachedBuffer(J)V

    .line 535
    :cond_0
    iget v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->deliverCachedBufferCount:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->deliverCachedBufferCount:I

    .line 536
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1500(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->deliverCachedBufferCount:I

    const/4 v2, 0x2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    .line 538
    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1000(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 539
    iput v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->deliverCachedBufferCount:I

    const-string v0, "Screen Capture freeze . Try to recreate!"

    .line 540
    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v2

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1300(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->changeCaptureFormat(III)V

    goto :goto_0

    .line 545
    :cond_1
    iput v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->deliverCachedBufferCount:I

    .line 546
    iput v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$5;->freezePeriodCount:I

    :cond_2
    :goto_0
    const-wide/16 v0, 0x1f4

    .line 549
    invoke-static {p0, v0, v1}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
