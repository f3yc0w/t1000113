.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$EaO-EGEkbK4bGvhuRgqOeo8OFpg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$EaO-EGEkbK4bGvhuRgqOeo8OFpg;->f$0:Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$EaO-EGEkbK4bGvhuRgqOeo8OFpg;->f$0:Lcom/netease/lava/webrtc/VideoFrame$I420Buffer;

    invoke-interface {v0}, Lcom/netease/lava/webrtc/VideoFrame$Buffer;->release()V

    return-void
.end method
