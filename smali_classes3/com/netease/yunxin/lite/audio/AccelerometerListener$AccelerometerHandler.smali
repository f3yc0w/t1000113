.class Lcom/netease/yunxin/lite/audio/AccelerometerListener$AccelerometerHandler;
.super Landroid/os/Handler;
.source "AccelerometerListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/audio/AccelerometerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccelerometerHandler"
.end annotation


# instance fields
.field l:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/netease/yunxin/lite/audio/AccelerometerListener;",
            ">;"
        }
    .end annotation
.end field

.field final lock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 117
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 115
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener$AccelerometerHandler;->lock:Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener$AccelerometerHandler;->l:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener$AccelerometerHandler;->l:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/yunxin/lite/audio/AccelerometerListener;

    if-nez v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x4d2

    if-eq p1, v1, :cond_1

    goto :goto_1

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/netease/yunxin/lite/audio/AccelerometerListener$AccelerometerHandler;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 129
    :try_start_0
    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->access$200(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->access$102(Lcom/netease/yunxin/lite/audio/AccelerometerListener;I)I

    const-string v1, "AccelerometerListener"

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "orientation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->access$100(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v3, "horizontal"

    goto :goto_0

    .line 132
    :cond_2
    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->access$100(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const-string v3, "vertical"

    goto :goto_0

    :cond_3
    const-string v3, "unknown"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->access$300(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;

    move-result-object v1

    invoke-static {v0}, Lcom/netease/yunxin/lite/audio/AccelerometerListener;->access$100(Lcom/netease/yunxin/lite/audio/AccelerometerListener;)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/netease/yunxin/lite/audio/AccelerometerListener$OrientationListener;->orientationChanged(I)V

    .line 135
    monitor-exit p1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
