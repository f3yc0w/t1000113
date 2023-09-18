.class public Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;
.super Ljava/lang/Object;
.source "LiteSDKAudioFrame.java"


# instance fields
.field public bytesPerSample:I

.field public channels:I

.field public data:Ljava/nio/ByteBuffer;

.field public sampleRate:I

.field public samplesPerChannel:I

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->type:I

    return-void
.end method


# virtual methods
.method public setBytesPerSample(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytesPerSample"
        }
    .end annotation

    .line 64
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->bytesPerSample:I

    return-void
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

    .line 54
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->channels:I

    return-void
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->data:Ljava/nio/ByteBuffer;

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

    .line 59
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->sampleRate:I

    return-void
.end method

.method public setSamplesPerChannel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "samplesPerChannel"
        }
    .end annotation

    .line 69
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->samplesPerChannel:I

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 49
    iput p1, p0, Lcom/netease/yunxin/lite/model/LiteSDKAudioFrame;->type:I

    return-void
.end method
