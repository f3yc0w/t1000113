.class public Lcom/twobigears/audio360/SpatDecoderInterface;
.super Lcom/twobigears/audio360/Object3D;
.source "SpatDecoderInterface.java"


# instance fields
.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    .line 17
    invoke-static {p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/twobigears/audio360/Object3D;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/SpatDecoderInterface;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public addEffectInsert(Lcom/twobigears/audio360/EffectIndex;Lcom/twobigears/audio360/EffectType;)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/EffectIndex;->swigValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/twobigears/audio360/EffectType;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_addEffectInsert(JLcom/twobigears/audio360/SpatDecoderInterface;II)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public bypassEffectInsert(Lcom/twobigears/audio360/EffectIndex;Z)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/EffectIndex;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_bypassEffectInsert(JLcom/twobigears/audio360/SpatDecoderInterface;IZ)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public bypassReverbSend(Z)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_bypassReverbSend(JLcom/twobigears/audio360/SpatDecoderInterface;Z)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 26
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 27
    iget-boolean v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCMemOwn:Z

    if-nez v0, :cond_0

    .line 31
    iput-wide v2, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCMemOwn:Z

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/twobigears/audio360/Object3D;->delete()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableFocus(ZZ)V
    .locals 2

    .line 37
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_enableFocus(JLcom/twobigears/audio360/SpatDecoderInterface;ZZ)V

    return-void
.end method

.method public getEffectInsertParam(Lcom/twobigears/audio360/EffectIndex;Lcom/twobigears/audio360/EffectParam;)F
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/EffectIndex;->swigValue()I

    move-result p1

    invoke-virtual {p2}, Lcom/twobigears/audio360/EffectParam;->swigValue()I

    move-result p2

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_getEffectInsertParam(JLcom/twobigears/audio360/SpatDecoderInterface;II)F

    move-result p1

    return p1
.end method

.method public getEffectType(Lcom/twobigears/audio360/EffectIndex;)Lcom/twobigears/audio360/EffectType;
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/EffectIndex;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_getEffectType(JLcom/twobigears/audio360/SpatDecoderInterface;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EffectType;->swigToEnum(I)Lcom/twobigears/audio360/EffectType;

    move-result-object p1

    return-object p1
.end method

.method public getReverbSendLevel()F
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_getReverbSendLevel(JLcom/twobigears/audio360/SpatDecoderInterface;)F

    move-result v0

    return v0
.end method

.method public getVolume()F
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_getVolume(JLcom/twobigears/audio360/SpatDecoderInterface;)F

    move-result v0

    return v0
.end method

.method public getVolumeDecibels()F
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_getVolumeDecibels(JLcom/twobigears/audio360/SpatDecoderInterface;)F

    move-result v0

    return v0
.end method

.method public isEffectInsertActive(Lcom/twobigears/audio360/EffectIndex;)Z
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/EffectIndex;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_isEffectInsertActive(JLcom/twobigears/audio360/SpatDecoderInterface;I)Z

    move-result p1

    return p1
.end method

.method public isEffectInsertBypassed(Lcom/twobigears/audio360/EffectIndex;)Z
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/EffectIndex;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_isEffectInsertBypassed(JLcom/twobigears/audio360/SpatDecoderInterface;I)Z

    move-result p1

    return p1
.end method

.method public isReverbSendBypassed()Z
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_isReverbSendBypassed(JLcom/twobigears/audio360/SpatDecoderInterface;)Z

    move-result v0

    return v0
.end method

.method public removeEffectInsert(Lcom/twobigears/audio360/EffectIndex;)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/EffectIndex;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_removeEffectInsert(JLcom/twobigears/audio360/SpatDecoderInterface;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setEffectInsertParam(Lcom/twobigears/audio360/EffectIndex;Lcom/twobigears/audio360/EffectParam;F)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 109
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/EffectIndex;->swigValue()I

    move-result v3

    invoke-virtual {p2}, Lcom/twobigears/audio360/EffectParam;->swigValue()I

    move-result v4

    move-object v2, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setEffectInsertParam(JLcom/twobigears/audio360/SpatDecoderInterface;IIF)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setFocusOrientationQuat(Lcom/twobigears/audio360/TBQuat;)V
    .locals 6

    .line 53
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/TBQuat;->getCPtr(Lcom/twobigears/audio360/TBQuat;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setFocusOrientationQuat(JLcom/twobigears/audio360/SpatDecoderInterface;JLcom/twobigears/audio360/TBQuat;)V

    return-void
.end method

.method public setFocusProperties(FF)V
    .locals 2

    .line 41
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setFocusProperties(JLcom/twobigears/audio360/SpatDecoderInterface;FF)V

    return-void
.end method

.method public setFocusWidthDegrees(F)V
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setFocusWidthDegrees(JLcom/twobigears/audio360/SpatDecoderInterface;F)V

    return-void
.end method

.method public setOffFocusLeveldB(F)V
    .locals 2

    .line 45
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setOffFocusLeveldB(JLcom/twobigears/audio360/SpatDecoderInterface;F)V

    return-void
.end method

.method public setReverbSendLevel(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setReverbSendLevel(JLcom/twobigears/audio360/SpatDecoderInterface;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setVolume(FF)V
    .locals 2

    .line 61
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setVolume__SWIG_1(JLcom/twobigears/audio360/SpatDecoderInterface;FF)V

    return-void
.end method

.method public setVolume(FFZ)V
    .locals 6

    .line 57
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setVolume__SWIG_0(JLcom/twobigears/audio360/SpatDecoderInterface;FFZ)V

    return-void
.end method

.method public setVolumeDecibels(FF)V
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setVolumeDecibels__SWIG_1(JLcom/twobigears/audio360/SpatDecoderInterface;FF)V

    return-void
.end method

.method public setVolumeDecibels(FFZ)V
    .locals 6

    .line 65
    iget-wide v0, p0, Lcom/twobigears/audio360/SpatDecoderInterface;->swigCPtr:J

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->SpatDecoderInterface_setVolumeDecibels__SWIG_0(JLcom/twobigears/audio360/SpatDecoderInterface;FFZ)V

    return-void
.end method
