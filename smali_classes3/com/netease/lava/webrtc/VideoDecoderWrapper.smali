.class Lcom/netease/lava/webrtc/VideoDecoderWrapper;
.super Ljava/lang/Object;
.source "VideoDecoderWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createDecoderCallback(J)Lcom/netease/lava/webrtc/VideoDecoder$Callback;
    .locals 1

    .line 21
    new-instance v0, Lcom/netease/lava/webrtc/-$$Lambda$VideoDecoderWrapper$fCuUJ5FD5QrVVUvzG7XaESrVXuc;

    invoke-direct {v0, p0, p1}, Lcom/netease/lava/webrtc/-$$Lambda$VideoDecoderWrapper$fCuUJ5FD5QrVVUvzG7XaESrVXuc;-><init>(J)V

    return-object v0
.end method

.method static synthetic lambda$createDecoderCallback$0(JLcom/netease/lava/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 0

    .line 22
    invoke-static {p0, p1, p2, p3, p4}, Lcom/netease/lava/webrtc/VideoDecoderWrapper;->nativeOnDecodedFrame(JLcom/netease/lava/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result p0

    return p0
.end method

.method private static native nativeOnDecodedFrame(JLcom/netease/lava/webrtc/VideoFrame;Ljava/lang/Integer;Ljava/lang/Integer;)I
.end method
