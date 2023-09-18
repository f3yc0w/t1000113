.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$-53-QEdRAQ4VOvXTMwzwvGt2jZQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:Lcom/netease/lava/nertc/sdk/LastmileProbeResult;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Lcom/netease/lava/nertc/sdk/LastmileProbeResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$-53-QEdRAQ4VOvXTMwzwvGt2jZQ;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$-53-QEdRAQ4VOvXTMwzwvGt2jZQ;->f$1:Lcom/netease/lava/nertc/sdk/LastmileProbeResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$-53-QEdRAQ4VOvXTMwzwvGt2jZQ;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$-53-QEdRAQ4VOvXTMwzwvGt2jZQ;->f$1:Lcom/netease/lava/nertc/sdk/LastmileProbeResult;

    invoke-static {v0, v1}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onProbeResult$114(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;Lcom/netease/lava/nertc/sdk/LastmileProbeResult;)V

    return-void
.end method
