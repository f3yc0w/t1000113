.class public Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;
.super Ljava/lang/Object;
.source "NERtcAudioFrameRequestFormat.java"


# instance fields
.field private channels:I

.field private opMode:I

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 37
    iput v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->opMode:I

    return-void
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->channels:I

    return v0
.end method

.method public getOpMode()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->opMode:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 87
    iget v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->sampleRate:I

    return v0
.end method

.method public setChannels(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "channels"
        }
    .end annotation

    .line 73
    iput p1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->channels:I

    return-void
.end method

.method public setOpMode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "opMode"
        }
    .end annotation

    .line 115
    iput p1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->opMode:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sampleRate"
        }
    .end annotation

    .line 101
    iput p1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->sampleRate:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{channels: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", opMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioFrameRequestFormat;->opMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
