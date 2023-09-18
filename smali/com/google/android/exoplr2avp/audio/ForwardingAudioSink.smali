.class public Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;
.super Ljava/lang/Object;
.source "ForwardingAudioSink.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/audio/AudioSink;


# instance fields
.field private final sink:Lcom/google/android/exoplr2avp/audio/AudioSink;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/audio/AudioSink;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    return-void
.end method


# virtual methods
.method public configure(Lcom/google/android/exoplr2avp/Format;I[I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplr2avp/audio/AudioSink;->configure(Lcom/google/android/exoplr2avp/Format;I[I)V

    return-void
.end method

.method public disableTunneling()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->disableTunneling()V

    return-void
.end method

.method public enableTunnelingV21()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->enableTunnelingV21()V

    return-void
.end method

.method public experimentalFlushWithoutAudioTrackRelease()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    return-void
.end method

.method public flush()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->flush()V

    return-void
.end method

.method public getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getAudioAttributes()Lcom/google/android/exoplr2avp/audio/AudioAttributes;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFormatSupport(Lcom/google/android/exoplr2avp/Format;)I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getFormatSupport(Lcom/google/android/exoplr2avp/Format;)I

    move-result p1

    return p1
.end method

.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getSkipSilenceEnabled()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->getSkipSilenceEnabled()Z

    move-result v0

    return v0
.end method

.method public handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$InitializationException;,
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/exoplr2avp/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result p1

    return p1
.end method

.method public handleDiscontinuity()V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->handleDiscontinuity()V

    return-void
.end method

.method public hasPendingData()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->hasPendingData()Z

    move-result v0

    return v0
.end method

.method public isEnded()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->isEnded()Z

    move-result v0

    return v0
.end method

.method public pause()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->pause()V

    return-void
.end method

.method public play()V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->play()V

    return-void
.end method

.method public playToEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->playToEndOfStream()V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/audio/AudioSink;->reset()V

    return-void
.end method

.method public setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setAudioAttributes(Lcom/google/android/exoplr2avp/audio/AudioAttributes;)V

    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setAudioSessionId(I)V

    return-void
.end method

.method public setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setAuxEffectInfo(Lcom/google/android/exoplr2avp/audio/AuxEffectInfo;)V

    return-void
.end method

.method public setListener(Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setListener(Lcom/google/android/exoplr2avp/audio/AudioSink$Listener;)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method public setPlayerId(Lcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setPlayerId(Lcom/google/android/exoplr2avp/analytics/PlayerId;)V

    return-void
.end method

.method public setSkipSilenceEnabled(Z)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->setVolume(F)V

    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/google/android/exoplr2avp/audio/ForwardingAudioSink;->sink:Lcom/google/android/exoplr2avp/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/audio/AudioSink;->supportsFormat(Lcom/google/android/exoplr2avp/Format;)Z

    move-result p1

    return p1
.end method
