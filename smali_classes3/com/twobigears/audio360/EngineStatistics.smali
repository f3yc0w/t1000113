.class public Lcom/twobigears/audio360/EngineStatistics;
.super Ljava/lang/Object;
.source "EngineStatistics.java"


# instance fields
.field protected transient swigCMemOwn:Z

.field private transient swigCPtr:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 106
    invoke-static {}, Lcom/twobigears/audio360/Audio360JNI;->new_EngineStatistics()J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/twobigears/audio360/EngineStatistics;-><init>(JZ)V

    return-void
.end method

.method protected constructor <init>(JZ)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-boolean p3, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCMemOwn:Z

    .line 19
    iput-wide p1, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/EngineStatistics;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 23
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 32
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 33
    iget-boolean v4, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCMemOwn:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    .line 34
    iput-boolean v4, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCMemOwn:Z

    .line 35
    invoke-static {v0, v1}, Lcom/twobigears/audio360/Audio360JNI;->delete_EngineStatistics(J)V

    .line 37
    :cond_0
    iput-wide v2, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/twobigears/audio360/EngineStatistics;->delete()V

    return-void
.end method

.method public getAudioCallbackTimeMicroSec()J
    .locals 2

    .line 46
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_audioCallbackTimeMicroSec_get(JLcom/twobigears/audio360/EngineStatistics;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDecoderThreadTimeMicroSec()J
    .locals 2

    .line 54
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_decoderThreadTimeMicroSec_get(JLcom/twobigears/audio360/EngineStatistics;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumActiveAudioObjects()J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numActiveAudioObjects_get(JLcom/twobigears/audio360/EngineStatistics;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumActiveSpatDecoderFiles()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numActiveSpatDecoderFiles_get(JLcom/twobigears/audio360/EngineStatistics;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumActiveSpatDecoderQueues()J
    .locals 2

    .line 94
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numActiveSpatDecoderQueues_get(JLcom/twobigears/audio360/EngineStatistics;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumAudioObjectsPlaying()J
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numAudioObjectsPlaying_get(JLcom/twobigears/audio360/EngineStatistics;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumSpatDecoderFilesPlaying()J
    .locals 2

    .line 86
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numSpatDecoderFilesPlaying_get(JLcom/twobigears/audio360/EngineStatistics;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumSpatDecoderQueuesPlaying()J
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numSpatDecoderQueuesPlaying_get(JLcom/twobigears/audio360/EngineStatistics;)J

    move-result-wide v0

    return-wide v0
.end method

.method public setAudioCallbackTimeMicroSec(J)V
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_audioCallbackTimeMicroSec_set(JLcom/twobigears/audio360/EngineStatistics;J)V

    return-void
.end method

.method public setDecoderThreadTimeMicroSec(J)V
    .locals 2

    .line 50
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_decoderThreadTimeMicroSec_set(JLcom/twobigears/audio360/EngineStatistics;J)V

    return-void
.end method

.method public setNumActiveAudioObjects(J)V
    .locals 2

    .line 58
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numActiveAudioObjects_set(JLcom/twobigears/audio360/EngineStatistics;J)V

    return-void
.end method

.method public setNumActiveSpatDecoderFiles(J)V
    .locals 2

    .line 74
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numActiveSpatDecoderFiles_set(JLcom/twobigears/audio360/EngineStatistics;J)V

    return-void
.end method

.method public setNumActiveSpatDecoderQueues(J)V
    .locals 2

    .line 90
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numActiveSpatDecoderQueues_set(JLcom/twobigears/audio360/EngineStatistics;J)V

    return-void
.end method

.method public setNumAudioObjectsPlaying(J)V
    .locals 2

    .line 66
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numAudioObjectsPlaying_set(JLcom/twobigears/audio360/EngineStatistics;J)V

    return-void
.end method

.method public setNumSpatDecoderFilesPlaying(J)V
    .locals 2

    .line 82
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numSpatDecoderFilesPlaying_set(JLcom/twobigears/audio360/EngineStatistics;J)V

    return-void
.end method

.method public setNumSpatDecoderQueuesPlaying(J)V
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/twobigears/audio360/EngineStatistics;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->EngineStatistics_numSpatDecoderQueuesPlaying_set(JLcom/twobigears/audio360/EngineStatistics;J)V

    return-void
.end method
