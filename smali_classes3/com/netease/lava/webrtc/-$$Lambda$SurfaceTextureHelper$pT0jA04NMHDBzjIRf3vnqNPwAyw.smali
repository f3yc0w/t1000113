.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$pT0jA04NMHDBzjIRf3vnqNPwAyw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/SurfaceTextureHelper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$pT0jA04NMHDBzjIRf3vnqNPwAyw;->f$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    iput p2, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$pT0jA04NMHDBzjIRf3vnqNPwAyw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$pT0jA04NMHDBzjIRf3vnqNPwAyw;->f$0:Lcom/netease/lava/webrtc/SurfaceTextureHelper;

    iget v1, p0, Lcom/netease/lava/webrtc/-$$Lambda$SurfaceTextureHelper$pT0jA04NMHDBzjIRf3vnqNPwAyw;->f$1:I

    invoke-virtual {v0, v1}, Lcom/netease/lava/webrtc/SurfaceTextureHelper;->lambda$setFrameRotation$3$SurfaceTextureHelper(I)V

    return-void
.end method
