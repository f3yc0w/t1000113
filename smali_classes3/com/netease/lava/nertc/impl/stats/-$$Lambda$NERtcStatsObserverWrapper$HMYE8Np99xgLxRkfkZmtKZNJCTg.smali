.class public final synthetic Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$HMYE8Np99xgLxRkfkZmtKZNJCTg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;

.field public final synthetic f$1:[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$HMYE8Np99xgLxRkfkZmtKZNJCTg;->f$0:Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;

    iput-object p2, p0, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$HMYE8Np99xgLxRkfkZmtKZNJCTg;->f$1:[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$HMYE8Np99xgLxRkfkZmtKZNJCTg;->f$0:Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;

    iget-object v1, p0, Lcom/netease/lava/nertc/impl/stats/-$$Lambda$NERtcStatsObserverWrapper$HMYE8Np99xgLxRkfkZmtKZNJCTg;->f$1:[Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;

    invoke-virtual {v0, v1}, Lcom/netease/lava/nertc/impl/stats/NERtcStatsObserverWrapper;->lambda$onAudioRecvStats$2$NERtcStatsObserverWrapper([Lcom/netease/lava/nertc/sdk/stats/NERtcAudioRecvStats;)V

    return-void
.end method
