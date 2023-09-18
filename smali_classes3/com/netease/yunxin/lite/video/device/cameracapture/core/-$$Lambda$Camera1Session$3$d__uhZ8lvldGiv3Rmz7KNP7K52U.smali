.class public final synthetic Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$3$d__uhZ8lvldGiv3Rmz7KNP7K52U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;

.field public final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$3$d__uhZ8lvldGiv3Rmz7KNP7K52U;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;

    iput-object p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$3$d__uhZ8lvldGiv3Rmz7KNP7K52U;->f$1:[B

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$3$d__uhZ8lvldGiv3Rmz7KNP7K52U;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;

    iget-object v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera1Session$3$d__uhZ8lvldGiv3Rmz7KNP7K52U;->f$1:[B

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera1Session$3;->lambda$onPreviewFrame$1$Camera1Session$3([B)V

    return-void
.end method
