.class Lcom/netease/lava/webrtc/EglRenderer$2;
.super Ljava/lang/Object;
.source "EglRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/EglRenderer;->init(Lcom/netease/lava/webrtc/EglBase$Context;[ILcom/netease/lava/webrtc/RendererCommon$GlDrawer;Z)V
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

    .line 223
    iput-object p1, p0, Lcom/netease/lava/webrtc/EglRenderer$2;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 226
    iget-object v0, p0, Lcom/netease/lava/webrtc/EglRenderer$2;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    invoke-static {v0}, Lcom/netease/lava/webrtc/EglRenderer;->access$300(Lcom/netease/lava/webrtc/EglRenderer;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/netease/lava/webrtc/EglRenderer$2;->this$0:Lcom/netease/lava/webrtc/EglRenderer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/netease/lava/webrtc/EglRenderer;->access$402(Lcom/netease/lava/webrtc/EglRenderer;Landroid/os/Handler;)Landroid/os/Handler;

    .line 228
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
