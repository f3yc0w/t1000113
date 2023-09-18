.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:J

.field public final synthetic f$2:I

.field public final synthetic f$3:Z

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JIZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$1:J

    iput p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$2:I

    iput-boolean p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$3:Z

    iput p6, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$1:J

    iget v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$2:I

    iget-boolean v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$3:Z

    iget v5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$Vd9yc4OZU8ps-AhSjR_xr2qL8VA;->f$4:I

    invoke-virtual/range {v0 .. v5}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserVideoStart$33$NERtcSinkWrapper(JIZI)V

    return-void
.end method
