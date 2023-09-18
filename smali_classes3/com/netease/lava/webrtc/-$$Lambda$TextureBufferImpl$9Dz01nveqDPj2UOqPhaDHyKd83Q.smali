.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$TextureBufferImpl$9Dz01nveqDPj2UOqPhaDHyKd83Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/TextureBufferImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/TextureBufferImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$TextureBufferImpl$9Dz01nveqDPj2UOqPhaDHyKd83Q;->f$0:Lcom/netease/lava/webrtc/TextureBufferImpl;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$TextureBufferImpl$9Dz01nveqDPj2UOqPhaDHyKd83Q;->f$0:Lcom/netease/lava/webrtc/TextureBufferImpl;

    invoke-virtual {v0}, Lcom/netease/lava/webrtc/TextureBufferImpl;->lambda$toI420$0$TextureBufferImpl()Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    move-result-object v0

    return-object v0
.end method
