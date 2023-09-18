.class public final synthetic Lcom/netease/lava/nertc/impl/wrapper/-$$Lambda$NERtcSnapshotCallbackWrapper$run-m6FuNRHuKQV_0ImevsgMM_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:Landroid/graphics/Bitmap;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;ILandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/wrapper/-$$Lambda$NERtcSnapshotCallbackWrapper$run-m6FuNRHuKQV_0ImevsgMM_w;->f$0:Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;

    iput p2, p0, Lcom/netease/lava/nertc/impl/wrapper/-$$Lambda$NERtcSnapshotCallbackWrapper$run-m6FuNRHuKQV_0ImevsgMM_w;->f$1:I

    iput-object p3, p0, Lcom/netease/lava/nertc/impl/wrapper/-$$Lambda$NERtcSnapshotCallbackWrapper$run-m6FuNRHuKQV_0ImevsgMM_w;->f$2:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/wrapper/-$$Lambda$NERtcSnapshotCallbackWrapper$run-m6FuNRHuKQV_0ImevsgMM_w;->f$0:Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;

    iget v1, p0, Lcom/netease/lava/nertc/impl/wrapper/-$$Lambda$NERtcSnapshotCallbackWrapper$run-m6FuNRHuKQV_0ImevsgMM_w;->f$1:I

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/wrapper/-$$Lambda$NERtcSnapshotCallbackWrapper$run-m6FuNRHuKQV_0ImevsgMM_w;->f$2:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;->lambda$onTakeSnapshotResult$0$NERtcSnapshotCallbackWrapper(ILandroid/graphics/Bitmap;)V

    return-void
.end method
