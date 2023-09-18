.class Lcom/netease/lava/webrtc/AndroidVideoDecoder$1;
.super Ljava/lang/Object;
.source "AndroidVideoDecoder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lava/webrtc/AndroidVideoDecoder;->releaseInternal()Lcom/netease/lava/webrtc/VideoCodecStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;

.field final synthetic val$releaseDone:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/netease/lava/webrtc/AndroidVideoDecoder;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$1;->this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;

    iput-object p2, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$1;->this$0:Lcom/netease/lava/webrtc/AndroidVideoDecoder;

    invoke-static {v0}, Lcom/netease/lava/webrtc/AndroidVideoDecoder;->access$000(Lcom/netease/lava/webrtc/AndroidVideoDecoder;)V

    .line 479
    iget-object v0, p0, Lcom/netease/lava/webrtc/AndroidVideoDecoder$1;->val$releaseDone:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
