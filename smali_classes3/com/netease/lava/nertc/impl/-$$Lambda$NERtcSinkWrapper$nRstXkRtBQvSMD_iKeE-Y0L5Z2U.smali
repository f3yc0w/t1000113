.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nRstXkRtBQvSMD_iKeE-Y0L5Z2U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:J

.field public final synthetic f$2:Lcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nRstXkRtBQvSMD_iKeE-Y0L5Z2U;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nRstXkRtBQvSMD_iKeE-Y0L5Z2U;->f$1:J

    iput-object p4, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nRstXkRtBQvSMD_iKeE-Y0L5Z2U;->f$2:Lcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nRstXkRtBQvSMD_iKeE-Y0L5Z2U;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nRstXkRtBQvSMD_iKeE-Y0L5Z2U;->f$1:J

    iget-object v3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$nRstXkRtBQvSMD_iKeE-Y0L5Z2U;->f$2:Lcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserJoin$10$NERtcSinkWrapper(JLcom/netease/lava/nertc/sdk/NERtcUserJoinExtraInfo;)V

    return-void
.end method
