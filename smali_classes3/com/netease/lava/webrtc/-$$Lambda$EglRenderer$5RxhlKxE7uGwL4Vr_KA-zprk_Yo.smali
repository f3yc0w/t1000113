.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$5RxhlKxE7uGwL4Vr_KA-zprk_Yo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/EglRenderer;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/EglRenderer;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$5RxhlKxE7uGwL4Vr_KA-zprk_Yo;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iput-object p2, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$5RxhlKxE7uGwL4Vr_KA-zprk_Yo;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$5RxhlKxE7uGwL4Vr_KA-zprk_Yo;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iget-object v1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$5RxhlKxE7uGwL4Vr_KA-zprk_Yo;->f$1:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/EglRenderer;->lambda$releaseEglSurface$5$EglRenderer(Ljava/lang/Runnable;)V

    return-void
.end method
