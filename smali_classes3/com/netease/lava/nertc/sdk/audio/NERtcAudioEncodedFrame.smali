.class public Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;
.super Ljava/lang/Object;
.source "NERtcAudioEncodedFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;
    }
.end annotation


# instance fields
.field public channels:I

.field public data:[B

.field public encodedLen:I

.field public encodedTimestamp:I

.field public payloadType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

.field public rmsLevel:I

.field public sampleRate:I

.field public samplesPerChannel:I

.field public timeStampUs:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 66
    iput v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->rmsLevel:I

    return-void
.end method


# virtual methods
.method public invalid()Z
    .locals 4

    .line 74
    iget-object v0, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->data:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->sampleRate:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->channels:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->samplesPerChannel:I

    if-lez v2, :cond_2

    iget v2, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->encodedLen:I

    if-lez v2, :cond_2

    iget-object v3, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->payloadType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    if-nez v3, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    array-length v0, v0

    if-ge v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NERtcAudioEncodedFrame{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->data:[B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->timeStampUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->channels:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerChannel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->samplesPerChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodedLen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->encodedLen:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", encodedTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->encodedTimestamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", payloadType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame;->payloadType:Lcom/netease/lava/nertc/sdk/audio/NERtcAudioEncodedFrame$NERtcAudioPayLoadType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
