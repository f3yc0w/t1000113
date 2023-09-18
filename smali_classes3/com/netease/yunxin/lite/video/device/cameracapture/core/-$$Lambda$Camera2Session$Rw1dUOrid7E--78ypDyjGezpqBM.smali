.class public final synthetic Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$Rw1dUOrid7E--78ypDyjGezpqBM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$Rw1dUOrid7E--78ypDyjGezpqBM;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    iput p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$Rw1dUOrid7E--78ypDyjGezpqBM;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$Rw1dUOrid7E--78ypDyjGezpqBM;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    iget v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$Rw1dUOrid7E--78ypDyjGezpqBM;->f$1:I

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->lambda$setZoom$0$Camera2Session(I)V

    return-void
.end method
