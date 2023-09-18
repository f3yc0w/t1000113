.class Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;
.super Ljava/lang/Object;
.source "ScreenCapturerAndroid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->listenOrientationChange()V
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

    .line 462
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    new-instance v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$700(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, p0, v2, v3}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;-><init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;Landroid/content/Context;I)V

    iput-object v1, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 496
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method
