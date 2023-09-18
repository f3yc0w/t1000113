.class public abstract Lcom/google/android/exoplr2avp/NoSampleRenderer;
.super Ljava/lang/Object;
.source "NoSampleRenderer.java"

# interfaces
.implements Lcom/google/android/exoplr2avp/Renderer;
.implements Lcom/google/android/exoplr2avp/RendererCapabilities;


# instance fields
.field private configuration:Lcom/google/android/exoplr2avp/RendererConfiguration;

.field private index:I

.field private state:I

.field private stream:Lcom/google/android/exoplr2avp/source/SampleStream;

.field private streamIsFinal:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 3

    .line 143
    iget v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 144
    iput v2, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    .line 146
    iput-boolean v2, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->streamIsFinal:Z

    .line 147
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/NoSampleRenderer;->onDisabled()V

    return-void
.end method

.method public final enable(Lcom/google/android/exoplr2avp/RendererConfiguration;[Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/source/SampleStream;JZZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    move-object v7, p0

    move v8, p6

    .line 75
    iget v0, v7, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    move-object v0, p1

    .line 76
    iput-object v0, v7, Lcom/google/android/exoplr2avp/NoSampleRenderer;->configuration:Lcom/google/android/exoplr2avp/RendererConfiguration;

    .line 77
    iput v1, v7, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    .line 78
    invoke-virtual {p0, p6}, Lcom/google/android/exoplr2avp/NoSampleRenderer;->onEnabled(Z)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 79
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplr2avp/NoSampleRenderer;->replaceStream([Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/source/SampleStream;JJ)V

    move-wide v0, p4

    .line 80
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/exoplr2avp/NoSampleRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final getCapabilities()Lcom/google/android/exoplr2avp/RendererCapabilities;
    .locals 0

    return-object p0
.end method

.method protected final getConfiguration()Lcom/google/android/exoplr2avp/RendererConfiguration;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->configuration:Lcom/google/android/exoplr2avp/RendererConfiguration;

    return-object v0
.end method

.method protected final getIndex()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->index:I

    return v0
.end method

.method public getMediaClock()Lcom/google/android/exoplr2avp/util/MediaClock;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getReadingPositionUs()J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final getState()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    return v0
.end method

.method public final getStream()Lcom/google/android/exoplr2avp/source/SampleStream;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    return-object v0
.end method

.method public final getTrackType()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final hasReadStreamToEnd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final init(ILcom/google/android/exoplr2avp/analytics/PlayerId;)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->index:I

    return-void
.end method

.method public final isCurrentStreamFinal()Z
    .locals 1

    .line 122
    iget-boolean v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->streamIsFinal:Z

    return v0
.end method

.method public isEnded()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReady()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final maybeThrowStreamError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected onDisabled()V
    .locals 0

    return-void
.end method

.method protected onEnabled(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onRendererOffsetChanged(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onReset()V
    .locals 0

    return-void
.end method

.method protected onStarted()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected onStopped()V
    .locals 0

    return-void
.end method

.method public final replaceStream([Lcom/google/android/exoplr2avp/Format;Lcom/google/android/exoplr2avp/source/SampleStream;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 94
    iget-boolean p1, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->streamIsFinal:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 95
    iput-object p2, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->stream:Lcom/google/android/exoplr2avp/source/SampleStream;

    .line 96
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplr2avp/NoSampleRenderer;->onRendererOffsetChanged(J)V

    return-void
.end method

.method public final reset()V
    .locals 1

    .line 152
    iget v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 153
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/NoSampleRenderer;->onReset()V

    return-void
.end method

.method public final resetPosition(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->streamIsFinal:Z

    .line 131
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplr2avp/NoSampleRenderer;->onPositionReset(JZ)V

    return-void
.end method

.method public final setCurrentStreamFinal()V
    .locals 1

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->streamIsFinal:Z

    return-void
.end method

.method public synthetic setPlaybackSpeed(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplr2avp/Renderer$-CC;->$default$setPlaybackSpeed(Lcom/google/android/exoplr2avp/Renderer;FF)V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    .line 85
    iget v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    const/4 v0, 0x2

    .line 86
    iput v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    .line 87
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/NoSampleRenderer;->onStarted()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 136
    iget v0, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplr2avp/util/Assertions;->checkState(Z)V

    .line 137
    iput v1, p0, Lcom/google/android/exoplr2avp/NoSampleRenderer;->state:I

    .line 138
    invoke-virtual {p0}, Lcom/google/android/exoplr2avp/NoSampleRenderer;->onStopped()V

    return-void
.end method

.method public supportsFormat(Lcom/google/android/exoplr2avp/Format;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 170
    invoke-static {p1}, Lcom/google/android/exoplr2avp/RendererCapabilities$-CC;->create(I)I

    move-result p1

    return p1
.end method

.method public supportsMixedMimeTypeAdaptation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplr2avp/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method
