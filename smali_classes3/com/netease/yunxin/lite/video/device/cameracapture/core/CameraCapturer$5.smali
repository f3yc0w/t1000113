.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lcom/netease/lava/webrtc/ForegroundMonitor$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 380
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isForeground"
        }
    .end annotation

    .line 383
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z

    if-nez p1, :cond_0

    return-void

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CameraCapturer"

    const-string v0, "The app goes back to the foreground and tries to reopen the camera"

    .line 390
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 396
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z

    .line 397
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1202(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;I)I

    .line 398
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$5;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;I)V

    .line 399
    monitor-exit p1

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "CameraCapturer"

    const-string v1, "Session already open"

    .line 393
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    .line 399
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return-void
.end method
