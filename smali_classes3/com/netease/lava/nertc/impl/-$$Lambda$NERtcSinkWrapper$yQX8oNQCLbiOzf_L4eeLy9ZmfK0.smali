.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:I

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$1:I

    iput p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$2:I

    iput p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$3:I

    iput p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$1:I

    iget v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$2:I

    iget v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$3:I

    iget v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$yQX8oNQCLbiOzf_L4eeLy9ZmfK0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onCameraExposureChanged$55(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IIII)V

    return-void
.end method
