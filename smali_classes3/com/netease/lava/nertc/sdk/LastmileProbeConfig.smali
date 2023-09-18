.class public Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;
.super Ljava/lang/Object;
.source "LastmileProbeConfig.java"


# instance fields
.field public expectedDownlinkBitrate:I

.field public expectedUplinkBitrate:I

.field public probeDownlink:Z

.field public probeUplink:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->probeUplink:Z

    .line 68
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->probeDownlink:Z

    const v0, 0x1e8480

    .line 69
    iput v0, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedUplinkBitrate:I

    .line 70
    iput v0, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedDownlinkBitrate:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LastmileProbeConfig{probeUplink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->probeUplink:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", probeDownlink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->probeDownlink:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", expectedUplinkBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedUplinkBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", expectedDownlinkBitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/LastmileProbeConfig;->expectedDownlinkBitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
