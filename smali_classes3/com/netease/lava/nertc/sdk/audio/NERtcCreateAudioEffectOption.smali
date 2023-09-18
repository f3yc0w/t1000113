.class public Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;
.super Ljava/lang/Object;
.source "NERtcCreateAudioEffectOption.java"


# instance fields
.field public loopCount:I

.field public path:Ljava/lang/String;

.field public playbackEnabled:Z

.field public playbackVolume:I

.field public progressInterval:J

.field public sendEnabled:Z

.field public sendVolume:I

.field public sendWithAudioType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

.field public startTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->sendEnabled:Z

    const/16 v1, 0x64

    .line 66
    iput v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->sendVolume:I

    .line 75
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->playbackEnabled:Z

    .line 86
    iput v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->playbackVolume:I

    const-wide/16 v0, 0x0

    .line 91
    iput-wide v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->startTimestamp:J

    .line 96
    sget-object v0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;->kNERtcAudioStreamTypeMain:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->sendWithAudioType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    const-wide/16 v0, 0x3e8

    .line 101
    iput-wide v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->progressInterval:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 109
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->path:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->loopCount:I

    .line 111
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->sendEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->sendVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->playbackEnabled:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->playbackVolume:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcCreateAudioEffectOption;->sendWithAudioType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;

    invoke-virtual {v2}, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioStreamType;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "{ path:%s,loopCount:%d,sendEnabled:%b,sendVolume:%d,playbackEnabled:%b,playbackVolume:%d,sendWithAudioType%d }"

    .line 109
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
