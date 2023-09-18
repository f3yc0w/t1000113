.class public Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;
.super Ljava/lang/Object;
.source "WebRtcAudioLoopBack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioSamples"
.end annotation


# instance fields
.field private final audioFormat:I

.field private final channelCount:I

.field private final data:[B

.field private final sampleRate:I


# direct methods
.method private constructor <init>(Landroid/media/AudioRecord;[B)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getAudioFormat()I

    move-result v0

    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;->audioFormat:I

    .line 133
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getChannelCount()I

    move-result v0

    iput v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;->channelCount:I

    .line 134
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;->sampleRate:I

    .line 135
    iput-object p2, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;->data:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/AudioRecord;[BLcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1, p2}, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;-><init>(Landroid/media/AudioRecord;[B)V

    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;->audioFormat:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;->channelCount:I

    return v0
.end method

.method public getData()[B
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;->data:[B

    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/netease/lava/webrtc/voiceengine/WebRtcAudioLoopBack$AudioSamples;->sampleRate:I

    return v0
.end method
