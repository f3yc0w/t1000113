.class public Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;
.super Ljava/lang/Object;
.source "BaseBitrateAdjuster.java"

# interfaces
.implements Lcom/netease/lava/webrtc/bitrate/BitrateAdjuster;


# instance fields
.field protected targetBitrateBps:I

.field protected targetFps:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdjustedBitrateBps()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->targetBitrateBps:I

    return v0
.end method

.method public getTargetsBitrateBps()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->targetBitrateBps:I

    return v0
.end method

.method public getTargetsFrameRate()I
    .locals 1

    .line 52
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->targetFps:I

    return v0
.end method

.method public init(II)V
    .locals 0

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public reportEncodedFrame(I)V
    .locals 0

    return-void
.end method

.method public reportQP(I)V
    .locals 0

    return-void
.end method

.method public setTargets(II)V
    .locals 0

    .line 25
    iput p1, p0, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->targetBitrateBps:I

    .line 26
    iput p2, p0, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->targetFps:I

    return-void
.end method
