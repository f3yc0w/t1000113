.class public Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;
.super Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;
.source "DynamicBitrateAdjuster.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DynamicBitrateAdjuster"


# instance fields
.field private final BITS_PER_BYTE:D

.field private adjustmentSecond:I

.field private adjustment_steps:I

.field private basicScale:D

.field private bitrateAdjustmentScaleExp:I

.field private count:I

.field private deviationBytes:D

.field private maxAdjustmentScale:D

.field private minAdjustmentScale:D

.field private targetScale:D

.field private timeSinceLastAdjustmentMs:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;-><init>()V

    const/4 v0, 0x3

    .line 24
    iput v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustmentSecond:I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 26
    iput-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->basicScale:D

    const/16 v0, 0x28

    .line 28
    iput v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustment_steps:I

    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    .line 30
    iput-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->BITS_PER_BYTE:D

    const-wide v0, 0x3ff2666666666666L    # 1.15

    .line 33
    iput-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->maxAdjustmentScale:D

    const-wide v0, 0x3fe999999999999aL    # 0.8

    .line 36
    iput-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->minAdjustmentScale:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 42
    iput-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetScale:D

    return-void
.end method


# virtual methods
.method public getAdjustedBitrateBps()I
    .locals 5

    .line 135
    invoke-virtual {p0}, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->getBitrateAdjustmentScale()D

    move-result-wide v0

    .line 138
    iget-wide v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->maxAdjustmentScale:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    :goto_0
    move-wide v0, v2

    goto :goto_1

    .line 140
    :cond_0
    iget-wide v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->minAdjustmentScale:D

    cmpg-double v4, v0, v2

    if-gez v4, :cond_1

    goto :goto_0

    .line 145
    :cond_1
    :goto_1
    iget-wide v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetScale:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_2

    .line 146
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdjustedBitrateBps: change scale from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetScale:D

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, ", bitrateAdjustmentScaleExp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DynamicBitrateAdjuster"

    invoke-static {v3, v2}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iput-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetScale:D

    .line 151
    :cond_2
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetScale:D

    mul-double v0, v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public getBitrateAdjustmentScale()D
    .locals 6

    .line 128
    iget-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->basicScale:D

    iget v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    int-to-double v2, v2

    iget v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustment_steps:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public reportEncodedFrame(I)V
    .locals 10

    .line 75
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetFps:I

    if-lez v0, :cond_4

    if-gtz p1, :cond_0

    goto/16 :goto_1

    .line 80
    :cond_0
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    iget v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetFps:I

    int-to-double v4, v4

    div-double/2addr v0, v4

    .line 81
    iget-wide v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->deviationBytes:D

    int-to-double v6, p1

    sub-double/2addr v6, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->deviationBytes:D

    .line 82
    iget-wide v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    const-wide v6, 0x408f400000000000L    # 1000.0

    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetFps:I

    int-to-double v8, p1

    div-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    .line 83
    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->count:I

    .line 89
    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v4, p1

    div-double/2addr v4, v2

    .line 93
    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustmentSecond:I

    int-to-double v2, p1

    mul-double v2, v2, v4

    .line 94
    iget-wide v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->deviationBytes:D

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->deviationBytes:D

    neg-double v2, v2

    .line 95
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->deviationBytes:D

    .line 99
    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustmentSecond:I

    if-lez p1, :cond_4

    iget-wide v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    mul-int/lit16 p1, p1, 0x3e8

    int-to-double v4, p1

    cmpg-double p1, v2, v4

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->count:I

    iget v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetFps:I

    iget v3, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustmentSecond:I

    mul-int v2, v2, v3

    if-ge p1, v2, :cond_1

    goto :goto_1

    .line 103
    :cond_1
    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->count:I

    int-to-double v2, p1

    mul-double v2, v2, v0

    iget-wide v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->maxAdjustmentScale:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    mul-double v2, v2, v4

    int-to-double v4, p1

    mul-double v0, v0, v4

    .line 104
    iget-wide v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->minAdjustmentScale:D

    sub-double/2addr v6, v4

    mul-double v0, v0, v6

    .line 106
    iget-wide v4, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->deviationBytes:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    cmpl-double p1, v4, v2

    if-lez p1, :cond_2

    div-double/2addr v4, v2

    add-double/2addr v4, v6

    double-to-int p1, v4

    .line 109
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 112
    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustment_steps:I

    neg-int p1, p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 113
    iput-wide v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->deviationBytes:D

    goto :goto_0

    :cond_2
    neg-double v2, v0

    cmpg-double p1, v4, v2

    if-gez p1, :cond_3

    neg-double v4, v4

    div-double/2addr v4, v0

    add-double/2addr v4, v6

    double-to-int p1, v4

    .line 117
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 120
    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustment_steps:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 121
    iput-wide v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->deviationBytes:D

    :cond_3
    :goto_0
    const-wide/16 v0, 0x0

    .line 123
    iput-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    const/4 p1, 0x0

    .line 124
    iput p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->count:I

    :cond_4
    :goto_1
    return-void
.end method

.method public setAdjustmentSecond(I)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAdjustmentSecond: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicBitrateAdjuster"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iput p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustmentSecond:I

    return-void
.end method

.method public setBasicScale(D)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBasicScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicBitrateAdjuster"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iput-wide p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->basicScale:D

    return-void
.end method

.method public setMaxAdjustmentScale(D)V
    .locals 2

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMaxAdjustmentScale: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicBitrateAdjuster"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iput-wide p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->maxAdjustmentScale:D

    return-void
.end method

.method public setMinAdjustmentSteps(I)V
    .locals 2

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMinAdjustmentSteps: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DynamicBitrateAdjuster"

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput p1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->adjustment_steps:I

    return-void
.end method

.method public setTargets(II)V
    .locals 5

    if-lez p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetBitrateBps:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    .line 54
    :goto_0
    iget v1, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetBitrateBps:I

    if-eqz v1, :cond_2

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double v0, v0, v2

    iget v2, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->targetBitrateBps:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    const-wide v2, 0x3fa999999999999aL    # 0.05

    cmpg-double v4, v0, v2

    if-gez v4, :cond_2

    return-void

    :cond_2
    const-wide/16 v0, 0x0

    .line 64
    iput-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->deviationBytes:D

    .line 65
    iput-wide v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->timeSinceLastAdjustmentMs:D

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->bitrateAdjustmentScaleExp:I

    .line 67
    iput v0, p0, Lcom/netease/lava/webrtc/bitrate/DynamicBitrateAdjuster;->count:I

    .line 70
    invoke-super {p0, p1, p2}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->setTargets(II)V

    :cond_3
    :goto_1
    return-void
.end method
