.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$EmPIM7n9WDnKCyjT7fCVcLB-Kpw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$EmPIM7n9WDnKCyjT7fCVcLB-Kpw;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-boolean p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$EmPIM7n9WDnKCyjT7fCVcLB-Kpw;->f$1:Z

    iput-boolean p3, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$EmPIM7n9WDnKCyjT7fCVcLB-Kpw;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$EmPIM7n9WDnKCyjT7fCVcLB-Kpw;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$EmPIM7n9WDnKCyjT7fCVcLB-Kpw;->f$1:Z

    iget-boolean v2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$EmPIM7n9WDnKCyjT7fCVcLB-Kpw;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onPublishFallbackToAudioOnly$87$NERtcSinkWrapper(ZZ)V

    return-void
.end method
