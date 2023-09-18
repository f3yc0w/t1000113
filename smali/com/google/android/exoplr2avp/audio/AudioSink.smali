.class public interface abstract Lcom/google/android/exoplr2avp/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/audio/AudioSink$SinkFormatSupport;,
        Lcom/google/android/exoplr2avp/audio/AudioSink$UnexpectedDiscontinuityException;,
        Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;,
        Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;,
        Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;,
        Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;
    }
.end annotation


# static fields
.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field public static final SINK_FORMAT_SUPPORTED_DIRECTLY:I = 0x2

.field public static final SINK_FORMAT_SUPPORTED_WITH_TRANSCODING:I = 0x1

.field public static final SINK_FORMAT_UNSUPPORTED:I


# virtual methods
.method public abstract configure(Lcom/google/android/exoplr2avp/Format;I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract enableTunnelingV21()V
.end method

.method public abstract experimentalFlushWithoutAudioTrackRelease()V
.end method

.method public abstract flush()V
.end method

.method public abstract getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getFormatSupport(Lcom/google/android/exoplr2avp/Format;)I
.end method

.method public abstract getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
.end method

.method public abstract getSkipSilenceEnabled()Z
.end method

.method public abstract handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V
.end method

.method public abstract setListener(Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;)V
.end method

.method public abstract setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
.end method

.method public abstract setPlayerId(Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
.end method

.method public abstract setSkipSilenceEnabled(Z)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z
.end method
