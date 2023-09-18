.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:I

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;IJII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$1:I

    iput-wide p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$2:J

    iput p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$3:I

    iput p6, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$1:I

    iget-wide v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$2:J

    iget v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$3:I

    iget v5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$rth25EqYX1kOkM9F1dXKJ4pTU3I;->f$4:I

    invoke-virtual/range {v0 .. v5}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserFirstVideoFrameDecoded$45$NERtcSinkWrapper(IJII)V

    return-void
.end method
