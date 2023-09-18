.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/EglRenderer;

.field public final synthetic f$1:F

.field public final synthetic f$2:F

.field public final synthetic f$3:F

.field public final synthetic f$4:F


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/EglRenderer;FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iput p2, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$1:F

    iput p3, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$2:F

    iput p4, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$3:F

    iput p5, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$4:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$0:Lcom/netease/lava/webrtc/EglRenderer;

    iget v1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$1:F

    iget v2, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$2:F

    iget v3, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$3:F

    iget v4, p0, Lcom/netease/lava/webrtc/-$$Lambda$EglRenderer$-KXP4pmjV8Bv5IqidVX_y-kMVdo;->f$4:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/netease/lava/webrtc/EglRenderer;->lambda$clearImage$6$EglRenderer(FFFF)V

    return-void
.end method
