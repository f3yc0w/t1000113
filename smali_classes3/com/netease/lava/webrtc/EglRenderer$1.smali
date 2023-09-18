.class Lcom/netease/lava/webrtc/EglRenderer$1;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/EglRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/webrtc/EglRenderer;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/EglRenderer;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer$1;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$1;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/netease/lava/webrtc/EglRenderer;->access$200(Lcom/netease/lava/webrtc/EglRenderer;)V

    .line 182
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$1;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/netease/lava/webrtc/EglRenderer;->access$300(Lcom/netease/lava/webrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer$1;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v1}, Lcom/netease/lava/webrtc/EglRenderer;->access$400(Lcom/netease/lava/webrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer$1;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v1}, Lcom/netease/lava/webrtc/EglRenderer;->access$400(Lcom/netease/lava/webrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer$1;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v2}, Lcom/netease/lava/webrtc/EglRenderer;->access$500(Lcom/netease/lava/webrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 185
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer$1;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v1}, Lcom/netease/lava/webrtc/EglRenderer;->access$400(Lcom/netease/lava/webrtc/EglRenderer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lava/webrtc/EglRenderer$1;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v2}, Lcom/netease/lava/webrtc/EglRenderer;->access$500(Lcom/netease/lava/webrtc/EglRenderer;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/netease/lava/webrtc/EglRenderer$1;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    iget-wide v3, v3, Lcom/netease/lava/webrtc/EglRenderer;->reportFpsIntervalMs:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 187
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
