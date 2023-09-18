.class Lcom/netease/lava/webrtc/HardwareVideoEncoder$2;
.super Ljava/lang/Thread;
.source "HardwareVideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/HardwareVideoEncoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/webrtc/HardwareVideoEncoder;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/HardwareVideoEncoder;)V
    .locals 0

    .line 791
    iput-object p1, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder$2;->this$0:Lcom/netease/lava/webrtc/HardwareVideoEncoder;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 794
    :goto_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder$2;->this$0:Lcom/netease/lava/webrtc/HardwareVideoEncoder;

    invoke-static {v0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->access$100(Lcom/netease/lava/webrtc/HardwareVideoEncoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder$2;->this$0:Lcom/netease/lava/webrtc/HardwareVideoEncoder;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->deliverEncodedImage()Z

    goto :goto_0

    .line 797
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/HardwareVideoEncoder$2;->this$0:Lcom/netease/lava/webrtc/HardwareVideoEncoder;

    invoke-static {v0}, Lcom/netease/lava/webrtc/HardwareVideoEncoder;->access$000(Lcom/netease/lava/webrtc/HardwareVideoEncoder;)V

    return-void
.end method
