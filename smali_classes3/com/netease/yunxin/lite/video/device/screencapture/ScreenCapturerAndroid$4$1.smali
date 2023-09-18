.class Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;
.super Landroid/view/OrientationEventListener;
.source "ScreenCapturerAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$1",
            "x0",
            "x1"
        }
    .end annotation

    .line 465
    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rotation"
        }
    .end annotation

    .line 468
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$700(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 470
    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$800(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 471
    :try_start_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v1, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$900(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 472
    monitor-exit v0

    return-void

    .line 474
    :cond_0
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v1, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v1, p1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$902(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;I)I

    .line 475
    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v1, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1002(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;I)I

    .line 476
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const-string v0, "ScreenCapturerAndroid"

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " orientation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 485
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result p1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 486
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v1, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v2, v2, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1300(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->changeCaptureFormat(III)V

    goto :goto_0

    .line 480
    :cond_2
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {p1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result p1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v0

    if-le p1, v0, :cond_3

    .line 481
    iget-object p1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object p1, p1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v0, v0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v0}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1100(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v0

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v1, v1, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v1}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1200(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v1

    iget-object v2, p0, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4$1;->this$1:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;

    iget-object v2, v2, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid$4;->this$0:Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;

    invoke-static {v2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->access$1300(Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;)I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/netease/yunxin/lite/video/device/screencapture/ScreenCapturerAndroid;->changeCaptureFormat(III)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 476
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
