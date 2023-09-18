.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:J

.field public final synthetic f$3:J

.field public final synthetic f$4:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/sdk/NERtcCallback;IJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$1:I

    iput-wide p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$2:J

    iput-wide p5, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$3:J

    iput-wide p7, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$4:J

    return-void
.end method


# virtual methods
.method public final reportEvent()V
    .locals 8

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$0:Lcom/netease/lava/nertc/sdk/NERtcCallback;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$1:I

    iget-wide v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$2:J

    iget-wide v4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$3:J

    iget-wide v6, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$1IZ6ioEShp8op1d1sKviXt9-GqI;->f$4:J

    invoke-static/range {v0 .. v7}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$null$2(Lcom/netease/lava/nertc/sdk/NERtcCallback;IJJJ)V

    return-void
.end method
