.class final Lcom/google/android/exoplr2avp/DefaultMediaClock;
.super Ljava/lang/Object;
.source "DefaultMediaClock.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplr2avp/DefaultMediaClock$PlaybackParametersListener;
    }
.end annotation


# instance fields
.field private isUsingStandaloneClock:Z

.field private final listener:Lcom/google/android/exoplr2avp/DefaultMediaClock$PlaybackParametersListener;

.field private rendererClock:Lcom/google/android/exoplr2avp/util/MediaClock;

.field private rendererClockSource:Lcom/google/android/exoplr2avp/Renderer;

.field private final standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

.field private standaloneClockIsStarted:Z


# direct methods
.method public constructor <init>(Lcom/google/android/exoplr2avp/DefaultMediaClock$PlaybackParametersListener;Lcom/google/android/exoplr2avp/util/Clock;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->listener:Lcom/google/android/exoplr2avp/DefaultMediaClock$PlaybackParametersListener;

    .line 59
    new-instance p1, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-direct {p1, p2}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;-><init>(Lcom/google/android/exoplr2avp/util/Clock;)V

    iput-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    const/4 p1, 0x1

    .line 60
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->isUsingStandaloneClock:Z

    return-void
.end method

.method private shouldUseStandaloneClock(Z)Z
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplr2avp/Renderer;

    if-eqz v0, :cond_1

    .line 192
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Renderer;->isEnded()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplr2avp/Renderer;

    .line 193
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/Renderer;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplr2avp/Renderer;

    .line 194
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Renderer;->hasReadStreamToEnd()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private syncClocks(Z)V
    .locals 5

    .line 155
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->shouldUseStandaloneClock(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 156
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->isUsingStandaloneClock:Z

    .line 157
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->start()V

    :cond_0
    return-void

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplr2avp/util/MediaClock;

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplr2avp/util/MediaClock;

    .line 165
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    .line 166
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v2, :cond_3

    .line 168
    iget-object v2, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    .line 169
    iget-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->stop()V

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 172
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->isUsingStandaloneClock:Z

    .line 173
    iget-boolean v2, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClockIsStarted:Z

    if-eqz v2, :cond_3

    .line 174
    iget-object v2, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v2}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->start()V

    .line 178
    :cond_3
    iget-object v2, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v2, v0, v1}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->resetPosition(J)V

    .line 179
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object p1

    .line 180
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/exoplr2avp/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    .line 182
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->listener:Lcom/google/android/exoplr2avp/DefaultMediaClock$PlaybackParametersListener;

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/DefaultMediaClock$PlaybackParametersListener;->onPlaybackParametersChanged(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplr2avp/util/MediaClock;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Lcom/google/android/exoplr2avp/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->isUsingStandaloneClock:Z

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->getPositionUs()J

    move-result-wide v0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplr2avp/util/MediaClock;

    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplr2avp/util/MediaClock;

    invoke-interface {v0}, Lcom/google/android/exoplr2avp/util/MediaClock;->getPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public onRendererDisabled(Lcom/google/android/exoplr2avp/Renderer;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplr2avp/Renderer;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplr2avp/util/MediaClock;

    .line 114
    iput-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplr2avp/Renderer;

    const/4 p1, 0x1

    .line 115
    iput-boolean p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->isUsingStandaloneClock:Z

    :cond_0
    return-void
.end method

.method public onRendererEnabled(Lcom/google/android/exoplr2avp/Renderer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 93
    invoke-interface {p1}, Lcom/google/android/exoplr2avp/Renderer;->getMediaClock()Lcom/google/android/exoplr2avp/util/MediaClock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplr2avp/util/MediaClock;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 99
    iput-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplr2avp/util/MediaClock;

    .line 100
    iput-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClockSource:Lcom/google/android/exoplr2avp/Renderer;

    .line 101
    iget-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {p1}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/google/android/exoplr2avp/ExoPlaybackException;->createForUnexpected(Ljava/lang/RuntimeException;)Lcom/google/android/exoplr2avp/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public resetPosition(J)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->resetPosition(J)V

    return-void
.end method

.method public setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplr2avp/util/MediaClock;

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v0, p1}, Lcom/google/android/exoplr2avp/util/MediaClock;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    .line 142
    iget-object p1, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->rendererClock:Lcom/google/android/exoplr2avp/util/MediaClock;

    invoke-interface {p1}, Lcom/google/android/exoplr2avp/util/MediaClock;->getPlaybackParameters()Lcom/google/android/exoplr2avp/PlaybackParameters;

    move-result-object p1

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->setPlaybackParameters(Lcom/google/android/exoplr2avp/PlaybackParameters;)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    .line 65
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClockIsStarted:Z

    .line 66
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClockIsStarted:Z

    .line 72
    iget-object v0, p0, Lcom/google/android/exoplr2avp/DefaultMediaClock;->standaloneClock:Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;

    invoke-virtual {v0}, Lcom/google/android/exoplr2avp/util/StandaloneMediaClock;->stop()V

    return-void
.end method

.method public syncAndGetPositionUs(Z)J
    .locals 2

    .line 125
    invoke-direct {p0, p1}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->syncClocks(Z)V

    .line 126
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/DefaultMediaClock;->getPositionUs()J

    move-result-wide v0

    return-wide v0
.end method
