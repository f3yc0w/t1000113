.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;
.super Ljava/lang/Object;
.source "AreaFocus.java"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLandroid/hardware/Camera;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "success",
            "camera"
        }
    .end annotation

    const-string v0, "continuous-video"

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 48
    :goto_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera AreaFocus success:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " Rect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 50
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    move-result-object v1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v2

    :goto_1
    invoke-interface {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;->focusArea(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 53
    :cond_2
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;

    move-result-object v1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v2

    :goto_2
    invoke-interface {v1, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraVideoCapturer$AreaFocusCallback;->exposureArea(Landroid/graphics/Rect;)V

    .line 59
    :cond_4
    :goto_3
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 60
    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 61
    invoke-virtual {p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 63
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 64
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 65
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "set focus mode continuous-video"

    invoke-static {p2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :cond_5
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Landroid/hardware/Camera;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 69
    iget-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus$1;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;

    invoke-static {p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/AreaFocus;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Camera AreaFocus reset FOCUS_MODE_CONTINUOUS_VIDEO failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method
