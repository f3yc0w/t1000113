.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$ZpmQiGfXgvsGaWTnVOvpJfq3TCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/EglRenderer;

.field public final synthetic f$1:Landroid/os/Looper;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/EglRenderer;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$ZpmQiGfXgvsGaWTnVOvpJfq3TCQ;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$ZpmQiGfXgvsGaWTnVOvpJfq3TCQ;->f$1:Landroid/os/Looper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$ZpmQiGfXgvsGaWTnVOvpJfq3TCQ;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$ZpmQiGfXgvsGaWTnVOvpJfq3TCQ;->f$1:Landroid/os/Looper;

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglRenderer;->lambda$release$2$EglRenderer(Landroid/os/Looper;)V

    return-void
.end method
