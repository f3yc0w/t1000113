.class public Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;
.super Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;
.source "FramerateBitrateAdjuster.java"


# static fields
.field private static final INITIAL_FPS:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "FramerateBitrateAdjuster"


# instance fields
.field private initTargetFps:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;-><init>()V

    const-string v0, "FramerateBitrateAdjuster"

    const-string v1, " ctor"

    .line 25
    invoke-static {v0, v1}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public setTargets(II)V
    .locals 3

    .line 30
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;->targetFps:I

    const-string v1, "FramerateBitrateAdjuster"

    if-gez v0, :cond_0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTarget ,targetFps illegal: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " use 30fps."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/netease/lava/webrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x1e

    .line 36
    :cond_0
    iget v0, p0, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;->initTargetFps:I

    if-nez v0, :cond_1

    if-lez p2, :cond_1

    .line 37
    iput p2, p0, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;->initTargetFps:I

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init,targetBitrateBps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " targetFps "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " initTargetFps: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;->initTargetFps:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/netease/lava/webrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/netease/lava/webrtc/bitrate/BaseBitrateAdjuster;->setTargets(II)V

    .line 43
    iget p1, p0, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;->targetBitrateBps:I

    iget p2, p0, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;->initTargetFps:I

    mul-int p1, p1, p2

    iget p2, p0, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;->targetFps:I

    div-int/2addr p1, p2

    iput p1, p0, Lcom/netease/lava/webrtc/bitrate/FramerateBitrateAdjuster;->targetBitrateBps:I

    return-void
.end method
