.class Lcom/netease/lava/webrtc/AndroidVideoDecoder$2;
.super Ljava/lang/Thread;
.source "AndroidVideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/AndroidVideoDecoder;->createOutputThread()Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/AndroidVideoDecoder;Ljava/lang/String;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$2;->this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 546
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$2;->this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;

    new-instance v1, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    invoke-direct {v1}, Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;-><init>()V

    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->access$102(Lcom/netease/lava/webrtc/AndroidVideoDecoder;Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;)Lcom/netease/lava/webrtc/ThreadUtils$ThreadChecker;

    .line 547
    :goto_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$2;->this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;

    invoke-static {v0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->access$200(Lcom/netease/lava/webrtc/AndroidVideoDecoder;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$2;->this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->deliverDecodedFrame()Z

    goto :goto_0

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$2;->this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;

    invoke-static {v0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->access$000(Lcom/netease/lava/webrtc/AndroidVideoDecoder;)V

    return-void
.end method
