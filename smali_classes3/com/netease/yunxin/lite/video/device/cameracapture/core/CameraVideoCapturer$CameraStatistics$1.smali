.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;
.super Ljava/lang/Object;
.source "CameraVideoCapturer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 203
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x44fa0000    # 2000.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I

    move-result v1

    const/4 v2, 0x5

    rem-int/2addr v1, v2

    const-string v3, "CameraStatistics"

    if-nez v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;I)I

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Camera fps: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$108(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I

    .line 212
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 213
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$204(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I

    .line 214
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x7d0

    const/16 v2, 0xfa0

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    .line 215
    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "Camera freezed."

    .line 216
    invoke-static {v3, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->isTextureInUse()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    const-string v1, "Camera failure. Client must return video buffers."

    invoke-interface {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraFreezed(Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;

    move-result-object v0

    const-string v1, "Camera failure."

    invoke-interface {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraEventsHandler;->onCameraFreezed(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 226
    :cond_2
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$202(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;I)I

    .line 228
    :cond_3
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$002(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;I)I

    .line 229
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;->access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$CameraStatistics;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getHandler()Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
