.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wRyyhPWwvXWCKu-sXfV9_PUZMfs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

.field public final synthetic f$1:I

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wRyyhPWwvXWCKu-sXfV9_PUZMfs;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wRyyhPWwvXWCKu-sXfV9_PUZMfs;->f$1:I

    iput-wide p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wRyyhPWwvXWCKu-sXfV9_PUZMfs;->f$2:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wRyyhPWwvXWCKu-sXfV9_PUZMfs;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wRyyhPWwvXWCKu-sXfV9_PUZMfs;->f$1:I

    iget-wide v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$wRyyhPWwvXWCKu-sXfV9_PUZMfs;->f$2:J

    invoke-static {v0, v1, v2, v3}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$OnRejoin$84(Lcom/netease/lava/nertc/sdk/NERtcCallbackEx;IJ)V

    return-void
.end method
