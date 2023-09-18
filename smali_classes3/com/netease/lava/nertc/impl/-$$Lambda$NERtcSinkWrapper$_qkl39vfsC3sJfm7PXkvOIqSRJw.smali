.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$_qkl39vfsC3sJfm7PXkvOIqSRJw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$_qkl39vfsC3sJfm7PXkvOIqSRJw;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$_qkl39vfsC3sJfm7PXkvOIqSRJw;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$_qkl39vfsC3sJfm7PXkvOIqSRJw;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$_qkl39vfsC3sJfm7PXkvOIqSRJw;->f$1:I

    invoke-static {v0, v1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onLeave$5(Lcom/netease/lava/nertc/sdk/NERtcCallback;I)V

    return-void
.end method
