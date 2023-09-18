.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:Lcom/netease/lava/nertc/sdk/NERtcCallback;

.field public final synthetic f$2:I

.field public final synthetic f$3:J

.field public final synthetic f$4:J

.field public final synthetic f$5:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;Lcom/netease/lava/nertc/sdk/NERtcCallback;IJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$1:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iput p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$2:I

    iput-wide p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$3:J

    iput-wide p6, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$4:J

    iput-wide p8, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$5:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$1:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iget v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$2:I

    iget-wide v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$3:J

    iget-wide v5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$4:J

    iget-wide v7, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$ugJ1hBoHLrUQQinqYfhefrNZ1M8;->f$5:J

    invoke-virtual/range {v0 .. v8}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onJoin$3$NERtcSinkWrapper(Lcom/netease/lava/nertc/sdk/NERtcCallback;IJJJ)V

    return-void
.end method
