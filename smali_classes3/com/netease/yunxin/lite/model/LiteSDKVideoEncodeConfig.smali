.class public Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;
.super Ljava/lang/Object;
.source "LiteSDKVideoEncodeConfig.java"


# instance fields
.field public bitrate:I

.field public callback:Ljava/lang/Object;

.field public colorFormat:I

.field public cropMode:I

.field public degradationPreference:I

.field public frameRate:I

.field public frontCamera:Z

.field public height:I

.field public intent:Ljava/lang/Object;

.field public minBitrate:I

.field public minFrameRate:I

.field public mirrorMode:I

.field public orientationMode:I

.field public preference:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->width:I

    .line 9
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->height:I

    .line 10
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->frameRate:I

    .line 11
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->minFrameRate:I

    .line 12
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->bitrate:I

    .line 13
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->minBitrate:I

    .line 14
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->cropMode:I

    .line 15
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->degradationPreference:I

    .line 16
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->mirrorMode:I

    .line 17
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->orientationMode:I

    const/4 v1, 0x1

    .line 18
    iput-boolean v1, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->frontCamera:Z

    .line 19
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->colorFormat:I

    .line 20
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->preference:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->bitrate:I

    return v0
.end method

.method public getCallback()Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->callback:Ljava/lang/Object;

    return-object v0
.end method

.method public getColorFormat()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->colorFormat:I

    return v0
.end method

.method public getCropMode()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->cropMode:I

    return v0
.end method

.method public getDegradationPreference()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->degradationPreference:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->frameRate:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->height:I

    return v0
.end method

.method public getIntent()Ljava/lang/Object;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->intent:Ljava/lang/Object;

    return-object v0
.end method

.method public getMinBitrate()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->minBitrate:I

    return v0
.end method

.method public getMinFrameRate()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->minFrameRate:I

    return v0
.end method

.method public getMirrorMode()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->mirrorMode:I

    return v0
.end method

.method public getOrientationMode()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->orientationMode:I

    return v0
.end method

.method public getPreference()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->preference:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->width:I

    return v0
.end method

.method public isFrontCamera()Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKVideoEncodeConfig;->frontCamera:Z

    return v0
.end method
