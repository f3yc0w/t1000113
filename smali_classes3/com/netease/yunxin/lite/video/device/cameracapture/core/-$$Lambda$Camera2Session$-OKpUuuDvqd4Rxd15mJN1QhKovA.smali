.class public final synthetic Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$-OKpUuuDvqd4Rxd15mJN1QhKovA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

.field public final synthetic f$1:Landroid/hardware/camera2/params/MeteringRectangle;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Landroid/hardware/camera2/params/MeteringRectangle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$-OKpUuuDvqd4Rxd15mJN1QhKovA;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$-OKpUuuDvqd4Rxd15mJN1QhKovA;->f$1:Landroid/hardware/camera2/params/MeteringRectangle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$-OKpUuuDvqd4Rxd15mJN1QhKovA;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$-OKpUuuDvqd4Rxd15mJN1QhKovA;->f$1:Landroid/hardware/camera2/params/MeteringRectangle;

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->lambda$setMeteringAreas$2$Camera2Session(Landroid/hardware/camera2/params/MeteringRectangle;)V

    return-void
.end method
