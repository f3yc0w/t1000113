.class Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;
.super Ljava/lang/Object;
.source "SurfaceTextureHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/SurfaceTextureHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting listener to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-static {v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->access$100(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)Lcom/netease/lava/webrtc/VideoSink;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SurfaceTextureHelper"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->access$100(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)Lcom/netease/lava/webrtc/VideoSink;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->access$202(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Lcom/netease/lava/webrtc/VideoSink;)Lcom/netease/lava/webrtc/VideoSink;

    .line 106
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->access$102(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Lcom/netease/lava/webrtc/VideoSink;)Lcom/netease/lava/webrtc/VideoSink;

    .line 108
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->access$300(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-static {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->access$400(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V

    .line 111
    iget-object v0, p0, Lcom/netease/lava/webrtc/SurfaceTextureHelper$2;->this$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->access$302(Lcom/netease/lava/webrtc/SurfaceTextureHelper;Z)Z

    :cond_0
    return-void
.end method
