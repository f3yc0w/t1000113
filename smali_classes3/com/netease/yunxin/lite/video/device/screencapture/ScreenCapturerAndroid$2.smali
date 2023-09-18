.class Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->stopCapture()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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

    .line 225
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->stopListening()V

    .line 230
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$102(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;Lcom/netease/lava/webrtc/SurfaceTextureHelper;)Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    move-result-object v0

    invoke-interface {v0}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;->onCapturerStopped()V

    .line 235
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$202(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;)Lcom/netease/yunxin/lite/video/device/cameracapture/core/CapturerObserver;

    .line 239
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 241
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iput-object v1, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$300(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 249
    sget-object v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->intentCallback:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;

    invoke-interface {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$ScreenCapturerIntentCallback;->stopScreenCapture()V

    .line 250
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$300(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$400(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Landroid/media/projection/MediaProjection$Callback;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/projection/MediaProjection;->unregisterCallback(Landroid/media/projection/MediaProjection$Callback;)V

    .line 252
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$302(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_4

    .line 256
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 257
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iput-object v1, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 260
    :cond_4
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$500(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 261
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$500(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/lava/webrtc/JniCommon;->nativeFreeByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 262
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$2;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$502(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method
