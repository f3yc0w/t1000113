.class public Lcom/twobigears/audio360/AudioObject;
.super Lcom/twobigears/audio360/SpatDecoderInterface;
.source "AudioObject.java"


# instance fields
.field private eventListener_:Lcom/twobigears/audio360/EventListener;

.field private transient swigCPtr:J


# direct methods
.method protected constructor <init>(JZ)V
    .locals 2

    .line 17
    invoke-static {p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_SWIGUpcast(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p3}, Lcom/twobigears/audio360/SpatDecoderInterface;-><init>(JZ)V

    .line 18
    iput-wide p1, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    return-void
.end method

.method protected static getCPtr(Lcom/twobigears/audio360/AudioObject;)J
    .locals 2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 22
    :cond_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    :goto_0
    return-wide v0
.end method

.method private setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V
    .locals 6

    .line 212
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/EventListener;->getCPtr(Lcom/twobigears/audio360/EventListener;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_setEventListenerInternal(JLcom/twobigears/audio360/AudioObject;JLcom/twobigears/audio360/EventListener;)V

    return-void
.end method


# virtual methods
.method public bypassEffect(Lcom/twobigears/audio360/SWIGTYPE_p_void;Z)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 182
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v3

    move-object v2, p0

    move v5, p2

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_bypassEffect(JLcom/twobigears/audio360/AudioObject;JZ)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public close()V
    .locals 2

    .line 65
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_close(JLcom/twobigears/audio360/AudioObject;)V

    return-void
.end method

.method public createEffect(Lcom/twobigears/audio360/EffectType;)Lcom/twobigears/audio360/SWIGTYPE_p_void;
    .locals 4

    .line 165
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/EffectType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_createEffect(JLcom/twobigears/audio360/AudioObject;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 166
    :cond_0
    new-instance p1, Lcom/twobigears/audio360/SWIGTYPE_p_void;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/twobigears/audio360/SWIGTYPE_p_void;-><init>(JZ)V

    :goto_0
    return-object p1
.end method

.method public declared-synchronized delete()V
    .locals 5

    monitor-enter p0

    .line 26
    :try_start_0
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 27
    iget-boolean v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCMemOwn:Z

    if-nez v0, :cond_0

    .line 31
    iput-wide v2, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCMemOwn:Z

    .line 29
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "C++ destructor does not have public access"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/twobigears/audio360/SpatDecoderInterface;->delete()V
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

.method public destroyEffect(Lcom/twobigears/audio360/SWIGTYPE_p_void;)V
    .locals 4

    .line 170
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_destroyEffect(JLcom/twobigears/audio360/AudioObject;J)V

    return-void
.end method

.method public enableLooping(Z)Z
    .locals 2

    .line 117
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_enableLooping(JLcom/twobigears/audio360/AudioObject;Z)Z

    move-result p1

    return p1
.end method

.method public getAssetDurationInMs()F
    .locals 2

    .line 93
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getAssetDurationInMs(JLcom/twobigears/audio360/AudioObject;)F

    move-result v0

    return v0
.end method

.method public getAssetDurationInSamples()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getAssetDurationInSamples(JLcom/twobigears/audio360/AudioObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAttenuationMode()Lcom/twobigears/audio360/AttenuationMode;
    .locals 2

    .line 129
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getAttenuationMode(JLcom/twobigears/audio360/AudioObject;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/AttenuationMode;->swigToEnum(I)Lcom/twobigears/audio360/AttenuationMode;

    move-result-object v0

    return-object v0
.end method

.method public getAttenuationProperties()Lcom/twobigears/audio360/AttenuationProps;
    .locals 4

    .line 137
    new-instance v0, Lcom/twobigears/audio360/AttenuationProps;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getAttenuationProperties(JLcom/twobigears/audio360/AudioObject;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/AttenuationProps;-><init>(JZ)V

    return-object v0
.end method

.method public getDirectionalProperties()Lcom/twobigears/audio360/DirectionalProps;
    .locals 4

    .line 153
    new-instance v0, Lcom/twobigears/audio360/DirectionalProps;

    iget-wide v1, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v1, v2, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getDirectionalProperties(JLcom/twobigears/audio360/AudioObject;)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/twobigears/audio360/DirectionalProps;-><init>(JZ)V

    return-object v0
.end method

.method public getEffect(J)Lcom/twobigears/audio360/SWIGTYPE_p_void;
    .locals 3

    .line 202
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getEffect(JLcom/twobigears/audio360/AudioObject;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 203
    :cond_0
    new-instance v0, Lcom/twobigears/audio360/SWIGTYPE_p_void;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;-><init>(JZ)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method public getEffectParam(Lcom/twobigears/audio360/SWIGTYPE_p_void;Lcom/twobigears/audio360/EffectParam;)F
    .locals 6

    .line 194
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/twobigears/audio360/EffectParam;->swigValue()I

    move-result v5

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getEffectParam(JLcom/twobigears/audio360/AudioObject;JI)F

    move-result p1

    return p1
.end method

.method public getEffectTypeForHandle(Lcom/twobigears/audio360/SWIGTYPE_p_void;)Lcom/twobigears/audio360/EffectType;
    .locals 4

    .line 174
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getEffectTypeForHandle(JLcom/twobigears/audio360/AudioObject;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EffectType;->swigToEnum(I)Lcom/twobigears/audio360/EffectType;

    move-result-object p1

    return-object p1
.end method

.method public getElapsedTimeInMs()D
    .locals 2

    .line 85
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getElapsedTimeInMs(JLcom/twobigears/audio360/AudioObject;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getElapsedTimeInSamples()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getElapsedTimeInSamples(JLcom/twobigears/audio360/AudioObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumberOfEffects()J
    .locals 2

    .line 198
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getNumberOfEffects(JLcom/twobigears/audio360/AudioObject;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutputBus()Lcom/twobigears/audio360/SWIGTYPE_p_void;
    .locals 5

    .line 207
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getOutputBus(JLcom/twobigears/audio360/AudioObject;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 208
    :cond_0
    new-instance v2, Lcom/twobigears/audio360/SWIGTYPE_p_void;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Lcom/twobigears/audio360/SWIGTYPE_p_void;-><init>(JZ)V

    move-object v0, v2

    :goto_0
    return-object v0
.end method

.method public getPitch()F
    .locals 2

    .line 161
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getPitch(JLcom/twobigears/audio360/AudioObject;)F

    move-result v0

    return v0
.end method

.method public getSpatialisationType()Lcom/twobigears/audio360/SpatialisationType;
    .locals 2

    .line 113
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_getSpatialisationType(JLcom/twobigears/audio360/AudioObject;)I

    move-result v0

    invoke-static {v0}, Lcom/twobigears/audio360/SpatialisationType;->swigToEnum(I)Lcom/twobigears/audio360/SpatialisationType;

    move-result-object v0

    return-object v0
.end method

.method public isDirectionalityEnabled()Z
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_isDirectionalityEnabled(JLcom/twobigears/audio360/AudioObject;)Z

    move-result v0

    return v0
.end method

.method public isEffectBypassed(Lcom/twobigears/audio360/SWIGTYPE_p_void;)Z
    .locals 4

    .line 186
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v2

    invoke-static {v0, v1, p0, v2, v3}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_isEffectBypassed(JLcom/twobigears/audio360/AudioObject;J)Z

    move-result p1

    return p1
.end method

.method public isOpen()Z
    .locals 2

    .line 69
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_isOpen(JLcom/twobigears/audio360/AudioObject;)Z

    move-result v0

    return v0
.end method

.method public isSpatialised()Z
    .locals 2

    .line 101
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_isSpatialised(JLcom/twobigears/audio360/AudioObject;)Z

    move-result v0

    return v0
.end method

.method public loopingEnabled()Z
    .locals 2

    .line 121
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_loopingEnabled(JLcom/twobigears/audio360/AudioObject;)Z

    move-result v0

    return v0
.end method

.method public open(Lcom/twobigears/audio360/AudioFormatDecoder;)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 61
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AudioFormatDecoder;->getCPtr(Lcom/twobigears/audio360/AudioFormatDecoder;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_open__SWIG_3(JLcom/twobigears/audio360/AudioObject;JLcom/twobigears/audio360/AudioFormatDecoder;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public open(Lcom/twobigears/audio360/IOStream;Z)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 57
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/IOStream;->getCPtr(Lcom/twobigears/audio360/IOStream;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_open__SWIG_2(JLcom/twobigears/audio360/AudioObject;JLcom/twobigears/audio360/IOStream;Z)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_open__SWIG_0(JLcom/twobigears/audio360/AudioObject;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;Lcom/twobigears/audio360/AssetDescriptor;)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 53
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p2}, Lcom/twobigears/audio360/AssetDescriptor;->getCPtr(Lcom/twobigears/audio360/AssetDescriptor;)J

    move-result-wide v4

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_open__SWIG_1(JLcom/twobigears/audio360/AudioObject;Ljava/lang/String;JLcom/twobigears/audio360/AssetDescriptor;)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public overrideRanking(Z)V
    .locals 2

    .line 105
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_overrideRanking(JLcom/twobigears/audio360/AudioObject;Z)V

    return-void
.end method

.method public seekToMs(F)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_seekToMs(JLcom/twobigears/audio360/AudioObject;F)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public seekToSample(J)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1, p2}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_seekToSample(JLcom/twobigears/audio360/AudioObject;J)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setAttenuationMode(Lcom/twobigears/audio360/AttenuationMode;)V
    .locals 2

    .line 125
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/AttenuationMode;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_setAttenuationMode(JLcom/twobigears/audio360/AudioObject;I)V

    return-void
.end method

.method public setAttenuationProperties(Lcom/twobigears/audio360/AttenuationProps;)V
    .locals 6

    .line 133
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/AttenuationProps;->getCPtr(Lcom/twobigears/audio360/AttenuationProps;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_setAttenuationProperties(JLcom/twobigears/audio360/AudioObject;JLcom/twobigears/audio360/AttenuationProps;)V

    return-void
.end method

.method public setDirectionalProperties(Lcom/twobigears/audio360/DirectionalProps;)V
    .locals 6

    .line 149
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/DirectionalProps;->getCPtr(Lcom/twobigears/audio360/DirectionalProps;)J

    move-result-wide v3

    move-object v2, p0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_setDirectionalProperties(JLcom/twobigears/audio360/AudioObject;JLcom/twobigears/audio360/DirectionalProps;)V

    return-void
.end method

.method public setDirectionalityEnabled(Z)V
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_setDirectionalityEnabled(JLcom/twobigears/audio360/AudioObject;Z)V

    return-void
.end method

.method public setEffectParam(Lcom/twobigears/audio360/SWIGTYPE_p_void;Lcom/twobigears/audio360/EffectParam;F)Lcom/twobigears/audio360/EngineError;
    .locals 7

    .line 190
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/twobigears/audio360/EffectParam;->swigValue()I

    move-result v5

    move-object v2, p0

    move v6, p3

    invoke-static/range {v0 .. v6}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_setEffectParam(JLcom/twobigears/audio360/AudioObject;JIF)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setEffectType(Lcom/twobigears/audio360/SWIGTYPE_p_void;Lcom/twobigears/audio360/EffectType;)Lcom/twobigears/audio360/EngineError;
    .locals 6

    .line 178
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {p1}, Lcom/twobigears/audio360/SWIGTYPE_p_void;->getCPtr(Lcom/twobigears/audio360/SWIGTYPE_p_void;)J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/twobigears/audio360/EffectType;->swigValue()I

    move-result v5

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_setEffectType(JLcom/twobigears/audio360/AudioObject;JI)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public setEventListener(Lcom/twobigears/audio360/EventListener;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/twobigears/audio360/AudioObject;->eventListener_:Lcom/twobigears/audio360/EventListener;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Lcom/twobigears/audio360/EventListener;->delete()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/twobigears/audio360/AudioObject;->eventListener_:Lcom/twobigears/audio360/EventListener;

    .line 44
    :cond_0
    iput-object p1, p0, Lcom/twobigears/audio360/AudioObject;->eventListener_:Lcom/twobigears/audio360/EventListener;

    .line 45
    invoke-direct {p0, p1}, Lcom/twobigears/audio360/AudioObject;->setEventListenerInternal(Lcom/twobigears/audio360/EventListener;)V

    return-void
.end method

.method public setPitch(F)V
    .locals 2

    .line 157
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_setPitch(JLcom/twobigears/audio360/AudioObject;F)V

    return-void
.end method

.method public setSpatialisationType(Lcom/twobigears/audio360/SpatialisationType;)Lcom/twobigears/audio360/EngineError;
    .locals 2

    .line 109
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-virtual {p1}, Lcom/twobigears/audio360/SpatialisationType;->swigValue()I

    move-result p1

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_setSpatialisationType(JLcom/twobigears/audio360/AudioObject;I)I

    move-result p1

    invoke-static {p1}, Lcom/twobigears/audio360/EngineError;->swigToEnum(I)Lcom/twobigears/audio360/EngineError;

    move-result-object p1

    return-object p1
.end method

.method public shouldSpatialise(Z)V
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/twobigears/audio360/AudioObject;->swigCPtr:J

    invoke-static {v0, v1, p0, p1}, Lcom/twobigears/audio360/Audio360JNI;->AudioObject_shouldSpatialise(JLcom/twobigears/audio360/AudioObject;Z)V

    return-void
.end method
