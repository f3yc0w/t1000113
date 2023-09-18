.class public Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;
.super Ljava/lang/Object;
.source "LiteSDKReverbParam.java"


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

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->wetGain:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    iput v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->dryGain:F

    .line 15
    iput v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->damping:F

    const v1, 0x3dcccccd    # 0.1f

    .line 18
    iput v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->roomSize:F

    .line 21
    iput v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->decayTime:F

    .line 24
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->preDelay:F

    return-void
.end method


# virtual methods
.method public getDamping()F
    .locals 1

    .line 38
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->damping:F

    return v0
.end method

.method public getDecayTime()F
    .locals 1

    .line 48
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->decayTime:F

    return v0
.end method

.method public getDryGain()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->dryGain:F

    return v0
.end method

.method public getPreDelay()F
    .locals 1

    .line 53
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->preDelay:F

    return v0
.end method

.method public getRoomSize()F
    .locals 1

    .line 43
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->roomSize:F

    return v0
.end method

.method public getWetGain()F
    .locals 1

    .line 28
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKReverbParam;->wetGain:F

    return v0
.end method
