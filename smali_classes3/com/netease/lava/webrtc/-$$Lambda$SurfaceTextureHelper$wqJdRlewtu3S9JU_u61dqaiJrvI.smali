.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$wqJdRlewtu3S9JU_u61dqaiJrvI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$wqJdRlewtu3S9JU_u61dqaiJrvI;->f$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$wqJdRlewtu3S9JU_u61dqaiJrvI;->f$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->lambda$returnTextureFrame$4$SurfaceTextureHelper()V

    return-void
.end method
