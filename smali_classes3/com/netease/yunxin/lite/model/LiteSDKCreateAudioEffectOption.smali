.class public Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;
.super Ljava/lang/Object;
.source "LiteSDKCreateAudioEffectOption.java"


# instance fields
.field public enablePlayback:Z

.field public enableSend:Z

.field public loopCount:I

.field public path:Ljava/lang/String;

.field public playbackVolume:I

.field public progressInterval:J

.field public sendVolume:I

.field public sendWithType:I

.field public startTimestamp:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->loopCount:I

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->enableSend:Z

    const/4 v2, -0x1

    .line 9
    iput v2, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->sendVolume:I

    .line 10
    iput-boolean v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->enablePlayback:Z

    .line 11
    iput v2, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->playbackVolume:I

    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->startTimestamp:J

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->sendWithType:I

    const-wide/16 v0, 0x3e8

    .line 14
    iput-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->progressInterval:J

    return-void
.end method


# virtual methods
.method public getLoopCount()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->loopCount:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackVolume()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->playbackVolume:I

    return v0
.end method

.method public getProgressInterval()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->progressInterval:J

    return-wide v0
.end method

.method public getSendVolume()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->sendVolume:I

    return v0
.end method

.method public getSendWithType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->sendWithType:I

    return v0
.end method

.method public getStartTimestamp()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->startTimestamp:J

    return-wide v0
.end method

.method public isEnablePlayback()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->enablePlayback:Z

    return v0
.end method

.method public isEnableSend()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKCreateAudioEffectOption;->enableSend:Z

    return v0
.end method
