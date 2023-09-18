.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;
.super Ljava/lang/Object;
.source "CameraCapturer.java"

# interfaces
.implements Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;


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

    .line 143
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraClosed(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    .line 206
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    move-result-object v1

    if-eq p1, v1, :cond_0

    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "CameraCapturer"

    const-string v1, "onCameraClosed from another session."

    .line 208
    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    monitor-exit v0

    return-void

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraClosed()V

    .line 214
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCameraDisconnected(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "session"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    .line 186
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 187
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    move-result-object v1

    if-eq p1, v1, :cond_0

    const-string p1, "CameraCapturer"

    const-string v1, "onCameraDisconnected from another session."

    .line 188
    invoke-static {p1, v1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    monitor-exit v0

    return-void

    .line 191
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 192
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stopCapture()V

    .line 193
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraDisconnected(Z)V

    .line 194
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 196
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 197
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraDisconnected(Z)V

    .line 198
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stopCapture()V

    .line 200
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

.method public onCameraError(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "session",
            "error",
            "deviceErrorType"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    .line 159
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    move-result-object v1

    if-eq p1, v1, :cond_0

    const-string p1, "CameraCapturer"

    .line 161
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraError from another session: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    monitor-exit v0

    return-void

    .line 164
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z

    .line 165
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 166
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 167
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stopCapture()V

    .line 168
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;IZ)V

    .line 169
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    const-string p1, "Camera error unknown!"

    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 172
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 173
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stopCapture()V

    .line 174
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;IZ)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->stopCapture()V

    .line 177
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1, p2, p3, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraError(Ljava/lang/String;IZ)V

    .line 180
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

.method public onCameraFormatsInquired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "deviceId",
            "formats",
            "selectFormat"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    .line 238
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "CameraCapturer"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraFormatsInquired formats : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraFormatsInrequired(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onCameraOpening()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    .line 147
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "CameraCapturer"

    const-string v2, "onCameraOpening while session was open."

    .line 149
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    monitor-exit v0

    return-void

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraOpening(Ljava/lang/String;)V

    .line 153
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onFrameCaptured(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "session",
            "frame"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)V

    .line 220
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;

    move-result-object v1

    if-eq p1, v1, :cond_0

    const-string p1, "CameraCapturer"

    const-string p2, "onFrameCaptured from another session."

    .line 222
    invoke-static {p1, p2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    monitor-exit v0

    return-void

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 226
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object p1

    invoke-interface {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onFirstFrameAvailable()V

    .line 227
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$1102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;Z)Z

    .line 228
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$2000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$800(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->addFrame()V

    .line 231
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer$2;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;->access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraCapturer;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;->onFrameCaptured(Lcom/netease/lava/webrtc/VideoFrame;)V

    .line 232
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
