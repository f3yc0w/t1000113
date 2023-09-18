.class public Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;
.super Ljava/lang/Object;
.source "NERtcReverbParam.java"


# instance fields
.field public damping:F

.field public decayTime:F

.field public dryGain:F

.field public preDelay:F

.field public roomSize:F

.field public wetGain:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->wetGain:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 23
    iput v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->dryGain:F

    .line 33
    iput v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->damping:F

    const v1, 0x3dcccccd    # 0.1f

    .line 43
    iput v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->roomSize:F

    .line 53
    iput v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->decayTime:F

    .line 63
    iput v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcReverbParam;->preDelay:F

    return-void
.end method
