.class Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$3;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->changeCaptureFormat(III)V
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

    .line 299
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$3;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$3;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->virtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 303
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$3;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$600(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)V

    return-void
.end method
