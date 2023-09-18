.class public final synthetic Lcom/netease/lava/webrtc/-$$Lambda$VideoDecoderWrapper$fCuUJ5FD5QrVVUvzG7XaESrVXuc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoDecoder$Callback;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/netease/lava/webrtc/-$$Lambda$VideoDecoderWrapper$fCuUJ5FD5QrVVUvzG7XaESrVXuc;->f$0:J

    return-void
.end method


# virtual methods
.method public final onDecodedFrame(Lcom/netease/lava/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    iget-wide v0, p0, Lcom/netease/lava/webrtc/-$$Lambda$VideoDecoderWrapper$fCuUJ5FD5QrVVUvzG7XaESrVXuc;->f$0:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/netease/lava/webrtc/VideoDecoderWrapper;->lambda$createDecoderCallback$0(JLcom/netease/lava/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
