.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$84oYdPrzbk4LKjZPdnRiKcHCvp4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$84oYdPrzbk4LKjZPdnRiKcHCvp4;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$84oYdPrzbk4LKjZPdnRiKcHCvp4;->f$1:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$84oYdPrzbk4LKjZPdnRiKcHCvp4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$84oYdPrzbk4LKjZPdnRiKcHCvp4;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$84oYdPrzbk4LKjZPdnRiKcHCvp4;->f$1:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$84oYdPrzbk4LKjZPdnRiKcHCvp4;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onVideoDeviceStateChanged$52$NERtcSinkWrapper(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;I)V

    return-void
.end method