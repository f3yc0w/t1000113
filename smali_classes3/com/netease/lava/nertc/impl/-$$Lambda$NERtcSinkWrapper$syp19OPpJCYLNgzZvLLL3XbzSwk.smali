.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$syp19OPpJCYLNgzZvLLL3XbzSwk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$syp19OPpJCYLNgzZvLLL3XbzSwk;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput-boolean p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$syp19OPpJCYLNgzZvLLL3XbzSwk;->f$1:Z

    iput p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$syp19OPpJCYLNgzZvLLL3XbzSwk;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$syp19OPpJCYLNgzZvLLL3XbzSwk;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$syp19OPpJCYLNgzZvLLL3XbzSwk;->f$1:Z

    iget v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$syp19OPpJCYLNgzZvLLL3XbzSwk;->f$2:I

    invoke-static {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onVirtualBackgroundSourceEnabled$99(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;ZI)V

    return-void
.end method
