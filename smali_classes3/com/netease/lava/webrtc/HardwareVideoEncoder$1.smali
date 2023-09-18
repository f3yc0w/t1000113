.class Lcom/netease/lava/webrtc/HardwareVideoEncoder$1;
.super Ljava/lang/Object;
.source "HardwareVideoEncoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/HardwareVideoEncoder;->release()Lcom/netease/lava/webrtc/VideoCodecStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/webrtc/HardwareVideoEncoder;

.field final synthetic val$releaseDone:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/HardwareVideoEncoder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder$1;->this$0:Lcom/netease/lava/webrtc/HardwareVideoEncoder;

    iput-object p2, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder$1;->this$0:Lcom/netease/lava/webrtc/HardwareVideoEncoder;

    invoke-static {v0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->access$000(Lcom/netease/lava/webrtc/HardwareVideoEncoder;)V

    .line 480
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
