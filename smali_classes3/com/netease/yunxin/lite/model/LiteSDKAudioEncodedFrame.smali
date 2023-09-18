.class public Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;
.super Ljava/lang/Object;
.source "LiteSDKAudioEncodedFrame.java"


# instance fields
.field public channels:I

.field public data:[B

.field public encodedLen:I

.field public encodedTimestamp:I

.field public payloadType:I

.field public rmsLevel:I

.field public sampleRate:I

.field public samplesPerChannel:I

.field public timeStampUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x6f

    .line 44
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->payloadType:I

    return-void
.end method


# virtual methods
.method public getChannels()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->channels:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->data:[B

    return-object v0
.end method

.method public getEncodedLen()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->encodedLen:I

    return v0
.end method

.method public getEncodedTimestamp()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->encodedTimestamp:I

    return v0
.end method

.method public getPayloadType()I
    .locals 1

    .line 88
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->payloadType:I

    return v0
.end method

.method public getRmsLevel()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->rmsLevel:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->sampleRate:I

    return v0
.end method

.method public getSamplesPerChannel()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->samplesPerChannel:I

    return v0
.end method

.method public getTimeStampUs()J
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioEncodedFrame;->timeStampUs:J

    return-wide v0
.end method
