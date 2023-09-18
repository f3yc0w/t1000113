.class public Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;
.super Ljava/lang/Object;
.source "NERtcSnapshotCallbackWrapper.java"

# interfaces
.implements Lcom/netease/yunxin/lite/model/LiteSDKTakeSnapshotCallback;


# instance fields
.field private final callback:Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;


# direct methods
.method public constructor <init>(Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;->callback:Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;

    return-void
.end method


# virtual methods
.method public synthetic lambda$onTakeSnapshotResult$0$NERtcSnapshotCallbackWrapper(ILandroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "error_code",
            "bitmap"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;->callback:Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;

    invoke-interface {v0, p1, p2}, Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;->onTakeSnapshotResult(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onTakeSnapshotResult(ILandroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error_code",
            "bitmap"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;->callback:Lcom/netease/lava/nertc/sdk/video/NERtcTakeSnapshotCallback;

    if-eqz v0, :cond_0

    .line 20
    new-instance v0, Lcom/netease/lava/nertc/impl/wrapper/-$$Lambda$NERtcSnapshotCallbackWrapper$run-m6FuNRHuKQV_0ImevsgMM_w;

    invoke-direct {v0, p0, p1, p2}, Lcom/netease/lava/nertc/impl/wrapper/-$$Lambda$NERtcSnapshotCallbackWrapper$run-m6FuNRHuKQV_0ImevsgMM_w;-><init>(Lcom/netease/lava/nertc/impl/wrapper/NERtcSnapshotCallbackWrapper;ILandroid/graphics/Bitmap;)V

    invoke-static {v0}, Lcom/netease/yunxin/lite/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
