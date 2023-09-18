.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$76KGRBfXVvzidbNSuwSjo8lJUro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$76KGRBfXVvzidbNSuwSjo8lJUro;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$76KGRBfXVvzidbNSuwSjo8lJUro;->f$1:I

    iput-boolean p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$76KGRBfXVvzidbNSuwSjo8lJUro;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$76KGRBfXVvzidbNSuwSjo8lJUro;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$76KGRBfXVvzidbNSuwSjo8lJUro;->f$1:I

    iget-boolean v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$76KGRBfXVvzidbNSuwSjo8lJUro;->f$2:Z

    invoke-static {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onLocalAudioVolumeIndication$30(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IZ)V

    return-void
.end method
