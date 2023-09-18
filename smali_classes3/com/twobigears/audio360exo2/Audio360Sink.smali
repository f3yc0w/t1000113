.class public Lcom/twobigears/audio360exo2/Audio360Sink;
.super Ljava/lang/Object;
.source "Audio360Sink.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/audio/AudioSink;


# static fields
.field private static final MAX_CHANNELS:I = 0x12

.field private static final MAX_PLAYHEAD_OFFSET_COUNT:I = 0xa

.field private static final MIN_PLAYHEAD_OFFSET_SAMPLE_INTERVAL_US:I = 0x7530

.field private static final NUM_BITS:I = 0x10

.field private static final NUM_BYTES_PER_SAMPLE:I = 0x2

.field private static final SAMPLE_RATE:I = 0xbb80

.field private static final START_IN_SYNC:I = 0x1

.field private static final START_NEED_SYNC:I = 0x2

.field private static final START_NOT_SET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Audio360Sink"


# instance fields
.field private channelMap:Lcom/twobigears/audio360/ChannelMap;

.field private lastPlayheadSampleTimeUs:J

.field private latencyUs:J

.field private listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

.field private nextPlayheadOffsetIndex:I

.field private numChannels:I

.field private playheadOffsetCount:I

.field private final playheadOffsets:[J

.field private smoothedPlayheadOffsetUs:J

.field private spat:Lcom/twobigears/audio360/SpatDecoderQueue;

.field private startMediaTimeUs:J

.field private submittedPcmBytes:J

.field private syncState:I


# direct methods
.method public constructor <init>(Lcom/twobigears/audio360/SpatDecoderQueue;Lcom/twobigears/audio360/ChannelMap;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/twobigears/audio360exo2/Audio360Sink;-><init>(Lcom/twobigears/audio360/SpatDecoderQueue;Lcom/twobigears/audio360/ChannelMap;D)V

    return-void
.end method

.method public constructor <init>(Lcom/twobigears/audio360/SpatDecoderQueue;Lcom/twobigears/audio360/ChannelMap;D)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    .line 76
    iput-object p2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->channelMap:Lcom/twobigears/audio360/ChannelMap;

    const-wide/16 p1, 0x0

    .line 77
    iput-wide p1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->startMediaTimeUs:J

    const/4 p1, 0x0

    .line 78
    iput p1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    const/16 p1, 0xa

    new-array p1, p1, [J

    .line 79
    iput-object p1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->playheadOffsets:[J

    .line 80
    invoke-direct {p0, p3, p4}, Lcom/twobigears/audio360exo2/Audio360Sink;->msToUs(D)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->latencyUs:J

    return-void
.end method

.method private audioSamplesToUs(J)J
    .locals 2

    const-wide/32 v0, 0xf4240

    mul-long p1, p1, v0

    const-wide/32 v0, 0xbb80

    .line 350
    div-long/2addr p1, v0

    return-wide p1
.end method

.method private getSpatDequeuedInUs()J
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->getNumSamplesDequeuedPerChannel()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    .line 367
    invoke-direct {p0, v0, v1}, Lcom/twobigears/audio360exo2/Audio360Sink;->audioSamplesToUs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private getSubmittedFrames()J
    .locals 4

    .line 358
    iget-wide v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->submittedPcmBytes:J

    iget v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->numChannels:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private hasCurrentPositionUs()Z
    .locals 1

    .line 362
    iget v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeInterpolateClock()V
    .locals 11

    .line 372
    invoke-direct {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->getSpatDequeuedInUs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 376
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 377
    iget-wide v6, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->lastPlayheadSampleTimeUs:J

    sub-long v6, v4, v6

    const-wide/16 v8, 0x7530

    cmp-long v10, v6, v8

    if-ltz v10, :cond_2

    .line 378
    iget-object v6, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->playheadOffsets:[J

    iget v7, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->nextPlayheadOffsetIndex:I

    sub-long/2addr v0, v4

    aput-wide v0, v6, v7

    add-int/lit8 v7, v7, 0x1

    const/16 v0, 0xa

    .line 379
    rem-int/2addr v7, v0

    iput v7, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->nextPlayheadOffsetIndex:I

    .line 380
    iget v1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->playheadOffsetCount:I

    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 381
    iput v1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->playheadOffsetCount:I

    .line 383
    :cond_1
    iput-wide v4, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->lastPlayheadSampleTimeUs:J

    .line 384
    iput-wide v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->smoothedPlayheadOffsetUs:J

    const/4 v0, 0x0

    .line 385
    :goto_0
    iget v1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->playheadOffsetCount:I

    if-ge v0, v1, :cond_2

    .line 386
    iget-wide v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->smoothedPlayheadOffsetUs:J

    iget-object v4, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->playheadOffsets:[J

    aget-wide v5, v4, v0

    int-to-long v7, v1

    div-long/2addr v5, v7

    add-long/2addr v2, v5

    iput-wide v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->smoothedPlayheadOffsetUs:J

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private msToUs(D)J
    .locals 2

    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double p1, p1, v0

    double-to-long p1, p1

    return-wide p1
.end method

.method private resetClockParams()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 392
    iput-wide v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->smoothedPlayheadOffsetUs:J

    const/4 v2, 0x0

    .line 393
    iput v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->playheadOffsetCount:I

    .line 394
    iput v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->nextPlayheadOffsetIndex:I

    .line 395
    iput-wide v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->lastPlayheadSampleTimeUs:J

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplr2avp/Format;I[I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 91
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    const/4 p3, 0x2

    if-ne p2, p3, :cond_2

    .line 95
    iget p2, p1, Lcom/google/android/exoplr2avp/Format;->sampleRate:I

    const p3, 0xbb80

    if-ne p2, p3, :cond_1

    .line 99
    iget-object p2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->channelMap:Lcom/twobigears/audio360/ChannelMap;

    invoke-static {p2}, Lcom/twobigears/audio360/Audio360;->getNumChannelsForMap(Lcom/twobigears/audio360/ChannelMap;)I

    move-result p2

    .line 100
    iget p3, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    if-ne p2, p3, :cond_0

    .line 106
    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    iput p1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->numChannels:I

    .line 107
    invoke-virtual {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->reset()V

    return-void

    .line 101
    :cond_0
    new-instance p3, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect number of channels for defined ChannelMap. The stream has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " channels, expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " channels."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;)V

    throw p3

    .line 96
    :cond_1
    new-instance p2, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;

    const-string p3, "Incompatible sample rate"

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;)V

    throw p2

    .line 92
    :cond_2
    new-instance p2, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;

    const-string p3, "Incompatible bit depth"

    invoke-direct {p2, p3, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lcom/google/android/exoplr2avp/Format;)V

    throw p2
.end method

.method public disableTunneling()V
    .locals 0

    return-void
.end method

.method public enableTunnelingV21()V
    .locals 0

    return-void
.end method

.method public experimentalFlushWithoutAudioTrackRelease()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->reset()V

    return-void
.end method

.method public getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelMap()Lcom/twobigears/audio360/ChannelMap;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->channelMap:Lcom/twobigears/audio360/ChannelMap;

    return-object v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 4

    .line 199
    invoke-direct {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->hasCurrentPositionUs()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->getPlayState()Lcom/twobigears/audio360/PlayState;

    move-result-object v0

    sget-object v1, Lcom/twobigears/audio360/PlayState;->PLAYING:Lcom/twobigears/audio360/PlayState;

    if-ne v0, v1, :cond_1

    .line 204
    invoke-direct {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->maybeInterpolateClock()V

    .line 207
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 210
    iget v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->playheadOffsetCount:I

    if-nez v2, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->getSpatDequeuedInUs()J

    move-result-wide v0

    goto :goto_0

    .line 219
    :cond_2
    iget-wide v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->smoothedPlayheadOffsetUs:J

    add-long/2addr v0, v2

    :goto_0
    if-nez p1, :cond_3

    .line 222
    iget-wide v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->latencyUs:J

    sub-long/2addr v0, v2

    .line 225
    :cond_3
    iget-wide v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->startMediaTimeUs:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public getFormatSupport(Lcom/google/android/exoplr2avp/Format;)I
    .locals 3

    .line 271
    iget v0, p1, Lcom/google/android/exoplr2avp/Format;->channelCount:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-gt v0, v2, :cond_0

    iget p1, p1, Lcom/google/android/exoplr2avp/Format;->pcmEncoding:I

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Util;->isEncodingLinearPcm(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :cond_1
    return v1
.end method

.method public getNumDecoderChannels()I
    .locals 1

    .line 346
    iget v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->numChannels:I

    return v0
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 285
    sget-object v0, Lcom/google/android/exoplr2avp/PlaybackParameters;->DEFAULT:Lcom/google/android/exoplr2avp/PlaybackParameters;

    return-object v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 144
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p4

    const/4 v0, 0x1

    if-nez p4, :cond_0

    return v0

    .line 148
    :cond_0
    iget p4, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    const/4 v1, 0x2

    if-nez p4, :cond_1

    const-wide/16 v2, 0x0

    .line 149
    invoke-static {v2, v3, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->startMediaTimeUs:J

    .line 150
    iput v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    goto :goto_0

    .line 153
    :cond_1
    iget-wide v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->startMediaTimeUs:J

    .line 154
    invoke-direct {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->getSubmittedFrames()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/twobigears/audio360exo2/Audio360Sink;->audioSamplesToUs(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 155
    iget p4, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    if-ne p4, v0, :cond_2

    sub-long v4, v2, p2

    .line 156
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x30d40

    cmp-long p4, v4, v6

    if-lez p4, :cond_2

    .line 157
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Discontinuity detected [expected "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", got "

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v4, "Audio360Sink"

    invoke-static {v4, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput v1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    .line 161
    :cond_2
    iget p4, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    if-ne p4, v1, :cond_3

    .line 164
    iget-wide v4, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->startMediaTimeUs:J

    sub-long/2addr p2, v2

    add-long/2addr v4, p2

    iput-wide v4, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->startMediaTimeUs:J

    .line 165
    iput v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    .line 166
    iget-object p2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    if-eqz p2, :cond_3

    .line 167
    invoke-interface {p2}, Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;->onPositionDiscontinuity()V

    .line 172
    :cond_3
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    div-int/2addr p2, v1

    .line 173
    iget-object p3, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    iget-object p4, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->channelMap:Lcom/twobigears/audio360/ChannelMap;

    invoke-virtual {p3, p4}, Lcom/twobigears/audio360/SpatDecoderQueue;->getFreeSpaceInQueue(Lcom/twobigears/audio360/ChannelMap;)I

    move-result p3

    if-lt p3, p2, :cond_4

    .line 174
    iget-wide p3, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->submittedPcmBytes:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr p3, v1

    iput-wide p3, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->submittedPcmBytes:J

    .line 175
    iget-object p3, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    iget-object p4, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->channelMap:Lcom/twobigears/audio360/ChannelMap;

    invoke-virtual {p3, p1, p2, p4}, Lcom/twobigears/audio360/SpatDecoderQueue;->enqueueDataInt16(Ljava/nio/ByteBuffer;ILcom/twobigears/audio360/ChannelMap;)I

    return v0

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public handleDiscontinuity()V
    .locals 2

    .line 231
    iget v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 232
    iput v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    :cond_0
    return-void
.end method

.method public hasPendingData()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    iget-object v1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->channelMap:Lcom/twobigears/audio360/ChannelMap;

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->getFreeSpaceInQueue(Lcom/twobigears/audio360/ChannelMap;)I

    move-result v0

    iget-object v1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    iget-object v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->channelMap:Lcom/twobigears/audio360/ChannelMap;

    invoke-virtual {v1, v2}, Lcom/twobigears/audio360/SpatDecoderQueue;->getQueueSize(Lcom/twobigears/audio360/ChannelMap;)I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->getEndOfStreamStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pause()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->pause()Lcom/twobigears/audio360/EngineError;

    .line 189
    invoke-direct {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->resetClockParams()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->play()Lcom/twobigears/audio360/EngineError;

    return-void
.end method

.method public playToEndOfStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->setEndOfStream(Z)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    invoke-virtual {v0}, Lcom/twobigears/audio360/SpatDecoderQueue;->flushQueue()V

    const-wide/16 v0, 0x0

    .line 133
    iput-wide v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->startMediaTimeUs:J

    const/4 v2, 0x0

    .line 134
    iput v2, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->syncState:I

    .line 135
    iput-wide v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->submittedPcmBytes:J

    .line 136
    invoke-direct {p0}, Lcom/twobigears/audio360exo2/Audio360Sink;->resetClockParams()V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 0

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V
    .locals 0

    return-void
.end method

.method public setChannelMap(Lcom/twobigears/audio360/ChannelMap;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->channelMap:Lcom/twobigears/audio360/ChannelMap;

    return-void
.end method

.method public setListener(Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->listener:Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 0

    return-void
.end method

.method public synthetic setPlayerId(Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink$-CC;->$default$setPlayerId(Lcom/google/android/exoplr2avp/audio/AudioSink;Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setVolume(F)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/twobigears/audio360exo2/Audio360Sink;->spat:Lcom/twobigears/audio360/SpatDecoderQueue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/twobigears/audio360/SpatDecoderQueue;->setVolume(FF)V

    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 0

    .line 265
    invoke-virtual {p0, p1}, Lcom/twobigears/audio360exo2/Audio360Sink;->getFormatSupport(Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
