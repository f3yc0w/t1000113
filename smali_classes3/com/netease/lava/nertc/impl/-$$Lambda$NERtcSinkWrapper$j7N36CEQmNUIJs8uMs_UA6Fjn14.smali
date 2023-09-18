.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j7N36CEQmNUIJs8uMs_UA6Fjn14;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/lava/nertc/impl/NERtcSinkWrapper$ReportNotifyTask;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:I

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j7N36CEQmNUIJs8uMs_UA6Fjn14;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j7N36CEQmNUIJs8uMs_UA6Fjn14;->f$1:I

    iput p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j7N36CEQmNUIJs8uMs_UA6Fjn14;->f$2:I

    return-void
.end method


# virtual methods
.method public final reportEvent()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j7N36CEQmNUIJs8uMs_UA6Fjn14;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j7N36CEQmNUIJs8uMs_UA6Fjn14;->f$1:I

    iget v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$j7N36CEQmNUIJs8uMs_UA6Fjn14;->f$2:I

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$null$47$NERtcSinkWrapper(II)V

    return-void
.end method
