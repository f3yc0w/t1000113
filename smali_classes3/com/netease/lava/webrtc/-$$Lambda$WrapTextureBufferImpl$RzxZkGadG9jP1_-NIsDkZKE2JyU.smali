.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$WrapTextureBufferImpl$RzxZkGadG9jP1_-NIsDkZKE2JyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/WrapTextureBufferImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/WrapTextureBufferImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$WrapTextureBufferImpl$RzxZkGadG9jP1_-NIsDkZKE2JyU;->f$0:Lcom/netease/lava/webrtc/WrapTextureBufferImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$WrapTextureBufferImpl$RzxZkGadG9jP1_-NIsDkZKE2JyU;->f$0:Lcom/netease/lava/webrtc/WrapTextureBufferImpl;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/WrapTextureBufferImpl;->lambda$toI420$0$WrapTextureBufferImpl()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method
