.class public Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$AudioProcessorChain;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplr2avp/audio/DefaultAudioSink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultAudioProcessorChain"
.end annotation


# instance fields
.field private final audioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

.field private final silenceSkippingAudioProcessor:Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;

.field private final sonicAudioProcessor:Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;


# direct methods
.method public varargs constructor <init>([Lcom/google/android/exoplr2avp/audio/AudioProcessor;)V
    .locals 2

    .line 166
    new-instance v0, Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;

    invoke-direct {v0}, Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;-><init>()V

    new-instance v1, Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;

    invoke-direct {v1}, Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;-><init>([Lcom/google/android/exoplr2avp/audio/AudioProcessor;Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;)V

    return-void
.end method

.method public constructor <init>([Lcom/google/android/exoplr2avp/audio/AudioProcessor;Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;)V
    .locals 3

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    iput-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    .line 180
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 186
    iput-object p2, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;

    .line 187
    iput-object p3, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;

    .line 188
    array-length v1, p1

    aput-object p2, v0, v1

    .line 189
    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    aput-object p3, v0, p1

    return-void
.end method


# virtual methods
.method public applyPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;

    iget v1, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->speed:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;->setSpeed(F)V

    .line 200
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;

    iget v1, p1, Lcom/google/android/exoplr2avp/PlaybackParameters;->pitch:F

    invoke-virtual {v0, v1}, Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;->setPitch(F)V

    return-object p1
.end method

.method public applySkipSilenceEnabled(Z)Z
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;->setEnabled(Z)V

    return p1
.end method

.method public getAudioProcessors()[Lcom/google/android/exoplr2avp/audio/AudioProcessor;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;->audioProcessors:[Lcom/google/android/exoplr2avp/audio/AudioProcessor;

    return-object v0
.end method

.method public getMediaDuration(J)J
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;->sonicAudioProcessor:Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/audio/SonicAudioProcessor;->getMediaDuration(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getSkippedOutputFrameCount()J
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/DefaultAudioSink$DefaultAudioProcessorChain;->silenceSkippingAudioProcessor:Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/audio/SilenceSkippingAudioProcessor;->getSkippedFrames()J

    move-result-wide v0

    return-wide v0
.end method
