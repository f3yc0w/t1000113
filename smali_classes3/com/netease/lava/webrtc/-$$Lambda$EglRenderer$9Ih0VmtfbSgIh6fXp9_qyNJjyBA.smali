.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$9Ih0VmtfbSgIh6fXp9_qyNJjyBA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/EglRenderer;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/EglRenderer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$9Ih0VmtfbSgIh6fXp9_qyNJjyBA;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$9Ih0VmtfbSgIh6fXp9_qyNJjyBA;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$9Ih0VmtfbSgIh6fXp9_qyNJjyBA;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$9Ih0VmtfbSgIh6fXp9_qyNJjyBA;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglRenderer;->lambda$release$1$EglRenderer(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
