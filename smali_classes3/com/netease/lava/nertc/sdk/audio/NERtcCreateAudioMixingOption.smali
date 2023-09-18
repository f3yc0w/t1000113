.class public Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;
.super Ljava/lang/Object;
.source "NERtcCreateAudioMixingOption.java"


# instance fields
.field public loopCount:I

.field public path:Ljava/lang/String;

.field public playbackEnabled:Z

.field public playbackVolume:I

.field public progressInterval:J

.field public sendEnabled:Z

.field public sendVolume:I

.field public sendWithAudioType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

.field public startTimeStamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->loopCount:I

    .line 51
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->sendEnabled:Z

    const/4 v1, -0x1

    .line 62
    iput v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->sendVolume:I

    .line 71
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->playbackEnabled:Z

    .line 82
    iput v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->playbackVolume:I

    const-wide/16 v0, 0x0

    .line 93
    iput-wide v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->startTimeStamp:J

    .line 104
    sget-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;->kNERtcAudioStreamTypeMain:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->sendWithAudioType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    const-wide/16 v0, 0x3e8

    .line 109
    iput-wide v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->progressInterval:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NERtcCreateAudioMixingOption{path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", loopCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->loopCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sendEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->sendEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sendVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->sendVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", playbackEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->playbackEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playbackVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->playbackVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTimeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->startTimeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sendWithAudioType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioMixingOption;->sendWithAudioType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
