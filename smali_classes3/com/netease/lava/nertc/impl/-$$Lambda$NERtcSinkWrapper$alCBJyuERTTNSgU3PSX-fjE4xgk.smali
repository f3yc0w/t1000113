.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$alCBJyuERTTNSgU3PSX-fjE4xgk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$alCBJyuERTTNSgU3PSX-fjE4xgk;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$alCBJyuERTTNSgU3PSX-fjE4xgk;->f$1:I

    iput-object p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$alCBJyuERTTNSgU3PSX-fjE4xgk;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$alCBJyuERTTNSgU3PSX-fjE4xgk;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$alCBJyuERTTNSgU3PSX-fjE4xgk;->f$1:I

    iget-object v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$alCBJyuERTTNSgU3PSX-fjE4xgk;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$OnMediaRelayStateDidChange$94(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ILjava/lang/String;)V

    return-void
.end method
