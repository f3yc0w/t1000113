.class Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2Session.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraStateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;


# direct methods
.method private constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;)V
    .locals 0

    .line 151
    invoke-direct {p0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    return-void
.end method

.method private getErrorDescription(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown camera error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "Camera service has encountered a fatal error."

    return-object p1

    :cond_1
    const-string p1, "Camera device has encountered a fatal error."

    return-object p1

    :cond_2
    const-string p1, "Camera device could not be opened due to a device policy."

    return-object p1

    :cond_3
    const-string p1, "Camera device could not be opened because there are too many other open camera devices."

    return-object p1

    :cond_4
    const-string p1, "Camera device is in use already."

    return-object p1
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 236
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    const-string p1, "Camera2Session"

    const-string v0, "Camera device closed."

    .line 238
    invoke-static {p1, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-interface {p1, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraClosed(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V

    return-void
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 172
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    .line 173
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    move-result-object p1

    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 174
    :goto_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$202(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    .line 175
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    if-eqz p1, :cond_1

    .line 177
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;

    move-result-object p1

    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;->DISCONNECTED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA_UNKNOWN_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    const-string v2, "Camera disconnected / evicted."

    invoke-interface {p1, v0, v2, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$CreateSessionCallback;->onFailure(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$FailureType;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    goto :goto_1

    .line 179
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;

    move-result-object p1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-interface {p1, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$Events;->onCameraDisconnected(Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession;)V

    :goto_1
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "camera",
            "errorCode"
        }
    .end annotation

    .line 185
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    .line 186
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-direct {p0, p2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->getErrorDescription(I)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA2_INIT_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-static {p1, p2, v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "camera"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)V

    .line 192
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    move-result-object v0

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;->STOPPED:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$SessionState;

    const-string v2, "Camera2Session"

    if-ne v0, v1, :cond_0

    const-string p1, "onOpened, Camera has error,do not continue "

    .line 193
    invoke-static {v2, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Camera opened."

    .line 197
    invoke-static {v2, v0}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$702(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$800(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 212
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v2, v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v3

    iget v3, v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->height:I

    invoke-virtual {v1, v2, v3}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->setTextureSize(II)V

    .line 213
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    new-instance v2, Landroid/view/Surface;

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1000(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1102(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;

    .line 214
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1100(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 216
    :cond_1
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v2

    iget v2, v2, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->width:I

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$900(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;

    move-result-object v3

    iget v3, v3, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraEnumerationAndroid$CaptureFormat;->height:I

    const/16 v4, 0x23

    const/4 v5, 0x2

    invoke-static {v2, v3, v4, v5}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1202(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    .line 217
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/media/ImageReader;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1300(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/media/ImageReader$OnImageAvailableListener;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 218
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1200(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/media/ImageReader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1502(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/view/Surface;)Landroid/view/Surface;

    .line 219
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1500(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/Surface;

    check-cast v0, [Landroid/view/Surface;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;-><init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$1;)V

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$1400(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;)Landroid/os/Handler;

    move-result-object v2

    .line 224
    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 229
    :goto_1
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CameraStateCallback;->this$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create capture session. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$-CC;->getExceptionDescription(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;->CAMERA2_CREATE_SESSION_ERROR:Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;

    invoke-static {v0, p1, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->access$600(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Ljava/lang/String;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CameraSession$DeviceErrorType;)V

    return-void
.end method
