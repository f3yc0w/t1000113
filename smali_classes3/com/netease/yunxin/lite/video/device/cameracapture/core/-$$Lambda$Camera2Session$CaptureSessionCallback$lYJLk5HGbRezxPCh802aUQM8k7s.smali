.class public final synthetic Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$CaptureSessionCallback$lYJLk5HGbRezxPCh802aUQM8k7s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoSink;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$CaptureSessionCallback$lYJLk5HGbRezxPCh802aUQM8k7s;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;

    return-void
.end method


# virtual methods
.method public final onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$CaptureSessionCallback$lYJLk5HGbRezxPCh802aUQM8k7s;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session$CaptureSessionCallback;->lambda$onConfigured$0$Camera2Session$CaptureSessionCallback(Lcom/netease/lava/webrtc/VideoFrame;)V

    return-void
.end method
