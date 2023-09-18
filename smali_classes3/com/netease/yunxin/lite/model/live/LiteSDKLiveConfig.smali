.class public Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;
.super Ljava/lang/Object;
.source "LiteSDKLiveConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;,
        Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;
    }
.end annotation


# instance fields
.field public audioBitrate:I

.field public audioCodecProfile:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

.field public channels:I

.field public interruptedPlaceImage:Z

.field public sampleRate:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

.field public singleVideoPassThrough:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->LiteSDKLiveStreamAudioSampleRate48000:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    iput-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->sampleRate:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    .line 97
    sget-object v0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->LiteSDKLiveStreamAudioCodecProfileLCAAC:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    iput-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->audioCodecProfile:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    const/4 v0, 0x0

    .line 107
    iput-boolean v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->interruptedPlaceImage:Z

    return-void
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->audioBitrate:I

    return v0
.end method

.method public getAudioCodecProfile()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->audioCodecProfile:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioCodecProfile;->codecProfile()I

    move-result v0

    return v0
.end method

.method public getChannels()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->channels:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->sampleRate:Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;

    invoke-virtual {v0}, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig$LiteSDKLiveStreamAudioSampleRate;->sampleRate()I

    move-result v0

    return v0
.end method

.method public isInterruptedPlaceImage()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->interruptedPlaceImage:Z

    return v0
.end method

.method public isSingleVideoPassThrough()Z
    .locals 1

    .line 111
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/live/LiteSDKLiveConfig;->singleVideoPassThrough:Z

    return v0
.end method
