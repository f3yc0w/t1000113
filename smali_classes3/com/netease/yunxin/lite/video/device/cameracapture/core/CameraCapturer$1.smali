.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;


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

    .line 57
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    .line 72
    instance-of v0, p1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    const-string v1, "CameraCapturer"

    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Create session done. Switch state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " isCamera2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;->onCapturerStarted(Z)V

    .line 77
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z

    .line 78
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$302(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    .line 79
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v3

    iget-object v4, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;-><init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;)V

    invoke-static {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$802(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    .line 80
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z

    .line 81
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 83
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_0

    const-string p1, "CameraCapturer"

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reopen , try num : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-interface {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraReOpen(I)V

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    move-result-object p1

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IN_PROGRESS:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    if-ne p1, v1, :cond_1

    .line 91
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IDLE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    invoke-static {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    .line 92
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 93
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object p1

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerator;->isFrontFacing(Ljava/lang/String;)Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchDone(Z)V

    .line 94
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1302(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    goto :goto_0

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    move-result-object p1

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->PENDING:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    if-ne p1, v1, :cond_2

    .line 97
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IDLE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    invoke-static {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    .line 98
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)V

    .line 100
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onFailure(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "failureType",
            "error",
            "deviceErrorType"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    .line 106
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;->onCapturerStarted(Z)V

    .line 109
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1210(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    const-string v1, "CameraCapturer"

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFailure\uff0copenAttemptsRemaining: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v4}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result v1

    const/16 v3, 0x1f4

    if-gtz v1, :cond_4

    const-string v1, "CameraCapturer"

    .line 112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Opening camera failed, passing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z

    .line 114
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 116
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    move-result-object v1

    sget-object v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IDLE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    if-eq v1, v2, :cond_1

    .line 117
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;->onCameraSwitchError(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1302(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraSwitchHandler;

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    sget-object v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;->IDLE:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    .line 124
    :cond_1
    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->DISCONNECTED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 125
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraDisconnected(Z)V

    goto :goto_0

    .line 127
    :cond_2
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1700(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    move-result p1

    if-lez p1, :cond_3

    .line 128
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1710(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)I

    .line 129
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1800(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;I)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-virtual {p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->getCode()I

    move-result p3

    invoke-interface {p1, p2, p3, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;IZ)V

    goto :goto_0

    :cond_4
    const-string p1, "CameraCapturer"

    .line 135
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Opening camera failed, retry: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;I)V

    .line 138
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onOpening(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    const-string v0, "CameraCapturer"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opened session. Switch state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$SwitchState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$302(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    .line 65
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 66
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
