.class public final synthetic Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$Sz0ksN453LfgmMivxIVxOlmNRgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/lava/webrtc/VideoSink;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$Sz0ksN453LfgmMivxIVxOlmNRgk;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    return-void
.end method


# virtual methods
.method public final onFrame(Lcom/netease/lava/webrtc/VideoFrame;)V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$Sz0ksN453LfgmMivxIVxOlmNRgk;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;

    invoke-virtual {v0, p1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session;->lambda$listenForTextureFrames$2$Camera1Session(Lcom/netease/lava/webrtc/VideoFrame;)V

    return-void
.end method
