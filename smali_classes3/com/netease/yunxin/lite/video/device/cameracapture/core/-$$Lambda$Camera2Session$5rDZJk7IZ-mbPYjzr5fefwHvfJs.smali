.class public final synthetic Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$5rDZJk7IZ-mbPYjzr5fefwHvfJs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$5rDZJk7IZ-mbPYjzr5fefwHvfJs;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    iput-boolean p2, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$5rDZJk7IZ-mbPYjzr5fefwHvfJs;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$5rDZJk7IZ-mbPYjzr5fefwHvfJs;->f$0:Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;

    iget-boolean v1, p0, Lcom/netease/yunxin/lite/video/device/cameracapture/core/-$$Lambda$Camera2Session$5rDZJk7IZ-mbPYjzr5fefwHvfJs;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/netease/yunxin/lite/video/device/cameracapture/core/Camera2Session;->lambda$setFlash$1$Camera2Session(Z)V

    return-void
.end method
