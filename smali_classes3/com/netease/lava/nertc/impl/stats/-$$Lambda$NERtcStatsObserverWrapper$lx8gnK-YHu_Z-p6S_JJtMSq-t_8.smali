.class public final synthetic Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$lx8gnK-YHu_Z-p6S_JJtMSq-t_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;

.field public final synthetic f$1:Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$lx8gnK-YHu_Z-p6S_JJtMSq-t_8;->f$0:Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$lx8gnK-YHu_Z-p6S_JJtMSq-t_8;->f$1:Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$lx8gnK-YHu_Z-p6S_JJtMSq-t_8;->f$0:Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$lx8gnK-YHu_Z-p6S_JJtMSq-t_8;->f$1:Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;

    invoke-virtual {v0, v1}, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;->lambda$onVideoSendStats$3$NERtcStatsObserverWrapper(Lcom/netease/lava/nertc/sdk/stats/NERtcVideoSendStats;)V

    return-void
.end method
