.class public Lcom/netease/lava/nertc/sdk/LastmileProbeResult;
.super Ljava/lang/Object;
.source "LastmileProbeResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;
    }
.end annotation


# instance fields
.field public downlinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

.field public rtt:I

.field public state:S

.field public uplinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->uplinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    .line 57
    new-instance v0, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    invoke-direct {v0}, Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;-><init>()V

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->downlinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastmileProbeResult{state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->state:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rtt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->rtt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uplinkReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->uplinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", downlinkReport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeResult;->downlinkReport:Lcom/netease/lava/nertc/sdk/LastmileProbeResult$LastmileProbeOneWayResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
