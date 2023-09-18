.class public Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;
.super Ljava/lang/Object;
.source "LiteSDKAudioFrameRequestFormat.java"


# instance fields
.field public channels:I

.field public mode:I

.field public reset:Z

.field public sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->channels:I

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->sampleRate:I

    const/4 v1, 0x1

    .line 10
    iput v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->mode:I

    .line 11
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->reset:Z

    return-void
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->channels:I

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->mode:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->sampleRate:I

    return v0
.end method

.method public isReset()Z
    .locals 1

    .line 30
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrameRequestFormat;->reset:Z

    return v0
.end method
