.class Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$1;
.super Landroid/hardware/display/VirtualDisplay$Callback;
.source "ScreenCapturerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;
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

    .line 76
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$1;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-direct {p0}, Landroid/hardware/display/VirtualDisplay$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPaused()V
    .locals 2

    const-string v0, "ScreenCapturerAndroid"

    const-string v1, "VirtualDisplay onPaused!"

    .line 80
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResumed()V
    .locals 2

    const-string v0, "ScreenCapturerAndroid"

    const-string v1, "VirtualDisplay onResumed!"

    .line 86
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStopped()V
    .locals 2

    const-string v0, "ScreenCapturerAndroid"

    const-string v1, "VirtualDisplay onStopped!"

    .line 92
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
